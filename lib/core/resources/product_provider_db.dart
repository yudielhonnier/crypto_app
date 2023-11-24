// import 'dart:io';

// import 'package:path_provider/path_provider.dart';

// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DBProvider {
//   static Database? _database;
//   static final DBProvider? db = DBProvider._();

//   DBProvider._();

//   Future<Database?> get database async {
//     if (_database != null) return _database;

//     _database = await initDB();
//     return _database;
//   }

//   initDB() async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     final path = join(documentsDirectory.path, 'YcryptoDB.db');

//     return await openDatabase(path, version: 1, onOpen: (db) {},
//         onCreate: (Database db, int version) async {
//       await db.execute('CREATE TABLE Tickets ('
//           'title TEXT,'
//           'value INTEGER,'
//           'available BOOLEAN NOT NULL CHECK (available in (0,1)),'
//           'fotoUrl TEXT'
//           ')');
//     });
//   }

//   // insert
//   neWProduct(ProductModel newProduct) async {
//     final db = await database;
//     final res = await db!.insert('Products', newProduct.toJson());

//     return res;
//   }

//   //select by title
//   Future<ProductModel?> getProductId(String title) async {
//     final db = await database;
//     final res =
//         await db!.query('Products', where: 'title=?', whereArgs: [title]);

//     return res.isNotEmpty ? ProductModel.fromJson(res.first) : null;
//   }

//   //select all
//   Future<List<ProductModel>> getAllProducts() async {
//     final db = await database;
//     final res = await db!.query('Products');

//     List<ProductModel> list = res.isNotEmpty
//         ? res.map((product) => ProductModel.fromJson(product)).toList()
//         : [];

//     return list;
//   }

//   //select by Available
//   Future<List<ProductModel>> getProductsByAvailable(bool availale) async {
//     final db = await database;
//     final res =
//         await db!.rawQuery("SELECT * FROM Products WHERE available='$availale");

//     List<ProductModel> list = res.isNotEmpty
//         ? res.map((product) => ProductModel.fromJson(product)).toList()
//         : [];

//     return list;
//   }

//   //update
//   Future<int> updateProduct(ProductModel newProduct) async {
//     final db = await database;
//     final res = await db!.update('Products', newProduct.toJson(),
//         where: 'title=?', whereArgs: [newProduct.title]);

//     return res;
//   }

//   //delete by title
//   Future<int> deleteProduct(String title) async {
//     final db = await database;
//     final res =
//         await db!.delete('Products', where: 'title=?', whereArgs: [title]);

//     return res;
//   }

//   //delete by title
//   Future<int> deleteAll() async {
//     final db = await database;
//     final res = await db!.rawDelete('DELETE FROM Products');

//     return res;
//   }
// }
