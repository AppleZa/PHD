#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import traceback
from Reader import *

# Copyright by JK 2018
# License: MIT
# https://www.reportlab.com/docs/reportlab-userguide.pdf

if len(sys.argv) > 1:
  event = sys.argv[1]
else:
  event = "Use ARG1 as event"

data = loadData()

doc = PDFDoc("badges-A4", 21, 29.7)
c = 0

for p in data:
  try:
    # check for image
    if c % 8 == 0:
      offset_x = 0.5
    elif c % 8 == 4:
      offset_x = 9.5

    if c % 4 == 0:
      offset_y = 1
    else:
      offset_y += 6

    img = doc.subImage(offset_x, offset_y , 9, 6)
    img.addImg("../assets/background", 0, 0, 0.7)

    img.addImg("../assets/reading-logo", 0.1, 0.8, 0.1)
    img.addKeyVal("Computer Science", 0.37, 0.86, size=0.05, color=(0,0.2,0), font="Helvetica")
    #img.addImg("logo", 0.7, 0.8, 0.1)

    img.drawRectBorder(0, 0, 1, 1)
    img.addKeyValCenter(p[0], 0.5, 0.4, size=0.2, font="Helvetica")
    img.addKeyValCenter(p[1], 0.5, 0.47, size=0.07, font="Helvetica-Oblique")

    img.addKeyValCenter(event, 0.5, 0.2, size=0.07, font="Helvetica-Oblique")

    if c % 8 == 7:
      doc.newpage()
    c+=1
  except:
    print("Unexpected error when processing %s" %(p))
    traceback.print_exc()

doc.save()
