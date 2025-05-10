// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtigosStruct extends BaseStruct {
  ArtigosStruct({
    int? id,
    String? titulo,
    String? descricao,
    String? urlFonte,
    int? usuarioId,
  })  : _id = id,
        _titulo = titulo,
        _descricao = descricao,
        _urlFonte = urlFonte,
        _usuarioId = usuarioId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "url_fonte" field.
  String? _urlFonte;
  String get urlFonte => _urlFonte ?? '';
  set urlFonte(String? val) => _urlFonte = val;

  bool hasUrlFonte() => _urlFonte != null;

  // "usuario_id" field.
  int? _usuarioId;
  int get usuarioId => _usuarioId ?? 0;
  set usuarioId(int? val) => _usuarioId = val;

  void incrementUsuarioId(int amount) => usuarioId = usuarioId + amount;

  bool hasUsuarioId() => _usuarioId != null;

  static ArtigosStruct fromMap(Map<String, dynamic> data) => ArtigosStruct(
        id: castToType<int>(data['id']),
        titulo: data['titulo'] as String?,
        descricao: data['descricao'] as String?,
        urlFonte: data['url_fonte'] as String?,
        usuarioId: castToType<int>(data['usuario_id']),
      );

  static ArtigosStruct? maybeFromMap(dynamic data) =>
      data is Map ? ArtigosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'titulo': _titulo,
        'descricao': _descricao,
        'url_fonte': _urlFonte,
        'usuario_id': _usuarioId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'url_fonte': serializeParam(
          _urlFonte,
          ParamType.String,
        ),
        'usuario_id': serializeParam(
          _usuarioId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ArtigosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ArtigosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        urlFonte: deserializeParam(
          data['url_fonte'],
          ParamType.String,
          false,
        ),
        usuarioId: deserializeParam(
          data['usuario_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ArtigosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ArtigosStruct &&
        id == other.id &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        urlFonte == other.urlFonte &&
        usuarioId == other.usuarioId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, titulo, descricao, urlFonte, usuarioId]);
}

ArtigosStruct createArtigosStruct({
  int? id,
  String? titulo,
  String? descricao,
  String? urlFonte,
  int? usuarioId,
}) =>
    ArtigosStruct(
      id: id,
      titulo: titulo,
      descricao: descricao,
      urlFonte: urlFonte,
      usuarioId: usuarioId,
    );
