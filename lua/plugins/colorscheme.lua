return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        code_style = {
          comments = "italic",
          keywords = "italic",
          functions = "italic",
        },
      })
      require("onedark").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
