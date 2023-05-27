import 'package:flutter/material.dart';
import '../Color/pallete.dart';

class CreateFootballTeam extends StatefulWidget {
  const CreateFootballTeam({Key? key}) : super(key: key);

  @override
  State<CreateFootballTeam> createState() => _CreateFootballTeamState();
}

class _CreateFootballTeamState extends State<CreateFootballTeam> {
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

  Widget _buildMoTa(String labelText, {String hintText = '', double hintFontSize = 18.0}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextFormField(
        decoration: buildInputDecoration(labelText).copyWith(
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.only(bottom: 70), // Khoảng cách giữa văn bản và border

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

        title: Text('Create New Team'),
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
              _buildDoi('Team Name',
                  hintText: 'Enter Team Name',
                  hintFontSize: 15.0
              ),
              _buildMoTa('Team Introduction',
                  hintText: 'Describe Your Sports Team',
                  hintFontSize: 15.0
              ),
              _buildTextField('Sport',
                  hintText: 'Choose Sport',
                  hintFontSize: 15.0
              ),
              _buildTextField('Level',
                  hintText: 'Choose Level',
                  hintFontSize: 15.0
              ),
              _buildTextField('City',
                  hintText: 'Please select your city',
                  hintFontSize: 15.0
              ),
              _buildTextField('Province',
                  hintText: 'Please select your province',
                  hintFontSize: 15.0
              ),
              _buildTextField('District',
                  hintText: 'Please select your county',
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
                    child: Text('Save', style: TextStyle(fontSize: 23)),
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
