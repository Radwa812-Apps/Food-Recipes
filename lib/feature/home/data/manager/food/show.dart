import 'package:equatable/equatable.dart';

class Show extends Equatable {
	final int? id;
	final String? name;

	const Show({this.id, this.name});

	factory Show.fromJson(Map<String, dynamic> json) => Show(
				id: json['id'] as int?,
				name: json['name'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
			};

	@override
	List<Object?> get props => [id, name];
}
