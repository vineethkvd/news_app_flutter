import '../model/news_model.dart';

class ArticleViewModel {
  Articles? articleModel;
  ArticleViewModel({
    this.articleModel,
  });
  get sourceName => articleModel?.source?.name;
  get title => articleModel?.title;
  get author => articleModel?.author;
  get publishedAt => articleModel?.publishedAt;
  get description => articleModel?.description;
  get content => articleModel?.content;
  get urlToImage => articleModel?.urlToImage;
  get url => articleModel?.url;
}