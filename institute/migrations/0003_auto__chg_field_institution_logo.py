# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Changing field 'Institution.logo'
        db.alter_column(u'institute_institution', 'logo', self.gf('django.db.models.fields.files.ImageField')(max_length=100, null=True))

    def backwards(self, orm):

        # Changing field 'Institution.logo'
        db.alter_column(u'institute_institution', 'logo', self.gf('django.db.models.fields.files.ImageField')(default='', max_length=100))

    models = {
        u'datamaster.course': {
            'Meta': {'object_name': 'Course'},
            'course_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.CourseType']"}),
            'duration': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'datamaster.coursetype': {
            'Meta': {'object_name': 'CourseType'},
            'course_type': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'datamaster.entrancetest': {
            'Meta': {'object_name': 'EntranceTest'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'test_name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'datamaster.subcourse': {
            'Meta': {'object_name': 'SubCourse'},
            'course': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.Course']", 'null': 'True', 'blank': 'True'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        u'institute.facilities': {
            'Meta': {'object_name': 'Facilities'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        u'institute.institutecourse': {
            'Meta': {'object_name': 'InstituteCourse'},
            'annual_fees': ('django.db.models.fields.IntegerField', [], {'max_length': '100'}),
            'course_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.CourseType']", 'max_length': '100'}),
            'duration': ('django.db.models.fields.IntegerField', [], {'max_length': '50'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.Course']"}),
            'sub_courses': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['datamaster.SubCourse']"})
        },
        u'institute.institutecoursesession': {
            'Meta': {'object_name': 'InstituteCourseSession'},
            'current': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'end_date': ('django.db.models.fields.DateField', [], {}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'institutecourse': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['institute.InstituteCourse']"}),
            'start_date': ('django.db.models.fields.DateField', [], {})
        },
        u'institute.institution': {
            'Meta': {'object_name': 'Institution'},
            'academic_section_start_date': ('django.db.models.fields.DateField', [], {}),
            'address': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'aicte_approved': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'city': ('django.db.models.fields.CharField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'courses': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['institute.InstituteCourse']", 'max_length': '100'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '200'}),
            'entrance_test': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['datamaster.EntranceTest']", 'symmetrical': 'False'}),
            'facilities': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['institute.Facilities']", 'max_length': '100', 'symmetrical': 'False'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'logo': ('django.db.models.fields.files.ImageField', [], {'max_length': '100', 'null': 'True', 'blank': 'True'}),
            'minimum_eligibility': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'other_courses': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'phone_number': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'state': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'total_seats': ('django.db.models.fields.IntegerField', [], {}),
            'type_of_institution': ('django.db.models.fields.CharField', [], {'max_length': '50', 'blank': 'True'}),
            'university': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['institute.University']", 'max_length': '100'}),
            'website': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'year_of_establishment': ('django.db.models.fields.IntegerField', [], {})
        },
        u'institute.university': {
            'Meta': {'object_name': 'University'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        }
    }

    complete_apps = ['institute']