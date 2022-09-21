// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PayloadModelAdapter extends TypeAdapter<_$_PayloadModel> {
  @override
  final int typeId = 0;

  @override
  _$_PayloadModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PayloadModel(
      id: fields[0] as int,
      username: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PayloadModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayloadModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PayloadModel _$$_PayloadModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id'],
    disallowNullValues: const ['id'],
  );
  return _$_PayloadModel(
    id: json['id'] as int,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$$_PayloadModelToJson(_$_PayloadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
