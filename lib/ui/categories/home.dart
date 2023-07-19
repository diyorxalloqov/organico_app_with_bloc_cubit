// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico_with_bloc_cubit/cubit/products/product_state.dart';
import 'package:organico_with_bloc_cubit/ui/pages/InfoPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size Mq = MediaQuery.sizeOf(context);
    final random = Random();
    final color = Color.fromARGB(
      230,
      random.nextInt(100),
      random.nextInt(100),
      random.nextInt(100),
    );
    final List<String> shop = [
      "Vegshop",
      "Popey shop",
      "Vegmarket",
      "Anyshop",
      "Vegmarket",
      "Vegshop",
      "Vegshop",
      "Vegshop",
      "Popey shop",
      "Vegmarket",
      "Anyshop",
      "Vegmarket",
      "Vegshop",
      "Vegshop",
      "Vegshop",
      "Popey shop",
      "Vegmarket",
      "Anyshop",
      "Vegmarket",
      "Vegshop",
      "Vegshop",
    ];
    return BlocBuilder<ProductCubit, ProductsState>(
        builder: (context, state) => Builder(builder: ((context) {
              if (state is ProductsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (state is ProductsErrorState) {
                return Center(
                  child: Text(
                    state.errorMessage.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              } else if (state is ProductsCompleteState) {
                return SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 19,
                        ),
                        Center(
                          child: Column(
                            children: [
                              const Text(
                                "Your Location",
                                style: TextStyle(color: Color(0xff92929D)),
                              ),
                              ExpansionTile(
                                iconColor: Colors.white,
                                collapsedIconColor: Colors.white,
                                title: const Text(
                                  textAlign: TextAlign.center,
                                  "Uzbekistan,Tashkent",
                                  style: TextStyle(color: Colors.white),
                                ),
                                children: <Widget>[
                                  SizedBox(
                                    height: 120,
                                    width: 150,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                state.products.location[index]
                                                    .title
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white),
                                              ),
                                            ));
                                      },
                                      itemCount: state.products.location.length,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor: Colors.blueGrey.shade300,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                hintText: "Search anything here",
                                hintStyle: const TextStyle(
                                    color: Color.fromARGB(255, 87, 87, 117))),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          leading: Image.asset("assets/Icon.png"),
                          title: const Text(
                            "You have 3 coupon \n",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: const Text(
                            "Let's use this cuopon",
                            style: TextStyle(color: Color(0xff92929D)),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xff92929D),
                                size: 24,
                              )),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Choose Category",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "See all",
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 134,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 123,
                                  height: 134,
                                  decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Image.network(
                                          state.products.category[index].img
                                              .toString(),
                                          width: 100,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        state.products.category[index].title
                                            .toString(),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: state.products.category.length,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Best Selling",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "See all",
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 280,
                              width: 400,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => InfoPage(
                                                  shop: shop[index],
                                                  info: state
                                                      .products.allData[index]),
                                            ));
                                      },
                                      child: Container(
                                        width: 196,
                                        decoration: BoxDecoration(
                                            color: color,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.network(
                                                state.products.allData[index]
                                                    .img,
                                                width: 100,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                state.products.allData[index]
                                                    .title,
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                shop[index],
                                                style: const TextStyle(
                                                    color: Color(0xff92929D)),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${state.products.allData[index].price}/kg",
                                                    style: const TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Container(
                                                        width: 36,
                                                        height: 36,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff2ECC71),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ))
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                                itemCount: state.products.allData.length,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            })));
  }
}
