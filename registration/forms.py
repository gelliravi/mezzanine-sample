from django import forms
from django.contrib.auth.models import User
from django.contrib.auth import login
from django.contrib.auth import authenticate
import datetime,time

from registration.models import NewEnrty


class SignUpForm(forms.ModelForm):
	class Meta:
		model = NewEnrty