import 'package:flutter/material.dart';
import 'package:tcc_prefeitura/utils/styles.dart';

import '../widgets/home/home_app_bar.dart';
import '../widgets/home/home_bottom_bar.dart';
import '../widgets/Point_1/post_screen.dart';
import '../widgets/Point_2/post_screen.dart';
import '../widgets/Point_3/post_screen.dart';
import '../widgets/Point_4/post_screen.dart';
import '../widgets/Point_5/post_screen.dart';
import '../widgets/Point_6/post_screen.dart';
import '../widgets/Point_7/post_screen.dart';
import '../widgets/Point_8/post_screen.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var category = [
    'Melhores Lugares',
    'Mais visitados',
    'Favoritos',
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Row(
                //   children: [
                //     Expanded(
                //         child: SizedBox(
                //       height: 200,
                //       child: ListView.builder(
                //           itemCount: 6,
                //           scrollDirection: Axis.horizontal,
                //           shrinkWrap: true,
                //           itemBuilder: (BuildContext context, int index) {
                //             return InkWell(
                //               onTap: () {
                //                 Navigator.push(
                //                     context,
                //                     MaterialPageRoute(
                //                       builder: (context) => const PostScreen(),
                //                     ));
                //               },
                //               child: Container(
                //                 width: 160,
                //                 padding: const EdgeInsets.all(20),
                //                 margin: const EdgeInsets.only(left: 15),
                //                 decoration: BoxDecoration(
                //                   color: Colors.black,
                //                   borderRadius: BorderRadius.circular(15),
                //                   image: DecorationImage(
                //                     image: AssetImage(
                //                         "assets/images/ponto${index + 1}.png"),
                //                     fit: BoxFit.cover,
                //                     opacity: 0.7,
                //                   ),
                //                 ),
                //                 child: Column(
                //                   children: [
                //                     Container(
                //                       alignment: Alignment.topRight,
                //                       child: const Icon(
                //                         Icons.bookmark_border_outlined,
                //                         color: Colors.white,
                //                         size: 30,
                //                       ),
                //                     ),
                //                     const Spacer(),
                //                     Container(
                //                         alignment: Alignment.bottomLeft,
                //                         child: Text(
                //                           "Nome da Cidade",
                //                           style: textwelcome,
                //                         )),
                //                   ],
                //                 ),
                //               ),
                //             );
                //           }),
                //     )),
                //   ],
                // ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: heading4,
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto1.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Bosque Municipal de Pinhais",
                                      style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen2(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto2.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Panorâmico Parque Clube",
                                      style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen3(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto3.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Expotrade Center", style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen4(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto4.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Lugar Aleatório", style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen5(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto5.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Capela Nossa Senhora", style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen6(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto6.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Parque Newton Freire Maia",
                                      style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen7(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto7.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Parque Newton Freire Maia",
                                      style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PostScreen8(),
                                    ));
                              },
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/ponto8.png",
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26, blurRadius: 30)
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Parque das Águas", style: heading3),
                                  const Icon(Icons.more_vert, size: 30),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "4.5",
                                  style: heading4,
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
