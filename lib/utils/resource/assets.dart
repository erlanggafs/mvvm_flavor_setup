class Assets {
  Assets._();

  static final Assets instance = Assets._();

  String toImagesPng(String name) => "assets/images/$name.png";
  String toImagesJpg(String name) => "assets/images/$name.jpg";
  String toIconSvg(String name) => "assets/icons/$name.svg";
  String toIconPng(String name) => "assets/icons/$name.png";

  String get iconDownload => toIconPng("ic_download");
  String get iconDownloadPdf => toIconPng("ic_download_pdf");
  String get iconDownloadPng => toIconPng("ic_download_png");
  String get iconDownloadJpg => toIconPng("ic_download_jpg");
  String get iconDownloadUnknown => toIconPng("ic_download_unknown");
  String get iconDownloadShare => toIconPng("ic_download_share");
  String get iconDownloadMore => toIconPng("ic_download_more");
  String get iconDownloadClose => toIconPng("ic_download_close");
  String get iconTransactionBooking => toIconPng("ic_transaction_booking");
  String get iconTransactionNup => toIconPng("ic_transaction_nup");
  String get iconTransactionArrow => toIconPng("ic_transaction_arrow");
  String get iconEmptyScreen => toIconPng("ic_empty_screen");
  String get iconLauncher => toIconPng("icon_launcher");
  String get iconNotificationBadge => toIconPng("ic_notification_badge");
  String get iconNotification => toIconPng("ic_notification");
  String get iconNotificationItem => toIconPng("ic_notification_item");
  String get iconEdit => toIconPng("ic_edit");
  String get iconDiagrammatic => toIconPng("ic_diagramatik");
  String get iconBlock => toIconPng("ic_blok");
  String get iconBathub => toIconPng("ic_bathub");
  String get iconBed => toIconPng("ic_bed");
  String get iconGarage => toIconPng("ic_garage");
  String get iconGoogle => toIconPng("ic_google");
  String get iconFacebook => toIconPng("ic_facebook");
  String get iconFilter => toIconPng("ic_filter");
  String get imageAppbar => toImagesPng("appbar_bg");
  String get imageLogo => toImagesPng("logo");
}
