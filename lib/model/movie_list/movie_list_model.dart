class MovieListModel {
  String total;
  int page;
  int pages;
  List<TvShows> tvShow;

  MovieListModel({
    this.total = '',
    this.page = 0,
    this.pages = 0,
    this.tvShow = const [],
  });

  factory MovieListModel.fromJson(Map<String, dynamic> json) {
    return MovieListModel(
      total: json['total'] ?? '',
      page: json['page'] ?? 0,
      pages: json['pages'] ?? 0,
      tvShow: json['tv_shows'] != null
          ? List<TvShows>.from(
              json['tv_shows'].map((x) => TvShows.fromJson(x)))
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'page': page,
      'pages': pages,
      'tv_shows': tvShow.map((x) => x.toJson()).toList(),
    };
  }
}

class TvShows {
  String name;
  String permalink;
  String endDate;
  String network;
  String imageThumbnailPath;
  String status;

  TvShows({
    this.name = '',
    this.permalink = '',
    this.endDate = '',
    this.network = '',
    this.imageThumbnailPath = '',
    this.status = '',
  });

  factory TvShows.fromJson(Map<String, dynamic> json) {
    return TvShows(
      name: json['name'] ?? '',
      permalink: json['permalink'] ?? '',
      endDate: json['end_date'] ?? '',
      network: json['network'] ?? '',
      imageThumbnailPath: json['image_thumbnail_path'] ?? '',
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'permalink': permalink,
      'end_date': endDate,
      'network': network,
      'image_thumbnail_path': imageThumbnailPath,
      'status': status,
    };
  }
}
