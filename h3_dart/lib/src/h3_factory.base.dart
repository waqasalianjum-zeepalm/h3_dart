import 'package:h3_common/h3_common.dart';

/// H3Factory is used to build H3 instance
abstract class BaseH3Factory {
  /// Loads H3 from process, H3 C library must be loaded into this process first.
  /// ```dart
  /// DynamicLibrary.open('../h3_ffi/c/h3lib/build/libh3lib.lib');
  /// final h3 = h3Factory.process();
  /// h3.degsToRads(123);
  /// ```
  H3 process();

  /// Loads H3 using specified [libraryPath]
  /// ```dart
  /// final h3 = h3Factory.byPath('../h3_ffi/c/h3lib/build/libh3lib.lib');
  /// h3.degsToRads(123);
  /// ```
  H3 byPath(String libraryPath);

  /// Loads H3 on Web
  H3 web();
}
