# Generated by Django 3.0.3 on 2020-02-21 07:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('chat', '0008_product_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.CharField(default='none', max_length=400),
        ),
    ]