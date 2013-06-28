from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.core.context_processors import csrf
from registration.forms import SignUpForm, UserProfileForm
from registration.models import UserProfile
from institute.models import Institution
from django.contrib.auth.forms import UserCreationForm


def register(request):
    if request.method == 'POST':
        print '*'*100
    	print request.POST
        uform = UserCreationForm(request.POST)
        upform= UserProfileForm(request.POST)
        if uform.is_valid() and upform.is_valid():
            user = uform.save()
            account_type = request.POST.get("account_type")
            institution_id = request.POST.get("institution")
            institution = Institution.objects.get(id=institution_id)
            userprofile = UserProfile.objects.create(user=user,account_type=account_type,institution=institution)

        	#userprofile = upform.save()
        	# userprofile.user =user
            print '*'*100
        	# print userprofile.__dict__
            print '#'*100
            print user.__dict__
            print '?'*100
        	#userprofile.save()

            # account_type = request.POST.get('account_type')
            # institution_id = request.POST.get('institution')
            # institution = Institution.objects.get(id=institution_id)
            
            # UserProfile.objects.create(user=user,account_type=account_type, institution=institution)
            return HttpResponseRedirect("/")
        else:
        	print uform.errors
        	print upform.errors

    else:
        uform = UserCreationForm()
        upform = UserProfileForm()
    return render(request, "registration/register.html", {
        'uform': uform, 'upform':upform
    })
