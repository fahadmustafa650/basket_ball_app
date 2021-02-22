import 'package:basket_ball/widgets/small_icon_text.dart';
import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Post',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.7,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.0025,
            ),
            elevation: 5,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _newTaskModalBottomSheet(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/images/icons_background.jpg')),
                      ),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  tagAFriendBtn(),
                  Divider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  AddDescription(),
                  SizedBox(
                    height: 10,
                  ),
                  addDescriptionTextField()
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange,
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
    );
  }

  Container addDescriptionTextField() {
    return Container(
      color: Colors.grey[200],
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: null,
        maxLines: 8,
        decoration: InputDecoration(
            fillColor: Colors.grey,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
    );
  }

  Widget tagAFriendBtn() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 20),
        child: SmallIconText(
          icon: Icons.people,
          numbers: 'Tag a friend',
        ),
      ),
    );
  }

  void _newTaskModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    'Select image and video source',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text('Capture the Image'),
                    onTap: () => {}),
                ListTile(
                  leading: Icon(Icons.image_sharp),
                  title: Text('Select Image from library'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.videocam_outlined),
                  title: Text('Capture the video'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.camera_outlined,
                    //color: Colors.white,
                  ),
                  title: Text('Select Video from library'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }
}

class AddDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: SmallIconText(
        icon: Icons.description_rounded,
        numbers: 'Add description',
      ),
    );
  }
}
