import 'package:flutter/material.dart';
import 'package:gdsc_task/consts/colors/colors.dart';
import 'package:gdsc_task/consts/widget/const_widget.dart';
import 'package:gdsc_task/widgets/componants/default_button/default_button.dart';

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Center(
          child: Column(
            children: [
              Container(
                height: size.height * .4,
                width: size.width,
                color: Colors.pinkAccent,
                child: Stack(
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1568572933382-74d440642117?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=435&q=80',
                      fit: BoxFit.fill,
                      width: size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context,);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.white,
                            ),
                          ),
                          buildUserImage()
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            Icon(
                              Icons.male,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bostom terrires',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey),
                                ),
                                Text(
                                  '3year',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )
                              ],
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.pinkAccent,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: KmainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Los Angeles, CA',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildUserImage(),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmad Ahmad',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'bla bla',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              'bla bla bla bla',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'There are so many species of animals in the world. The entire animal world may be classified into five'
                          'types. They are amphibians, reptiles, mammals, birds, and insects. The animals that live both on land and',
                          style: TextStyle(fontSize: 16, color: Colors.black,),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(child: DefaultButton2()),
                            Flexible(
                              child: DefaultButton(),
                              flex: 3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
