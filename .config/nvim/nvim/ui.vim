set t_Co=256

lua <<EOF
--require('bufferline').setup {
--  options = {
--    offsets = {{filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left"}}
--  }
--}
local bg = "#2e3440"
local bg2 = "#3b4252"
local bg3 = "#282c34"
local fg = "#CACed6"
local accent = "#81a1c1"
local accent2 = "#BF616A" -- Not saved
local accent3 = "#EBCB8B" -- Not saved
 require('bufferline').setup {
  options = {
    numbers = "none",
    mappings = true,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = "nvim_lsp",
    offsets = {
      {
          filetype = "NvimTree",
          text = "Files"
      }
    },
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = false, -- whether or not custom sorted buffers should persist
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    sort_by = 'directory' 
    },
    highlights = {
         fill = {
             guibg = bg
         },
        background = {
            guibg = bg
        },

        -- buffer
        buffer_selected = {
            guifg = fg,
            guibg = bg2,
            gui = "bold"
        },
        separator = {
            guifg = bg3,
            guibg = bg
        },
        separator_selected = {
            guifg = bg3,
            guibg = bg2
        },
        separator_visible = {
            guifg = bg2,
            guibg = bg2
        },
        indicator_selected = {
            guifg = accent,
            guibg = bg2
        },

        -- tabs over right
        tab = {
            guifg = fg,
            guibg = bg
        },
         tab_selected = {
            guifg = accent,
            guibg = bg2
        },
         tab_close = {
            guifg = accent,
            guibg = bg2
        },
        modified_selected = {
            guifg = accent2,
            guibg = bg2
        },
        modified = {
            guifg = accent3,
            guibg = bg
        },
        modified_visible = {
            guifg = accent,
            guibg = bg
        }
    }


}


EOF
colorscheme base16-nord
au Filetype html,xml,xsl source ~/.config/nvim/closetag.vim
"highlight Normal ctermfg=grey guibg=NONE ctermbg=NONE
highlight Visual cterm=reverse ctermbg=NONE
highlight VertSplit cterm=reverse ctermbg=NONE guifg=#3b4252
"highlight NvimTree guibg=#282c34
highlight! StatusLineNC gui=underline guibg=NONE guifg=#3B465E



