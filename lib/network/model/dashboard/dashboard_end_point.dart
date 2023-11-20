import 'package:dio/dio.dart';

import '../../base/base_end_point.dart';
import 'dashboard_request.dart';
import 'dashboard_response.dart';


const String _path = '/upcomingMatches/20122cd5366e30f0847774c9d7698d30';

class DashboardEndpointUsecase
    extends GetEndpoint<DashboardRequest, DashboardResponse> {
  DashboardEndpointUsecase(Dio _dio) : super(_dio, _path);
}


