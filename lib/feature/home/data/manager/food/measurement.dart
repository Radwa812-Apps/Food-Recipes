import 'package:equatable/equatable.dart';

import 'unit.dart';

class Measurement extends Equatable {
	final int? id;
	final String? quantity;
	final Unit? unit;

	const Measurement({this.id, this.quantity, this.unit});

	factory Measurement.fromJson(Map<String, dynamic> json) => Measurement(
				id: json['id'] as int?,
				quantity: json['quantity'] as String?,
				unit: json['unit'] == null
						? null
						: Unit.fromJson(json['unit'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'quantity': quantity,
				'unit': unit?.toJson(),
			};

	@override
	List<Object?> get props => [id, quantity, unit];
}
