r1,c1,r2,c2=int(input('r1 value')),int(input('c1 value')),int(input('r2 value')),int(input('c2 value'))

l1=[[int(input('enter the matrix1')) for i in range(c1)] for j in range(r1)]
l2=[[int(input('enter the matrix2')) for i in range(c2)] for j in range(r2)]

if  c1==r2:
	c=[[0 for i in range(c2)] for j in range(r1)]
	for i in range(r1):
		for j in range(c2):
			for k in range(c1):
				c[i][j]=c[i][j]+l1[i][k]*l2[k][j]
	print(c)
else:
	print("your c1 and r2 should be equal")
