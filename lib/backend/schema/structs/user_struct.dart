// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? accessToken,
    String? tokenType,
    int? id,
    String? name,
    String? lastName,
    String? email,
  })  : _accessToken = accessToken,
        _tokenType = tokenType,
        _id = id,
        _name = name,
        _lastName = lastName,
        _email = email;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "token_type" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        accessToken: data['access_token'] as String?,
        tokenType: data['token_type'] as String?,
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'token_type': _tokenType,
        'id': _id,
        'name': _name,
        'last_name': _lastName,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'token_type': serializeParam(
          _tokenType,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['token_type'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        id == other.id &&
        name == other.name &&
        lastName == other.lastName &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accessToken, tokenType, id, name, lastName, email]);
}

UserStruct createUserStruct({
  String? accessToken,
  String? tokenType,
  int? id,
  String? name,
  String? lastName,
  String? email,
}) =>
    UserStruct(
      accessToken: accessToken,
      tokenType: tokenType,
      id: id,
      name: name,
      lastName: lastName,
      email: email,
    );
