︠c8183186-2610-411b-b2b7-c801c2ab7907s︠
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
︡da1268f4-61a6-41b4-bac6-e59f04fd79f9︡{"raw_input":{"prompt":"p ="}}︡{"delete_last":true}︡{"raw_input":{"prompt":"p =","submitted":true,"value":"107"}}︡{"raw_input":{"prompt":"a ="}}︡{"delete_last":true}︡{"raw_input":{"prompt":"a =","submitted":true,"value":"3"}}︡{"raw_input":{"prompt":"b ="}}︡︡{"delete_last":true}︡{"raw_input":{"prompt":"b =","submitted":true,"value":"-2"}}︡{"stdout":"The random point on G is:  (46 : 40 : 1)\n"}︡{"stdout":"The order of the point P is:  107\n"}︡{"stdout":"The secret integer a is:  58\n"}︡{"stdout":"(28 : 45 : 1)\n"}︡{"stdout":"The secret integer b is:  10\n"}︡{"stdout":"(91 : 54 : 1)\n"}︡{"stdout":"The secret key is:  (91 : 54 : 1)\n"}︡{"done":true}









