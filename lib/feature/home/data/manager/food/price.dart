import 'package:equatable/equatable.dart';

class Price extends Equatable {
	final int? consumptionPortion;
	final int? consumptionTotal;
	final int? portion;
	final int? total;
	final String? updatedAt;

	const Price({
		this.consumptionPortion, 
		this.consumptionTotal, 
		this.portion, 
		this.total, 
		this.updatedAt, 
	});

	factory Price.fromJson(Map<String, dynamic> json) => Price(
				consumptionPortion: json['consumption_portion'] as int?,
				consumptionTotal: json['consumption_total'] as int?,
				portion: json['portion'] as int?,
				total: json['total'] as int?,
				updatedAt: json['updated_at'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'consumption_portion': consumptionPortion,
				'consumption_total': consumptionTotal,
				'portion': portion,
				'total': total,
				'updated_at': updatedAt,
			};

	@override
	List<Object?> get props {
		return [
				consumptionPortion,
				consumptionTotal,
				portion,
				total,
				updatedAt,
		];
	}
}
