// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) => ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
    final bool status;
    final List<Location> location;
    final List<Category> category;
    final List<AllData> vegetables;
    final List<AllData> fruits;
    final List<AllData> meats;
    final List<AllData> drinks;
    final List<AllData> allData;

    ProductsModel({
        required this.status,
        required this.location,
        required this.category,
        required this.vegetables,
        required this.fruits,
        required this.meats,
        required this.drinks,
        required this.allData,
    });

    factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        status: json["status"],
        location: List<Location>.from(json["Location"].map((x) => Location.fromJson(x))),
        category: List<Category>.from(json["Category"].map((x) => Category.fromJson(x))),
        vegetables: List<AllData>.from(json["Vegetables"].map((x) => AllData.fromJson(x))),
        fruits: List<AllData>.from(json["Fruits"].map((x) => AllData.fromJson(x))),
        meats: List<AllData>.from(json["Meats"].map((x) => AllData.fromJson(x))),
        drinks: List<AllData>.from(json["Drinks"].map((x) => AllData.fromJson(x))),
        allData: List<AllData>.from(json["AllData"].map((x) => AllData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "Location": List<dynamic>.from(location.map((x) => x.toJson())),
        "Category": List<dynamic>.from(category.map((x) => x.toJson())),
        "Vegetables": List<dynamic>.from(vegetables.map((x) => x.toJson())),
        "Fruits": List<dynamic>.from(fruits.map((x) => x.toJson())),
        "Meats": List<dynamic>.from(meats.map((x) => x.toJson())),
        "Drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
        "AllData": List<dynamic>.from(allData.map((x) => x.toJson())),
    };
}

class AllData {
    final String title;
    final String price;
    final String img;

    AllData({
        required this.title,
        required this.price,
        required this.img,
    });

    factory AllData.fromJson(Map<String, dynamic> json) => AllData(
        title: json["title"],
        price: json["price"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "img": img,
    };
}

class Category {
    final String title;
    final String img;

    Category({
        required this.title,
        required this.img,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
    };
}

class Location {
    final String title;

    Location({
        required this.title,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
    };
}
