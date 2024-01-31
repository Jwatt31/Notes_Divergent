# pages/tests.py
from django.test import SimpleTestCase
# SimpleTestCase if we are not using the Database
# Testcase if we are using the Database


class SimpleTestCase(SimpleTestCase):
    # home test
    def test_home_page_state_code(self):
        response =self.client.get('/')
        self.assertEqual(response.status_code,200)

    # about test
    def test_about_page_state_code(self):
        response =self.client.get('/about/')
        self.assertEqual(response.status_code,200)

    # Contact us Test (because its soooooooooooooo needed)
    def test_contactus_page_state_code(self):
        response =self.client.get('/contactus/')
        self.assertEqual(response.status_code,200)
