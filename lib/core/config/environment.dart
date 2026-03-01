enum Environment {
  dev(
    baseUrl: 'https://pt22fbfv-3001.uks1.devtunnels.ms'
  ),
  prod(
    baseUrl: 'https://pt22fbfv-3001.uks1.devtunnels.ms'
  );

  final String baseUrl;

  const Environment({
    required this.baseUrl
  });
}

extension X on Environment {
  bool get isProd => this == Environment.prod;
}
