'''
Created on 18-Jun-2013

@author: sreekanth
'''

from institute.models import InstituteCourse,InstituteCourseSession,Institution,Facilities,University
from django.contrib import admin

admin.site.register(InstituteCourse)
admin.site.register(InstituteCourseSession)
admin.site.register(Institution)
admin.site.register(Facilities)
admin.site.register(University)