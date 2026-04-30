import 'package:dio/dio.dart';
import '../../constants/strings.dart';

class QuotesWebServices {

  late Dio dio;

  QuotesWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: quotesBaseurl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
    dio = Dio(options);
  }


    Future<Map<String, dynamic>> getRandomQuote() async {
try{
  Response response = await dio.get('random');
  //print(response.data.toString());
  return response.data ;
  }catch(e){
  //    print(e.toString());
      return {};
      }
    }
  }

