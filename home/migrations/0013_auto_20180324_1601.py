# Generated by Django 2.0.2 on 2018-03-24 15:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0012_concert'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sponsor',
            name='name',
            field=models.CharField(max_length=100),
        ),
    ]