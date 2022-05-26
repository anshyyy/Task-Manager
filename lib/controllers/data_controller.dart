import 'package:get/get.dart';
import 'package:task_manager/services/services.dart';

class DataController extends GetxController {
  DataService service = DataService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;
  Future<void> getData() async {
    _isLoading = true;
    Response response = await service.getData();
    print(response.statusCode);
    // if (response.statusCode == 200) {
    //   _myData = response.body;
    // } else {
    //   print(response.statusCode);
    //   print("we dont get");
    // }
    //print(response.body);
  }
}
