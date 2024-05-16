import 'package:http/http.dart' as http;

class Config {
 static const BACKEND_URL=String.fromEnvironment('BACKEND_URL',
       defaultValue: 'http://192.168.1.18:5000/api/v1/');

}