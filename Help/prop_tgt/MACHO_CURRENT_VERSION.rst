MACHO_CURRENT_VERSION
---------------------

What current version number is this target for Mach-O binaries.

For shared libraries on Mach-O systems (e.g. macOS, iOS)
the :prop_tgt:`MACHO_COMPATIBILITY_VERSION` property correspond to
``compatibility version`` and ``MACHO_CURRENT_VERSION`` to ``current version``.
See the :prop_tgt:`FRAMEWORK` target property for an example.

Versions of Mach-O binaries may be checked with the ``otool -L <binary>``
command.  If ``MACHO_CURRENT_VERSION`` is not set, the value of
the :prop_tgt:`VERSION` property will be used.
