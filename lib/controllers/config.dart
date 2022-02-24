// ignore_for_file: constant_identifier_names

enum Paths {
  notFound,
  home,
  explore,
  profile,
  user,
  post,
}

const Map<Paths, String> Path = {
  Paths.notFound: '/notfound',
  Paths.home: '/home',
  Paths.profile: '/user/:username',
  Paths.user: '/user',
  Paths.explore: '/explore',
  Paths.post: '/post:postId'
};

enum Params {
  username,
  postId,
}

const Map<Params, String> Param = {
  Params.username: 'username',
  Params.postId: 'postId',
};
