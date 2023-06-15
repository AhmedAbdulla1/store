import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/cart_screen/view_model.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final CartViewModel _cartViewModel = CartViewModel();
  List<ProductModel> productList =
  [
    ProductModel(
      name: "Nike Pegasus 39 premium",
      image: 'assets/image/gazma.png',
      us: "US 6",
      price: "102",
      quantity: 5,
      checkBox: true,
    ),
    ProductModel(
      name: "Nike Pegasus 39 premium",
      image: 'assets/image/image2.png',
      us: "US 6",
      price: "520",
      quantity: 3,
    ),
    ProductModel(
      name: "Nike Pegasus 39 premium",
      image: 'assets/image/gazma.png',
      us: "US 6",
      price: "154",
      quantity: 8,
    ),
    ProductModel(
      name: "Nike Pegasus 39 premium",
      image: 'assets/image/image2.png',
      us: "US 6",
      price: "102",
      quantity: 5,
    ),
    ProductModel(
      name: "Nike Pegasus 39 premium",
      image: 'assets/image/gazma.png',
      us: "US 6",
      price: "520",
      quantity: 3,
    ),
    ProductModel(
      name: "Nike Pegasus 39 premium",
      image: 'assets/image/image2.png',
      us: "US 6",
      price: "154",
      quantity: 8,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 600.h,
            child: ListView.builder(
                itemCount: productList.length,
              itemBuilder: (context, index) => _getItem(index),),
          ),
          Text('Selected Item( ${selectedItem().toString()} )',
            style: const TextStyle(
            fontSize:26,
            fontWeight: FontWeight.w600
          ),),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: (){
              print('checkout');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF159954), // Set the background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.r), // Set the border radius
              ),
              minimumSize:Size(double.infinity, 48.h), // Set the button height
            ),
            child: const Text(
              'Checkout',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getItem(int index) {
    return Row(children: [
      StreamBuilder<bool>(
        stream: _cartViewModel.outputCheckBox,
        builder: (context, snapshot) => Checkbox(
          onChanged: (bool? value) {
            _cartViewModel.setCheckboxValue(value ?? false);
            productList[index].checkBox=value??false;
          },
          value: productList[index].checkBox,
          focusColor: const Color(0xff159954),
          side: const BorderSide(
            color: Color(0xffAEAEB2),
            width: 2.5,
            style: BorderStyle.solid,
            strokeAlign: 3,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: 84.w,
          height: 84.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xffF6F6F6),
          ),
          child: Image.asset(
            'assets/image/image2.png',
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productList[index].name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            productList[index].us,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xff7B7B7B),
            ),
          ),
          Row(
            children: [
              Text(
                productList[index].price,
                style:const  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 40.w,
              ),
              GestureDetector(
                onTap: () {
                  int quantity =productList[index].quantity;
                  quantity--;
                  if(quantity!=0){
                    _cartViewModel.setQuantity(quantity);
                    productList[index].quantity=quantity;
                  }
                  else{
                    quantity++;
                  }

                },
                child: Container(
                  width: 24.w,
                  height: 24.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: const Color(0xffF6F6F6),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Color(0xffDDDDDF),
                    weight: 3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: StreamBuilder<int>(
                  stream: _cartViewModel.outputQuantity,
                  builder: (context, snapshot) =>
                      Text(productList[index].quantity.toString()),
                ),
              ),
              GestureDetector(
                onTap: () {
                  int quantity =productList[index].quantity;
                  quantity++;
                  _cartViewModel.setQuantity(quantity);
                  productList[index].quantity=quantity;
                },
                child: Container(
                  width: 24.w,
                  height: 24.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: const Color(0xff159954),
                  ),
                  child: const Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      )
    ]);
  }
  int selectedItem(){
    int selectedItem=0;
    for(int i=0 ; i<productList.length;i++){
      productList[i].checkBox==true?selectedItem++:selectedItem;
    }
    return selectedItem;
  }
}

class ProductModel {
  String name;
  String image;
  String us;
  String price;
  int quantity;
  bool checkBox ;
  ProductModel({
    required this.name,
    required this.image,
    required this.us,
    required this.price,
    required this.quantity,
    this.checkBox=false,
  });
}
