local notify = require('notify')
notify.setup({
  -- anination style
  stages = "fade_in_slide_out",
  timeout = 1500,

  background_colour = "#000000",
})

vim.notify = notify
