import 'package:equatable/equatable.dart';

class Rendition extends Equatable {
	final String? aspect;
	final int? bitRate;
	final String? container;
	final String? contentType;
	final int? duration;
	final int? fileSize;
	final int? height;
	final dynamic maximumBitRate;
	final dynamic minimumBitRate;
	final String? name;
	final String? posterUrl;
	final String? url;
	final int? width;

	const Rendition({
		this.aspect, 
		this.bitRate, 
		this.container, 
		this.contentType, 
		this.duration, 
		this.fileSize, 
		this.height, 
		this.maximumBitRate, 
		this.minimumBitRate, 
		this.name, 
		this.posterUrl, 
		this.url, 
		this.width, 
	});

	factory Rendition.fromJson(Map<String, dynamic> json) => Rendition(
				aspect: json['aspect'] as String?,
				bitRate: json['bit_rate'] as int?,
				container: json['container'] as String?,
				contentType: json['content_type'] as String?,
				duration: json['duration'] as int?,
				fileSize: json['file_size'] as int?,
				height: json['height'] as int?,
				maximumBitRate: json['maximum_bit_rate'] as dynamic,
				minimumBitRate: json['minimum_bit_rate'] as dynamic,
				name: json['name'] as String?,
				posterUrl: json['poster_url'] as String?,
				url: json['url'] as String?,
				width: json['width'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'aspect': aspect,
				'bit_rate': bitRate,
				'container': container,
				'content_type': contentType,
				'duration': duration,
				'file_size': fileSize,
				'height': height,
				'maximum_bit_rate': maximumBitRate,
				'minimum_bit_rate': minimumBitRate,
				'name': name,
				'poster_url': posterUrl,
				'url': url,
				'width': width,
			};

	@override
	List<Object?> get props {
		return [
				aspect,
				bitRate,
				container,
				contentType,
				duration,
				fileSize,
				height,
				maximumBitRate,
				minimumBitRate,
				name,
				posterUrl,
				url,
				width,
		];
	}
}
