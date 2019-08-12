import 'package:meta/meta.dart';
import 'package:ritual/data/user.dart';
import 'package:ritual/proto/models/ritual.pb.dart';

abstract class UserFetcher {
  Future<User> signInUser(String displayName, String email);
  Future<void> signOutUser();
}

abstract class AppRepository {
  Future<User> signInUser({String displayName, String email});
  Future<void> signOutUser();
  Stream<List<Ritual>> listRituals(
      {@required String userId, @required int page});
  Future<Ritual> createRitual(String title);
  Future<Ritual> updateRitual();
  Future<bool> subscribeToRitual(String userId);
  Future<bool> unsubscribeFromRitual(String userId);
}

class MockAppRepository implements AppRepository {
  final UserFetcher userFetcher;

  MockAppRepository({this.userFetcher});

  @override
  Future<Ritual> createRitual(String title) {
    // TODO: implement createRitual
    return null;
  }

  @override
  Stream<List<Ritual>> listRituals({String userId, int page}) {
    // TODO: implement listRituals
    return null;
  }

  @override
  Future<User> signInUser({String displayName, String email}) async {
    final User user = await userFetcher.signInUser(displayName, email);
    return user;
  }

  @override
  Future<void> signOutUser() async {
    await userFetcher.signOutUser();
    return;
  }

  @override
  Future<bool> subscribeToRitual(String userId) {
    // TODO: implement subscribeToRitual
    return null;
  }

  @override
  Future<bool> unsubscribeFromRitual(String userId) {
    // TODO: implement unsubscribeFromRitual
    return null;
  }

  @override
  Future<Ritual> updateRitual() {
    // TODO: implement updateRitual
    return null;
  }
}
