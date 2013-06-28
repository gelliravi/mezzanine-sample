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

from registration.models import UserProfile
from institute.models import Institution

INSTITUTES = [(i.id, i.name) for i in Institution.objects.all()]

class SignUpForm(forms.ModelForm):
	# Account_type = forms.CharField(max_length = 50, choices=ACCOUNT_TYPE, blank=True)
	# institution = forms.CharField(max_length=100)

	class Meta:
		model = User
		exclude =('password','last_login','groups','is_superuser','user_permissions','is_active','is_staff','date_joined')

class UserProfileForm(forms.ModelForm):

	class Meta:
		model = UserProfile
		exclude=('user')
			