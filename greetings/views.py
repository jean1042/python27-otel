from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse

def hello(request):
    return HttpResponse("Hello, world! This is a simple Django 1.8.3 app using Python 2.7.")

