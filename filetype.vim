if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead *.j2 setf htmljinja 
augroup END

