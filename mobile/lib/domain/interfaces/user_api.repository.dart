import 'dart:typed_data';

import 'package:immich_mobile/domain/models/user.model.dart';

abstract interface class IUserApiRepository {
  Future<User?> getMyUser();

  Future<List<User>> getAll();

  /// Saves the [data] in the server and uses it as the current users profile image
  Future<String> createProfileImage({
    required String name,
    required Uint8List data,
  });
}
