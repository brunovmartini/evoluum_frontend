// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoggedUserStruct extends BaseStruct {
  LoggedUserStruct({
    int? id,
    String? nome,
    String? sobrenome,
    String? email,
  })  : _id = id,
        _nome = nome,
        _sobrenome = sobrenome,
        _email = email;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "sobrenome" field.
  String? _sobrenome;
  String get sobrenome => _sobrenome ?? '';
  set sobrenome(String? val) => _sobrenome = val;

  bool hasSobrenome() => _sobrenome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static LoggedUserStruct fromMap(Map<String, dynamic> data) =>
      LoggedUserStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        sobrenome: data['sobrenome'] as String?,
        email: data['email'] as String?,
      );

  static LoggedUserStruct? maybeFromMap(dynamic data) => data is Map
      ? LoggedUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'sobrenome': _sobrenome,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'sobrenome': serializeParam(
          _sobrenome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoggedUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoggedUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        sobrenome: deserializeParam(
          data['sobrenome'],
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
  String toString() => 'LoggedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoggedUserStruct &&
        id == other.id &&
        nome == other.nome &&
        sobrenome == other.sobrenome &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([id, nome, sobrenome, email]);
}

LoggedUserStruct createLoggedUserStruct({
  int? id,
  String? nome,
  String? sobrenome,
  String? email,
}) =>
    LoggedUserStruct(
      id: id,
      nome: nome,
      sobrenome: sobrenome,
      email: email,
    );
