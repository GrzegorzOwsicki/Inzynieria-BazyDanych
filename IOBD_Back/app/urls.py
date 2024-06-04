from django.urls import path
from . import views

urlpatterns  =[
    path('',views.homepage, name="home" ),
    path('login',views.login, name="login" ),
    path('register',views.register, name="register" ),
    path('get_word',views.get_word, name="get_word" ),
    path('get_sentence',views.get_sentence, name="get_sentence" ),
]