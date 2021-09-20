
define temp-table tt-chave no-undo
    field c-chave as character
    index idx01 c-chave.

def var i-cont  as int64 no-undo.
def var c-chave as character no-undo.

run pi-gera-chave.

find first tt-chave
     where tt-chave.c-chave = c-chave no-error.
if not avail tt-chave then do:
    create tt-chave.
    assign tt-chave.c-chave = c-chave.
end.

     

procedure pi-gera-chave:
    do i-cont = 1 to 120:
       c-chave = c-chave + chr(RANDOM(97,120)).
    end. 
end procedure.
