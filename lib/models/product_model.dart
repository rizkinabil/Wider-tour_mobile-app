// class ProductModel {
//   int id;
//   String name;
//   double price;
//   String description;
//   String tags;
//   DateTime createdAt;
//   DateTime updatedAt;


//   ProductModel(
//     this.id,
//     this.name,
//     this.price,
//     this.description,
//     this.tags,
//     this.createdAt,
//     this.updatedAt,    
//   );

//   ProductModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     price = double.parse(json['price'].toString());
//     description = json['description'];
//     tags = json['tags'];
//     createdAt = DateTime.parse(json['created_at']);
//     updatedAt = DateTime.parse(json['updated_at']);
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'price': price,
//       'description': description,
//       'tags': tags,
//       'created_at': createdAt.toString(),
//       'updated_at': updatedAt.toString(),
//     };
//   }
// }

// class UninitializedProductModel extends ProductModel {}
