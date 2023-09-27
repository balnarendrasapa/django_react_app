from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import authentication, permissions
from django.shortcuts import render
from .serializers import UserSerializer
from django.contrib.auth.models import User
from rest_framework import status
from rest_framework.permissions import IsAuthenticated
from rest_framework_simplejwt.authentication import JWTAuthentication

# Create your views here.


class UserCreate(APIView):
    """
    Create a new user.
    """

    def post(self, request, format=None):
        """
        Create a new user.
        """
        user = User.objects.create_user(
            request.data["username"], request.data["email"], request.data["password"]
        )
        serializer = UserSerializer(user)
        return Response(serializer.data, status=status.HTTP_201_CREATED)


class UserList(APIView):

    def get(self, request, format=None):
        """
        Return a list of all users.
        """
        users = User.objects.all()
        serializer = UserSerializer(users, many=True)
        return Response({"users": serializer.data})


class UserUpdate(APIView):
    """
    List all users, or create a new user.
    """

    def put(self, request, format=None):
        """
        Update a user.
        """
        user = request.user
        user.email = request.data["email"]

        # check if old password is correct
        if user.check_password(request.data["old_password"]):
            user.set_password(request.data["password"])
        else:
            return Response(
                {"error": "Old password is incorrect"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        user.save()
        serializer = UserSerializer(user)
        return Response(serializer.data, status=status.HTTP_200_OK)


class UserDelete(APIView):
    """
    Delete a user.
    """

    def delete(self, request, format=None):
        """
        Delete a user.
        """
        user = request.user
        # check if password is correct
        if not user.check_password(request.data["password"]):
            return Response(
                {"error": "Password is incorrect"}, status=status.HTTP_400_BAD_REQUEST
            )
        user.delete()
        return Response(
            {"message": "User deleted successfully"}, status=status.HTTP_200_OK
        )