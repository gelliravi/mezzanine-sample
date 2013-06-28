from django.conf.urls.defaults import patterns, url, include
from django.http import HttpResponse
from django.views.generic.simple import direct_to_template


urlpatterns = patterns('accounts.views',
    url(r'^login/$', 'login'),
    # url(r'^auth/$', 'auth_view'),
    # url(r'^logout/$', 'logout'),
    url(r'^logged_in/$', 'logged_in'),
    # url(r'^invalid/$', 'invalid_login'),
)