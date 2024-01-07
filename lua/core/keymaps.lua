
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>e", vim.cmd.Ex)

----------General Keymaps----------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>",								{ desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>",					{ desc = "Clear search highlights" })


-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>",						{ desc = "Increment number" }) 
keymap.set("n", "<leader>-", "<C-x>",						{ desc = "Decrement number" }) 

-- window management
keymap.set("n", "<leader>sv", "<C-w>v",                     { desc = "Split window vertically" }) 
keymap.set("n", "<leader>sh", "<C-w>s",                     { desc = "Split window horizontally" }) 
keymap.set("n", "<leader>se", "<C-w>=",                     { desc = "Make splits equal size" }) 
keymap.set("n", "<leader>sx", "<cmd>close<CR>",             { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>",            { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>",          { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>",              { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>",              { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>",          { desc = "Open current buffer in new tab" })

-- move selected items up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("x", "<leader>p", [["_dP]])

keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({"n", "v"}, "<leader>d", [["_d]])

keymap.set("n", "Q", "<nop>")


keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
