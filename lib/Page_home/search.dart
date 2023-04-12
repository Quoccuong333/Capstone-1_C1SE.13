import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sports Field",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                          
                        )),
                    const SizedBox(
                      // width: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sport Player",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )),
                    const SizedBox(
                      // width: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Team",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )),
                    const SizedBox(
                      // width: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import '../widgets/widgets.dart';

// class Search extends StatefulWidget {
//   const Search({Key? key}) : super(key: key);

//   @override
//   State<Search> createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   bool _isSportsFieldSelected = false;
//   bool _isSportPlayerSelected = false;
//   bool _isTeamSelected = false;

//   void _onSportsFieldSelected() {
//     setState(() {
//       _isSportsFieldSelected = true;
//       _isSportPlayerSelected = false;
//       _isTeamSelected = false;
//     });
//   }

//   void _onSportPlayerSelected() {
//     setState(() {
//       _isSportsFieldSelected = false;
//       _isSportPlayerSelected = true;
//       _isTeamSelected = false;
//     });
//   }

//   void _onTeamSelected() {
//     setState(() {
//       _isSportsFieldSelected = false;
//       _isSportPlayerSelected = false;
//       _isTeamSelected = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appbar(),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 80,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               padding: const EdgeInsets.only(left: 10),
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   // decoration: BoxDecoration(
//                   //   border: Border(bottom: BorderSide(width: 2.0, color: Colors.red)),
//                   // ),
//                   child: TextButton(
//                   onPressed: _onSportsFieldSelected,
//                   child: const Text(
//                     'Sports Field',
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),),
//                 ),
//                 TextButton(
//                   onPressed: _onSportsFieldSelected,
//                   child: Text(
//                     'Sports Field',
//                     style: TextStyle(
//                       color: _isSportsFieldSelected ? Colors.red : Colors.grey,
//                       fontSize: 20,
//                       // decoration: BoxDecoration(
//                       //   border: Border(bottom: BorderSide(width: 2.0, color: Colors.red)),
//                       // ),
//                       // decoration: _isSportsFieldSelected ? TextDecoration.underline : TextDecoration.none,
//                       // decorationColor: Colors.red,
//                       // decorationThickness: 2,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 TextButton(
//                   onPressed: _onSportPlayerSelected,
//                   child: Text(
//                     'Sport Player',
//                     style: TextStyle(
//                       color: _isSportPlayerSelected ? Colors.red : Colors.grey,
//                       fontSize: 20,
//                       decoration: _isSportPlayerSelected ? TextDecoration.underline : TextDecoration.none,
//                       decorationColor: Colors.red,
//                       decorationThickness: 2,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 TextButton(
//                   onPressed: _onTeamSelected,
//                   child: Text(
//                     'Team',
//                     style: TextStyle(
//                       color: _isTeamSelected ? Colors.red : Colors.grey,
//                       fontSize: 20,
//                       decoration: _isTeamSelected ? TextDecoration.underline : TextDecoration.none,
//                       decorationColor: Colors.red,
//                       decorationThickness: 2,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
