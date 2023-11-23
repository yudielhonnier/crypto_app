import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class TicketDatabaseHelper {
  static final TicketDatabaseHelper _instance = TicketDatabaseHelper.internal();
  factory TicketDatabaseHelper() => _instance;

  static Database? _database;

  TicketDatabaseHelper.internal();

  // Define the table name and column names
  final String tableTickets = 'tickets';
  String columnId = 'id';
  String columnSymbol = 'symbol';
  String columnName = 'name';
  String columnImage = 'image';
  String columnCurrentPrice = 'currentPrice';
  String columnMarketCap = 'marketCap';
  String columnMarketCapRank = 'marketCapRank';
  String columnFullyRilutedValuation = 'fullyRilutedValuation';
  String columnTotalVolume = 'totalVolume';
  String columnHigh24H = 'high_24H';
  String columnLow24H = 'low_24H';
  String columnPriceChange24H = 'priceChange_24H';
  String columnPriceChangePercentage24H = 'priceChangePercentage_24H';
  String columnMarketCapChange24H = 'marketCapChange_24H';
  String columnMarketCapChangePercentage24H = 'marketCapChangePercentage_24H';
  String columnCirculatingSupply = 'circulatingSupply';
  String columnTotalSupply = 'totalSupply';
  String columnMaxSupply = 'maxSupply';
  String columnAth = 'ath';
  String columnAthChangePercentage = 'athChangePercentage';
  String columnAthDate = 'athDate';
  String columnAtl = 'atl';
  String columnAtlChangePercentage = 'atlChangePercentage';
  String columnAtlDate = 'atlDate';
  String columnRoi = 'roi';
  String columnLastUpdated = 'lastUpdated';

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, 'tickets.db');
    print("debbug path db created");

    return await openDatabase(
      path,
      version: 2,
      onOpen: (db) {},
      onCreate: _createDb,
    );
  }

  void _createDb(Database db, int version) async {
    print("debbug creatinggggggg db");
    await db.execute('''
    CREATE TABLE $tableTickets (
      $columnId TEXT PRIMARY KEY,
      $columnSymbol TEXT,
      $columnName TEXT,
      $columnImage TEXT,
      $columnCurrentPrice REAL,
      $columnMarketCap REAL,
      $columnMarketCapRank INTEGER,
      $columnFullyRilutedValuation REAL,
      $columnTotalVolume REAL,
      $columnHigh24H REAL,
      $columnLow24H REAL,
      $columnPriceChange24H REAL,
      $columnPriceChangePercentage24H REAL,
      $columnMarketCapChange24H REAL,
      $columnMarketCapChangePercentage24H REAL,
      $columnCirculatingSupply REAL,
      $columnTotalSupply REAL,
      $columnMaxSupply REAL,
      $columnAth REAL,
      $columnAthChangePercentage REAL,
      $columnAthDate INTEGER,
      $columnAtl REAL,
      $columnAtlChangePercentage REAL,
      $columnAtlDate INTEGER,
      $columnRoi BLOB,
      $columnLastUpdated INTEGER
    )
  ''');
  }

  // CRUD functions

  Future<TicketModel> addTicket(TicketModel ticket) async {
    final db = await database;
    int inserted = await db.insert(tableTickets, ticket.toJson());
    return Future(() => (inserted == 1) ? ticket : TicketModel.mockTicket);
  }

  Future<TicketModel> getTicket(String id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableTickets,
      where: '$columnId = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return TicketModel.fromJson(maps.first);
    }

    throw Exception('Ticket not found!');
  }

  Future<List<TicketModel>> getAllTickets() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(tableTickets);

    return List.generate(maps.length, (i) {
      return TicketModel.fromJson(maps[i]);
    });
  }

  Future<void> updateTicket(TicketModel ticket) async {
    final db = await database;
    await db.update(
      tableTickets,
      ticket.toJson(),
      where: '$columnId = ?',
      whereArgs: [ticket.id],
    );
  }

  Future<void> deleteTicket(String id) async {
    final db = await database;
    await db.delete(
      tableTickets,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteAllTickets() async {
    final db = await database;
    await db.delete(tableTickets);
  }
}
