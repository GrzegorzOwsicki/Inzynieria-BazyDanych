from django.shortcuts import render
from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import authenticate
from .models import Users, Words, Sentences, Used_Words
import json
import random
from django.core import serializers



def homepage(request):
    return render(request,'login.html')

@csrf_exempt
def login(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode('utf-8'))
        ver_username = data.get("username")
        ver_password = data.get("password")
        #ver_username = request.POST.get('username')
        #ver_password = request.POST.get('password')
        print(ver_username)
        print(ver_password)
        
        if (Users.objects.filter(username=ver_username).filter(password=ver_password).exists()) or (Users.objects.filter(email=ver_username).filter(password=ver_password).exists()):
            id = Users.objects.filter(username=ver_username).filter(password=ver_password).values("user_id").get()
            id = id.get('user_id')
            print(id)
            return JsonResponse({'id':id},status=200)
        return JsonResponse({'error':"Not found"}, status=404)
    return JsonResponse({'error': 'Method not allowed'}, status=405)

@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode('utf-8'))
        new_username = data.get("username")
        new_password = data.get("password")
        new_email = data.get('email')
        if not (Users.objects.filter(email=new_email).exists()) or not (Users.objects.filter(username=new_username).exists()):
            new_user = Users.objects.create(username=new_username,password=new_password,email=new_email)
            new_user.save()
            return JsonResponse({'id': new_user.user_id},status = 200 )
        return JsonResponse({'error': "username or email already used"},status = 404)
    return JsonResponse({'error': 'Method not allowed'}, status =  405)

@csrf_exempt
def get_word(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode('utf-8'))
        passed_user_id = data.get('id')
        Table_size = Words.objects.count()
        rand_word_id = random.randint(1,Table_size-1)
        forbidden_words = list(Used_Words.objects.filter(user_id=passed_user_id).values_list('word_id', flat=True))
        while rand_word_id in forbidden_words:
            if(len(forbidden_words) > 50):
                Used_Words.objects.filter(user_id=passed_user_id).delete()
                
            rand_word_id = random.randint(1,Table_size-1)
      
        Used_Words.objects.create(user_id=passed_user_id,word_id=rand_word_id)
        word=Words.objects.values("word","translation","category").get(word_id=rand_word_id)
        word_to_pass = word.get("word")
        translation = word.get("translation")
        category = word.get("category")
        
        
        return JsonResponse({'word':word_to_pass,'categorty' : category,'translation':translation}, safe=False,status = 200)
    return JsonResponse({'error': 'Method not allowed'}, status=405)
    
@csrf_exempt
def get_sentence(request):
    if request.method == 'POST':
        data = json.loads(request.body.decode('utf-8'))
        passed_word_id = data.get('id')
        word=Words.objects.get(word_id=passed_word_id)
        sentences = Sentences.objects.filter(word=word)
        sentences_json = serializers.serialize("json",sentences)
        print(sentences_json)
        return JsonResponse(sentences_json, safe=False, status = 200)
    return JsonResponse({'error': 'Method not allowed'}, status=405)