from django.conf.urls.defaults import patterns, url, include
from django.http import HttpResponse
from django.views.generic.simple import direct_to_template


urlpatterns = patterns('institute.views',
    url(r'^listofinstitutions/$', 'show_institutions'),
    url(r'^(?P<InstId>\d+)/details/$', 'institution_details'),
)