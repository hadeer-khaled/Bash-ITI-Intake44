function calc_square(){

local num=$1 

res=$((num * num))
echo $res
}

calc_square "$1"
