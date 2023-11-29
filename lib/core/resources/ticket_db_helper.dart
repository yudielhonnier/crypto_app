import 'package:crypto_app/features/shared/data/models/ticket_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class TicketDatabaseHelper {
  static final TicketDatabaseHelper _instance = TicketDatabaseHelper.internal();
  factory TicketDatabaseHelper() => _instance;

  static Database? _database;

  TicketDatabaseHelper.internal();

  // Define the table name and column names
  final String tableTickets = 'tick';
  String columnId = 'id';
  String columnSymbol = 'symbol';
  String columnName = 'name';
  String columnImage = 'image';
  String columnCurrentPrice = 'current_price';
  String columnMarketCap = 'market_cap';
  String columnMarketCapRank = 'market_cap_rank';
  String columnFullyDilutedValuation = 'fully_diluted_valuation';
  String columnTotalVolume = 'total_volume';
  String columnHigh24H = 'high_24h';
  String columnLow24H = 'low_24h';
  String columnPriceChange24H = 'price_change_24h';
  String columnPriceChangePercentage24H = 'price_change_percentage_24h';
  String columnMarketCapChange24H = 'market_cap_change_24h';
  String columnMarketCapChangePercentage24H =
      'market_cap_change_percentage_24h';
  String columnCirculatingSupply = 'circulating_supply';
  String columnTotalSupply = 'total_supply';
  String columnMaxSupply = 'max_supply';
  String columnAth = 'ath';
  String columnAthChangePercentage = 'ath_change_percentage';
  String columnAthDate = 'ath_date';
  String columnAtl = 'atl';
  String columnAtlChangePercentage = 'atl_change_percentage';
  String columnAtlDate = 'atl_date';
  String columnRoi = 'roi';
  String columnLastUpdated = 'last_updated';

  Future<Database> get database async {
    // if (_database != null) {
    //   return _database!;
    // }

    _database = await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, 'tickets1.db');
    print("debbug path db created");

    return await openDatabase(
      path,
      version: 1,
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
      $columnFullyDilutedValuation REAL,
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

    return TicketModel.mockTicketEmpty;
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
