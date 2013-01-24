
function! Read(fname)
		for line in readfile(a:fname)
				if line =~ "\D"
						echo line
				endif
		endfor
endfunction


call Read('README.md')
