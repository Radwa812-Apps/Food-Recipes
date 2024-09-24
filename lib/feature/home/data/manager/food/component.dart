import 'package:equatable/equatable.dart';

import 'hack.dart';
import 'ingredient.dart';
import 'measurement.dart';

class Component extends Equatable {
	final String? extraComment;
	final int? id;
	final Ingredient? ingredient;
	final List<Measurement>? measurements;
	final int? position;
	final String? rawText;
	final List<Hack>? hacks;

	const Component({
		this.extraComment, 
		this.id, 
		this.ingredient, 
		this.measurements, 
		this.position, 
		this.rawText, 
		this.hacks, 
	});

	factory Component.fromJson(Map<String, dynamic> json) => Component(
				extraComment: json['extra_comment'] as String?,
				id: json['id'] as int?,
				ingredient: json['ingredient'] == null
						? null
						: Ingredient.fromJson(json['ingredient'] as Map<String, dynamic>),
				measurements: (json['measurements'] as List<dynamic>?)
						?.map((e) => Measurement.fromJson(e as Map<String, dynamic>))
						.toList(),
				position: json['position'] as int?,
				rawText: json['raw_text'] as String?,
				hacks: (json['hacks'] as List<dynamic>?)
						?.map((e) => Hack.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'extra_comment': extraComment,
				'id': id,
				'ingredient': ingredient?.toJson(),
				'measurements': measurements?.map((e) => e.toJson()).toList(),
				'position': position,
				'raw_text': rawText,
				'hacks': hacks?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props {
		return [
				extraComment,
				id,
				ingredient,
				measurements,
				position,
				rawText,
				hacks,
		];
	}
}
