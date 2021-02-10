from django.shortcuts import render , redirect , HttpResponseRedirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib.auth.hashers import check_password
from store.models.customer import Customer
from django.views import View
from store.models.product import Product

from store.models.cart import Cart
# from store.forms import CartAddProductForm
# Create your views here.



# class Cart(View):
    
#     def get(self,request):
#         mycart = request.session.get('cart')
#         if mycart:
#             ids = list(request.session.get('cart').keys())
#             products = Product.get_product_by_id(ids)
#             print(products)
#             return render(request,'cart.html',{'products':products})
#         else:
#             request.session['cart'] = {}
#             ids = list(request.session.get('cart').keys())
#             products = Product.get_product_by_id(ids)
#             print(products)
#             return render(request,'cart.html',{'products':products})





def add_to_cart(request, product_id):
    product = get_object_or_404(Product, pk=product_id)
    cart = Cart.objects.get(user=request.user)
    cart.items.add(product)

    return redirect('cart')




@login_required
def remove_from_cart(request, product_id):
    product = get_object_or_404(Product, pk=product_id)
    cart = Cart.objects.get(user=request.user)
    cart.items.remove(product)

    return redirect('cart')


def cart_detail(request):
	cart = Cart(request)
	for item in cart:
		item['update_quantity_form'] = CartAddProductForm(initial={'quantity':item['quantity'],'update':True})
	context = {
		'cart': cart,
	}
	return render(request,'cart.html', context)