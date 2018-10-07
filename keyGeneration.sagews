p = int(input("p ="))
a = int(input("a ="))
b = int(input("b ="))


G = EllipticCurve(GF(p),[a,b])
G.points()
P = G.random_point()
print "The random point on G is: ", P
n = P.order()
print "The order of the point P is: ", n
d = randint(1,n)
print "The private key d is: ", d
Q = d*P
print "The public key Q is: ", Q
key = (d,Q)
print "The key pair (d,Q) is: ", key
