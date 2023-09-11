from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import authentication, permissions
from django.shortcuts import render
from .serializers import UserSerializer
from django.contrib.auth.models import User
from rest_framework import status
# Create your views here.

class UserList(APIView):
    """
    List all users, or create a new user.
    """
    def get(self, request, format=None):
        users = User.objects.all()
        print(users)
        serializer = UserSerializer(users, many=True)
        print(serializer.data)
        # return Response(serializer.data)
        return Response({"users": serializer.data})

    def post(self, request, format=None):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            # serializer.save()
            return Response({"users": serializer.data})
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)