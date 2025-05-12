import 'package:json_annotation/json_annotation.dart';

import '../network/api/status.dart';

class StatusConverter implements JsonConverter<Status, String> {
  const StatusConverter();

  @override
  Status fromJson(String json) {
    final int statusCode = int.tryParse(json) ?? 0;

    if (statusCode >= 200 && statusCode < 300) {
      return Status.completed; // Successful responses (2xx)
    } else if (statusCode >= 400 && statusCode < 500) {
      return Status.error; // Client errors (4xx)
    } else if (statusCode >= 500 && statusCode < 600) {
      return Status.error; // Server errors (5xx)
    } else {
      return Status.initial; // Default for unhandled status codes
    }
  }

  @override
  String toJson(Status status) {
    switch (status) {
      case Status.completed:
        return "200"; // 2xx success range (200 OK)
      case Status.error:
        return "500"; // 5xx server error range (500 Internal Server Error)
      default:
        return "0"; // Default code for unknown status
    }
  }
}
