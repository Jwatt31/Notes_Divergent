# pages/urls.py
from django.urls import path
from .views import HomePageView, AboutPageView, ContactUsPageView
# By using the period .views we reference the current directory, which is our pages app containing both views.py and urls.py

urlpatterns = [
    path('', HomePageView.as_view(), name='home'),
    path('about/', AboutPageView.as_view(), name='about'),
    path('contactus/',  ContactUsPageView.as_view(), name='contactus'), # you have to add in the link like a network of roads

]