#!/usr/bin/env python
from bs4 import BeautifulSoup
import requests
import argparse
import os
import subprocess

ap = argparse.ArgumentParser()
ap.add_argument('name', type=str, nargs='?', help='Tv serie name')
args = ap.parse_args()

if not os.path.isfile("/tmp/showlist"):
    url = ("https://eztv1.unblocked.lol/showlist/")
    page = requests.get(url)
    page.raise_for_status()
    soup = BeautifulSoup(page.text, "html.parser")
    with open("/tmp/showlist", "wt") as file:
        file.write(page.text)
else:
    soup = BeautifulSoup(open("/tmp/showlist").read(), "html.parser")

if args.name is None:
    for anchor in soup.find_all('a',{'class':'thread_link'},href=True):
        print(anchor.text)
else:
    if not os.path.isfile("/tmp/series"):
        url= f"https://eztv1.unblocked.lol/{soup.find('a',href=True, text=args.name)['href']}"
        page = requests.get(url)
        soup = BeautifulSoup(page.text, "html.parser")
        with open("/tmp/series", "wt") as file:
            file.write(page.text)
        for anchor in soup.find_all('a',{'class':'magnet'},href=True):
            print(f"{anchor['title']}")
    else:
        soup = BeautifulSoup(open("/tmp/series").read(), "html.parser")
        os.remove("/tmp/series")
        cmd = f"killall rofi && st -e peerflix \"{soup.find('a',{'class':'magnet', 'title':args.name},href=True)['href']}\" --mpv"
        subprocess.Popen(cmd,shell=True)
