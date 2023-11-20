



import 'base/base_response_model.dart';
import 'model/dashboard/dashboard_response.dart';



abstract class Deserializer {
  static final Map<Type, Function(Map<String, dynamic>)> _deserializers = {

    DashboardResponse: (Map<String, dynamic> json) => DashboardResponse.fromJson(json),


  };

  static Response deserialize<Response extends BaseResponseModel>(
      Map<String, dynamic> json) {
    print("JSON====>$json");

    return Deserializer._deserializers[Response]!(json);
  }
}
