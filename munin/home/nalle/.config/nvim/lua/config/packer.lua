-- luacheck: globals vim use

-- Package manager and packages, not package-specific settings
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'christoomey/vim-tmux-navigator'

    use 'hail2u/vim-css3-syntax'
    use 'jiangmiao/auto-pairs'
    use 'majutsushi/tagbar'
    use 'mattn/emmet-vim'
    use 'othree/html5.vim'
    use 'terryma/vim-multiple-cursors'
    use 'tpope/vim-endwise'
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    use 'numToStr/Comment.nvim'
    use 'tpope/vim-surround'
    use 'vim-scripts/SQLComplete.vim'

    use 'nvim-lualine/lualine.nvim'

    use 'nvim-tree/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'

    use 'NLKNguyen/papercolor-theme'
    use 'RRethy/nvim-base16'
    use 'cespare/vim-toml'
    use 'ryanoasis/vim-devicons'

    use 'jacoborus/tender.vim'
    use 'croaker/mustang-vim'
    use 'dcampos/nvim-snippy'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'

    use 'farmergreg/vim-lastplace' -- Remember last position of file

    -- Ale
    use 'dense-analysis/ale'

    -- Fuzzy finder
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use {
	    'nvim-telescope/telescope-fzf-native.nvim',
	    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    -- Go
    use {
        'fatih/vim-go',
        run = ':GoUpdateBinaries'
    }
    use 'sebdah/vim-delve'

    -- Lua
    use 'xolox/vim-lua-ftplugin'
    use 'xolox/vim-misc'

    -- Nim
    use 'zah/nim.vim'
    use 'PMunch/nimlsp'

    -- Rust + tools
    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    use 'simrat39/rust-tools.nvim'

    -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'

    -- Snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-vsnip'

    -- Other usefull completion sources
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

end, config = {
  display = {
    open_fn = function()
	    return require('packer.util').float({ border = 'single' })
    end
  }
}})
