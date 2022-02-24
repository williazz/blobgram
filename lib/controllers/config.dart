// ignore_for_file: constant_identifier_names

enum Paths {
  notFound,
  home,
  explore,
  profile,
  // myProfile,
}

const Map<Paths, String> Path = {
  Paths.notFound: '/notfound',
  Paths.home: '/home',
  Paths.profile: '/user/:username',
  // Paths.myProfile: '/user',
  Paths.explore: '/explore',
};

enum Params {
  username,
}

const Map<Params, String> Param = {
  Params.username: 'username',
};
