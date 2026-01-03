// import 'package:flutter/material.dart';
// import 'package:loginpage/core/widgets/CustomTextField.dart';
// import 'package:intl/intl.dart';

// class Studentform extends StatefulWidget {
//   const Studentform({super.key});

//   @override
//   State<Studentform> createState() => _StudentformState();
// }

// class _StudentformState extends State<Studentform> {
//   final namecntrl = TextEditingController();
//   final phonecntrl = TextEditingController();
//   final agecntrl = TextEditingController();
//   final datecntrl = TextEditingController();
//   final classcntrl = TextEditingController();

//   Future<void> pickDate() async {
//     DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );

//     if (pickedDate != null) {
//       String formattedDate = DateFormat(
//         'dd MMM yyyy',
//       ).format(pickedDate); // 25 Apr 2026

//       setState(() {
//         datecntrl.text = formattedDate;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isDark = Theme.of(context).brightness == Brightness.dark;

//     return AlertDialog(
//       content: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             UserTextField(
//               label: "Name",
//               controller: namecntrl,
//               hint: 'Kannan M',
//               prefixIcon: Icons.person,
//             ),
//             SizedBox(height: 5),
//             UserTextField(
//               label: "Phone number",
//               controller: phonecntrl,
//               hint: '123456789',
//               prefixIcon: Icons.phone,
//               keyboardType: TextInputType.phone,
//             ),
//             SizedBox(height: 5),
//             UserTextField(
//               label: "Age",
//               controller: agecntrl,
//               hint: '22',
//               prefixIcon: Icons.timer_outlined,
//               keyboardType: TextInputType.phone,
//             ),
//             SizedBox(height: 5),
//             UserTextField(
//               label: "class",
//               controller: classcntrl,
//               hint: 'UG',
//               prefixIcon: Icons.menu_book_sharp,
//               keyboardType: TextInputType.phone,
//             ),
//             SizedBox(height: 5),
//             Container(
//               decoration: BoxDecoration(
//                 color: isDark ? Colors.grey.shade900 : Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: TextField(
//                 controller: datecntrl,

//                 readOnly: true, // 🔒 disables typing
//                 onTap: pickDate, // 📅 opens date picker
//                 decoration: InputDecoration(
//                   labelText: "Join Date",
//                   hintText: "dd-mm-yyyy",
//                   prefixIcon: Icon(Icons.date_range),
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.symmetric(vertical: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
