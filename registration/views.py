# from django import forms
# from django.contrib.auth.forms import UserCreationForm
# from django.http import HttpResponseRedirect
# from django.shortcuts import render
# from django.core.context_processors import csrf
# from registration.forms import SignUpForm
# from registration.models import UserProfile


# def register(request):
#     if request.method == 'POST':
#         form = SignUpForm(request.POST)
#         if form.is_valid():
#             account_type = request.POST.get('Account_type')
#             institution_id = request.POST.get('institution')
#             institution = Institution.object.get(id=institution_id)
#             user = form.save()
#             UserProfile.objects.create(user=user,account_type=account_type, institution=institution)
#             return HttpResponseRedirect("/")
#     else:
#         form = SignUpForm()
#     return render(request, "registration/register.html", {
#         'form': form,
#     })
