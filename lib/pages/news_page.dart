import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Top Headlines"),
        ),
        body: FutureBuilder(
            future: getTopHeadlines(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return _buildListWidet(snapshot.data);
              } else if (snapshot.hasError) {
                return Center(child: Text(snapshot.error));
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }

  Future<http.Response> getTopHeadlines() async {
    const String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=458fcfab750b4e309fcdffd9f8b11769";
    return http.get(url);
  }

  Widget _buildListWidet(http.Response data) {
    List articles  = json.decode(data.body)["articles"];
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(4.0),
          elevation: 6.0,
          child: Column(
            children: [
              Image.network(articles[index]["urlToImage"]),
              ListTile(
                title: Text(articles[index]["title"], style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
                subtitle: Text(articles[index]["description"]),
                onTap: () => _launchURL(articles[index]["url"]),
              )
            ],
          ),
        );
      }
      );
   
}
_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}
