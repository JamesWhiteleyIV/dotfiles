import sys
import os
import shutil

if sys.platform == 'win32':
    home = os.environ['USERPROFILE']
else:
    home = os.environ['HOME']


def copy_colors():
    colorsdir = os.path.join(home, 'vimfiles', 'colors')
    if not os.path.exists(colorsdir):
        os.makedirs(colorsdir)

    srcdir = os.path.abspath('colors')
    for item in os.listdir(srcdir):
        src = os.path.join(srcdir, item)
        dst = os.path.join(colorsdir, item)
        if not os.path.exists(dst):
            shutil.copy(src, dst)


def copy_dotfiles():
    gitconfig = os.path.join(home, '.gitconfig')
    if not os.path.exists(gitconfig):
        shutil.copyfile('gitconfig', gitconfig)

    vimrc = os.path.join(home, '.vimrc')
    if not os.path.exists(vimrc):
        shutil.copyfile('vimrc', vimrc)


if __name__ == "__main__":
    copy_colors()
    copy_dotfiles()
