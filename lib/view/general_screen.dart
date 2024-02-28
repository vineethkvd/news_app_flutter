import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../repository/news_api.dart';
import '../view_model/articles_view_model_controller.dart';

class GeneralScreen extends StatelessWidget {
  GeneralScreen({Key? key}) : super(key: key);
  final ArticlesListViewModelController articlesListViewModelController =
      Get.put(ArticlesListViewModelController(classRepository: NewsApi()));
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() {
      if (articlesListViewModelController == null ||
          articlesListViewModelController.articlesGeneral.isEmpty) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      return InkWell(
        onTap: () {
          // Add logic for article details screen or other actions
        },
        child: Container(
          alignment: Alignment.center,
          width: size.width,
          height: size.height,
          child: Center(
            child: SizedBox(
              height: size.height * 0.65,
              child: Swiper(
                viewportFraction: 0.7,
                scale: 0.9,
                autoplay: false,
                itemCount:
                    articlesListViewModelController.articlesGeneral.length,
                itemBuilder: (context, index) {
                  final article =
                      articlesListViewModelController.articlesGeneral[index];
                  return Card(
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10), // You can adjust the radius value
                      child: Column(
                        children: [
                          if (article.urlToImage != null)
                            CachedNetworkImage(
                              imageUrl: article.urlToImage!,
                              fit: BoxFit.contain, // Add this line
                              placeholder: (context, url) =>
                                  CupertinoActivityIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (article.sourceName != null)
                                  Text(
                                    article.sourceName!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                if (article.title != null)
                                  Text(
                                    article.title!,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                if (article.description != null)
                                  Text(
                                    article.description!,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
    });
  }
}
