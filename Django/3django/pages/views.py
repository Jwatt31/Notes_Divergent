# pages/views.py
from django.views.generic import TemplateView

class HomePageView(TemplateView):
    template_name = 'home.html'

class AboutPageView(TemplateView):
    template_name = 'about.html'

class ContactUsPageView(TemplateView): #remember you have to add in these when ad a page as well as adding them in the urls
    template_name = 'contactus.html'