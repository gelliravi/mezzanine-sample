

from django.db import models
from django.contrib.auth.models import User
from datamaster.models import Course, EntranceTest,SubCourse,CourseType

INSTITUTION_TYPE = [
    ('GOVERNMENT', 'GOVERNMENT'),
    ('PRIVATE', 'PRIVATE'),
]


class Facilities(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return "%s" % (self.name)


class University(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return "%s" % (self.name)
    

class Institution(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=300)
    city = models.CharField(max_length=100, null=True, blank=True)
    state = models.CharField(max_length=100)
    website = models.CharField(max_length=100)
    phone_number = models.CharField(max_length=15)
    email = models.EmailField(max_length=200)
    facilities = models.ManyToManyField(Facilities, max_length=100)
    year_of_establishment = models.IntegerField()
    type_of_institution = models.CharField(max_length = 50, choices=INSTITUTION_TYPE, blank=True)
    university = models.ForeignKey(University, max_length=100)
    courses = models.ForeignKey('InstituteCourse', max_length=100)
    aicte_approved = models.BooleanField(default=False)
    entrance_test = models.ManyToManyField(EntranceTest)
    academic_section_start_date = models.DateField()
    minimum_eligibility = models.CharField(max_length=100)
    total_seats = models.IntegerField()
    other_courses = models.CharField(max_length = 50)
    logo= models.ImageField(upload_to="uploads/institutes",blank=True,null=True)
    
    def __str__(self):
        return "%s" % (self.name)


class InstituteCourse(models.Model):
    name = models.ForeignKey(Course)
    #institution = models.CharField(max_length=100)
    #institution = models.ForeignKey(Institution)
    duration = models.IntegerField(max_length=50)
    sub_courses = models.ForeignKey(SubCourse)
    course_type = models.ForeignKey(CourseType, max_length=100)
    annual_fees = models.IntegerField(max_length=100)
    
    def __str__(self):
        return "%s" % (self.name)


class InstituteCourseSession(models.Model):
    start_date = models.DateField()
    end_date = models.DateField()
    institutecourse = models.ForeignKey('InstituteCourse')
    current = models.BooleanField()
