(a=gets.split.map{|c|eval c}).size.downto(1){|j|(p 1+i=rand(j);a[0..i]=a[0..i].reverse)while a[j-1]<j}
