theme = "light" -- Lua doesn't require 'let' or 'var' for variable declaration

function toggleColors()
    if theme == "light" then -- 'then' is required in Lua if statements
        theme = "dark"
        vim.cmd("colorscheme fogbell_lite") -- Correct syntax to set colorscheme
    else
        theme = "light"
        vim.cmd("colorscheme yui")
    end
end

vim.cmd("colorscheme yui") -- Setting initial colorscheme

-- Setting the keymap
vim.keymap.set("n", "<leader>ct", toggleColors, { desc = "Toggle colors" })