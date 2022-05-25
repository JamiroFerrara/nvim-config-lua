-- This will load fzy_native and have it override the default file sorter
require('telescope').load_extension('fzy_native')
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules", "plugged"} } }
