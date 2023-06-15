
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ChooseProduct extends StatelessWidget {
  const ChooseProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:  Icon(Icons.menu,
          size: 30.h,
          color: Colors.black,
        ),
        title:  Text('Insightlancer',
          style: TextStyle(
            color: const Color(0xffCCCCCC),
            fontSize: 30.h,
          ),
        ),
        actions: [
          Icon(Icons.notifications_active,
            color: Colors.black,
            size: 30.h,
          )
        ],
      ),


      body: ListView(

        children:  [
          Padding(
            padding:  EdgeInsets.all(16.0.h),
            child: Container(

              decoration:BoxDecoration(
                  color:  const Color(0xffF6F6F6),
                  borderRadius: BorderRadius.all(Radius.circular(25.h))
              ),
              child: TextField(
                onSubmitted: (text){

                },
                decoration:   InputDecoration(
                    hintText: 'what are you Looking for?',

                    prefixIcon: Icon(Icons.search_rounded,
                      size: 40.h,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(25.h))
                    )
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.0.h),
            child: Container(
              width: 100.h,
              height: 250.h,
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.7),
                      spreadRadius: 7,
                      blurRadius: 5,
                      offset: Offset(0.h, 3.h),
                    ),
                  ],
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20.h))
              ),
              child:   Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                       Padding(
                        padding: EdgeInsets.only(left: 16.0.h),
                        child: Text('New Collection',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.h,
                          ),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(left: 16.0.h),
                        child: Text('Discount 50% for \nthe first transaction',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 15.h,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 16.h,top: 16.h),
                          width: 120.h,
                          height: 35.h,
                          decoration:BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(15.h))
                          ),
                          alignment: Alignment.center,
                          child: Text('Shop now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.h
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding:  EdgeInsets.only(left: 20.0.h,bottom: 30.h),
                    child: Image.asset('assets/image/R-removebg-preview.png',
                      height: 400.h,
                      width: 200.h,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              Text('    Brand',
                style: TextStyle(
                  fontSize: 20.h,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(flex: 1,),
              Text('See all      ',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.h
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 15.h),
                width: 100.h,
                height: 100.h,
                decoration:const BoxDecoration(
                  color: Color(0xffF6F6F6),
                  shape: BoxShape.circle
                ),
                child: Image.asset('assets/image/nike.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.h),
                width: 100.h,
                height: 100.h,
                decoration:const BoxDecoration(
                  color: Color(0xffF6F6F6),
                  shape: BoxShape.circle
                ),
                child: Image.asset('assets/image/adidas.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.h),
                width: 100.h,
                height: 100.h,
                decoration:const BoxDecoration(
                  color: Color(0xffF6F6F6),
                  shape: BoxShape.circle
                ),
                child: Image.asset('assets/image/reebox.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.h),
                width: 100.h,
                height: 100.h,
                decoration:const BoxDecoration(
                  color: Color(0xffF6F6F6),
                  shape: BoxShape.circle
                ),
                child: Image.asset('assets/image/puma.png'),
              ),
            ],
            ),
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              Text('    New arrial',
                style: TextStyle(
                    fontSize: 20.h,
                    fontWeight: FontWeight.bold
                ),
              ),
              const Spacer(flex: 1,),
              Text('See all      ',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.h
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
             const Spacer(flex: 1,),
              Stack(
                children:[
                  Container(
                  width: 180.h,
                  height: 180.h,
                  decoration: BoxDecoration(
                    color:const Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(15.h)
                  ),
                  child: Image.asset('assets/image/11-removebg-preview.png'),
                ),
                  Positioned(
                    top: 10,
                      right: 20,
                      child: Icon(Icons.favorite,
                    color: Colors.red,
                    size: 30.h,
                  )
                  ),

                  ]
              ),
              const Spacer(flex: 1,),
              Stack(
                  children:[
                    Container(
                      width: 180.h,
                      height: 180.h,
                      decoration: BoxDecoration(
                          color:const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(15.h)
                      ),
                      child: Image.asset('assets/image/OIP-removebg-preview.png',
                        height: 50.h,
                        width: 50.h,

                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: Icon(Icons.favorite_border,
                          color: Colors.black,
                          size: 30.h,
                        )
                    ),

                  ]
              ),
              const Spacer(flex: 1,),

            ],
          ),
          Row(
            children: [
              const Spacer(flex: 1,),
              Row(
                children: [
                  Text('Nike pegasus\n\$83.97',
                    style: TextStyle(
                      fontSize: 18.h
                    ),
                  ),
                  Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),

                  Text('4.5',
                  style: TextStyle(
                    fontSize: 15.h

                  ),
                  ),
                ],
              ),
              const Spacer(flex: 2,),
              Row(
                children: [
                  Text('Nike Free Run 5.0\n\$83.97',
                    style: TextStyle(
                        fontSize: 18.h
                    ),
                  ),
                  Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),
                  Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ],
              ),


            ],
          ),

          SizedBox(height: 20.h,),
          Row(
            children: [
              const Spacer(flex: 1,),
              Stack(
                  children:[
                    Container(
                      width: 180.h,
                      height: 180.h,
                      decoration: BoxDecoration(
                          color:const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(15.h)
                      ),
                      child: Image.asset('assets/image/27-running-shoes-png-image-removebg-preview.png'),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: Icon(Icons.favorite_border,
                          color: Colors.black,
                          size: 30.h,
                        )
                    ),

                  ]
              ),
              const Spacer(flex: 1,),
              Stack(
                  children:[
                    Container(
                      width: 180.h,
                      height: 180.h,
                      decoration: BoxDecoration(
                          color:const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(15.h)
                      ),
                      child: Image.asset('assets/image/27-running-shoes-png-image-removebg-preview.png',
                        height: 50.h,
                        width: 50.h,

                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: Icon(Icons.favorite_border,
                          color: Colors.black,
                          size: 30.h,
                        )
                    ),

                  ]
              ),
              const Spacer(flex: 1,),

            ],
          ),
          Row(
            children: [
              const Spacer(flex: 1,),
              Row(
                children: [
                  Text('Nike pegasus\n\$83.97',
                    style: TextStyle(
                        fontSize: 18.h
                    ),
                  ),
                  Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),

                  Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ],
              ),
              const Spacer(flex: 2,),
              Row(
                children: [
                  Text('Nike Free Run 5.0\n\$83.97',
                    style: TextStyle(
                        fontSize: 18.h
                    ),
                  ),
                  Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),
                  Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ],
              ),


            ],
          ),

          SizedBox(height: 20.h,),
          Row(
            children: [
              const Spacer(flex: 1,),
              Stack(
                  children:[
                    Container(
                      width: 180.h,
                      height: 180.h,
                      decoration: BoxDecoration(
                          color:const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(15.h)
                      ),
                      child: Image.asset('assets/image/11-removebg-preview.png'),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: Icon(Icons.favorite_border,
                          color: Colors.black,
                          size: 30.h,
                        )
                    ),

                  ]
              ),
              const Spacer(flex: 1,),
              Stack(
                  children:[
                    Container(
                      width: 180.h,
                      height: 180.h,
                      decoration: BoxDecoration(
                          color:const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(15.h)
                      ),
                      child: Image.asset('assets/image/OIP-removebg-preview.png',
                        height: 50.h,
                        width: 50.h,

                      ),
                    ),
                    Positioned(
                        top: 10,
                        right: 20,
                        child: Icon(Icons.favorite_border,
                          color: Colors.black,
                          size: 30.h,
                        )
                    ),

                  ]
              ),
              const Spacer(flex: 1,),

            ],
          ),
          Row(
            children: [
              const Spacer(flex: 1,),
              Row(
                children: [
                  Text('Nike pegasus\n\$83.97',
                    style: TextStyle(
                        fontSize: 18.h
                    ),
                  ),
                  Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),

                  Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ],
              ),
              const Spacer(flex: 2,),
              Row(
                children: [
                  Text('Nike Free Run 5.0\n\$83.97',
                    style: TextStyle(
                        fontSize: 18.h
                    ),
                  ),
                  Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),
                  Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ],
              ),


            ],
          ),
          SizedBox(height: 20.h,),
        ],
      ),


      bottomNavigationBar:  Padding(
        padding:  EdgeInsets.only(left: 8.0.h,right: 8.h,bottom: 25.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.h),
          child: BottomNavigationBar(
            //backgroundColor: Colors.black,
            iconSize: 40.h,
            items:const [

              BottomNavigationBarItem(icon:
              Icon(Icons.home),
                  label: "",
                  backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(icon:
              Icon(Icons.search),
                  label:"",
                  backgroundColor: Colors.black
              ),

              BottomNavigationBarItem(icon:
              Icon(Icons.favorite),
                  label: "",
                  backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(icon:
              Icon(Icons.person_pin),
                  label: "",
                  backgroundColor: Colors.black
              ),
            ],
          ),
        ),
      ),


    );
  }
}
