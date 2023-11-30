#!/Users/shawnmeier/.pyenv/versions/3.6.5/bin/python3.6
from PIL import ImageGrab, Image
import pytesseract
import os

import subprocess
import sys


try:
    subprocess.check_output(['screencapture', '-i', '-x', '-p', '-c'],
                            shell=False)
except subprocess.CalledProcessError as e:
    print('Python error: [%d]\n{}\n'.format(e.returncode, e.output))


img = ImageGrab.grabclipboard()
print(img)
# <PIL.JpegImagePlugin.JpegImageFile image mode=RGB size=200x71 at 0x105E68700>

print(isinstance(img, Image.Image))
# True

print(img.size)
# (200, 71)

print(img.mode)
# RGB

img.save('tmp_clipboard_image.jpg')
output = pytesseract.image_to_string(Image.open('tmp_clipboard_image.jpg'))
os.system("say -r 250 \"%s\"" % output)
