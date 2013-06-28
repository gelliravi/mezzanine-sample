from django import forms
from django.contrib.auth.models import User
from django.contrib.auth import login
from django.contrib.auth import authenticate
from django.contrib.auth.forms import UserCreationForm
from django.utils import simplejson
from django.db.models import Q
from django.http import HttpResponse
import random
import datetime


class LoginForm(forms.Form):
	username = forms.CharField(max_length=100)
	password = forms.CharField(max_length=100)