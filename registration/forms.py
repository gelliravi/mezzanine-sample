# from django import forms
# from django.contrib.auth.models import User
# from django.contrib.auth import login
# from django.contrib.auth import authenticate
# from django.contrib.auth.forms import UserCreationForm
# from django.utils import simplejson
# from django.db.models import Q
# from django.http import HttpResponse
# import random
# import datetime

# from registration.models import *
# from institute.models import Institution

# INSTITUTES = [(i.id, i.name) for i in Institution.objects.all()]

# class SignUpForm(UserCreationForm):
# 	Account_type = forms.CharField(max_length = 50, choices=ACCOUNT_TYPE, blank=True)
# 	institution = forms.CharField(max_length=100)

# 	class Meta:
# 		model = UserProfile
# 		exclude =('password','groups','last_login','is_superuser','is_staff','is_active','date_joined','user_permissions')