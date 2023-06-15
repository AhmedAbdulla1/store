import 'package:flutter/material.dart';
class ChooseProduct extends StatelessWidget {
  const ChooseProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu,
          size: 30,
          color: Colors.black,
        ),
        title: const Text('Insightlancer',
          style: TextStyle(
            color: Color(0xffCCCCCC),
            fontSize: 30,
          ),
        ),
        actions:const [
          Icon(Icons.notifications_active,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: ListView(

        children:  [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(

              decoration: const BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child: TextField(
                onSubmitted: (text){

                },
                decoration:  const InputDecoration(
                    hintText: 'what are you Looking for?',

                    prefixIcon: Icon(Icons.search_rounded,
                      size: 40,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    )
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width: 100,
              height: 250,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('New Collection',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text('Discount 50% for \nthe first transaction',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
