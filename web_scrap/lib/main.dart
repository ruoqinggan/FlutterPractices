import 'package:web_scraper/web_scraper.dart';

void main() async {
  final webScraper = WebScraper('https://www.collegesimply.com');

  print('hello');

  if (await webScraper
      .loadWebPage('/guides/application-deadlines/?showpast=true')) {
    List<Map<String, dynamic>> elements = webScraper.getElement(
        'div.container > div.row > div.col-lg-8 > span > div.row > div.col > table.table > tbody > tr > td > span > h6.card-title.mb-1 > a',
        ['']);

    for (final e in elements) {
      print(e['title']);
    }
  }
}
