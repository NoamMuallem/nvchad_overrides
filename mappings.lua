---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    [">"] = { "<C-o>", "next in jump list" },
    ["<"] = { "<C-i>", "back in jump list" },
    ["<Leader>p"] = { '"0p', "past copied text" },
    ["<Leader>P"] = { '"0P', "past copied text above" },
    ["<Leader>k"] = { ":<c-u>put!=repeat([''],v:count)<bar>']+1<cr>", "new line above" },
    ["<Leader>j"] = { ":<c-u>put =repeat([''],v:count)<bar>'[-1<cr>", "new line under" },
    ["m"] = { ";", "next result" },
    ["M"] = { ",", "previus result" },
    ["<leader>n"] = { "<cmd>tabnew<cr>", "create tab" },
    ["gt"] = { "<cmd>tabnext<cr>", "next tab" },
    ["Gt"] = { "<cmd>tabprevious<cr>", "previus tab" },
    ["<Leader>N"] = { "<cmd>tabclose<cr>", "close tab" },
    ["<Leader><Leader>"] = { "<cmd>Telescope find_files<cr>", "" },
    ["gl"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
    ["<Leader>bl"] = {
      function()
        package.loaded.gitsigns.blame_line()
      end,
      "Blame line",
    },
    ["<Leader>gg"] = { "<cmd>LazyGit<cr>", "lazygit" },
    ["<S-Up>"] = { "<cmd>resize +2<cr>", "Increase window height" },
    ["<S-Down>"] = { "<cmd>resize -2<cr>", "Decrease window height" },
    ["<S-Left>"] = { "<cmd>vertical resize -2<cr>", "Decrease window width" },
    ["<S-Right>"] = { "<cmd>vertical resize +2<cr>", "Increase window width" },
    ["<Leader>s"] = {[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "search and replace"},
    -- [""] = {"", ""},
  },
  v = {
    ["m"] = { ";", "next result" },
    ["M"] = { ",", "previus result" },
    ["<Leader>y"] = { '"*y', "copy to os clipboard" },
  },
  i={
    --[""] = {"", "open completion"},
  }
}

-- more keybinds!

return M
