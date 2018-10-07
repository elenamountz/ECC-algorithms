p = int(input("p ="))
a = int(input("a ="))
b = int(input("b ="))

K = GF(p)

G = EllipticCurve(K,[a,b])
P = G.random_point()
print "The random point on G is: ", P

n = P.order()
print "The order of the point P is: ", n

a = randint(1,n)
print "The secret integer a is: ", a

Pa = a*P
print Pa

b = randint(1,n)
print "The secret integer b is: ", b

Pb = b*Pa
print Pb

key = Pb
print "The secret key is: ", key
