# from django.shortcuts import render_to_response
# from django.http import HttpResponseRedirect
# from django.contrib import auth
# from django.core.context_processors import csrf

# def login(request):
# 	c= {}
# 	c.update(csrf(request))
# 	return render_to_response('login.html',c)

# def auth_view(request):
# 	username= request.POST.get(username,'')
# 	password= request.POST.get(password,'')
# 	user.auth.authenticate(username=username, password=password)

# 	if user is not NONE:
# 		auth.login(request.user)
# 		return HttpResponseRedirect('/accounts/loggedin')
# 	else:
# 		return HttpResponseRedirect('/accounts/invalid')

# def loggedin(request):
# 	return render_to_response('loggedin.html', {'full_name':request.user.username})


# def invalid_login(request):
# 	return render_to_response('invalid_login.html')

# def logout(request):
# 	auth.logout(request)
# 	return render_to_response('logout.html')


from django.contrib.auth import authenticate, login
from django.shortcuts import render_to_response

def login(request):
	def errorHandle(error):
		form = LoginForm()
		return render_to_response('login.html', {
				'error' : error,
				'form' : form,
		})
	if request.method == 'POST': # If the form has been submitted...
		form = LoginForm(request.POST) # A form bound to the POST data
		if form.is_valid(): # All validation rules pass
			username = request.POST['username']
			password = request.POST['password']
			user = authenticate(username=username, password=password)
			if user is not None:
				if user.is_active:
					# Redirect to a success page.
					login(request, user)
					return render_to_response('accounts/logged_in.html', {
						'username': username,
					})
				else:
					# Return a 'disabled account' error message
					error = u'account disabled'
					return errorHandle(error)
			else:
				 # Return an 'invalid login' error message.
				error = u'invalid login'
				return errorHandle(error)
		else: 
			error = u'form is invalid'
			return errorHandle(error)		
	else:
		form = LoginForm() # An unbound form
		return render_to_response('login.html', {
			'form': form,
		})


def logged_in(request):
	return render_to_response('logged_in.html', {'username': username,})
