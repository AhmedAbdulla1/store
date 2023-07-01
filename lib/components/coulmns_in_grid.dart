import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoseInGrid extends StatefulWidget {
    ShoseInGrid({super.key,required this.shosePath});
   String shosePath;

  @override
  State<ShoseInGrid> createState() => _ShoseInGridState();
}

class _ShoseInGridState extends State<ShoseInGrid> {
  bool love1= false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
            children:[
              Container(
                width: 180.w,
                height: 180.h,
                decoration: BoxDecoration(
                  // color:const Color(0xffF6F6F6),
                    color: const Color(0xffCCCCCC),
                    borderRadius: BorderRadius.circular(15.r)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(widget.shosePath,
                    // height: 50,
                    // width: 50,
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 00,
                  child:IconButton(onPressed: () {
                    setState(() {
                      love1 =!love1;
                    });
                  },
                      icon: Icon(love1? Icons.favorite : Icons.favorite_border)
                  )
              ),

            ]
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              Text('Nike pegasus\n\$83.97',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0,left: 8.0),
                child: Icon(Icons.star,
                  size: 17,
                  color: Colors.yellow,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text('4.5',
                  style: TextStyle(
                      fontSize: 15

                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
