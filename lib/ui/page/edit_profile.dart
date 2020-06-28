import 'package:flutter/material.dart';
import 'package:movie_catalogue/theme/theme.dart';
import 'package:movie_catalogue/ui/page/profile_page.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController nameController;

  TextEditingController bioController;

  TextEditingController emailController;

  TextEditingController phoneController;

  TextEditingController addressController;

  @override
  void initState() {
    nameController = TextEditingController();
    bioController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: whiteTextFont,
        ),
        backgroundColor: accentColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      fillColor: accentColor,
                      hintText: "Name",
                      hintStyle: whiteTextFont,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide.none)),
                  keyboardType: TextInputType.text,
                  style: whiteTextFont,
                  validator: (name) {
                    if (name.isEmpty) {
                      return "name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: bioController,
                  decoration: InputDecoration(
                      fillColor: accentColor,
                      hintText: "Bio",
                      hintStyle: whiteTextFont,
                      prefixIcon: Icon(
                        Icons.subject,
                        color: Colors.white,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide.none)),
                  keyboardType: TextInputType.text,
                  style: whiteTextFont,
                  validator: (bio) {
                    if (bio.isEmpty) {
                      return "bio cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      fillColor: accentColor,
                      hintText: "Email",
                      hintStyle: whiteTextFont,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide.none)),
                  keyboardType: TextInputType.text,
                  style: whiteTextFont,
                  validator: (email) {
                    if (email.isEmpty) {
                      return "email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      fillColor: accentColor,
                      hintText: "Phone Number",
                      hintStyle: whiteTextFont,
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.white,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide.none)),
                  keyboardType: TextInputType.text,
                  style: whiteTextFont,
                  validator: (phone) {
                    if (phone.isEmpty) {
                      return "phone number cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                      fillColor: accentColor,
                      hintText: "Address",
                      hintStyle: whiteTextFont,
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide.none)),
                  keyboardType: TextInputType.text,
                  style: whiteTextFont,
                  validator: (address) {
                    if (address.isEmpty) {
                      return "address cannot be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: FlatButton(
                      color: Colors.yellow[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      onPressed: () {
                        if (formkey.currentState.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage(
                                        name: nameController.text,
                                        bio: bioController.text,
                                        email: emailController.text,
                                        phone: phoneController.text,
                                        address: addressController.text,
                                      )));
                        }
                      },
                      child: Text(
                        'Save Profile',
                        style: whiteTextFont.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
