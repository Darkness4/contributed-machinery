import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contributed_machinery/domain/auth/i_auth_facade.dart';
import 'package:contributed_machinery/domain/core/errors.dart';
import 'package:contributed_machinery/injection.dart';
export 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on Firestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }

  CollectionReference get threadCollection => collection('threads');
}
