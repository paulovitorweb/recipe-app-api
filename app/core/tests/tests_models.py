from django.test import TestCase
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User


class ModelTests(TestCase):

    def test_create_user_with_email_successful(self):
        """Test creating a new user with an email is successful"""
        email = 'test_user@email.com'
        password = 'testpass'
        user: User = get_user_model().objects.create_user(
            email=email,
            password=password
        )

        self.assertEqual(user.email, email)
        self.assertTrue(user.check_password(password))
