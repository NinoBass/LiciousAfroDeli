// import 'package:LiciousAfroDeli/screens/details-screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../constants.dart';

// class ItemList extends StatefulWidget {
//   const ItemList({
//     Key key,
//   }) : super(key: key);

//   @override
//   _ItemListState createState() => _ItemListState();
// }

// class _ItemListState extends State<ItemList> {
//   List<String> _titles = [
//     "Rice & Beans",
//     "Chinese & Noodles",
//     "Yam & Egg",
//     "Yam & Egg",
//   ];

//   List<String> _imagelink = [
//     "assets/icons/burger_beer.svg",
//     "assets/icons/chinese_noodles.svg",
//     "assets/icons/burger_beer.svg",
//     "assets/icons/macdonalds.svg",
//   ];

//   Widget _buildItemCard(int index) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 4),
//             blurRadius: 20,
//             color: Color(0xFFB0CCE1).withOpacity(0.32),
//           ),
//         ],
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) {
//                   return DetailsScreen();
//                 },
//               ),
//             );
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: <Widget>[
//                 Container(
//                   margin: EdgeInsets.only(bottom: 15),
//                   padding: EdgeInsets.all(25),
//                   decoration: BoxDecoration(
//                     color: kPrimaryColor.withOpacity(0.13),
//                     shape: BoxShape.circle,
//                   ),
//                   child: SvgPicture.asset(
//                     _imagelink[index],
//                     width: size.width * 0.18,
//                     // size.width * 0.18 means it use 18% of total width
//                   ),
//                 ),
//                 Text(_titles[index]),
//                 SizedBox(height: 10),
//                 Text(
//                   'LiciousAfroDeli',
//                   style: TextStyle(fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: _titles
//             .asMap()
//             .entries
//             .map((MapEntry map) => _buildItemCard(map.key))
//             .toList(),
//       ),
//     );
//   }
// }
