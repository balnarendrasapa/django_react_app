from django.urls import path, include
from .views import *

urlpatterns = [
    path("create/", UserCreate.as_view()),
    path("list/", UserList.as_view()),
    path("update/", UserUpdate.as_view()),
    path("delete/", UserDelete.as_view()),
]