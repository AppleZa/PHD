# Copyright by JK 2018
# License: MIT
# https://www.reportlab.com/docs/reportlab-userguide.pdf
# -*- coding: utf-8 -*-

"""
This file and class contains helper methods to paint the resulting PDF
"""

import sys
import os.path
import re
from PIL import Image
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch, cm
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont

def loadData():
  people = []
  with open("attendees.txt", 'r') as f:
    for p in f:
      m = re.match("(.*)\((.*)\)", p)
      if m:
        people.append((m.group(1), m.group(2)))
  return people


class PDFDoc():
  def __init__(self, name, width, height):
    self.dim = (width*cm, height*cm)
    self.c = canvas.Canvas(name + '.pdf', pagesize=self.dim)

  def newpage(self):
    self.c.showPage()

  def save(self):
    self.c.showPage()
    self.c.save()

  def subImage(self, x, y, width, height):
    return SubImage(self, self.c, x, y, width, height)

  def findImg(self, fileimg):
    fileimg = fileimg.replace(" ", "-").lower()
    for typ in ["png", "jpg"]:
      fname = fileimg + "." + typ
      if os.path.isfile(fname):
        return fname
    return None

class SubImage():
  def __init__(self, doc, c, x, y, width, height):
    self.doc = doc
    self.c = c
    self.dim = (width*cm, height*cm)
    self.off = (x*cm, y*cm)

  def addKeyVal(self, value, posx, posy, size=0.1, font= "Helvetica", color=(0,0,0)):
    #relative font size
    self.c.setFont(font, self.dim[1] * size)
    self.c.setStrokeColorRGB(*color)
    self.c.setFillColorRGB(*color)
    value = value.strip().split("\n")
    for l in value:
      self.c.drawString(self.dim[0] * posx  + self.off[0], self.dim[1] * posy + self.off[1], l)
      posy -= size*1.1
    return posy

  def addKeyValCenter(self, value, posx, posy, size=0.1, font= "Helvetica", color=(0,0,0)):
    #relative font size
    self.c.setFont(font, self.dim[1] * size)
    self.c.setStrokeColorRGB(*color)
    self.c.setFillColorRGB(*color)
    value = value.strip().split("\n")
    for l in value:
      self.c.drawCentredString(self.dim[0] * posx  + self.off[0], self.dim[1] * posy + self.off[1], l)
      posy -= size*1.1
    return posy

  def drawRect(self, posx, posy, width, height, color=(0,0,0)):
    self.c.setFillColorRGB(*color)
    self.c.rect(posx*self.dim[0]+ self.off[0], posy*self.dim[1]+ self.off[1], width*self.dim[0], height*self.dim[1], fill=1, stroke=0)

  def drawRectBorder(self, posx, posy, width, height, color=(0,0,0)):
    self.c.setStrokeColorRGB(*color)
    self.c.rect(posx*self.dim[0]+ self.off[0], posy*self.dim[1]+ self.off[1], width*self.dim[0], height*self.dim[1], fill=0, stroke=1)

  def addImg(self, fileimg, posx, posy, height):
    fname = self.doc.findImg(fileimg)
    if fname != None:
        im = Image.open(fname)
        (w, h) = im.size
        scale = h / (self.dim[1] * height)
        self.c.drawImage(fname, posx*self.dim[0] + self.off[0], posy*self.dim[1]+ self.off[1], w/scale, height*self.dim[1])
        return True
    return False
