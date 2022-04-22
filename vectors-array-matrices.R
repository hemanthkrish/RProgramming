#----------VECTORS

#-->>-single vector creation --- same as a normal value--->

print(23.89)
print(34L)
print(2+7i)
print("a")
print("apple")
print(3>2)
print(2>3)
print(charToRaw("google"))

#-->>-multiple vector creation-- using combine "c()"---->

#using seq operator 
abc<-5:13
print(abc)

bus<-3.8:11.2
print(bus)

bike<-6.6:12.6 
print(bike)

#using sequence function

print(seq(5,9,by=0.4))
# seq function syntax
#seq(from,to,by,length.out)

#---using combine operator

items<-c("apple","a",23L,45.78)
print(items)

#--------------------accessing vector elements

a<-c("sun","mon","tue","wed","thr","fri","sat")

print(a[c(1,2,6)])

#by using index 

a[c(-2,-4,-6)] 

#negative index gives the elements other than that

a[c(TRUE,TRUE,TRUE,FALSE)]

 # same as true and false

a[c(0,1,0,1,0,1,0)]


#--------------ARRAYS

#SYNTAX-
#array(data,dim=c(nrow,ncol,nmat),dimname=names)

array(2:16,dim=c(2,2,1),dimnames=(list(c("row1","row2"),NULL,c("mat1"))))
#we have to name complete row

#naming dim names
#list is must,we can create elements before or in the array statement it self
row_names=c("row1","row2")
col_names=c("col1","col2")
mat_names=c("mat1","mat2")

array(2:16,dim=c(2,2,2),dimnames=list(row_names,NULL,mat_names))

#----------accessing array elements----

result<-array(2:16,dim=c(2,2,2),dimnames=list(row_names,col_names,mat_names))
result[1,,2]
result[2,2,2]
result[,2,1]
result[1,,1]

#-----array elements manipulation

v1<-c(5,9,3)
v2<-c(10,11,12,13,14,15)
v3<-c(9,1,10)
v4<-c(6,0,11,3,14,1,2,6,9)

array1<-array(c(v1,v2),dim=c(3,3,2))
array2<-array(c(v3,v4),dim=c(3,3,2))

addedArray<-array1+array2

mat1<-addedArray[,,1]
mat2<-addedArray[,,2]

mat1+mat2

#calculations within array elements
#using apply() 
#syntax
#apply(array,margin,function())
#margin 1 for all rows, 2 for all columns, 1:2 for all elements 

v1<-c(5,9,3)
v2<-c(10,11,12,13,14,15)
new_array<-array(c(v1,v2),dim=c(3,3,2))
apply(new_array,1,sum)
apply(new_array,2,sum)


#-----MATRIX
#SYNTAX
#matrix(data,nrow,ncol,byrow,dimnames)

m1<-matrix(3:14,nrow=4,byrow=TRUE)
m2<-matrix(3:14,nrow=4,byrow=FALSE)
m1
m2
p<-matrix(3:14,nrow=4,byrow=TRUE,dimname=list(c("row1","row2","row3","row4"),c(
  "col1","col2","col3"
)))

#-----accessing elements from a matrix

p[1,]
p[1,2]
p[4,3]
p[4,]

#------matrix computation

matri1<-matrix(c(3,9,-1,4,2,6),nrow=2,ncol=3)
matri2<-matrix(c(5,2,0,9,3,4),nrow=2,ncol=3)
matri1
matri2
matri1+matri2
matri1-matri2
matri1*matri2 # here matrix mul is not general matrix mul
matri1/matri2 # each element gets divided
matri1%*%matri2

#--------common vector operations

#combining--

p<-c(1,2,3,4,5)
q<-c("abc","cdf","banana","cat")
c(p,q)

#arithmatic operations
abc<-c(1,2,3,4,5)
def<-c(6,7,8,9,11)
abc+def
abc-def
abc*def
abc/def

#logical index
abc[c(TRUE,FALSE,TRUE,TRUE,FALSE)]

#OR  the above and below both are same

d<-c(TRUE,FALSE,TRUE,TRUE,FALSE)
abc[d]
#numeric index
abc[c(1,2,3)]
abc[c(-1,-2,-3)]
#duplicate index
abc[c(1,2,2,3)]
#range index
abc[1:3]
#out of order index
abc[c(4,2,1)]
#named vector numbers indexing
names(abc)<-c("start","b")
abc["start"]
abc[c("b","start")]


#-----vector manipulation
#vector arithmatic
v1<-c(3,8,4,5,0,11)
v2<-c(4,11,0,8,1,2)
v1+v2
v1-v2
v1*v2
v1/v2

#vector element recycling ,unequal length vectors shortest vector recycles itself
v1<-c(3,8,4,5,0,11)
v2<-c(4,11)
v1+v2

#vector elements sorting both numbers and alphabets
be<-c(3,8,4,5,0,11,-9,304)
sortedResult<-sort(be)
sortedResult

ae<-c("a","A","cat","Camel","ze","Ze")
sort(ae)

#vectorised operations
#vector in vector out
u<-c(5,2,8)
v<-c(1,3,9)
u>v
sqrt(1:9)
y<-c(1.45,1.56,2.8)
round(y)   # below 5 same number above or equal to 5 next number
y+4

#vector in matrix out
yu<-matrix(rep(10,5),2,2)
xu<-matrix(1:4,2,2)
yu
xu
yu+xu

#NA and NULL
x<-c(88,NA,12,168,13)
mean(x)
mean(x,na.rm=TRUE) #here they got divided by 4
mode(x[1])

#null------------

z<-NULL
z
rv<-1:5
rv<-NULL
is.null(rv)
xe<-c(88,NA,12,NULL,13)
is.null(xe) #checks the null.
is.na(xe)   #checks the na element


#-----filtering

z<-c(5,2,-3,8)
z[z*z>8] 

z[c(TRUE,FALSE,TRUE,TRUE)]

#subset function to filter NA values also

xs<-c(6,1,2,3,NA,12)
xs[xs>5]

subset(xs,xs>5)

#diff function -

u<-c(1,6,7,2,3,5)
diff(u) 
diff(u,lag=2)


#sign function -returns the sign of the value like 0,1,-1

sign(diff(u))
sign(u)