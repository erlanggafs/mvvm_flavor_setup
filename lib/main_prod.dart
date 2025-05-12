import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'config/config.dart';
import 'config/flavor_type.dart';
import 'widget_parts.dart';

final prodAppConfig = AppConfig(appNameFlavor: 'Prod', flavor: FlavorType.prod);

Future main() async {
  await dotenv.load(fileName: ".env.prod");
  Widget app = await initializeDateFormatting('id_ID', null)
      .then((_) => initializeApp(prodAppConfig));
  runApp(app);
}
