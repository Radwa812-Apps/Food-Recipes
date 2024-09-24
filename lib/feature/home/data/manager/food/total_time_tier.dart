import 'package:equatable/equatable.dart';

class TotalTimeTier extends Equatable {
	final String? displayTier;
	final String? tier;

	const TotalTimeTier({this.displayTier, this.tier});

	factory TotalTimeTier.fromJson(Map<String, dynamic> json) => TotalTimeTier(
				displayTier: json['display_tier'] as String?,
				tier: json['tier'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'display_tier': displayTier,
				'tier': tier,
			};

	@override
	List<Object?> get props => [displayTier, tier];
}
