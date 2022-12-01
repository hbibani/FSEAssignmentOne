proctype testcount (byte x)
{
    do
    :: (x != 0) ->
        if
        :: x ++
        :: x --
        :: break
        fi
    :: else -> break
    od;
    printf("counter = %d\n", x);
    assert(x > 0);
}

init {run testcount(1)}