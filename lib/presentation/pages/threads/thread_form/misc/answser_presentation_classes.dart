import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/threads/answer.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter/foundation.dart';

part 'answser_presentation_classes.freezed.dart';

class FormAnswers extends ValueNotifier<KtList<AnswerPrimitive>> {
  FormAnswers() : super(emptyList<AnswerPrimitive>());
}

@freezed
abstract class AnswerPrimitive with _$AnswerPrimitive {
  const factory AnswerPrimitive({
    @required UniqueId id,
    @required String content,
    @required String author,
  }) = _AnswerPrimitive;

  factory AnswerPrimitive.empty() => AnswerPrimitive(
        id: UniqueId(),
        content: '',
        author: '',
      );

  factory AnswerPrimitive.fromDomain(Answer answerValue) => AnswerPrimitive(
        id: answerValue.id,
        // If we somehow get to this point, we missed something in other parts of the UI. It's better to throw an Error.
        content: answerValue.content.getOrCrash(),
        author: answerValue.author.getOrCrash(),
      );
}

extension AnswerPrimitiveX on AnswerPrimitive {
  Answer toDomain() {
    return Answer(
      id: id,
      content: AnswerContent(content),
      author: Author(author),
    );
  }
}
