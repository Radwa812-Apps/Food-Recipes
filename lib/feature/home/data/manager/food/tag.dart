import 'package:equatable/equatable.dart';

class Tag extends Equatable {
	final String? displayName;
	final int? id;
	final String? name;
	final String? parentTagName;
	final String? rootTagType;
	final String? type;

	const Tag({
		this.displayName, 
		this.id, 
		this.name, 
		this.parentTagName, 
		this.rootTagType, 
		this.type, 
	});

	factory Tag.fromJson(Map<String, dynamic> json) => Tag(
				displayName: json['display_name'] as String?,
				id: json['id'] as int?,
				name: json['name'] as String?,
				parentTagName: json['parent_tag_name'] as String?,
				rootTagType: json['root_tag_type'] as String?,
				type: json['type'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'display_name': displayName,
				'id': id,
				'name': name,
				'parent_tag_name': parentTagName,
				'root_tag_type': rootTagType,
				'type': type,
			};

	@override
	List<Object?> get props {
		return [
				displayName,
				id,
				name,
				parentTagName,
				rootTagType,
				type,
		];
	}
}
