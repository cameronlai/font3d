from django.shortcuts import render
from django.template import Context, Template

from models import inputForm
from models import generate3D
import re

message = {
    'none': '', 
    'fail': 'File creation has failed! Only letters and space are accepted!',
}

# Create your views here.
def index(request):
    status = 'none'
    indexContext = {'status': message['none']}
    if request.method == 'POST':
        form = inputForm(request.POST)
        if form.is_valid():
            inputString = form.cleaned_data['inputString']
            if re.match('^[A-Za-z 1-9]*$', inputString):
                g = generate3D()
                return g.generate(inputString)
            else:
                indexContext['status'] = message['fail']
    form = inputForm()
    indexContext['form'] = form
    return render(request, 'font3d/index.html', indexContext)
