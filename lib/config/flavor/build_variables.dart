import 'package:flutter_dotenv/flutter_dotenv.dart';

late BuildVariables _buildVariables;

BuildVariables get buildVariables => _buildVariables;

class BuildVariables {
  final String baseUrl;

  BuildVariables._init({
    required this.baseUrl,
  });

  static void init() {
    _buildVariables = BuildVariables._init(
      baseUrl: dotenv.env['BASE_URL']!,
    );
  }
}
