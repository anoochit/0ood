import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';

Future<void> main() async {
  var app = Angel();
  var http = AngelHttp(app);
  await http.startServer();
  print("Angel server listening at ${http.uri}");

  app.get('/', (req, res) => res.write('Hello, world!'));
}
