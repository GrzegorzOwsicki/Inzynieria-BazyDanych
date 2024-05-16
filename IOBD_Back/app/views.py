from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from .models import Users
import json



def homepage(request):
    return render(request,'login.html')

@csrf_exempt
def login(request):
    if request.method == 'POST':
        #body = json.load(request.body)
        #ver_username = body.username
        #ver_password = body.password
        ver_username = request.POST.get('username')
        ver_password = request.POST.get('password')
        
        if (Users.objects.filter(username=ver_username).filter(password=ver_password).exists()) or (Users.objects.filter(email=ver_username).filter(password=ver_password).exists()):
            return HttpResponse("loged in")
        return HttpResponse("Niewłaściwe dane")
    return HttpResponse("Bład przesyłania")

@csrf_exempt
def register(request):
    if request.method == 'POST':
        new_username = request.POST.get('username')
        new_password = request.POST.get('password')
        new_email = request.POST.get('email')
        if not (Users.objects.filter(email=new_email).exists()):
            new_user = Users.objects.create(username=new_username,password=new_password,email=new_email)
            new_user.save()
            return HttpResponse("Done")
        return HttpResponse("Not Done")
    return HttpResponse("Not Done")
# Create your views here.
  