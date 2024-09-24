import 'package:equatable/equatable.dart';

import 'compilation.dart';
import 'credit.dart';
import 'instruction.dart';
import 'nutrition.dart';
import 'price.dart';
import 'rendition.dart';
import 'section.dart';
import 'show.dart';
import 'tag.dart';
import 'topic.dart';
import 'total_time_tier.dart';
import 'user_ratings.dart';

class Food extends Equatable {
	final int? approvedAt;
	final String? aspectRatio;
	final dynamic beautyUrl;
	final dynamic brand;
	final dynamic brandId;
	final dynamic buzzId;
	final String? canonicalId;
	final List<Compilation>? compilations;
	final int? cookTimeMinutes;
	final String? country;
	final int? createdAt;
	final List<Credit>? credits;
	final String? description;
	final String? draftStatus;
	final List<dynamic>? facebookPosts;
	final int? id;
	final String? inspiredByUrl;
	final List<Instruction>? instructions;
	final bool? isAppOnly;
	final bool? isOneTop;
	final bool? isShoppable;
	final bool? isSubscriberContent;
	final dynamic keywords;
	final String? language;
	final String? name;
	final int? numServings;
	final Nutrition? nutrition;
	final String? nutritionVisibility;
	final String? originalVideoUrl;
	final int? prepTimeMinutes;
	final Price? price;
	final String? promotion;
	final List<Rendition>? renditions;
	final List<Section>? sections;
	final String? seoPath;
	final String? seoTitle;
	final String? servingsNounPlural;
	final String? servingsNounSingular;
	final Show? show;
	final int? showId;
	final String? slug;
	final List<Tag>? tags;
	final String? thumbnailAltText;
	final String? thumbnailUrl;
	final bool? tipsAndRatingsEnabled;
	final List<Topic>? topics;
	final int? totalTimeMinutes;
	final TotalTimeTier? totalTimeTier;
	final int? updatedAt;
	final UserRatings? userRatings;
	final String? videoAdContent;
	final int? videoId;
	final String? videoUrl;
	final String? yields;

	const Food({
		this.approvedAt, 
		this.aspectRatio, 
		this.beautyUrl, 
		this.brand, 
		this.brandId, 
		this.buzzId, 
		this.canonicalId, 
		this.compilations, 
		this.cookTimeMinutes, 
		this.country, 
		this.createdAt, 
		this.credits, 
		this.description, 
		this.draftStatus, 
		this.facebookPosts, 
		this.id, 
		this.inspiredByUrl, 
		this.instructions, 
		this.isAppOnly, 
		this.isOneTop, 
		this.isShoppable, 
		this.isSubscriberContent, 
		this.keywords, 
		this.language, 
		this.name, 
		this.numServings, 
		this.nutrition, 
		this.nutritionVisibility, 
		this.originalVideoUrl, 
		this.prepTimeMinutes, 
		this.price, 
		this.promotion, 
		this.renditions, 
		this.sections, 
		this.seoPath, 
		this.seoTitle, 
		this.servingsNounPlural, 
		this.servingsNounSingular, 
		this.show, 
		this.showId, 
		this.slug, 
		this.tags, 
		this.thumbnailAltText, 
		this.thumbnailUrl, 
		this.tipsAndRatingsEnabled, 
		this.topics, 
		this.totalTimeMinutes, 
		this.totalTimeTier, 
		this.updatedAt, 
		this.userRatings, 
		this.videoAdContent, 
		this.videoId, 
		this.videoUrl, 
		this.yields, 
	});

	factory Food.fromJson(Map<String, dynamic> json) => Food(
				approvedAt: json['approved_at'] as int?,
				aspectRatio: json['aspect_ratio'] as String?,
				beautyUrl: json['beauty_url'] as dynamic,
				brand: json['brand'] as dynamic,
				brandId: json['brand_id'] as dynamic,
				buzzId: json['buzz_id'] as dynamic,
				canonicalId: json['canonical_id'] as String?,
				compilations: (json['compilations'] as List<dynamic>?)
						?.map((e) => Compilation.fromJson(e as Map<String, dynamic>))
						.toList(),
				cookTimeMinutes: json['cook_time_minutes'] as int?,
				country: json['country'] as String?,
				createdAt: json['created_at'] as int?,
				credits: (json['credits'] as List<dynamic>?)
						?.map((e) => Credit.fromJson(e as Map<String, dynamic>))
						.toList(),
				description: json['description'] as String?,
				draftStatus: json['draft_status'] as String?,
				facebookPosts: json['facebook_posts'] as List<dynamic>?,
				id: json['id'] as int?,
				inspiredByUrl: json['inspired_by_url'] as String?,
				instructions: (json['instructions'] as List<dynamic>?)
						?.map((e) => Instruction.fromJson(e as Map<String, dynamic>))
						.toList(),
				isAppOnly: json['is_app_only'] as bool?,
				isOneTop: json['is_one_top'] as bool?,
				isShoppable: json['is_shoppable'] as bool?,
				isSubscriberContent: json['is_subscriber_content'] as bool?,
				keywords: json['keywords'] as dynamic,
				language: json['language'] as String?,
				name: json['name'] as String?,
				numServings: json['num_servings'] as int?,
				nutrition: json['nutrition'] == null
						? null
						: Nutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
				nutritionVisibility: json['nutrition_visibility'] as String?,
				originalVideoUrl: json['original_video_url'] as String?,
				prepTimeMinutes: json['prep_time_minutes'] as int?,
				price: json['price'] == null
						? null
						: Price.fromJson(json['price'] as Map<String, dynamic>),
				promotion: json['promotion'] as String?,
				renditions: (json['renditions'] as List<dynamic>?)
						?.map((e) => Rendition.fromJson(e as Map<String, dynamic>))
						.toList(),
				sections: (json['sections'] as List<dynamic>?)
						?.map((e) => Section.fromJson(e as Map<String, dynamic>))
						.toList(),
				seoPath: json['seo_path'] as String?,
				seoTitle: json['seo_title'] as String?,
				servingsNounPlural: json['servings_noun_plural'] as String?,
				servingsNounSingular: json['servings_noun_singular'] as String?,
				show: json['show'] == null
						? null
						: Show.fromJson(json['show'] as Map<String, dynamic>),
				showId: json['show_id'] as int?,
				slug: json['slug'] as String?,
				tags: (json['tags'] as List<dynamic>?)
						?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
						.toList(),
				thumbnailAltText: json['thumbnail_alt_text'] as String?,
				thumbnailUrl: json['thumbnail_url'] as String?,
				tipsAndRatingsEnabled: json['tips_and_ratings_enabled'] as bool?,
				topics: (json['topics'] as List<dynamic>?)
						?.map((e) => Topic.fromJson(e as Map<String, dynamic>))
						.toList(),
				totalTimeMinutes: json['total_time_minutes'] as int?,
				totalTimeTier: json['total_time_tier'] == null
						? null
						: TotalTimeTier.fromJson(json['total_time_tier'] as Map<String, dynamic>),
				updatedAt: json['updated_at'] as int?,
				userRatings: json['user_ratings'] == null
						? null
						: UserRatings.fromJson(json['user_ratings'] as Map<String, dynamic>),
				videoAdContent: json['video_ad_content'] as String?,
				videoId: json['video_id'] as int?,
				videoUrl: json['video_url'] as String?,
				yields: json['yields'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'approved_at': approvedAt,
				'aspect_ratio': aspectRatio,
				'beauty_url': beautyUrl,
				'brand': brand,
				'brand_id': brandId,
				'buzz_id': buzzId,
				'canonical_id': canonicalId,
				'compilations': compilations?.map((e) => e.toJson()).toList(),
				'cook_time_minutes': cookTimeMinutes,
				'country': country,
				'created_at': createdAt,
				'credits': credits?.map((e) => e.toJson()).toList(),
				'description': description,
				'draft_status': draftStatus,
				'facebook_posts': facebookPosts,
				'id': id,
				'inspired_by_url': inspiredByUrl,
				'instructions': instructions?.map((e) => e.toJson()).toList(),
				'is_app_only': isAppOnly,
				'is_one_top': isOneTop,
				'is_shoppable': isShoppable,
				'is_subscriber_content': isSubscriberContent,
				'keywords': keywords,
				'language': language,
				'name': name,
				'num_servings': numServings,
				'nutrition': nutrition?.toJson(),
				'nutrition_visibility': nutritionVisibility,
				'original_video_url': originalVideoUrl,
				'prep_time_minutes': prepTimeMinutes,
				'price': price?.toJson(),
				'promotion': promotion,
				'renditions': renditions?.map((e) => e.toJson()).toList(),
				'sections': sections?.map((e) => e.toJson()).toList(),
				'seo_path': seoPath,
				'seo_title': seoTitle,
				'servings_noun_plural': servingsNounPlural,
				'servings_noun_singular': servingsNounSingular,
				'show': show?.toJson(),
				'show_id': showId,
				'slug': slug,
				'tags': tags?.map((e) => e.toJson()).toList(),
				'thumbnail_alt_text': thumbnailAltText,
				'thumbnail_url': thumbnailUrl,
				'tips_and_ratings_enabled': tipsAndRatingsEnabled,
				'topics': topics?.map((e) => e.toJson()).toList(),
				'total_time_minutes': totalTimeMinutes,
				'total_time_tier': totalTimeTier?.toJson(),
				'updated_at': updatedAt,
				'user_ratings': userRatings?.toJson(),
				'video_ad_content': videoAdContent,
				'video_id': videoId,
				'video_url': videoUrl,
				'yields': yields,
			};

	@override
	List<Object?> get props {
		return [
				approvedAt,
				aspectRatio,
				beautyUrl,
				brand,
				brandId,
				buzzId,
				canonicalId,
				compilations,
				cookTimeMinutes,
				country,
				createdAt,
				credits,
				description,
				draftStatus,
				facebookPosts,
				id,
				inspiredByUrl,
				instructions,
				isAppOnly,
				isOneTop,
				isShoppable,
				isSubscriberContent,
				keywords,
				language,
				name,
				numServings,
				nutrition,
				nutritionVisibility,
				originalVideoUrl,
				prepTimeMinutes,
				price,
				promotion,
				renditions,
				sections,
				seoPath,
				seoTitle,
				servingsNounPlural,
				servingsNounSingular,
				show,
				showId,
				slug,
				tags,
				thumbnailAltText,
				thumbnailUrl,
				tipsAndRatingsEnabled,
				topics,
				totalTimeMinutes,
				totalTimeTier,
				updatedAt,
				userRatings,
				videoAdContent,
				videoId,
				videoUrl,
				yields,
		];
	}
}
