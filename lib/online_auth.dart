import 'package:http/http.dart' as http;

const String Server="http://124.29.202.191:8181/ords/skr2/";
const String directory=Server+"app/";
class Auth{
  static Future<dynamic> signIn2(String phoneno,String password) async {
    var url=Uri.parse(directory+'getlogin?pin_cmp=20&pin_kp=A&pin_keyword1=X09&pin_keyword2=912&pin_userid=$phoneno&pin_password=$password&pin_version=130422');
    final response = await http.get(url);
    return response;
  }
}