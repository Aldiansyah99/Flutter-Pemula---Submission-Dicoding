import 'package:flutter/material.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/edit_profile.dart';
import 'package:movie_catalogue/ui/page/main_page.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  final String bio;
  final String email;
  final String phone;
  final String address;

  ProfilePage({this.name, this.bio, this.email, this.phone, this.address});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainPage()));
      },
      child: Scaffold(
        backgroundColor: Color(0xff151626),
        appBar: AppBar(
          title: Text(
            'Profile',
            style: whiteTextFont,
          ),
          backgroundColor: accentColor,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  width: double.infinity,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('images/aldi.jpg'))),
                      ),
                      Text(
                        (widget.name == null)
                            ? 'Aldiansyah Fahmi'
                            : widget.name,
                        style: whiteTextFont.copyWith(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        (widget.bio == null) ? 'Android Developer' : widget.bio,
                        style: whiteTextFont.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff151626),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Container(
                    margin: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Account Info',
                            style: whiteTextFont.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        ItemAccount(
                          icon: Icons.account_box,
                          title: 'Name',
                          subtitle: (widget.name == null)
                              ? 'Aldiansyah Fahmi'
                              : widget.name,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        ItemAccount(
                          icon: Icons.email,
                          title: 'Email',
                          subtitle: (widget.email == null)
                              ? 'aldiansyahfahmi6@gmail.com'
                              : widget.email,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        ItemAccount(
                          icon: Icons.phone_android,
                          title: 'Phone Number',
                          subtitle: (widget.phone == null)
                              ? '085394312566'
                              : widget.phone,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        ItemAccount(
                          icon: Icons.location_on,
                          title: 'Address',
                          subtitle: (widget.address == null)
                              ? 'Sulawesi Selatan, Makassar, Maros'
                              : widget.address,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: FlatButton(
                              color: Colors.yellow[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditProfile()));
                              },
                              child: Text(
                                'Edit Profile',
                                style: whiteTextFont.copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemAccount extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  ItemAccount({this.icon, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: whiteTextFont.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              subtitle,
              style: whiteTextFont,
            )
          ],
        )
      ],
    );
  }
}
