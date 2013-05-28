c="-"
a,*t=gets.split
$><<l=1
t.map{|i|(l+2>d=i.to_i)?(c<"-"&&$><<c<<l;c="-"):(l>1&&$><<c<<l;c=", ")
l=d}
$><<c<<l<<"."
