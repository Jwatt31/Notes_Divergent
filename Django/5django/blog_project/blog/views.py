# Blogs/view
from django.views.generic import ListView, DetailView
from .models import Post

# Create your views here to populate data from database
# This is where the ORM of Django interacts with the database

class BlogListView(ListView):
    model = Post
    template_name = 'home.html'

# We are using Django's views.generic API by importing DetailView Class
# Then we are makeing this DetailView Class our own with BlogDetailView
class BlogDetailView(DetailView):
    model = Post
    template_name = 'post_detail.html'