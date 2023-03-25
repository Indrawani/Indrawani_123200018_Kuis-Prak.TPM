import 'package:flutter/material.dart';
import 'disease_data.dart';

class HalamanDetail extends StatefulWidget {
  final Diseases place;
  const HalamanDetail({Key? key,required this.place}) : super(key: key);

  @override
  _HalamanDetailState createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Favorite dihapus'),backgroundColor: Colors.red),
        );
      } else {
        _isFavorited = true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Favorite ditambahkan'),backgroundColor: Colors.green),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Disease"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              _isFavorited ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: _toggleFavorite,
          ),
        ],
      ),

      body: GridView.count(
        crossAxisCount: 2, // jumlah kolom
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 0.8, // rasio lebar-tinggi item
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 2/3,
                  child: Center(
                    child: FittedBox(
                      child: Image.network(widget.place.imgUrls),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Disease Name :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.place.name,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Plant Name :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.place.plantName,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Ciri-Ciri :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.place.nutshell[0],
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Disease ID :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.place.id,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Symptom",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  widget.place.symptom,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
