m="";while gets;m<<$_ end
a,b,c,*t=1,[],[],0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19
64.times{2.upto(-1+a+=1){|i|a%i<1&&break}||redo;b<<a}.times{|i|c<<0;$*<<((1..32).to_a.map{|j|c[i]+(d=1.0/2**j)>b[i]**(1.0/3)%1?0:(c[i]+=d;1)}*"").to_i(2)}
$$.times{|i|(1+i+b=m.size*8)%512==448&&(a=i;break)}
m=m.unpack("B8"*$$)*""+"1"+"0"*(a+64-(b=b.to_s 2).size)+b
m=m.unpack("a32"*(m.size/32)).map{|i|i.to_i 2}
def r(x,n)x>>n|x<<(32-n) end
def x(n)n%2**32 end
(m.size/16).times{|i|w=[];a,b,c,d,e,f,g,h=t
64.times{|j|j<16?w<<m[i*16+j]:w<<x((o=w[j-2];r(o,17)^r(o,19)^o>>10)+w[j-7]+(o=w[j-15];r(o,7)^r(o,18)^o/8)+w[j-16])}.times{|j|t1=x h+(r(e,6)^r(e,11)^r(e,25))+(e&f^~e&g)+$*[j]+w[j]
i=[h=g,g=f,f=e,e=x(d+t1),d=c,c=b,b=a,a=x(t1+(r(a,2)^r(a,13)^r(a,22))+(b&c^b&d^c&d))]}
j=8;t.map!{|o|x o+i[j-=1]}}
def k(n)"0"*(8-(a=n.to_s(16)).size)+a end
puts t.map{|h|k h}*""
