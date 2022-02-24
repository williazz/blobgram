enum Paths {
  notFound,
  home,
  explore,
  profile,
}

// ignore: constant_identifier_names
const Map<Paths, String> Path = {
  Paths.notFound: '/notfound',
  Paths.home: '/',
  Paths.explore: '/explore',
  Paths.profile: '/user'
};
