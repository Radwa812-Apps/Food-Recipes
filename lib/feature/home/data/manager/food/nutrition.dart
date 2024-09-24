import 'package:equatable/equatable.dart';

class Nutrition extends Equatable {
	final int? calories;
	final int? carbohydrates;
	final int? fat;
	final int? fiber;
	final int? protein;
	final int? sugar;
	final String? updatedAt;

	const Nutrition({
		this.calories, 
		this.carbohydrates, 
		this.fat, 
		this.fiber, 
		this.protein, 
		this.sugar, 
		this.updatedAt, 
	});

	factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
				calories: json['calories'] as int?,
				carbohydrates: json['carbohydrates'] as int?,
				fat: json['fat'] as int?,
				fiber: json['fiber'] as int?,
				protein: json['protein'] as int?,
				sugar: json['sugar'] as int?,
				updatedAt: json['updated_at'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'calories': calories,
				'carbohydrates': carbohydrates,
				'fat': fat,
				'fiber': fiber,
				'protein': protein,
				'sugar': sugar,
				'updated_at': updatedAt,
			};

	@override
	List<Object?> get props {
		return [
				calories,
				carbohydrates,
				fat,
				fiber,
				protein,
				sugar,
				updatedAt,
		];
	}
}
