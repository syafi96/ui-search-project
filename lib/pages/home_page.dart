import 'package:flutter/material.dart';
import '../models/new_data.dart';
import '../models/recomended_data.dart';
import '../widget/card_two.dart';
import '../widget/card_one.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  Container(
                    height: 56,
                    width: 62,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/avatar.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 56,
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 11,
                              width: 150,
                              child: Text(
                                "Welcome back",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'PoppinsMedium',
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 26,
                                width: 150,
                                child: Text(
                                  "Syafi Praba",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "PoppinsBold",
                                  ),
                                )),
                            SizedBox(
                              height: 9,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                    width: 26,
                    child: Stack(
                      children: const [
                        Center(
                          child: Icon(
                            Icons.notifications,
                            size: 26,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 3.5,
                              backgroundColor: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              height: 50,
              width: width,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search job or company name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: "PoppinsMedium",
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recomended for you",
                    style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 16),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                      fontFamily: 'PoppinsLight',
                      fontSize: 16,
                      color: Color(0xff2B94E7),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 150,
              width: width,
              child: ListView.separated(
                  padding: const EdgeInsets.only(
                    left: 17,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyCardOne(
                      alldatas: recomdata[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: recomdata.length),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Most recent jobs",
                    style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 16),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                        fontFamily: 'PoppinsLight',
                        fontSize: 16,
                        color: Color(0xff2B94E7)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: height * 0.33,
              child: ListView.separated(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                itemBuilder: (context, index) {
                  return MyCardTwo(
                    alldatas: newdata[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemCount: newdata.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff2B94E7),
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Color(0xff2B94E7),
            ),
            label: 'bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Color(0xff2B94E7),
            ),
            label: 'message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Color(0xff2B94E7),
            ),
            label: 'account',
          )
        ],
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
