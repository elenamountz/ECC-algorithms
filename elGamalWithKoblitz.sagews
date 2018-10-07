p = int(input("p ="))
a = int(input("a ="))
b = int(input("b ="))

K = GF(p)

G = EllipticCurve(K,[a,b])
print G
print G.points()

P = G.gen(0)
print "The generator on G is: ", P

n = P.order()
print "The order of the point P is: ", n

r = randint(1,n)
print "The private key r is: ", r

Q = r*P
print "The public key Q is: ", Q

#begin_Koblitz
f(x) = x**3+a*x+b
l = 10
mes = 5
i = 0
while(True):
    flag = legendre_symbol(f(mes*l+i),p)
    if flag==1:
        print "i =",i
        break;
    else:
        if i<l:
            i = i+1
        else:
            break;

x = mes*l+i
print "x =",x

y = mod((x**3+2*x+7),p).sqrt()
print "y =",y

m = G(x,y,1)
print "m =",m
#end_Koblitz

#begin_Encryption
k = randint(1,n)
print "The private key k is: ", k

C1 = k*P
C2 = m+k*Q
print "The cyphertext is: ",(C1,C2)
#end_Encryption

#begin_Decryption
pt = C2-r*C1
print "The plaintext is: ", pt
#end_Decryption

#begin_Verification
print m == pt

x1 = int(pt.xy()[0])
print mes == floor(x1/l)
#end_Verification
