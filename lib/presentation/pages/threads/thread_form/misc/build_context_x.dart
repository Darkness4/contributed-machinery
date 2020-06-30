import 'package:contributed_machinery/presentation/pages/threads/thread_form/misc/answser_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

extension BuildContextX on BuildContext {
  KtList<AnswerPrimitive> get formAnswers =>
      Provider.of<FormAnswers>(this, listen: false).value;
  set formAnswers(KtList<AnswerPrimitive> value) =>
      Provider.of<FormAnswers>(this, listen: false).value = value;
}
