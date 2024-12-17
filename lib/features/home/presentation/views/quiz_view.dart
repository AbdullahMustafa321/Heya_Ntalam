import 'package:flutter/material.dart';
import 'package:heya_ntalam/features/home/data/models/category_model.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/quiz_view_body.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key, required this.session});
  final Session session;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: QuizViewBody(session: session,),
    );
  }
}
