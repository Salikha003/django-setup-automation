# Generated by Django 5.0.3 on 2024-04-17 04:21

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0015_blogpage_delete_blogdetailpage'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='BlogPage',
            new_name='BlogDetailPage',
        ),
    ]
