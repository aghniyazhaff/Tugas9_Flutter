import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
// ignore: unused_import
import 'package:counter_7/detail_mywatchlist.dart';
import 'package:counter_7/fetch_watchlist.dart';

class MyWatchlistDetailPage extends StatefulWidget {
  const MyWatchlistDetailPage({super.key, required movie});

  @override
  State<MyWatchlistDetailPage> createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlistDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const DrawerApp(),
        body: FutureBuilder(
            future: fetchWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Material(
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(5.0),
                                color: snapshot.data![index].fields.watched
                                    ? Colors.greenAccent
                                    : Colors.deepOrangeAccent,
                                shadowColor: Colors.blueGrey,
                                child: ListTile(
                                  onTap: () {
                                    // Route menu ke halaman utama
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MyWatchlistDetailPage(
                                            movie: snapshot.data![index],
                                          ),
                                        ));
                                  },
                                  title:
                                      Text(snapshot.data![index].fields.title),
                                  trailing: Checkbox(
                                    activeColor: Colors.limeAccent,
                                    checkColor: Colors.black,
                                    focusColor: Colors.lightGreenAccent,
                                    value: snapshot.data![index].fields.watched,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        snapshot.data![index].fields.watched =
                                            value!;
                                      });
                                    },
                                  ),
                                )),
                          ));
                }
              }
            }));
  }
}
