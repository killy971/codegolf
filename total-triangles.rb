*l=0
l=i=-1,*split.map{|j|j.to_i+l[i+=1,2].max}while gets
p l.max
