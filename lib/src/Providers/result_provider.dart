import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/quiz_result/quiz_result.dart';

final resultProvider = StateProvider((ref) => QuizResult(correctAnswers: 0, wrongAnswers: 0));


