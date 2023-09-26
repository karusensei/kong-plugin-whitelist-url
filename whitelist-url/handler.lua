local kong = kong
local kong_meta = require "kong.meta"

local WhiteListUrl = {
    VERSION = kong_meta.version,
    PRIORITY = -1
}

function WhiteListUrl:access(config)

    local match = false

    for k, pattern in pairs(config.patterns) do
        if string.find(ngx.var.upstream_uri, pattern) then
            match = true
            break
        end
    end

    if not match then
        kong.response.set_header("Content-Type", config.content_type)
        return kong.response.exit(config.status, config.message)
    end
end

return WhiteListUrl
