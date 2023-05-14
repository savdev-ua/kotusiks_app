import 'package:dio/dio.dart';
import 'package:kotusiks_app/features/base/data/models/fact_model.dart';
import 'package:retrofit/retrofit.dart';

part 'base_service.g.dart';

@RestApi()
abstract class BaseService {
  factory BaseService(Dio dio) = _BaseService;

  @GET('{url}')
  Future<FactModel> getFact(
    @Path('url') String url);
}
