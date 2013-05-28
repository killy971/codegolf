$<.map{|l|c,d,e=l.split.map{|v|eval v};($*[d]||=[])[c]=e.chr}
puts$*.map{|l|l.map!{|l|l||" "}*''}
