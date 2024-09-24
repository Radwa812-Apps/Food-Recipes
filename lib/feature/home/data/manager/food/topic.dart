import 'package:equatable/equatable.dart';

class Topic extends Equatable {
	final String? name;
	final String? slug;

	const Topic({this.name, this.slug});

	factory Topic.fromJson(Map<String, dynamic> json) => Topic(
				name: json['name'] as String?,
				slug: json['slug'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'slug': slug,
			};

	@override
	List<Object?> get props => [name, slug];
}
