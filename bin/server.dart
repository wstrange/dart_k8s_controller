import 'dart:async';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'dart:convert';
import 'package:dart_k8s_controller/ig_controller.dart';


void main(List<String> args) {

  var port = 8080;


  var handler = const shelf.Pipeline()
      .addMiddleware(shelf.logRequests())
      .addHandler(_echoRequest);

  runZoned((){
  io.serve(handler, '0.0.0.0', port).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
  });
}

var igController = new IGController();


// reference a dart source file in lib/
Future<shelf.Response> _echoRequest(shelf.Request request) async {
  var s = await request.readAsString();
  var json = jsonDecode(s);
  var response = igController.sync(json);
  return new shelf.Response.ok(jsonEncode(response));
}
