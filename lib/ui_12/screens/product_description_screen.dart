import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_12/bottom_nav_bar.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "bagzz",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/assets12/images/Group 21.png"),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/assets12/icons/Main.svg"),
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: [
            Container(
              height: 198,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/assets12/images/ArtsyBig.png"),
                      const SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "Artsy\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.black,
                                      height: 1)),
                              TextSpan(
                                text: "Wallet with chain\n",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.black,
                                    height: 2),
                              ),
                              TextSpan(
                                text: "Style #36252 0YK0G 1000\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(132, 132, 132, 1),
                                  height: 1.5,
                                ),
                              ),
                              TextSpan(
                                text: "\$564",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.black,
                                    height: 2),
                              ),
                            ]),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 31,
                            width: 97,
                            decoration:
                                const BoxDecoration(color: Colors.black),
                            child: const Center(
                              child: Text(
                                "BUY NOW",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "ADD TO CART",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Container(
                            height: 2,
                            width: 92,
                            decoration: BoxDecoration(color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset("assets/assets12/icons/like.png"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 60),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Description",
            //       style: TextStyle(
            //           fontWeight: FontWeight.w700,
            //           fontSize: 14,
            //           color: Colors.black,
            //           fontFamily: 'WorkSans'),
            //     ),
            //     Text(
            //       "Shipping info",
            //       style: TextStyle(
            //           fontWeight: FontWeight.w700,
            //           fontSize: 14,
            //           color: Colors.black,
            //           fontFamily: 'WorkSans'),
            //     ),
            //     Text(
            //       "Payment options",
            //       style: TextStyle(
            //           fontWeight: FontWeight.w700,
            //           fontSize: 14,
            //           color: Colors.black,
            //           fontFamily: 'WorkSans'),
            //     ),
            //   ],
            // ),
            DefaultTabController(
              length: 3,
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.3,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: const TabBar(
                          isScrollable: true,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.white60,
                          indicatorColor: Colors.black,
                          tabs: [
                            Tab(
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'WorkSans',
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Shipping info",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'WorkSans',
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Payment options",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'WorkSans',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: TabBarView(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "As in handbags, the double ring and bar design\ndefines the wallet shape, highlighting the front\nflap closure which is tucked inside the hardware.\nCompleted with an organizational interior, the\nblack leather wallet features a detachable chain.\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Material & care\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: "WorkSans",
                                        color: Colors.black,
                                        height: 4),
                                  ),
                                  TextSpan(
                                    text:
                                        "All products are made with carefully selected\nmaterials. Please handle with care for longer\nproduct life.\n- Protect from direct light, heat and rain. Should it\n   become wet, dry it immediately with a soft cloth\n- Store in the provided flannel bag or box\n- Clean with a soft, dry cloth",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "Pre-order, Made to Order and DIY items will ship\non the estimated date noted on the productd\ndescription page. These items will ship through\nPremium Express once they become available.\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Return policy\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: "WorkSans",
                                        color: Colors.black,
                                        height: 4),
                                  ),
                                  TextSpan(
                                    text:
                                        "Returns may be made by mail or in store. The\nreturn window for online purchases is 30 days (10\ndays in the case of beauty items) from the date of\ndelivery. You may return products by mail using\nthe complimentary prepaid return label included\nwith your order, and following the return\ninstructions provided in your digital invoice.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "We accepts the following forms of payment for\nonline purchases:\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(height: 50),
                                  ),
                                  TextSpan(
                                    text:
                                        "PayPal may not be used to purchase Made to\nOrder Decor or DIY items.\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: SizedBox(height: 50),
                                  ),
                                  TextSpan(
                                    text:
                                        "The full transaction value will be charged to your\ncredit card after we have verified your card\ndetails, received credit authorisation, confirmed\navailability and prepared your order for shipping.\nFor Made To Order, DIY, personalised and selected\nDécor products, payment will be taken at the time\nthe order is placed.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: "WorkSans",
                                      color: Color.fromRGBO(91, 91, 91, 1),
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
