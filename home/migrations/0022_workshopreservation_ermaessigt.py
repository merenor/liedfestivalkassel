# Generated by Django 2.0.2 on 2018-04-19 11:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0021_workshopreservation'),
    ]

    operations = [
        migrations.AddField(
            model_name='workshopreservation',
            name='ermaessigt',
            field=models.BooleanField(default=None),
        ),
    ]
