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

class font3dGenerator():
    def generate(self, inputString):
        font_dir = os.getcwd() + '/font3d/font3d-scad/'
        tmpScad = NamedTemporaryFile(suffix='.scad')

        # Generate Scad file
        tmpScad.write('include <' + font_dir + 'font3d.scad>\n')
        tmpScad.write('font3d("'+inputString+'", "basic");')
        
        # Generate STL file
        tmpScad.seek(0)
        for line in tmpScad:
            print line
        tmpStl = NamedTemporaryFile(suffix='.stl')
        cmd = 'openscad -o ' +  tmpStl.name + ' ' + tmpScad.name
        call(cmd, shell=True)
        tmpScad.close()

        # Copy STL file to HttpResponse
        response = HttpResponse(content_type='application/txt')
        response['Content-Disposition'] = 'attachment; filename="%s.stl"' % inputString
        f = FileDj(response)

        # Copy file over to the download file
        tmpStl.seek(0)
        for line in tmpStl:
            f.write(line)
        tmpStl.close()
        return response
