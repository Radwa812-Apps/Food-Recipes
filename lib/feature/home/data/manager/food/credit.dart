import 'package:equatable/equatable.dart';

class Credit extends Equatable {
	final String? name;
	final String? type;

	const Credit({this.name, this.type});

	factory Credit.fromJson(Map<String, dynamic> json) => Credit(
				name: json['name'] as String?,
				type: json['type'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'type': type,
			};

	@override
	List<Object?> get props => [name, type];
}
