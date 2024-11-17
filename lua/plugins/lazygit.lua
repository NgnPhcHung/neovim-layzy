return {
  "kdheepak/lazygit.nvim",
  cmd = "LazyGit",
  keys = { { "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" } },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- Cấu hình LazyGit nếu cần thiết (tuỳ chỉnh thêm ở đây)
  end,
}

