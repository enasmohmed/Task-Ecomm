from django.urls import path

from .views.cart import cart_detail, add_to_cart, remove_from_cart
from .views.home import Index
from .views.home import product_details
from .views.signup import Signup
from .views.login import Login, logout
from .views.checkout import Checkout
from .views.orders import OrderView

from .middlewares.auth import auth_middleware

app_name = 'store'

urlpatterns = [
    path("", Index.as_view(), name ="home"),
    path("signup/", Signup.as_view(), name="signup"),
    path("login/", Login.as_view(), name="login"), 
    path("logout/", logout, name="logout"),
    path('products/<int:pk>/', product_details, name='product_details'),
    path('cart/', cart_detail, name='cart'),
    path('carts/add/<int:product_id>/', add_to_cart, name='add_to_cart'),
    path('carts/remove_from_cart/<int:product_id>/', remove_from_cart, name='remove_from_cart'),
    # path('carts/clear_all_cart/', clear_all_cart, name='clear_all_cart'),
    path("check_out/", Checkout.as_view(), name="checkout"),
    
    path("orders/", auth_middleware(OrderView.as_view()), name="orders"),
]
