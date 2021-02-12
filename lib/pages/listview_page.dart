import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<String> names = [
    "Mohan",
    "Sohan",
    "Mohan",
    "Sohan",
    "Vikash",
    "Richa",
    "Nandika",
    "Anuj",
    "Payal",
    "Ankit",
    "Mohan",
    "Sohan",
    "Vikash",
    "Richa",
    "Nandika",
    "Anuj",
    "Payal",
    "Ankit",
    "Mohan",
    "Sohan",
    "Vikash",
    "Richa",
    "Nandika",
    "Anuj",
    "Payal",
    "Ankit"
        "Vikash",
    "Richa",
    "Nandika",
    "Anuj",
    "Payal",
    "Ankit"
  ];

  List data = [
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    },
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    },
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    },
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    },
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    },
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    },
    {
      "author": "Rick Broida",
      "title":
          "The Cheapskate Hall of Fame: Best cheap products of all time - CNET",
      "description": "See the first seven inductees to earn this top honor.",
      "url":
          "https://www.cnet.com/news/the-cheapskate-hall-of-fame-best-cheap-products-of-all-time/",
      "urlToImage":
          "https://cnet4.cbsistatic.com/img/nA4iA5b-V8txAw4kzOty0Oizmvs=/1200x630/2021/02/09/b9c1ecae-e678-4129-839d-5932876b3729/cnet-cheapskate-hof-promo-site.jpg",
      "publishedAt": "2021-02-10T13:30:00Z",
      "content":
          "I've been at the cheapskate game for over 13 years, and in that time I've tested hundreds of products and written about thousands more. Along the way, I've identified a select few that really stand o… [+6711 chars]"
    }

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 6.0,
                margin: const EdgeInsets.all(4.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  title: Text(data[index]['title']),
                  subtitle: Text(data[index]["content"]),
                  leading: Image.network(data[index]['urlToImage']),
                  onTap:() { _launchURl("https://facebook.com");}
                )
              );
            }));
  }

_launchURl(url) async {
  if(await canLaunch(url)) {
    await launch(url);
  }else {
    throw 'Could not launch $url';
  }
}
} 
