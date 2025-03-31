return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nvimgelion",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      hide_root_node = false,

      sources = { "filesystem", "buffers" },
      filesystem = {
        bind_to_cwd = false,

        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
 ▄▄▄      ▓█████▄▄▄█████▓ ██░ ██ ▓█████  ██▀███  
▒████▄    ▓█   ▀▓  ██▒ ▓▒▓██░ ██▒▓█   ▀ ▓██ ▒ ██▒
▒██  ▀█▄  ▒███  ▒ ▓██░ ▒░▒██▀▀██░▒███   ▓██ ░▄█ ▒
░██▄▄▄▄██ ▒▓█  ▄░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄ ▒██▀▀█▄  
 ▓█   ▓██▒░▒████▒ ▒██▒ ░ ░▓█▒░██▓░▒████▒░██▓ ▒██▒
 ▒▒   ▓▒█░░░ ▒░ ░ ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░
  ▒   ▒▒ ░ ░ ░  ░   ░     ▒ ░▒░ ░ ░ ░  ░  ░▒ ░ ▒░
  ░   ▒      ░    ░       ░  ░░ ░   ░     ░░   ░ 
      ░  ░   ░  ░         ░  ░  ░   ░  ░   ░     
                ]],
        },
      },
    },
  },
  {
    "tribela/transparent.nvim",
    event = "VimEnter",
    config = true,
  },
}
