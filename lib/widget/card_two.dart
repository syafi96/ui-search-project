import 'package:flutter/material.dart';

import '../models/data.dart';

class MyCardTwo extends StatelessWidget {
  final data alldatas;
  const MyCardTwo({Key? key, required this.alldatas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(alldatas.gambar),
                  fit: BoxFit.contain,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 200,
                    child: Text(
                      alldatas.judul,
                      style: const TextStyle(
                          fontSize: 14, fontFamily: 'PoppinsMedium'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: 200,
                    child: Row(
                      children: [
                        Text(
                          alldatas.perusahaan,
                          style: const TextStyle(
                            fontSize: 11,
                            fontFamily: 'PoppinsLight',
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.location_on,
                          size: 15,
                          color: Color(0xff2B94E7),
                        ),
                        Text(
                          alldatas.lokasi,
                          style: const TextStyle(
                            fontSize: 11,
                            fontFamily: 'PoppinsLight',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: 200,
                    child: Text(
                      '2 Hr ago',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'PoppinsMedium',
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
