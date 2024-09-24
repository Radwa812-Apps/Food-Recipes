import 'package:equatable/equatable.dart';

class Hack extends Equatable {
	final int? endIndex;
	final int? id;
	final String? match;
	final int? startIndex;

	const Hack({this.endIndex, this.id, this.match, this.startIndex});

	factory Hack.fromJson(Map<String, dynamic> json) => Hack(
				endIndex: json['end_index'] as int?,
				id: json['id'] as int?,
				match: json['match'] as String?,
				startIndex: json['start_index'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'end_index': endIndex,
				'id': id,
				'match': match,
				'start_index': startIndex,
			};

	@override
	List<Object?> get props => [endIndex, id, match, startIndex];
}
