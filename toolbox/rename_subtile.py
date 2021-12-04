#!/usr/bin/python3

import glob
import re
import pathlib
import os

def find_subtile(media_file, subtiles):
    ci_mf = media_file.lower()
    m = re.search(r'(s\d+e\d+)', ci_mf)

    if not m:
        return None

    match = m.group(1)

    for s in subtiles:
        sl = s.lower()

        if sl.find(match) != -1:
            return s
    return None


def rename_subtile(media_file, subtile):
    sub_ext = pathlib.Path(subtile).suffix
    mf_ext = pathlib.Path(media_file).suffix

    new_subtile = media_file[:-len(mf_ext)] + sub_ext
    print("rename %s -> %s" % (subtile, new_subtile))
    os.rename(subtile, new_subtile)


media_files = []
media_files.extend(glob.glob("*.mp4"))
media_files.extend(glob.glob("*.mkv"))

subtiles = []
subtiles.extend(glob.glob("*.srt"))
subtiles.extend(glob.glob("*.ass"))

for media_file in media_files:
    subtile = find_subtile(media_file, subtiles)

    if subtile:
        rename_subtile(media_file, subtile)
