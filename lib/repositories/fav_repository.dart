
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import '../model/favourite.dart';


abstract class FavRepository {
  Future<Favourite> publishPost(PublishData data);
  Future<BuiltList<Favourite>?> getFeed(
      {int page = 1, int pageSize = feedPageSize});
}

class ApiFavRepository implements FavRepository {
  ApiFavRepository(this._api);
  final HttpApi _api;

  @override
  Future<PublishedDecisionView> publishPost(PublishData data) async {
    dynamic rawData = await _api.post(
      '/feed/publish-post',
      serializers.serializeWith(
        PublishData.serializer,
        data,
      ),
    );

    return serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        PublishedDecisionView,
      ),
    ) as PublishedDecisionView;
  }

  @override
  Future<BuiltList<PublishedDecisionView>?> getFeed({
    int page = 1,
    int pageSize = feedPageSize,
  }) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/feed/public/?page=$page&page_size=$pageSize',
      );

      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          const [const FullType(PublishedDecisionView)],
        ),
      ) as BuiltList<PublishedDecisionView>;
    } on ClientException {
      //reached end of page
      return null;
    }
  }

  @override
  Future<BuiltList<PublishedDecisionView>?> getFeaturedDecisions({
    int page = 1,
    int pageSize = featuredDecisionsSize,
  }) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/feed/featured-decisions?page=$page&page_size=$pageSize',
      );

      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          const [const FullType(PublishedDecisionView)],
        ),
      ) as BuiltList<PublishedDecisionView>;
    } on ClientException {
      //reached end of page
      return null;
    }
  }

  @override
  Future<BuiltList<PublishedDecisionView>?> getMyPublished({
    int page = 1,
    int pageSize = userPublishedPageSize,
  }) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/feed/my/?page=$page&page_size=$pageSize',
      );
      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          const [const FullType(PublishedDecisionView)],
        ),
      ) as BuiltList<PublishedDecisionView>;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<BuiltList<PublishedDecisionView>> searchFeed({
    int page = 1,
    int pageSize = feedPageSize,
    String searchQuery = "",
  }) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/feed/public/?search=$searchQuery&page=$page&page_size=$pageSize',
      );
      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          const [const FullType(PublishedDecisionView)],
        ),
      ) as BuiltList<PublishedDecisionView>;
    } on ClientException {
      throw Exception();
    }
  }

  @override
  Future<PublishedDecisionView> toggleLike(int postId) async {
    dynamic rawData = await _api.post(
      '/feed/toggle-like',
      {'post_id': postId},
    );

    return serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        PublishedDecisionView,
      ),
    ) as PublishedDecisionView;
  }

  @override
  Future<void> postViewed(int postId) async {
    await _api.post(
      DI().account == null ? '/feed/post-view-guest' : '/feed/post-view',
      {
        'post_id': postId,
      },
    );
  }

  @override
  Future<void> unPublishPost(int postId) async {
    await _api.put(
      '/feed/unpublish/$postId',
    );
  }

  @override
  Future<ViewAuthorPost> viewUser(int userId) async {
    final dynamic rawData = await _api.get(
      '/feed/user/$userId/posts',
    );
    final ViewAuthorPost result = serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        ViewAuthorPost,
      ),
    ) as ViewAuthorPost;
    return result;
  }

  @override
  Future<ViewAuthorInfo> viewUserInfo(int userId) async {
    final dynamic rawData = await _api.get(
      '/feed/user/$userId/info',
    );
    final ViewAuthorInfo result = serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        ViewAuthorInfo,
      ),
    ) as ViewAuthorInfo;

    return result;
  }

  @override
  Future<BuiltList<PublishedDecisionView>?> viewUserPosts(int userId,
      {int page = 1}) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/feed/user/$userId/published-posts?page=$page',
      );
      var result = serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          const [const FullType(PublishedDecisionView)],
        ),
      ) as BuiltList<PublishedDecisionView>;
      return result;
    } catch (_) {
      return null;
    }
  }
}