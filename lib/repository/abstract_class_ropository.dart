
import '../model/news_model.dart';

abstract class ClassRepository {
  Future<List<Articles>> getAllNews();
  Future<List<Articles>> getCategory(String category);
}