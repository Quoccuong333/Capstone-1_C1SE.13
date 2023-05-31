// import 'package:flutter/material.dart';
//
// class SearchField extends StatelessWidget {
//   const SearchField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Column(
//           children: [
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     child: Text(
//                       'Select Field: ',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                   Container(
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.arrow_drop_down,
//                       )
//                     ),
//                   ),
//                   Container(
//                     child: Text(
//                       'Select size: ',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                   Container(
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.arrow_drop_down,
//                       )
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text(
//               'Field/Location',
//               style: TextStyle(
//                 fontStyle: FontStyle.normal,
//                 fontSize: 18,
//               ),
//             )
//           ],
//         ),
//         //Nhap dia diem
//         Row(
//           children: [
//             Icon(Icons.search),
//             Text(
//               'Enter your location',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//         //Chon ngay gio
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text(
//               'Date and Time',
//               style: TextStyle(
//                 fontStyle: FontStyle.normal,
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//         Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.calendar_month,
//                     )),
//               ),
//               Container(
//                 child: Text('Choose date ',
//                   style: TextStyle(fontSize: 17),),
//               ),
//             ],
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "Clear Filter",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               style: ButtonStyle(
//                 backgroundColor:
//                 MaterialStateProperty.all(Colors.blue),
//                 padding: MaterialStateProperty.all(
//                     EdgeInsets.symmetric(
//                         vertical: 13, horizontal: 15)),
//                 shape:
//                 MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "Check availability",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               style: ButtonStyle(
//                 backgroundColor:
//                 MaterialStateProperty.all(Colors.blue),
//                 padding: MaterialStateProperty.all(
//                     EdgeInsets.symmetric(
//                         vertical: 13, horizontal: 15)),
//                 shape:
//                 MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late String _selectedField;
  late String _selectedSize;
  late String _selectedDate;

  final List<String> _fieldList = ['Choose Sport','Football', 'Basketball', 'Tennis', 'Swimming'];
  final List<String> _sizeList = ['Choose Size','Large', 'Medium', 'Small'];

  final _dateController = TextEditingController();

  @override
  void initState() {
    _selectedField = _fieldList[0];
    _selectedSize = _sizeList[0];
    _selectedDate = "";
    super.initState();
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Select Field: ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            DropdownButton<String>(
              value: _selectedField,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedField = newValue!;
                });
              },
              items: _fieldList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Text(
              'Select Size: ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            DropdownButton<String>(
              value: _selectedSize,
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSize = newValue!;
                });
              },
              items: _sizeList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your location',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.search),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2024),
                ).then((value) => {
                    if(value != null) {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      ).then((timeValue) => {
                        if(timeValue != null) {
                          setState(() {
                            _selectedDate = value.day.toString() + "-" + value.month.toString() + "-" +
                            value.year.toString() + " " +
                            timeValue.hour.toString() + ":" + timeValue.minute.toString();
                          }),
                        }
                      }),
                    }
                });
              },
              child: Text('Choose date and time'),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedField = _fieldList[0];
                  _selectedSize = _sizeList[0];
                  _selectedDate = "";
                });
              },
              child: Text('Clear Filter'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Filter Result'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Selected Field: $_selectedField'),
                          SizedBox(height: 5),
                          Text('Selected Size: $_selectedSize'),
                          SizedBox(height: 5),
                          Text('Selected Date and Time: ' + (_selectedDate.isEmpty ? 'None' : _selectedDate)),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Check Availability'),
            ),
          ],
        ),
      ],
    );
  }
}

