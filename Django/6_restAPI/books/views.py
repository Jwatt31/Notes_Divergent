# views.py
from django.views.generic import ListView

class BookListView(ListView):
    template_name = 'book_list.html'
    context_object_name = 'books'
    ordering = ['-publication_date']

    def get_queryset(self):
        books_data = [
            {'title': 'Book 1', 'author': 'Author 1', 'publication_date': '2022-01-01'},
            {'title': 'Book 2', 'author': 'Author 2', 'publication_date': '2022-02-01'},
        ]
        return books_data

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context