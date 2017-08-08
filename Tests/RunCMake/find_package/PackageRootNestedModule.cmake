cmake_policy(SET CMP0057 NEW)
list(INSERT CMAKE_MODULE_PATH 0 ${CMAKE_CURRENT_SOURCE_DIR}/PackageRoot)
set(PackageRoot_BASE ${CMAKE_CURRENT_SOURCE_DIR}/PackageRoot)

function(PrintPath label path)
  string(REPLACE "${PackageRoot_BASE}" "<base>" out "${path}")
  message("${label}${out}")
endfunction()

macro(CleanUpPackageRootTest)
  unset(Foo_ROOT)
  unset(ENV{Foo_ROOT})
  unset(Bar_DIR)
  unset(BAR_CMAKE_FILE)
  unset(Bar_ROOT)
  unset(ENV{Bar_ROOT})
  unset(FOO_TEST_FILE_FOO)
  unset(FOO_TEST_FILE_ZOT)
  unset(FOO_TEST_PATH_FOO)
  unset(FOO_TEST_PATH_ZOT)
  unset(FOO_TEST_PROG_FOO)
  unset(BAR_TEST_FILE_FOO)
  unset(BAR_TEST_FILE_BAR)
  unset(BAR_TEST_FILE_ZOT)
  unset(BAR_TEST_PATH_FOO)
  unset(BAR_TEST_PATH_BAR)
  unset(BAR_TEST_PATH_ZOT)
  unset(BAR_TEST_PROG_FOO)
  unset(BAR_TEST_PROG_BAR)
  unset(Bar_DIR CACHE)
  unset(BAR_CMAKE_FILE CACHE)
  unset(FOO_TEST_FILE_FOO CACHE)
  unset(FOO_TEST_FILE_ZOT CACHE)
  unset(FOO_TEST_PATH_FOO CACHE)
  unset(FOO_TEST_PATH_ZOT CACHE)
  unset(FOO_TEST_PROG_FOO CACHE)
  unset(BAR_TEST_FILE_FOO CACHE)
  unset(BAR_TEST_FILE_BAR CACHE)
  unset(BAR_TEST_FILE_ZOT CACHE)
  unset(BAR_TEST_PATH_FOO CACHE)
  unset(BAR_TEST_PATH_BAR CACHE)
  unset(BAR_TEST_PATH_ZOT CACHE)
  unset(BAR_TEST_PROG_FOO CACHE)
  unset(BAR_TEST_PROG_BAR CACHE)
endmacro()

macro(RunPackageRootTest)
  message("----------")
  PrintPath("Foo_ROOT      :" "${Foo_ROOT}")
  PrintPath("ENV{Foo_ROOT} :" "$ENV{Foo_ROOT}")
  PrintPath("Bar_DIR       :" "${Bar_DIR}")
  PrintPath("Bar_ROOT      :" "${Bar_ROOT}")
  PrintPath("ENV{Bar_ROOT} :" "$ENV{Bar_ROOT}")
  message("")

  find_package(Foo COMPONENTS BarModule)
  message("find_package(Foo COMPONENTS BarModule)")
  PrintPath("FOO_TEST_FILE_FOO :" "${FOO_TEST_FILE_FOO}")
  PrintPath("FOO_TEST_FILE_ZOT :" "${FOO_TEST_FILE_ZOT}")
  PrintPath("FOO_TEST_PATH_FOO :" "${FOO_TEST_PATH_FOO}")
  PrintPath("FOO_TEST_PATH_ZOT :" "${FOO_TEST_PATH_ZOT}")
  PrintPath("FOO_TEST_PROG_FOO :" "${FOO_TEST_PROG_FOO}")
  PrintPath("BAR_CMAKE_FILE    :" "${BAR_CMAKE_FILE}")
  PrintPath("BAR_TEST_FILE_FOO :" "${BAR_TEST_FILE_FOO}")
  PrintPath("BAR_TEST_FILE_BAR :" "${BAR_TEST_FILE_BAR}")
  PrintPath("BAR_TEST_FILE_ZOT :" "${BAR_TEST_FILE_ZOT}")
  PrintPath("BAR_TEST_PATH_FOO :" "${BAR_TEST_PATH_FOO}")
  PrintPath("BAR_TEST_PATH_BAR :" "${BAR_TEST_PATH_BAR}")
  PrintPath("BAR_TEST_PATH_ZOT :" "${BAR_TEST_PATH_ZOT}")
  PrintPath("BAR_TEST_PROG_FOO :" "${BAR_TEST_PROG_FOO}")
  PrintPath("BAR_TEST_PROG_BAR :" "${BAR_TEST_PROG_BAR}")
  CleanUpPackageRootTest()
  message("")
endmacro()

#

RunPackageRootTest()

#

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

#

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

#

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()

set(Foo_ROOT      ${PackageRoot_BASE}/foo/cmake_root)
set(ENV{Foo_ROOT} ${PackageRoot_BASE}/foo/cmake_root)
set(Bar_ROOT      ${PackageRoot_BASE}/bar/cmake_root)
set(ENV{Bar_ROOT} ${PackageRoot_BASE}/bar/env_root)
RunPackageRootTest()
