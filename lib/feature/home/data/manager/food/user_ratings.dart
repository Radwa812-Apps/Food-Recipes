import 'package:equatable/equatable.dart';

class UserRatings extends Equatable {
	final int? countNegative;
	final int? countPositive;
	final double? score;

	const UserRatings({this.countNegative, this.countPositive, this.score});

	factory UserRatings.fromJson(Map<String, dynamic> json) => UserRatings(
				countNegative: json['count_negative'] as int?,
				countPositive: json['count_positive'] as int?,
				score: (json['score'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'count_negative': countNegative,
				'count_positive': countPositive,
				'score': score,
			};

	@override
	List<Object?> get props => [countNegative, countPositive, score];
}
