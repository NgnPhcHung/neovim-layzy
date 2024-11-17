return {
  "folke/persistence.nvim",
  event = "BufReadPre",                                           -- Chỉ tải plugin khi có file được mở
  opts = {
    dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- Đường dẫn lưu session
    options = { "buffers", "curdir", "tabpages", "winsize" }      -- Những thông tin sẽ được lưu
  },
  keys = {
    { "<leader>ss", function() require("persistence").load() end, desc = "Khôi phục session gần nhất" },
    { "<leader>sl", function() require("persistence").load({ last = true }) end, desc = "Khôi phục session trước đó" },
    { "<leader>sd", function() require("persistence").stop() end, desc = "Dừng lưu session" },
  },
}

