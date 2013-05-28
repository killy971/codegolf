c=gets.chop.split('').map{|i|i.to_i*5}
b=0x33748b1ee0fad8b233ff.to_s(3)
5.times{|k|k%2<1?(a=[];c.map{|i|a<<[" "*5," ### "][b[i,5][k]-48]}
puts a*"  "):3.times{a=[];c.map{|i|a<<"#   ##        #"[(b[i,5][k]%48)*5,5]};puts a*"  "}}
