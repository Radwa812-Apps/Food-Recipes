import 'package:equatable/equatable.dart';

import 'hack.dart';

class Instruction extends Equatable {
	final dynamic appliance;
	final String? displayText;
	final int? endTime;
	final List<Hack>? hacks;
	final int? id;
	final int? position;
	final int? startTime;
	final dynamic temperature;

	const Instruction({
		this.appliance, 
		this.displayText, 
		this.endTime, 
		this.hacks, 
		this.id, 
		this.position, 
		this.startTime, 
		this.temperature, 
	});

	factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
				appliance: json['appliance'] as dynamic,
				displayText: json['display_text'] as String?,
				endTime: json['end_time'] as int?,
				hacks: (json['hacks'] as List<dynamic>?)
						?.map((e) => Hack.fromJson(e as Map<String, dynamic>))
						.toList(),
				id: json['id'] as int?,
				position: json['position'] as int?,
				startTime: json['start_time'] as int?,
				temperature: json['temperature'] as dynamic,
			);

	Map<String, dynamic> toJson() => {
				'appliance': appliance,
				'display_text': displayText,
				'end_time': endTime,
				'hacks': hacks?.map((e) => e.toJson()).toList(),
				'id': id,
				'position': position,
				'start_time': startTime,
				'temperature': temperature,
			};

	@override
	List<Object?> get props {
		return [
				appliance,
				displayText,
				endTime,
				hacks,
				id,
				position,
				startTime,
				temperature,
		];
	}
}
