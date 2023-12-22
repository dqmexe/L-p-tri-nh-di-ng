import 'package:connection/models/lop.dart';
import 'package:connection/services/api_services.dart';

class LopRepository {
  Future<List<Lop>> getDsLop() async {
    List<Lop> list = [];
    list.add(Lop(ten: "---Chọn---"));
    final response = await ApiService().getDsLop();
    if (response != null) {
      var data = response.data['data'];
      for (var i in data) {
        var lop = Lop.fromJson(i);
        list.add(lop);
      }
    }

    return list;
  }
}