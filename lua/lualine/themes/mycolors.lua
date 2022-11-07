local colors = {
  black        = '#282828', -- fg
  white        = '#ebdbb2',
  red          = "#f7768e", -- replace mode
  green        = '#9ECE6A', -- instert mode
  blue         = '#72E6CC', -- normal mode
  yellow       = '#e0af68', -- command mode
  gray         = '#a89984',
  darkgray     = '#16161e', -- used as bg
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
  magenta      = '#9D7CD8', -- visual mode
  fg_gutter    = '#16161e', -- used as bg
}
return {
    normal = {
        a = { bg = colors.blue, fg = colors.black },
        b = { bg = colors.fg_gutter, fg = colors.blue },
        c = { bg = colors.darkgray, fg = colors.fg_sidebar },
    },

    insert = {
        a = { bg = colors.green, fg = colors.black },
        b = { bg = colors.fg_gutter, fg = colors.green },
    },

    command = {
        a = { bg = colors.yellow, fg = colors.black },
        b = { bg = colors.fg_gutter, fg = colors.yellow },
    },

    visual = {
        a = { bg = colors.magenta, fg = colors.black },
        b = { bg = colors.fg_gutter, fg = colors.magenta },
    },

    replace = {
        a = { bg = colors.red, fg = colors.black },
        b = { bg = colors.fg_gutter, fg = colors.red },
    },

    inactive = {
        a = { bg = colors.darkgray, fg = colors.blue },
        b = { bg = colors.darkgray, fg = colors.fg_gutter, gui = "bold" },
        c = { bg = colors.darkgray, fg = colors.fg_gutter },
    },
}

