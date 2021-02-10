from django.shortcuts import render , redirect , HttpResponseRedirect

from store.forms import CartAddProductForm
from store.models.product import Product
from store.models.category import Category
from django.views import View
from django.shortcuts import get_object_or_404









# Create your views here.

class Index(View):
    def post(self, request):
        product = request.POST.get('product')
        remove = request.POST.get('remove')
        cart = request.session.get('cart')
        if cart:
            quantity = cart.get(product)
            if quantity:
                if remove:
                    if quantity <= 1:
                        cart.pop(product)
                    else:
                        cart[product] = quantity-1
                else:
                    cart[product] = quantity+1

            else:
                cart[product] = 1

        else:
            cart = {}
            cart[product] = 1
        
        request.session['cart'] = cart
        print(request.session.get('cart'))

        return redirect('home')

    
    def get(self, request):
        allcategory = Category.objects.all()
        allProducts = Product.objects.all()

        list1 = []
        list2 = []



        for categorys in allcategory:
            list1.append(categorys.name)

            # print(list1)

        print("#########################")
        for products in allProducts:
            list2.append(products.category.name)


        mencloth = 0
        womencloth = 0
        vegetables = 0
        mobiles = 0

        for i in range(len(list2)):
            if list1[0] == list2[i]:
                mencloth += 1
            elif list1[1] == list2[i]:
                vegetables += 1
            elif list1[2] == list2[i]:
                mobiles += 1
            
                            

            
        cart = request.session.get('cart')
        if not cart:
            request.session['cart'] = {}
        products = None
        
        categories = Category.get_all_categories()
        categoryId = request.GET.get('category')
        i = 0
        if categoryId:
            products = Product.get_all_products_by_categoryid(categoryId)
            
            
        else:
            products = Product.get_all_products()
        
        
        

        data = {}
        data['products'] = products
        data["categories"] = categories
        data["mencloth"] = mencloth
        data["womencloth"] = womencloth
        data["vegetables"] = vegetables
        data["mobiles"] = mobiles
     
        
        
        print("You Are: ", request.session.get('email'))
        return render(request, "index.html", data)



    
def product_details(request, pk):
    product = get_object_or_404(Product,pk=pk)
    cart_product_form = CartAddProductForm()
    context = {
		'product': product,
		'cart_product_form': cart_product_form,
	}
    return render(request,'product-details.html',context)

