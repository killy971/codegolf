a,b=*$<
(b.size-1).times{|i|$><<((b[i]+a[i%(a.size-1)])%26+65).chr}
