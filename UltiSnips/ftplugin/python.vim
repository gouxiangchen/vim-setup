nmap <C-L> :call SmartCommentpy()<CR><F12>

imap <C-L> <Home>#<Space>

func! SmartCommentpy()
	let s = getline(".")
	if s[0] == '#'
		noremap <F12> <Home>xx<CR>
	else
		noremap <F12> I<Home>#<Space><Esc><CR>
	endif

endfunc!

