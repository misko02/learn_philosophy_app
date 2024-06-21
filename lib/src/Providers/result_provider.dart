import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/quiz_result.dart';

final resultProvider = StateProvider((ref) => QuizResult(0, 0));

