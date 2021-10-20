import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_task/consts/colors/colors.dart';
import 'package:gdsc_task/consts/widget/const_widget.dart';
import 'package:gdsc_task/screens/information_screen/information_screen.dart';
import 'package:gdsc_task/widgets/componants/animal_card/ani,mal_card.dart';
import 'package:gdsc_task/widgets/drawer1/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KmainColor,
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (ctx) => IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () => Scaffold.of(ctx).openDrawer(),
                  ),
                ),
                buildUserImage(),
              ],
            ),
            buildContainerHeader(size),
            buildPaddingSearsh(size),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  color: Color(0xffECEAEB),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Waiting for you',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Expanded(
                          child: GridView.builder(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    mainAxisExtent: 270,
                                    childAspectRatio: 3 / 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemBuilder: (ctx, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (ctx)=>InformationScreen()),
                                  );
                                },
                                child: AnimalCard(),
                              );
                            },
                            itemCount: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
