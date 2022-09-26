import 'package:flutter/material.dart';
import '../models/data.dart';

class MyCardOne extends StatelessWidget {
  final data alldatas;
  const MyCardOne({Key? key, required this.alldatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: width * 0.7,
        decoration: const BoxDecoration(
          color: Color(0xff2B94E7),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(alldatas.gambar),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: 22,
                          child: Text(
                            alldatas.judul,
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'PoppinsMedium',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: 14,
                          child: Text(
                            alldatas.perusahaan,
                            style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'PoppinsLight',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: 14,
                          child: Text(
                            '3 hours ago',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'PoppinsLight',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 23,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xff167AC8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Full Time',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'PoppinsLight',
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 23,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xff167AC8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Part Time',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'PoppinsLight',
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
