// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../view_model/articles_view_model_controller.dart';
//
// class TopHeadlinesScreen extends StatelessWidget {
//   const TopHeadlinesScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var size = Get.size;
//
//     return GetBuilder<ArticlesListViewModelController>(
//       builder: (controller) {
//         if (controller == null || controller.art.isEmpty) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//
//         return InkWell(
//           onTap: () {
//             // Add logic for article details screen or other actions
//           },
//           child: Container(
//             alignment: Alignment.center,
//             width: size.width,
//             height: size.height,
//             child: Center(
//               child: SizedBox(
//                 height: size.height * 0.65,
//                 child: Swiper(
//                   viewportFraction: 0.7,
//                   scale: 0.9,
//                   autoplay: false,
//                   itemCount: controller.articlesScience.length,
//                   itemBuilder: (context, index) {
//                     final article = controller.articlesScience[index];
//                     return Card(
//                       elevation: 5,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Column(
//                           children: [
//                             if (article.urlToImage != null)
//                               CachedNetworkImage(
//                                 imageUrl: article.urlToImage!,
//                                 fit: BoxFit.contain,
//                                 placeholder: (context, url) =>
//                                     CupertinoActivityIndicator(),
//                                 errorWidget: (context, url, error) =>
//                                     Icon(Icons.error),
//                               ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   if (article.sourceName != null)
//                                     Text(
//                                       article.sourceName!,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   if (article.title != null)
//                                     Text(
//                                       article.title!,
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   if (article.description != null)
//                                     Text(
//                                       article.description!,
//                                       style: TextStyle(
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
