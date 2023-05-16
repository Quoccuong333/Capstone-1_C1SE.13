import 'package:flutter/material.dart';
import '../../Color/pallete.dart';


class ButtonCreateOwnSportsField extends StatefulWidget {
  const ButtonCreateOwnSportsField({Key? key}) : super(key: key);

  @override
  State<ButtonCreateOwnSportsField> createState() => _ButtonCreateOwnSportsFieldState();
}
class _ButtonCreateOwnSportsFieldState extends State<ButtonCreateOwnSportsField> {
  
Color _cursorColor = Colors.grey;

  Widget _buildTextField(String labelText, {String hintText = '', double hintFontSize = 18.0}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextFormField(
        decoration: buildInputDecoration(labelText).copyWith(
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.only(bottom: 20), // Khoảng cách giữa văn bản và border
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black
          )
        ),
        cursorColor: _cursorColor,
        cursorHeight: 30.0,
        onTap: () {
          setState(() {
            _cursorColor = Colors.grey; // Thay đổi màu của con trỏ chuột
          });
        },
      ),
    );
  }

  Widget _buildDoi(String labelText, {String hintText = '', double hintFontSize = 18.0}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextFormField(
        decoration: buildInputDecoration(labelText).copyWith(
          hintText: hintText,
        ),
        cursorColor: _cursorColor,
        cursorHeight: 20.0,
        onTap: () {
          setState(() {
            _cursorColor = Colors.grey; // Thay đổi màu của con trỏ chuột
          });
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Own Sports Field'),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center, // can giữa các widget con
            children: [
              _buildDoi('Sports Field Name', 
                hintText: 'Enter Sports Field Name', 
                hintFontSize: 15.0
              ),
              _buildDoi('Address', 
                hintText: 'Choose Address', 
                hintFontSize: 15.0
              ),
              _buildTextField('Sport', 
                hintText: 'Choose Sport', 
                hintFontSize: 15.0
              ),
              _buildTextField('Date And Time', 
                hintText: 'Choose Date And Time', 
                hintFontSize: 15.0
              ),

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: size.height * 0.08,
                  width: size.width * 0.91,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    child: Text('Confirm', style: TextStyle(fontSize: 23)),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
