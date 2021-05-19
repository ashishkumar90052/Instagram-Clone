import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.add_box_outlined,
          size: 32,
        ),
        title: Text('Instagram'),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 16),
            child: Image.asset(
              'assets/images/messenger.png',
              height: 24,
              width: 24,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 110,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/45348539?s=400&u=b3756f55cb179dcd0dc67b5809de9272eb0cbfa7&v=4'),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Your Story')
                        ],
                      );
                    },
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Container(
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  // radius: 36,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/45348539?s=400&u=b3756f55cb179dcd0dc67b5809de9272eb0cbfa7&v=4'),
                                ),
                                SizedBox(width: 8.0),
                                Text('Ashish Kumar'),
                                Spacer(),
                                Icon(Icons.more_vert),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Image.network(
                                'https://res.cloudinary.com/purnesh/image/upload/w_540,f_auto,q_auto:eco,c_limit/21609312734288.jpg'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/like.png',
                                  height: 24,
                                  width: 24,
                                ),
                                SizedBox(width: 16.0),
                                Image.asset(
                                  'assets/images/message.png',
                                  height: 24,
                                  width: 24,
                                ),
                                SizedBox(width: 16.0),
                                Image.asset(
                                  'assets/images/send.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Spacer(),
                                Image.asset(
                                  'assets/images/favorite.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
