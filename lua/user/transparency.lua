if vim.g.neovide then
    vim.g.neovide_transparency = 0.70
    --vim.g.neovide_cursor_vfx_mode = "pixiedust"
    --vim.api.nvim_exec([[set guifont=Jetbrains\ Mono:h14]], false)
else
    require("transparent").setup({
        enable = false, -- boolean: enable transparent
        extra_groups = { -- table/string: additional groups that should be cleared
            -- In particular, when you set it to 'all', that means all available groups
            "StatusLineNC",
            "StatusLine",
            "NvimTreeStatusLine"
            -- example of akinsho/nvim-bufferline.lua
        },
        exclude = {
            "BufferLineTabClose",
            "BufferlineBufferSelected",
            "BufferLineFill",
            "BufferLineBackground",
            "BufferLineSeparator",
            "BufferLineIndicatorSelected", -- table: groups you don't want to clear
        } 
    })
    
end

