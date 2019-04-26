nmap <C-m> :call SmartComment()<CR><F12>

imap <C-m> <Home>//<Space>

func! SmartComment()
	let s = getline(".")
	if s[0] == '/'&&s[1] == '/'
		noremap <F12> <Home>xxx<CR>
	else
		noremap <F12> I<Home>//<Space><Esc><CR>
	endif

endfunc!

