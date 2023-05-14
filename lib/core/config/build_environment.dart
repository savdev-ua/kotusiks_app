enum BuildFlavor { production, dev }

BuildEnvironment get env => _env!;
BuildEnvironment? _env;

class BuildEnvironment {
  final String factsBase;
  final String facts;
  final String imagesBase;
  final BuildFlavor flavor;

  BuildEnvironment._init({
    required this.flavor,
    required this.factsBase,
    required this.facts,
    required this.imagesBase,
  });

  static void init({
    required flavor,
    required imagesBase,
    required factsBase,
    required facts,
  }) =>
      _env ??= BuildEnvironment._init(
        flavor: flavor,
        factsBase: factsBase,
        imagesBase: imagesBase,
        facts: facts,
      );
}
