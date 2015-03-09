from django.shortcuts import render
from django.template import Context, Template

from models import inputForm
from models import font3dGenerator
import re

message = {
    'none': '', 
    'fail': 'Only upper case letters, numbers and space is allowed!!',
}

# Create your views here.
def index(request):
    status = 'none'
    indexContext = {'status': message['none']}
    if request.method == 'POST':
        form = inputForm(request.POST)
        if form.is_valid():
            inputString = form.cleaned_data['inputString']
            if re.match('^[A-Z 1-9]*$', inputString):
                mFont3dGenerator = font3dGenerator()
                return mFont3dGenerator.generate(inputString)
            else:
                indexContext['status'] = message['fail']
    form = inputForm()
    indexContext['form'] = form
    return render(request, 'font3d/index.html', indexContext)
