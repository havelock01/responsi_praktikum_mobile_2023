class KategoriTerbaru {
  final bool? success;
  final dynamic message;
  final Data? data;

  KategoriTerbaru({
    this.success,
    this.message,
    this.data,
  });

  KategoriTerbaru copyWith({
    bool? success,
    dynamic message,
    Data? data,
  }) {
    return KategoriTerbaru(
      success: success ?? this.success,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  KategoriTerbaru.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        message = json['message'],
        data = (json['data'] as Map<String, dynamic>?) != null
            ? Data.fromJson(json['data'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() =>
      {'success': success, 'message': message, 'data': data?.toJson()};
}

class Data {
  final String? link;
  final String? description;
  final String? title;
  final String? image;
  final List<Posts>? posts;

  Data({
    this.link,
    this.description,
    this.title,
    this.image,
    this.posts,
  });

  Data copyWith({
    String? link,
    String? description,
    String? title,
    String? image,
    List<Posts>? posts,
  }) {
    return Data(
      link: link ?? this.link,
      description: description ?? this.description,
      title: title ?? this.title,
      image: image ?? this.image,
      posts: posts ?? this.posts,
    );
  }

  Data.fromJson(Map<String, dynamic> json)
      : link = json['link'] as String?,
        description = json['description'] as String?,
        title = json['title'] as String?,
        image = json['image'] as String?,
        posts = (json['posts'] as List?)
            ?.map((dynamic e) => Posts.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'link': link,
        'description': description,
        'title': title,
        'image': image,
        'posts': posts?.map((e) => e.toJson()).toList()
      };
}

class Posts {
  final String? link;
  final String? title;
  final String? pubDate;
  final String? description;
  final String? thumbnail;

  Posts({
    this.link,
    this.title,
    this.pubDate,
    this.description,
    this.thumbnail,
  });

  Posts copyWith({
    String? link,
    String? title,
    String? pubDate,
    String? description,
    String? thumbnail,
  }) {
    return Posts(
      link: link ?? this.link,
      title: title ?? this.title,
      pubDate: pubDate ?? this.pubDate,
      description: description ?? this.description,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  Posts.fromJson(Map<String, dynamic> json)
      : link = json['link'] as String?,
        title = json['title'] as String?,
        pubDate = json['pubDate'] as String?,
        description = json['description'] as String?,
        thumbnail = json['thumbnail'] as String?;

  Map<String, dynamic> toJson() => {
        'link': link,
        'title': title,
        'pubDate': pubDate,
        'description': description,
        'thumbnail': thumbnail
      };
}
