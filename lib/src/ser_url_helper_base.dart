class SerUrlHelper {
  /// Get fqdn with https://
  /// or http://localhost/ for localhost urls.
  ///
  static String fqdnUrl(String site) {
    if (site.startsWith('localhost')) {
      return "http://$site/";
    }

    // remove some characters and www
    site = site.replaceAll('www.', '');

    var tld = site.substring(site.lastIndexOf('.') + 1, site.length);
    tld = tld.replaceAll('/', '');

    // for Uri.parse
    if (!site.startsWith("https") || !site.startsWith("http")) {
      site = "https://" + site;
    }

    Uri uri = Uri.parse(site);

    int countDot = ".".allMatches(uri.host).length;
    if (countDot == 1 || (countDot == 2 && tld == "tr")) {
      return "https://www.${uri.host}/";
    } else {
      return "https://${uri.host}/";
    }
  }
}
