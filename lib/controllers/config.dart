enum Path {
  notFound,
  home,
  explore,
  profile,
}

const Map<Path, String> Paths = {
  Path.notFound: '/notfound',
  Path.home: '/',
  Path.explore: '/explore',
  Path.profile: '/user'
};
