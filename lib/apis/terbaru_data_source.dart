import 'base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadTerbaru() {
    return BaseNetwork.get("terbaru");
  }

  Future<Map<String, dynamic>> loadDetailTerbaru(int idDiterima) {
    String id = idDiterima.toString();
    return BaseNetwork.get("terbaru/$id");
  }

  // Future<List<dynamic>>
}
