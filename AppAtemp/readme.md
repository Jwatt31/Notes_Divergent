# Create our First WebApp

Make sure to:

- Stop the Webserver:
> control+C

- To exit the pipenv Virtual Environment: 
> exit

- navigate to the main Django Folder:
> cd ..

Create another source folder in our main Django Folder:
> mkdir 2django

Navigate to this new source folder:
> cd 2django

Make sure there is not parenthesis in the prefix of your prompt `(1django)`. Otherwise you did exit from the earlier virtual environment.

> pipenv install django==4.1
 
 Enter the Virtual Environment:
 > pipenv shell

 notice `(2django)` in the prefix of your command prompt.

Create our webapp (aka project file):
> django-admin startproject helloworld_project .  

- settings.py : controls your project settings and your entire webapp

- urls.py : tells Django which pages to build in respone to a browser or URL request

- wesgi.py : web server gateway interface helps Django serve web-pages

- manage.py : is used to execute Django Commands such as creating a database or running a local webserver or creating a new Django-app

Launch the webserver that comes buil-in with django to load the default-webpage that Django startproject command created:

> python manage.py runserver

To load your admin page:
http://127.0.0.1:8000/admin/

> contrl+C

Create an app called `pages`:
A Django project can contain multiple Django-apps

> python manage.py startapp pages

Files of the new app directory:
- admin.py : is a configuration file for the built-in Django Admin App http://127.0.0.1:8000/admin/

- apps.py : configuration file for the app

- migrations/ keep track of changes to our models.py file to keep database in sync with models.py

- models.py : we define our database models which Django will automatically translare into our database table. ORM (Object-Resource-Mapping)

- tests.py : our app specific Unit Tests using Assertions

- views.py : where we handle the request/response logic

# Wiring up our new app with project-level:

When we created the `pages` app Django created the folder but we have to manually wire up that app with the main webapp (project-level).

helloworld_project > settings.py > `INSTALLED_APPS` is going to keep track of all the apps that we create in the main webapp. And the priority order is followed. Order here matters which is why we placed our app at the top. If several applicatins try to access the same resource (template, static file, management command, translation) then the application listed first has precedence.

> project_level > settings.py

```python
# helloworld_project > settings.py


# Application definition
INSTALLED_APPS = [
    "pages.apps.PagesConfig", # attaching our app with project-level
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
]
```

# Views URLConfs
Views determine what content (html + css) is displayes on a given page while the URLConfs determine where that content is located/going (address).

Django Request/Response Cycle: URL -> View -> Model (typically) -> Template

When a user requests a specific page, like the about_me or homepage, the URLConf uses a regular expression to map the request to the appropriate view-function which then returns the correct data (html code).

Regular Expressions: Pattern Matching for validation purposes
- does this string have correct formatting for an email address?
- does this string have correct formatting for SSN (xxx-xx-xxxx)
https://www.w3schools.com/python/python_regex.asp

Our view.py will output "Hello World!" while our urls.py will ensure that when the user visits the homepage they are redirected to the correct view.

```python
# pages/views.py

from django.http import HttpResponse

def homePageView(request):
    return HttpResponse("Hello, World!")
```
# Order of a given HTTP Request/Response cycle:

When you type in a URL "http://www.mydjangowebsite.com/" the first that happens is within your Django Project is a URLpattern is found that matches the homepage. The URLpattern specifies a view which then determines the content for the page (usually from the database) and a template for styling. The end result is sent back to the user as an HTTP Response.

Whenever the view function homePageView is called, return the text “Hello, World!” More specifically, we’ve imported the built-in HttpResponse method so we can return a response object to the user. We’ve created a function called homePageView that accepts the request object and returns a response with the string Hello, World!.

# app level urls.py
When django created the app folder, it does not create urls.py automatically and we have to manually create it:

> touch pages/urls.py

```python
# pages > urls.py
from django.urls import path
from .views import homePageView
# By using the period .views we reference the current directory, which is our pages app containing both views.py and urls.py

urlpatterns = [
    path('', homePageView, name='home')
]
# • a Python regular expression for the empty string ''
# • specify the view which is called homePageView
# • add an optional URL name of 'home'
```
If the user requests the homepage, represented by the empty string '' then use the view called homePageView.

Next configure our project-level urls.py file since it’s common to have multiple apps within a single Django project, so they each need their own route.

```python
# helloworld_project > urls.py
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', include('pages.urls'))
]
```
### Exit out of our pipenv python virtual environment:
> exit

# (optional) push the code to your public repo (and not AJRepo):

> git status  
> git add -A  or git add --all  
> git commit -m "Descriptive Commit Message"  
> git push -u origin main  
