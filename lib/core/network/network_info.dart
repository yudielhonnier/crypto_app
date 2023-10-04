import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity connectivity;

  NetworkInfoImpl(this.connectivity);

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    return !(connectivityResult == ConnectivityResult.none);
    // connectivityResult == ConnectivityResult.mobile ||
    //     connectivityResult == ConnectivityResult.wifi;
  }
}
