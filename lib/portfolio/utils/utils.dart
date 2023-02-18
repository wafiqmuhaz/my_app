import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  static Future<void> openMail() => openUrl("mailto:wafiqmuhaz@gmail.com");

  static Future<void> openMyLocation() => openUrl(
        "https://www.google.co.id/maps/place/Soreang,+Cingcin,+Kec.+Soreang,+Kabupaten+Bandung,+Jawa+Barat+40921/@-7.0301628,107.542269,17z/data=!3m1!4b1!4m6!3m5!1s0x2e68ec3934ed5919:0xa80a01484744421f!8m2!3d-7.0301681!4d107.5444577!16s%2Fg%2F11h62m1gby",
      );
  static Future<void> openMyPhoneNo() => openUrl("tel:+62-8995258011");
  static Future<void> openWhatsapp() => openUrl("https://wa.me/8995258011");
}
