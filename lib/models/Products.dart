import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config.dart';

class Products {
  bool? success;
  List<ExistProducts>? existProducts;

  Products({this.success, this.existProducts});

  Products.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['existProducts'] != null) {
      existProducts = <ExistProducts>[];
      json['existProducts'].forEach((v) {
        existProducts!.add(new ExistProducts.fromJson(v));
      });
    }
  }

  get categories => null;


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.existProducts != null) {
      data['existProducts'] =
          this.existProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExistProducts {
  String? sId;
  String? productName;
  String? seoDescription;
  List<String>? searchKeywords;
  String? sku;
  List<Categories>? categories;
  List<String>? brandNames;
  List<ImageUrls>? imageUrls;
  String? conditions;
  int? initialStock;
  int? sellingPrice;
  List<String>? colors;
  List<String>? sizesOrCapacities;
  double? weight;
  String? createdAt;
  String? updatedAt;
  int? iV;

  ExistProducts(
      {this.sId,
        this.productName,
        this.seoDescription,
        this.searchKeywords,
        this.sku,
        this.categories,
        this.brandNames,
        this.imageUrls,
        this.conditions,
        this.initialStock,
        this.sellingPrice,
        this.colors,
        this.sizesOrCapacities,
        this.weight,
        this.createdAt,
        this.updatedAt,
        this.iV});

  ExistProducts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productName = json['productName'];
    seoDescription = json['seoDescription'];
    searchKeywords = json['searchKeywords'].cast<String>();
    sku = json['sku'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    brandNames = json['brandNames'].cast<String>();
    if (json['imageUrls'] != null) {
      imageUrls = <ImageUrls>[];
      json['imageUrls'].forEach((v) {
        imageUrls!.add(new ImageUrls.fromJson(v));
      });
    }
    conditions = json['conditions'];
    initialStock = json['initialStock'];
    sellingPrice = json['sellingPrice'];
    colors = json['colors'].cast<String>();
    sizesOrCapacities = json['sizesOrCapacities'].cast<String>();
    weight = double.parse(json['weight'].toString());
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['productName'] = this.productName;
    data['seoDescription'] = this.seoDescription;
    data['searchKeywords'] = this.searchKeywords;
    data['sku'] = this.sku;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    data['brandNames'] = this.brandNames;
    if (this.imageUrls != null) {
      data['imageUrls'] = this.imageUrls!.map((v) => v.toJson()).toList();
    }
    data['conditions'] = this.conditions;
    data['initialStock'] = this.initialStock;
    data['sellingPrice'] = this.sellingPrice;
    data['colors'] = this.colors;
    data['sizesOrCapacities'] = this.sizesOrCapacities;
    data['weight'] = this.weight;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Categories {
  String? categoryName;
  List<SubCategories>? subCategories;
  List<SubCategories>? subCategories2;
  String? sId;

  Categories(
      {this.categoryName, this.subCategories, this.subCategories2, this.sId});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
    if (json['subCategories'] != null) {
      subCategories = <SubCategories>[];
      json['subCategories'].forEach((v) {
        subCategories!.add(new SubCategories.fromJson(v));
      });
    }
    if (json['subCategories2'] != null) {
      subCategories2 = <SubCategories>[];
      json['subCategories2'].forEach((v) {
        subCategories2!.add(new SubCategories.fromJson(v));
      });
    }
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    if (this.subCategories != null) {
      data['subCategories'] =
          this.subCategories!.map((v) => v.toJson()).toList();
    }
    if (this.subCategories2 != null) {
      data['subCategories2'] =
          this.subCategories2!.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.sId;
    return data;
  }
}

class SubCategories {
  String? categoryName;

  SubCategories({this.categoryName});

  SubCategories.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    return data;
  }
}

class ImageUrls {
  String? key;
  String? url;
  String? sId;

  ImageUrls({this.key, this.url, this.sId});

  ImageUrls.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    url = json['url'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['url'] = this.url;
    data['_id'] = this.sId;
    return data;
  }
}