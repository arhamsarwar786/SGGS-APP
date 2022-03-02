// // ignore: file_names
// // ignore_for_file: file_names

// import "package:flutter/material.dart";

// class LandingPage extends StatelessWidget {
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       drawer: Drawer(
    
//       ),
//       backgroundColor: Colors.white,
//     appBar: AppBar(
//       elevation: 0,
//       backgroundColor: Color(0xff00917C),
//     ),
//       body: SingleChildScrollView(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//            const  SizedBox(height: 20,),
//           Content(size: size,),
//            const  SizedBox(height: 20,),
//             Content(size: size,),
//              const  SizedBox(height: 20,),
//               Content(size: size,),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Content extends StatelessWidget {
//   const Content({ Key? key, this.size }) : super(key: key);
//   final Size? size;

//   @override
//   Widget build(BuildContext context) {
//     return   Container(
          
//             margin:const EdgeInsets.symmetric(horizontal: 6),
//             padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             width: size!.width,
//             // height: 200,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black.withOpacity(0.8),
//                       spreadRadius: -6,
//                       blurRadius: 10,
//                       offset: Offset(1, 0),
//                       blurStyle: BlurStyle.solid),
//                 ]),
            
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               children: const [

//                 Text(
//                   "'ਰੱਬ ਦੀ ਸਿਫ਼ਤਿ ਸਾਲਾਹ ਸੁਣਨ ਕਰਕੇ (ਮਨੁੱਖ ਦੇ) ਦੁਖਾਂ ਤੇ ਪਾਪਾਂ ਦਾ ਨਾਸ਼ ਹੋ ਜਾਂਦਾ ਹੈ'",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 30,
//                       // decoration: TextDecoration.underline,
//                       // decorationStyle: TextDecorationStyle.dashed,
//                       fontWeight: FontWeight.w900,
//                       shadows: [
//                         Shadow(
//                             color: Colors.black,
//                             offset: Offset(2.0, 1.0),
//                             blurRadius: 2.0),
//                       ]),
//                 ),
//                 // SizedBox(height: 10,),
//                 Text(
//                   "(11547, 1, 'suni-ai sat santokh gi-aan.', 2, 1, 'pp')",
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w900,
                  
//                       shadows: [
//                         Shadow(
//                             color: Colors.black,
//                             offset: Offset(2.0, 1),
//                             blurRadius: 2.0),
//                       ]),
//                 ),
              
//                 SizedBox(
//                   height: 20,
//                 ),
//                   Divider(thickness: 2,endIndent: 40,),
//                 Text(
//                   "By listening to Naam, one acquires truthfulness, contentment and spiritual knowledge', 2, 1, 'et'",
//                   style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w900,
//                       letterSpacing: 0.2,
//                       shadows: [
//                         //  Shadow(
//                         //     color: Colors.black,
//                         //     offset: Offset(2.0, 1),
//                         //     blurRadius: 2.0),
//                       ]
//                       ),
//                 ),
//               ],
//             ),
//           );
//   }
// }