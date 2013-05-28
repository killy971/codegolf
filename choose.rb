def f n,i;i==0 ? 1 : n*f(n-1,i-1);end
p gets.split.inject(0){|s,i|s+i.to_i}
