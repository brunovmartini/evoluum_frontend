import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class EvoluumTasksAuthUser {
  EvoluumTasksAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<EvoluumTasksAuthUser> evoluumTasksAuthUserSubject =
    BehaviorSubject.seeded(EvoluumTasksAuthUser(loggedIn: false));
Stream<EvoluumTasksAuthUser> evoluumTasksAuthUserStream() =>
    evoluumTasksAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
