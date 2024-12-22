// Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [5, 4, 3, 2, 1].map((star) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedStar = selectedStar == star ? null : star;
//                           });
//                         },
//                         child: Chip(
//                           label: Text(
//                             '$star ★',
//                             style: TextStyle(
//                                 fontSize: 18), // Increase font size if needed
//                           ),
//                           backgroundColor: selectedStar == star
//                               ? Colors.blue // Color when selected
//                               : Colors.grey[200],
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 16, vertical: 10), // Increase padding
//                           side: BorderSide(
//                             color: selectedStar == star
//                                 ? Colors.blue
//                                 : Colors.grey, // Border color
//                             width: 2, // Border width
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   ),