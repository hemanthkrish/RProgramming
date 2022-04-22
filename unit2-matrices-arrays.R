#creating a matrix 
#syntax
#matric(data,nrows,ncol,byrow,dimnames=list()) 

a<-matrix(1:9,nrow=3) 
attributes(a) 
class(a) 

#using dimnames
matrix(1:9,nrow=3,dimnames=list(c("row1","row2","row3"),c("col1","col2","col3")))

#we can also change names of row names and col names by using colnames and rownames
#function 
colnames(a)<-c("c1","c2","c3")
a
rownames(a)<-c("r1","r2","r3")
a 

#general matrix operations  
#modifying matrix elements
a[2,2]=9
a
a[a<5]=0
a
t(a)
a

#general matrix operations 
#linear algebra operations  
#normal matrix multiplication
y<-matrix(1:4,2,2)
y
y%*%y
y%*%t(y) 

3*y 
y+y

#matrix indexing 
z<-matrix(c(1,2,3,4,1,1,0,0,1,0,1,0),4,3) 
z 
z[,2:3]
z[1,]
z[,2]
z[c(2,3),] 
z[2:3,]
z[2:3,2] 


ya<-matrix(c(1,2,3,4,5,6),3,2)
ya 
ya[c(1,3),1]<-matrix(c(0,0,1),2)
ya 

xe1<-matrix(nrow=3,ncol=3)
xe1
class(xe1)
xe2<-matrix(c(4,5,2,3),2,2)
xe2 
xe1[2:3,3:2]<-xe2 
xe2 
xe1 

xe1[-1,-1] 

#matrix filtering 
#same as vectors

x<-matrix(1:6,3,2)
x
x[x[,2]>=3,] 
#value of x in 2nd column and greater than 3,that rows and all column rule 

z<-c(5,12,13)
z[z%%z==1]

m<-matrix(c(1,2,3,-4,59,6),3,2)
m[m[,1]>1&m[,2]>5,]

#which()

which(m>2)

#applying functions to matrices

#apply(),lapply(),tapply(),sapply()

#SYNTAX----apply(m,dim,f(args)) dim 1 for all rows,2 for all col

m<-matrix(1:10,5,6)
m 
apply(m,2,sum)
apply(m,1,sum) 

z<-matrix(1:6,3,2)
z
apply(z,2,mean) 

f<-function(x){
  x/c(2,8)
  
}
apply(z,1,f)
#as the output is in 2*3 and input is 3*2 we can change with transpose
t(apply(z,1,f)) 

x<-matrix(c(1,1,1,0,0,1,0,1,1,1,0,1,1,1,1,1,0,0,1,1),4,5)
x

#-------adding and deleting a row  or column


x<-matrix(c(12,5,13,16,8),1)
x
x<-c(x,20)
x
x<-c(x[1:3],20,x[4:6]) #insert 20 after 3 elements nd before last 3 elements
x 
x<-x[c(-2,-3)]
x    #delete elements from 2 to 4

z=matrix(c(1,2,3,4,1,1,0,0,1,0,1,0),4,3)
z
cbind(1,z)
q<-cbind(c(1,2),c(3,4))
q 
#for cbind and rbind the filling starts with column for col and starts with row when we row

x<-1:5
y<-6:10
z<-11:13  #recycling
rbind(x,y,z)
cbind(x,y,z)

#vector and matrix distinction 
z=matrix(1:8,4)
z
class(z)
length(z)
attributes(z)
dim(z)
nrow(z)
ncol(z) 


z<-matrix(1:12,6,2)
z
q<-z[2,]
q
attributes(z)
attributes(q)
class(z)
class(q) # q is a vector not a matrix

str(z)
str(q)

qe<-z(z,drop=FALSE)
qe
class(qe)


#vector to matrix conversion
u=c(1,2,3)
v=as.matrix(u)
attributes(u)
attributes(v)
z<-matrix(1:4,2,2)
z
rownames(z)=list("a","b")
colnames(z)=list("c","d") 

#higher dimensional array
firstTest=matrix(c(46,21,56,30,25,48),3,2)
secondTest=matrix(c(46,41,50,43,35,56),3,2)
thirdTest=matrix(c(46,41,50),3,2)
dim(firstTest)
dim(secondTest)
dim(thirdTest)
tests=array(c(firstTest,secondTest,thirdTest),c(3,2,3))
tests[3,2,1]
tests


#lists 

j<-list(name="xyz",salary=55000,union=T)
j
xy=list("xyz",55000,T)
xy