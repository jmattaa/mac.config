require "colors"
local utils = require "utils"

function L_long_format(entry, longest_name)
    local last_modified = os.date("%d/%m/%Y %H:%M", entry.mtime)
    local size = utils.formatSize(entry.size)
    local owner = string.format("%-" .. longest_name .. "s ", entry.owner)

    return string.format("%s %s%s %s%s ",
        last_modified, Colors.MEDIA, size,
        Colors.SYMLINK, owner)
end

L_default_args = {
    all = true,
    files = true,
    directories = true,
    symlinks = true,
    git = { status = false, ignore = false },
    recursive = false,
    directory_size = false,
    long = false,
    sort = true,
    filters = {},
}
