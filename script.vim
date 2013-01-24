let a = sin(3.14/2.0)
echo a
let str = "hello"
echo str
echo strlen(str)
echo split('aaa,bbb,ccc', ',')
let c = [1, 3, 9]
for llls in c
		echo llls
endfor

let dict = {'one':1, 'two':'lion', 'three':'leopard', 'four':'shinya'}
for lls in keys(dict)
		echo dict[lls]
endfor

