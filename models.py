from django.db import models
from django import forms
from django.http import HttpResponse
from django.core.files import File as FileDj
from django.core.files.temp import NamedTemporaryFile
from subprocess import call
import os

# Create your models here.
class inputForm(forms.Form):
    inputString = forms.CharField(max_length=10)

class generate3D(models.Model):       
    def generate(self, inputString):
        font_dir = '/home/cameron/font3d/font3d_scad/'
        tmpScad = NamedTemporaryFile(suffix='.scad')
        #tmpScad.write('include <' + font_dir + font + '_dimension.scad>\n')

        for i, c in enumerate(inputString):
            if c is not ' ':
                tmpScad.write("translate([" + str(i) + "*xdim,0,0]) ")
                tmpScad.write("process_character(){" + c.lower() + "_upper();}\n")
        strLen = str(len(inputString))

        tmpScad.seek(0)
        #for line in tmpScad:
        #    print line
        tmpStl = NamedTemporaryFile(suffix='.stl')
        cmd = 'openscad -o ' +  tmpStl.name + ' ' + tmpScad.name
        call(cmd, shell=True)
        tmpScad.close()

        response = HttpResponse(content_type='application/txt')
        response['Content-Disposition'] = 'attachment; filename="%s.stl"' % inputString
        f = FileDj(response)

        # Copy file over to the download file
        tmpStl.seek(0)
        for line in tmpStl:
            f.write(line)
        tmpStl.close()
        return response
