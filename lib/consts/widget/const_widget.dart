import 'package:flutter/material.dart';
import 'package:gdsc_task/consts/colors/colors.dart';

// user image in appbar
Padding buildUserImage() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
    child: Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
              ),
              border: Border.all(
                  color: Colors.white,
                  width: 2
              )
          ),
        ),
        Positioned(
          right: 0,
          child: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.pink,
          ),
        )
      ],
    ),
  );
}

// header image and title
Container buildContainerHeader(Size size) {
  return Container(
    height: size.height*.16,
    width: size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Adopt a',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Kwhight,
            ),),
            Text('Friend',style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25,
              color: Kwhight,
            ),),
          ],
        ),
        SizedBox(width: 100,),
        Container(
          height: 150,
          width:150,
          child: Image.asset('assets/images/pablo-862.png'),
        ),
      ],
    ),
  );
}

//searsh of category
Padding buildPaddingSearsh(Size size) {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: size.width*.05),
    child: Container(
      height: 60,
      width: size.height,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: Icon(Icons.dialpad_sharp,color: Colors.grey,size: 20,),
              hintText: 'bla bla bla bla bla',
              hintStyle: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
              prefixIcon: Icon(Icons.search,color: Colors.grey,size: 25,),
              contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 16)
          ),
        ),
      ),
    ),
  );
}

//animal image
Container buildContaineranimalImage() {
  return Container(
    width: 170,
    height: 180,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
          'https://images.unsplash.com/photo-1568572933382-74d440642117?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
        ),
      ),
      color: Colors.black,
      border: Border.all(
        color: Colors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

