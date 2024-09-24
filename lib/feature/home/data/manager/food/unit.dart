import 'package:equatable/equatable.dart';

class Unit extends Equatable {
	final String? abbreviation;
	final String? displayPlural;
	final String? displaySingular;
	final String? name;
	final String? system;

	const Unit({
		this.abbreviation, 
		this.displayPlural, 
		this.displaySingular, 
		this.name, 
		this.system, 
	});

	factory Unit.fromJson(Map<String, dynamic> json) => Unit(
				abbreviation: json['abbreviation'] as String?,
				displayPlural: json['display_plural'] as String?,
				displaySingular: json['display_singular'] as String?,
				name: json['name'] as String?,
				system: json['system'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'abbreviation': abbreviation,
				'display_plural': displayPlural,
				'display_singular': displaySingular,
				'name': name,
				'system': system,
			};

	@override
	List<Object?> get props {
		return [
				abbreviation,
				displayPlural,
				displaySingular,
				name,
				system,
		];
	}
}
