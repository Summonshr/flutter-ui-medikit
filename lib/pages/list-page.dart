import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color2 = Color(0xDDf7f5fb);

    var lists = [
      {'name': 'Back Pain', 'icon': Icons.add, 'checked': true},
      {'name': 'Sinusitis', 'icon': Icons.check, 'checked': true},
      {'name': 'Lef pain', 'icon': Icons.format_paint, 'checked': false},
      {'name': 'Sore Throuat', 'icon': Icons.threed_rotation, 'checked': false},
      {'name': 'Influenza', 'icon': Icons.info, 'checked': true},
      {'name': 'Hand Pain', 'icon': Icons.drag_handle, 'checked': false},
      {'name': 'Fever', 'icon': Icons.featured_video, 'checked': true}
    ];

    return Scaffold(
        backgroundColor: color2,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text('Choose symptoms',
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0))),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
              color: Colors.white,
            ),
            width: double.infinity,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 35.0,
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 15.0,
                          ),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.close,
                            size: 15.0,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 2.0),
                    child: Text('Directions', style: TextStyle(fontSize: 10.0)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: lists.map((item) {
                      return ListOne(
                          color2: color2,
                          title: item['name'],
                          icon: item['icon'],
                          checked: item['checked']);
                    }).toList(),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/third');
                      },
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      color: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Container(
                          width: 160,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Center(
                              child: Text("Continue",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0)))),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ListOne extends StatelessWidget {
  final String title;

  final IconData icon;

  final bool checked;

  const ListOne({
    Key key,
    this.title,
    this.icon,
    this.checked,
    this.color2,
  }) : super(key: key);

  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      decoration: BoxDecoration(
          color: color2, borderRadius: BorderRadius.circular(5.0)),
      child: ListTile(
        leading: Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.1),
                borderRadius: BorderRadius.circular(5.0)),
            child: Icon(
              icon,
            )),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              color: Colors.grey.shade800),
        ),
        trailing: Checkbox(
            activeColor: Colors.deepPurple,
            checkColor: Colors.white,
            value: checked,
            onChanged: (value) {}),
      ),
    );
  }
}
