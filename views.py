from django.shortcuts import render

# Create your views here.
def index(request):
    context = {'status': 'asdf'}
    return render(request, 'font3d/index.html', context)
