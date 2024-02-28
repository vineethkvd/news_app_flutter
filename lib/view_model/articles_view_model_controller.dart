import 'package:get/get.dart';
import 'package:news_app_flutter/model/news_model.dart';

import '/repository/abstract_class_ropository.dart';
import '/view_model/article_view_model.dart';

class ArticlesListViewModelController extends GetxController {
  ClassRepository? classRepository;
  ArticlesListViewModelController({
    this.classRepository,
  });
  List<ArticleViewModel>  articlesAll = <ArticleViewModel>[].obs;
  List<ArticleViewModel>  articlesHealth = <ArticleViewModel>[].obs;
  List<ArticleViewModel> articlesGeneral = <ArticleViewModel>[].obs;
  List<ArticleViewModel>  articlesTechnology = <ArticleViewModel>[].obs;
  List<ArticleViewModel>  articlesScience = <ArticleViewModel>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchNewsGeneral();
    fetchAllNews();
    fetchNewsGeneral();
    fetchNewsTechnology();
    fetchNewsScience();
  }

  Future<void> fetchAllNews() async {
    try{
      List<Articles> list = await classRepository!.getAllNews();
      articlesAll.addAll(list.map((e) => ArticleViewModel(articleModel: e)));
    }catch(e){
      print('An error occurred: $e');
    }

  }

  Future<void> fetchNewsHealth() async {
    try{
      List<Articles> list = await classRepository!.getCategory("health");
      articlesHealth.addAll(list.map((e) => ArticleViewModel(articleModel: e)));
    }catch(e){
      print('An error occurred: $e');
    }

  }

  Future<void> fetchNewsGeneral() async {
    try {
      List<Articles> list = await classRepository!.getCategory("general");
      articlesGeneral.addAll(list.map((e) => ArticleViewModel(articleModel: e)));
    } catch (e) {
      // Handle the exception here
      print('An error occurred: $e');
    }
  }

  Future<void> fetchNewsTechnology() async {
    try{
      List<Articles> list = await classRepository!.getCategory("technology");
      articlesTechnology.addAll(list.map((e) => ArticleViewModel(articleModel: e)));
    }catch(e){
      print('An error occurred: $e');
    }

  }

  Future<void> fetchNewsScience() async {
    try{
      List<Articles> list = await classRepository!.getCategory("science");
      articlesScience.addAll(list.map((e) => ArticleViewModel(articleModel: e)));
    }catch(e){
      print('An error occurred: $e');
    }

  }
}
