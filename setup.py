import sys
import os
import shutil


if sys.platform == 'win32':
    home = os.environ['USERPROFILE']
else:
    home = os.environ['HOME']
colors_dir = os.path.join(home, 'vimfiles', 'colors')

if not os.path.exists(colors_dir):
    os.makedirs(colors_dir)

shutil.copyfile('gitconfig', os.path.join(home, '.gitconfig'))
shutil.copyfile('vimrc', os.path.join(home, '.vimrc'))
shutil.copytree('colors', colors_dir)


