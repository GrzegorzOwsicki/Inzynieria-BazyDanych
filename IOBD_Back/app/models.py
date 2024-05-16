from django.db import models

# Create your models here.

class Sentences(models.Model):
    sentence_id = models.AutoField(primary_key=True)
    word = models.ForeignKey('Words', models.DO_NOTHING)
    sentence = models.CharField(max_length=255)
    translation = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sentences'


class Users(models.Model):
    user_id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'users'


class Words(models.Model):
    word_id = models.AutoField(primary_key=True)
    word = models.CharField(max_length=50)
    translation = models.CharField(max_length=50)
    category = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'words'