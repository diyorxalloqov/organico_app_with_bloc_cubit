// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:organico_with_bloc_cubit/models/productsModel.dart';

class InfoPage extends StatefulWidget {
  final AllData info;
  final dynamic shop;

  const InfoPage({super.key, required this.info, required this.shop});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171725),
      appBar: AppBar(
        backgroundColor: const Color(0xff171725),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))
        ],
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  widget.info.img,
                  width: 220,
                ),
              ),
              Text(
                widget.info.title,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.shop.toString(),
                    style:
                        const TextStyle(fontSize: 18, color: Color(0xff92929D)),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            decrement();
                          },
                          icon: Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Color(0xff2ECC71),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Icon(
                              Icons.exposure_minus_1,
                              color: Colors.white,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        _counter.toString(),
                        style:
                            const TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            increment();
                          },
                          icon: Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                                color: Color(0xff2ECC71),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Icon(
                              Icons.exposure_plus_1,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "${widget.info.price} /kg",
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Details",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fru..Read more",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff92929D)),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: const Center(
                    child: Icon(Icons.access_time),
                  ),
                ),
                title: const Text(
                  "Time Delivery",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "25-30",
                  style: TextStyle(color: Color(0xff92929D)),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: const Center(
                    child: Icon(Icons.access_time),
                  ),
                ),
                title: const Text(
                  "Category",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "Drinks",
                  style: TextStyle(color: Color(0xff92929D)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffAA0023),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          fixedSize: const Size(298, 52)),
                      child: const Center(
                          child: Text(
                        "Add to cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ))),
                  const SizedBox(
                    width: 20,
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xff171725),
                    child: Icon(Icons.message),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void increment() {
    _counter++;
    setState(() {});
  }

  void decrement() {
    _counter--;
    setState(() {});
  }
}
