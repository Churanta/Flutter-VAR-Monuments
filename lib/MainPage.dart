import 'package:arplayground/Cars/alfaromeo6c.dart';
import 'package:arplayground/Cars/jaguarftype.dart';
import 'package:arplayground/Cars/jhtype.dart';
import 'package:arplayground/Cars/lambo.dart';
import 'package:arplayground/Cars/lamborgundi.dart';
import 'package:arplayground/Cars/mercedesamg.dart';
import 'package:arplayground/Cars/mustang.dart';
import 'package:arplayground/Cars/product6.dart';
import 'package:arplayground/Cars/product7.dart';
import 'package:arplayground/presentation/home.dart';
import 'package:flutter/material.dart';

import 'Cars/cyber.dart';
import 'Cars/ferari.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: CustomAppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Historical Monuments',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [
                          Colors.orangeAccent, // light blue
                          Colors.orangeAccent, // medium blue
                          Colors.orangeAccent, // deep blue
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(Rect.fromLTRB(0, 0, 0,
                          40)), // change the last value to increase/decrease the height of the gradient effect
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("View all");
                    // Your function here
                  },
                  child: Row(
                    children: [
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey[600],
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/e5/71/18/the-front-view.jpg?w=1200&h=-1&s=1',
                          'Martand Sun Temple',
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cyber(),
                              ),
                            );
                          },
                        ),
                        _buildCard(
                          'https://i.pinimg.com/736x/c9/70/41/c970415059f9121b51085fce2ba5d031.jpg',
                          'Babri Mosque',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Mercedsamg(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Somanath_mandir_%28cropped%29.jpg/1200px-Somanath_mandir_%28cropped%29.jpg',
                          'Somanath Temple',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Alfaromeo6c(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://www.jaogy.com/wp-content/uploads/2019/07/Picture2.jpg',
                          'Rohtas Fort',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Jaguarftype(),
                              ),
                            )
                          },
                        ),
                      ],
                    )),
              ),
              Divider(),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                  children: [
                    TextSpan(text: 'Historical Sites  '),
                    WidgetSpan(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // children: [
                        //   Image.network(
                        //     'https://www.pngall.com/wp-content/uploads/2017/05/Save-Earth-PNG-Picture.png',
                        //     width: 30, // set the width of the image
                        //     height: 30, // set the height of the image
                        //     fit: BoxFit.cover,
                        //   ),
                        //   // SizedBox(width: 8),
                        //   // Text('India'),
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Wrap(
                  spacing: 16, // spacing between cards
                  runSpacing: 16, // spacing between rows
                  children: [
                    _buildCard(
                      'https://upload.wikimedia.org/wikipedia/commons/4/4b/Hampi_virupaksha_temple.jpg',
                      'Hampi',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lambo(),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Fatehput_Sikiri_Buland_Darwaza_gate_2010.jpg/800px-Fatehput_Sikiri_Buland_Darwaza_gate_2010.jpg',
                      'Fatehpur Sikri ',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => lamborgundi(),
                          ),
                        );
                      },
                    ),
                    _buildCard(
                      'https://www.tamilnadutourism.tn.gov.in/img/pages/large-desktop/mahabalipuram-1654870108_c538505993052d39e713.webp',
                      'Mahabalipuram',
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product6(),
                          ),
                        )
                      },
                    ),
                    _buildCard(
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/8e/e5/db/caption.jpg?w=1200&h=-1&s=1',
                      'Rani ki Vav',
                      () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product7(),
                          ),
                        )
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '    Civilization of India',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                  InkWell(
                    onTap: () {
                      print("View all");
                      // Your function here
                    },
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          'https://www.worldhistory.org/img/r/p/500x600/12856.jpg?v=1656242470',
                          'Indus Valley Civilization',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Alfaromeo6c(),
                              ),
                            )
                          },
                          
                        ),
                        _buildCard(
                          'https://miro.medium.com/v2/resize:fit:583/1*uUphE-5CENnedhaPg_MAYQ.jpeg',
                          'Harappan civilization',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => jhtype(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://cdn.kastatic.org/ka-perseus-images/0e5a63fae4e924c7b5efa5b2c7c4179e1634645f.jpg',
                          'Maurya and Gupta Empires',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ferari(),
                              ),
                            )
                          },
                        ),
                        _buildCard(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Beyond_Rao_Jodhaji%27s_Falsa_in_Mehrangarh_Fort.jpg/250px-Beyond_Rao_Jodhaji%27s_Falsa_in_Mehrangarh_Fort.jpg',
                          'Medieval Indian Civilization',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Product6(),
                              ),
                            )
                          },
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imgUrl, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imgUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//
//
//
//
// Appbar
//
//
//
//
//

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 244, 230),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sukrutam',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Greatest of All',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/Sukrutam.png',
            height: 40,
            width: 40,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),

    );
  }
}
