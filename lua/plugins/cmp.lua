local source = {}

function source:complete(params, callback)
    local items = {}

    -- There's also the `cursor_after_line`, `cursor_line`, and a `cursor` fields on `context`.
    local cursor_before_line = params.context.cursor_before_line

    -- Only complete if there's a `/` anywhere before the cursor.
    if cursor_before_line:sub(1, 2) == "#i" then
        items = {
            { label = "#include <iostream>\n#include <vector>\n#include <string>\n\nusing namespace std;\n" },
        }
    end

    -- `callback` should always be called.
    callback(items)
end

-- Trigger completion (i.e. open up cmp) on these characters.
-- We can also trigger it manually, see `:help cmp.mapping.complete`.
function source:get_trigger_characters()
    return { "#i" }
end

-- Don't forget to register your new source to cmp.
require("cmp").register_source("custom", source)


return {
    "hrsh7th/nvim-cmp",
    opts = {
        sources = {
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "nvim_lua" },
            { name = "path" },
            { name = "custom" },
        }
    },
}
