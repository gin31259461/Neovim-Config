local opts = { noremap = true, silent = true }
local keymap = keymap

-- normal mode (easymotion-like)
keymap("n", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
keymap("n", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
keymap("n", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
keymap("n", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})

-- visual mode (easymotion-like)
keymap("v", "<Leader><Leader>w", "<cmd>HopWordAC<CR>", {noremap=true})
keymap("v", "<Leader><Leader>b", "<cmd>HopWordBC<CR>", {noremap=true})
keymap("v", "<Leader><Leader>j", "<cmd>HopLineAC<CR>", {noremap=true})
keymap("v", "<Leader><Leader>k", "<cmd>HopLineBC<CR>", {noremap=true})


-- normal mode (sneak-like)
keymap("n", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
keymap("n", "S", "<cmd>HopChar2BC<CR>", {noremap=false})

-- visual mode (sneak-like)
keymap("v", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
keymap("v", "S", "<cmd>HopChar2BC<CR>", {noremap=false})
