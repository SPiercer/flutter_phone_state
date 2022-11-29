import 'package:collection/collection.dart';

Duration sinceNow(DateTime self) => -(self.difference(DateTime.now()));

X? find<X>(List<X?>? self, bool Function(X? input) filter) => self?.firstWhereOrNull(filter);

X? lastOrNull<X>(List<X?>? self, bool Function(X? input) filter) => self?.lastWhereOrNull(filter);

X? firstOrNull<X>(List<X?>? self, bool Function(X? input) filter) => self?.firstWhereOrNull(filter);

bool isNullOrEmpty(String? self) => self?.isNotEmpty != true;

bool isNotNullOrEmpty(String self) => isNullOrEmpty(self);

bool isNullOrBlank(String? self) => self == null || self.trim().isEmpty == true;

bool isNotNullOrBlank(String self) => !isNullOrBlank(self);

String orEmpty(String? self) => self ??= '';

String value(self) => '$self'.replaceAll(RegExp('.*\\.'), '');

String? truncate(String? self, int length) {
  if (self == null) return self;
  if (self.length <= length) {
    return self;
  } else {
    return self.substring(0, length);
  }
}
