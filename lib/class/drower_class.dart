import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isExpanded = false; // Container kengayganligini kuzatish uchun flag

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.sunny, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: _isExpanded ? 200 : 50,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Bekzod Nutfulloyev",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "+998 905125684",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              _isExpanded ? Icons.expand_less : Icons.expand_more,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_isExpanded)
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Wallet'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Persons'),
          ),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text('New Group'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Contacts'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Calls'),
          ),
          const ListTile(
            leading: Icon(Icons.near_me),
            title: Text('Nearby'),
          ),
          const ListTile(
            leading: Icon(Icons.add_card_outlined),
            title: Text('Saved Messages'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
