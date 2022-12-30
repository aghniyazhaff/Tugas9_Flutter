import 'package:counter_7/model_mywatchlist.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<MyWatchlist>> fetchWatchlist() async {
  var url =
      Uri.parse('https://tugas2pbpaghniya.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object MyWatchlist
  List<MyWatchlist> listMyWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchlist.add(MyWatchlist.fromJson(d));
    }
  }

  return listMyWatchlist;
}
