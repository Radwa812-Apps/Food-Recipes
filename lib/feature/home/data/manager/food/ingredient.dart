import 'package:equatable/equatable.dart';

class Ingredient extends Equatable {
	final int? createdAt;
	final String? displayPlural;
	final String? displaySingular;
	final int? id;
	final String? name;
	final int? updatedAt;

	const Ingredient({
		this.createdAt, 
		this.displayPlural, 
		this.displaySingular, 
		this.id, 
		this.name, 
		this.updatedAt, 
	});

	factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
				createdAt: json['created_at'] as int?,
				displayPlural: json['display_plural'] as String?,
				displaySingular: json['display_singular'] as String?,
				id: json['id'] as int?,
				name: json['name'] as String?,
				updatedAt: json['updated_at'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'created_at': createdAt,
				'display_plural': displayPlural,
				'display_singular': displaySingular,
				'id': id,
				'name': name,
				'updated_at': updatedAt,
			};

	@override
	List<Object?> get props {
		return [
				createdAt,
				displayPlural,
				displaySingular,
				id,
				name,
				updatedAt,
		];
	}
}
