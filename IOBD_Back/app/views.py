from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from .models import Users, Words, Sentences
import json
import random
from django.core import serializers



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
            id = Users.objects.filter(username=ver_username).filter(password=ver_password).values("user_id").get()
            return JsonResponse({"id":id},status=200)
        return JsonResponse({'error':"dupa"}, status=404)
    return JsonResponse({'error': 'Method not allowed'}, status=405)

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

def get_word(request):
    Table_size = Words.objects.count()
    word_id = random.randint(0,Table_size-1)
    word=Words.objects.values("word","translation","category").get(word_id=word_id)
    return JsonResponse(word, safe=False)

def get_sentence(request):
    Table_size = Words.objects.count()
    word_id = random.randint(0,Table_size-1)
    word=Words.objects.get(word_id=word_id)
    sentences = Sentences.objects.filter(word=word)
    sentences_json = serializers.serialize("json",sentences)
    print(sentences_json)
    return JsonResponse(sentences_json, safe=False)