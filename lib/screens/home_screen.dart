import 'package:e_commerce_app/core/sample_data.dart';
import 'package:e_commerce_app/helpers/custom_svg_icon.dart';
import 'package:e_commerce_app/screens/products/product_item.dart';
import 'package:e_commerce_app/theme/themeData.dart';
import 'package:e_commerce_app/widgets/headingText.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;

  int currentNavbar = 0;

  changeNavBar(value) {
    setState(() {
      currentNavbar = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const SvgIcon(
        //     path: "logoIC",
        //     size: 50,
        //   ),
        //   actions: const [
        //     Padding(
        //       padding: EdgeInsets.only(right: 15),
        //       child: CircleAvatar(
        //         backgroundColor: primaryColor,
        //         child: Icon(
        //           Icons.notifications_outlined,
        //           color: Colors.white,
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext ctx, bool val) => [
            const SliverAppBar(
              pinned: true,
              floating: true,
              centerTitle: true,
              title: SvgIcon(
                path: "logoIC",
                size: 50,
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: "    S e a r c h.....",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: SvgIcon(path: "searchIC"),
                        ),
                        suffixIconConstraints: const BoxConstraints(
                            maxHeight: 40,
                            maxWidth: 40,
                            minHeight: 40,
                            minWidth: 40),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const HeadingText(
                    text: "Hi, Amith!",
                    fontWeight: FontWeight.bold,
                  ),
                  const HeadingText(
                    text: "Find out our latest launch",
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              child: Image.asset(
                                "assets/images/s1.png",
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/logoIMG.png",
                                height: 50,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                    text: "LV Signature Round sunglasses",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  HeadingText(
                                    text: "₹ 49,000",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(20), color: Colors.red),
                    child: TabBar(
                      tabAlignment: TabAlignment.start,
                      onTap: (i) {
                        setState(() {
                          currentTab = i;
                        });
                      },
                      isScrollable: true,
                      indicator: BoxDecoration(
                        //  color: Colors.red[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   labelColor: Colors.black,
                      dividerColor: Colors.transparent,
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        Tab(
                            icon: HeadingText(
                          text: "Accessories",
                          color: currentTab != 0 ? Colors.grey : Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                        Tab(
                            icon: HeadingText(
                          text: "Clothing",
                          color: currentTab != 1 ? Colors.grey : Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                        Tab(
                            icon: HeadingText(
                          text: "Footwear",
                          color: currentTab != 2 ? Colors.grey : Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: TabBarView(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 250,
                            child: ListView.separated(
                                physics: const BouncingScrollPhysics(),
                                separatorBuilder:
                                    (BuildContext ctx, int index) =>
                                        const SizedBox(
                                          width: 20,
                                        ),
                                itemCount: products.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  final data = products[index];
                                  return ProductItem(
                                      title: data["title"],
                                      brand: data["brand"],
                                      price: data["price"],
                                      image: data["image"],
                                      isFavorite: data["isFavorite"]);
                                }),
                          )
                        ],
                      ),
                      const Center(
                        child: HeadingText(text: "Clothing"),
                      ),
                      const Center(
                        child: HeadingText(text: "Footwear"),
                      ),
                    ]),
                  ),

                  // sales card

                  const HeadingText(
                    text: "SALE",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor),
                    height: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                    text: "GET 10% OFF",
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  HeadingText(
                                    text:
                                        "Shop your favorites' at 10% off on\nselect products and categories.",
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                child: const HeadingText(
                                  text: "Shop Now",
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            child: Image.asset(
                              "assets/images/sale1.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //! best deals
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(
                        text: "Best Deals",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (BuildContext ctx, int index) =>
                            const SizedBox(
                              width: 20,
                            ),
                        itemCount: products.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final data = products[index];
                          return ProductItem(
                              title: data["title"],
                              brand: data["brand"],
                              price: data["price"],
                              image: data["image"],
                              isFavorite: data["isFavorite"]);
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: BottomNavigationBar(
              onTap: (value) {
                changeNavBar(value);
              },
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: primaryColor,
              items: [
                BottomNavigationBarItem(
                    icon: currentNavbar == 0
                        ? Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const SvgIcon(path: "homeIC"))
                        : const SvgIcon(
                            path: "homeIC",
                            color: Colors.white,
                          ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: currentNavbar == 1
                        ? Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const SvgIcon(path: "favoriteIC"))
                        : const SvgIcon(
                            path: "favoriteIC",
                            color: Colors.white,
                          ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: currentNavbar == 2
                        ? Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const SvgIcon(path: "cartIC"))
                        : const SvgIcon(
                            path: "cartIC",
                            color: Colors.white,
                          ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: currentNavbar == 3
                        ? Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: const SvgIcon(path: "personIC"))
                        : const SvgIcon(
                            path: "personIC",
                            color: Colors.white,
                          ),
                    label: ""),
              ]),
        ),
      ),
    );
  }
}
