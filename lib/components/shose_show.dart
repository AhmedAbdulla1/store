import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ShoseShow extends StatefulWidget {
   ShoseShow({super.key,this.shosePath});
  String? shosePath;

  @override
  State<ShoseShow> createState() => _ShoseShowState();
}

class _ShoseShowState extends State<ShoseShow> {
 late bool love1= false;
 late bool love2= false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        Column(
          children: [
            Stack(
                children:[
                  Container(
                    width: 180.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                        color:const Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(15.h)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(widget.shosePath!),
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
            Row(
              children: [
                Text('Nike pegasus\n\$83.97',
                  style: TextStyle(
                      fontSize: 18.h
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0,left: 8.0),
                  child: Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Stack(
                children:[
                  Container(
                    width: 180.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                        color:const Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(15.h)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(widget.shosePath!),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 00,
                      child:IconButton(onPressed: () {
                        setState(() {
                          love2 =!love2;
                        });
                      },
                        icon:Icon(love2? Icons.favorite : Icons.favorite_border)
                      )
                  ),

                ]
            ),
            Row(
              children: [
                Text('Nike pegasus\n\$83.97',
                  style: TextStyle(
                      fontSize: 18.h
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0,left: 8.0),
                  child: Icon(Icons.star,
                    size: 17.h,
                    color: Colors.yellow,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text('4.5',
                    style: TextStyle(
                        fontSize: 15.h

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
      ],
    ) ;
  }
}
