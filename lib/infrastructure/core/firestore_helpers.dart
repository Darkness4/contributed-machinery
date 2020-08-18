import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contributed_machinery/domain/auth/i_auth_facade.dart';
import 'package:contributed_machinery/domain/auth/user.dart';
import 'package:contributed_machinery/domain/auth/value_objects.dart';
import 'package:contributed_machinery/domain/core/errors.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension DocumentReferenceX on DocumentReference {
  /// Subcollection of a [threadCollection]
  CollectionReference get answerCollection => collection('answers');
}

extension FirebaseFirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return collection('users').doc(user.id.getOrCrash());
  }

  CollectionReference get threadCollection => collection('threads');
}

extension UserX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      name: StringSingleLine(displayName ?? email.split('@').first),
      emailAddress: EmailAddress(email),
    );
  }
}
