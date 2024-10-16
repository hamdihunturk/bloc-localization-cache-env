// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _ProdEnv {
  static const List<int> _enviedkeybaseUrl = <int>[
    4115509828,
    1176269697,
    3942239726,
    3201047143,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    4115509877,
    1176269744,
    3942239708,
    3201047124,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));

  static const List<int> _enviedkeymapApiKey = <int>[
    2894735763,
    696798593,
    1341624533,
    2374587087,
    4061177688,
    751655270,
    1453048353,
  ];

  static const List<int> _envieddatamapApiKey = <int>[
    2894735776,
    696798693,
    1341624499,
    2374587051,
    4061177643,
    751655207,
    1453048422,
  ];

  static final String mapApiKey = String.fromCharCodes(List<int>.generate(
    _envieddatamapApiKey.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatamapApiKey[i] ^ _enviedkeymapApiKey[i]));
}
