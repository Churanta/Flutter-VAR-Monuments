import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Cyber extends StatefulWidget {
  Cyber({Key? key}) : super(key: key);

  @override
  _CyberState createState() => _CyberState();
}

class _CyberState extends State<Cyber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Martand Sun Temple'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ModelViewer(
                src: 'assets/models/Sun_temple.glb',
                ar: true,
                alt: 'A 3D model of Martand Sun Temple',
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Martand Sun Temple',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'The Martand Sun Temple is a historic temple dedicated to the Sun God, located '
                            'in Anantnag, Jammu and Kashmir, India. It was built by King Lalitaditya Muktapida '
                            'of the Karkota dynasty in the 8th century. The temple is known for its impressive '
                            'architectural style and was a grand center of learning and worship in ancient times.\n\n',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Architectural Features',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            '• Architectural Style: Kashmiri\n'
                            '• Built By: King Lalitaditya Muktapida\n'
                            '• Built In: 8th century\n'
                            '• Location: Anantnag, Jammu and Kashmir, India\n'
                            '• Significance: Historical and religious\n'
                            '• Status: Ruins (partially preserved)\n',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle AR view button press
                        },
                        icon: Icon(Icons.camera),
                        label: Text('View with AR'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle VR view button press
                        },
                        icon: Icon(Icons.vrpano),
                        label: Text('View in VR'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
