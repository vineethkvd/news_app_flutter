// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../repository/news_api.dart';
// import '../view_model/article_view_model.dart';
// import '../view_model/articles_view_model_controller.dart';
//
// class GeneralScreen extends StatefulWidget {
//   const GeneralScreen({super.key});
//
//   @override
//   State<GeneralScreen> createState() => _GeneralScreenState();
// }
//
// class _GeneralScreenState extends State<GeneralScreen> {
//   final ArticlesListViewModelController articlesListViewModelController =
//   Get.put(ArticlesListViewModelController(classRepository: NewsApi()));
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return FutureBuilder<List<ArticleViewModel>>(
//       future: articlesListViewModelController.fetchNewsGeneral(),
//       builder: (BuildContext context, AsyncSnapshot snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Container(
//               alignment: Alignment.center,
//               width: size.width,
//               height: size.height,
//               child: const Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                       height: 20,
//                       width: 20,
//                       child: CircularProgressIndicator()),
//                 ],
//               ));
//         } else {
//           var news = snapshot.data;
//           return InkWell(
//             onTap: () {},
//             child: Container(
//               alignment: Alignment.center,
//               width: size.width,
//               height: size.height,
//               child: Center(
//                 child: SizedBox(
//                   height: size.height * 0.65,
//                   child: Swiper(
//                     viewportFraction: 0.7,
//                     scale: 0.9,
//                     autoplay: false,
//                     itemCount: news.length,
//                     itemBuilder: (context, index) {
//                       final article = news[index];
//                       return Card(
//                         elevation: 5,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(
//                               10), // You can adjust the radius value
//                           child: Column(
//                             children: [
//                               if (article.urlToImage != null)
//                                 CachedNetworkImage(
//                                   imageUrl: article.urlToImage!,
//                                   fit: BoxFit.contain, // Add this line
//                                   placeholder: (context, url) =>
//                                       CupertinoActivityIndicator(),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     if (article.sourceName != null)
//                                       Text(
//                                         article.sourceName!,
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                     if (article.title != null)
//                                       Text(
//                                         article.title!,
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                     if (article.description != null)
//                                       Text(
//                                         article.description!,
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
