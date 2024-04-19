from django.http import HttpResponse

def homePageView(request):
    # HTML content to be displayed
    html_content = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Welcome to My Website</title>
        <style>
            /* CSS for hover color change */
            strong:hover {
                color: red; /* Change the color to red on hover */
            }
        </style>
    </head>
    <body>
        <h1>Hello, World!</h1>
        <p>This is my Web page made through automation and Django.</p>
        <p>Welcome to my website!</p>
        <p>Here are some additional features:</p>
        <p>Things to add as i go so far function is operationl</p>
        <ul>
            <li><strong>Dynamic Content:</strong> You can add dynamic content here based on user requests.</li>
            <li><strong>Custom Styling:</strong> Apply custom CSS styles to make your website visually appealing.</li>
            <li><strong>Database Integration:</strong> Connect Django to a database to store and retrieve data.</li>
            <li><strong> User Authentication:</strong> Implement user authentication to manage user accounts.</li>
            <li><strong>Interactive Features:</strong> Add forms, buttons, and other interactive elements.</li>
        </ul>
        <p>Feel free to explore and enjoy your stay!</p>
    </body>
    </html>
    """

    # Return the HTML response
    return HttpResponse(html_content)
