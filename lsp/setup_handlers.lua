local lspconfig = require "lspconfig"
local configs = require "lspconfig.configs"

-- configs.intelephense.setup {
--   default_config = {
--     cmd = { "intelephense",  "--stdio" },
--     filetypes = { "php" },
--     root_dir = function(fname) return vim.loop.cwd() end,
--     settings = {
--       intelephense = {
--         -- stubs = {
--         --   "Core",
--         --   "FFI",
--         --   "PDO",
--         --   "Phar",
--         --   "Reflection",
--         --   "SPL",
--         --   "SimpleXML",
--         --   "SplType",
--         --   "Zend OPcache",
--         --   "ZendCache",
--         --   "ZendDebugger",
--         --   "ZendUtils",
--         --   "amqp",
--         --   "apache",
--         --   "apcu",
--         --   "bcmath",
--         --   "blackfire",
--         --   "bz2",
--         --   "calendar",
--         --   "ctype",
--         --   "cubrid",
--         --   "curl",
--         --   "date",
--         --   "event",
--         --   "exif",
--         --   "fann",
--         --   "ffmpeg",
--         --   "fileinfo",
--         --   "filter",
--         --   "fpm",
--         --   "ftp",
--         --   "gd",
--         --   "geoip",
--         --   "geos",
--         --   "gettext",
--         --   "grpc",
--         --   "hash",
--         --   "http",
--         --   "iconv",
--         --   "igbinary",
--         --   "imagick",
--         --   "imap",
--         --   "inotify",
--         --   "intl",
--         --   "json",
--         --   "ldap",
--         --   "libevent",
--         --   "libsodium",
--         --   "libxml",
--         --   "mbstring",
--         --   "mcrypt",
--         --   "memcache",
--         --   "memcached",
--         --   "mysql",
--         --   "mysql_xdevapi",
--         --   "mysqli",
--         --   "ncurses",
--         --   "odbc",
--         --   "openssl",
--         --   "pcntl",
--         --   "pcov",
--         --   "pcre",
--         --   "pdflib",
--         --   "pdo_mysql",
--         --   "phpdbg",
--         --   "posix",
--         --   "pspell",
--         --   "pthreads",
--         --   "readline",
--         --   "recode",
--         --   "redis",
--         --   "regex",
--         --   "session",
--         --   "snmp",
--         --   "soap",
--         --   "sockets",
--         --   "sodium",
--         --   "solr",
--         --   "sqlsrv",
--         --   "ssh2",
--         --   "standard",
--         --   "stats",
--         --   "stomp",
--         --   "suhosin",
--         --   "sybase",
--         --   "sync",
--         --   "sysvmsg",
--         --   "sysvsem",
--         --   "sysvshm",
--         --   "tidy",
--         --   "tokenizer",
--         --   "xcache",
--         --   "xdebug",
--         --   "xhprof",
--         --   "xml",
--         --   "xmlreader",
--         --   "xmlrpc",
--         --   "xmlwriter",
--         --   "xsl",
--         --   "xxtea",
--         --   "yaf",
--         --   "yaml",
--         --   "yar",
--         --   "zend",
--         --   "zip",
--         --   "zlib",
--         --   "zmq",
--         --   "zookeeper",
--         -- },
--         files = {
--           maxSize = 500,
--           -- exclude = {
--           --   "**/.git/**",
--           --   "**/.svn/**",
--           --   "**/.hg/**",
--           --   "**/CVS/**",
--           --   "**/.DS_Store/**",
--           --   "**/node_modules/**",
--           --   "**/bower_components/**",
--           --   "**/vendor/**/{Tests,tests}/**",
--           --   "**/.history/**",
--           --   "**/vendor/**/vendor/**",
--           --   "apps/*/src/Migrations/*",
--           --   "apps/*/bin/*",
--           --   "apps/*/config/*",
--           --   "apps/*/public/*",
--           --   "apps/*/resources/*",
--           --   "apps/*/templates/*",
--           --   "app/*/var/cache/dev/*",
--           --   "app/*/var/cache/test/*",
--           --   "app/*/var/cache/stg/*",
--           --   "app/*/var/cache/prd/*",
--           --   "app/*/var/cache/local/*",
--           --   "/home/lucas/getlife/backend/vendor/fakerphp/faker/src/Faker/Provider/nl_BE/Text.php",
--           -- },
--         },
--       },
--       phpactor = {
--         enabled = true,
--       },
--     },
--   },
-- }
-- configs.phpactor.setup {
--   settings = {
--     phpactor = {
--       files = {
--         maxSize = 100,
--       },
--     },
--   },
-- }
