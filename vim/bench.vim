echo 'Benchmark vimscript'

function! Myfib(n)
    if a:n < 2
        return a:n
    endif
    return Myfib(a:n-2) + Myfib(a:n-1)
endfun

for i in range(1,10000)
    echo i
endfor
