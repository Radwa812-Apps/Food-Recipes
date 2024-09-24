import 'package:equatable/equatable.dart';

import 'component.dart';

class Section extends Equatable {
	final List<Component>? components;
	final dynamic name;
	final int? position;

	const Section({this.components, this.name, this.position});

	factory Section.fromJson(Map<String, dynamic> json) => Section(
				components: (json['components'] as List<dynamic>?)
						?.map((e) => Component.fromJson(e as Map<String, dynamic>))
						.toList(),
				name: json['name'] as dynamic,
				position: json['position'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'components': components?.map((e) => e.toJson()).toList(),
				'name': name,
				'position': position,
			};

	@override
	List<Object?> get props => [components, name, position];
}
