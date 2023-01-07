Pod::Spec.new do |s|
  s.name     = 'sqlite3graphlite'
  s.version  = '3.40.0'
  s.license = 'MIT'
  s.summary  = 'SQLite for GraphLite with MultipleCiphers'
  s.homepage = 'https://github.com/armatys/sqlite3graphlite-pod'
  s.author = 'Ulrich Telle'

  s.source = { :http => "https://github.com/utelle/SQLite3MultipleCiphers/releases/download/v1.5.4/sqlite3mc-1.5.4-sqlite-3.40.0-amalgamation.zip" }

  s.requires_arc = false
  s.ios.deployment_target  = '13.5'

  s.compiler_flags = '-DHAVE_USLEEP=1', '-DSQLITE_ENABLE_LOCKING_STYLE=0 -DSQLITE_ENABLE_FTS5=1', '-DSQLITE_ENABLE_GEOPOLY=1', '-maes'
  s.source_files = "sqlite3mc_amalgamation*.{h,c}"
  s.public_header_files = "sqlite3mc_amalgamation.h"
end
