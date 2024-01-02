function toggleLineNumbers()
    local relNumbersEnabled = vim.o.relativenumber

    function wrapped()
        vim.o.number = not vim.o.number

        if vim.o.number then
            vim.o.relativenumber = relNumbersEnabled 
        else
            relNumbersEnabled = vim.o.relativenumber
            vim.o.relativenumber = false
        end
    end

    return wrapped
end

function toggleRelativeLineNumbers()
    local numbersEnabled = vim.o.number

    function wrapped()
        vim.o.relativenumber = not vim.o.relativenumber

        if vim.o.relativenumber then
            vim.o.number = numbersEnabled 
        else
            numbersEnabled = vim.o.number
        end
    end

    return wrapped
end

vim.keymap.set('n', '<Leader>n', toggleLineNumbers())
vim.keymap.set('n', '<Leader>r', toggleRelativeLineNumbers())
