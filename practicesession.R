x<- c(3,12,7)
y<- c(4,9,11)

z<-x+y
z

x <- x+2
x
y<- y+50
y

sum(x)

mean(y)

w <- c(2,7,NA,20)

x<- c(10.4,5.6,3.1,6.4,21.7)
y<- c(x,0,x)
z<-2*x+y+1
x
y
z
max(x)
min(x)
range(x)
sum(x)
prod(x)
length(x)
var(x)
sorted<-sort(x)
sorted
mean(z)
sorted_z<- sort(z)
sorted_z
var(z)
sorted_z<- sort(z,decreasing = TRUE)
sorted_z
typeof(sorted_z)
 1:30
k<- 2*1:15
k
n<- 30:1
n
#sequence
seq(1,30)
seq(-5,5,by=0.2)->s
s
s1<- seq(length=51,from= -5,by =.2)
s1

s2<- seq(-100,100,by=0.6)
s2
mean(s2)
sorted_s2<- sort(s2,decreasing= TRUE)
sorted_s2
y<- c(1,4,6,9)
x<-seq(from=0 , to = 20,along.with=y)
x
w<- c(2,7,NA,20)
w
sum(w)
v<-c(sum(w,na.rm=TRUE))
v
typeof(v)



x<- c(3,12,7)
y<-c(4,9,11)
y
x
z<- x+y
z
x<- x+2
x
y<- y+50
y
sum(x)
mean(x)
mean(y)
w<- c(2,7,NA,20)
w
sum(w)
v<-sum(w, na.rm=TRUE)
v
typeof(v)
k<- x>y
k
x
x<- append(x,12,after=3)
x
u <- c(5:20)
u
u<-append(u,letters[6:10])
u

#rep() functions

x<-c(1,2,3,4,5)
s5<- rep(x,times=5)
s5
s6<-rep(x,each=5)
s6
temp<- x>13
temp
is.na(temp)
z<- c(1:4,NA)
res<-is.na(z)
res

x1<-x==NA
x1
is.na(x)
is.na(x1)
x
is.nan(x1)

x<- c(50:1)
x
# positive integral vectors
x[1:10]
x[6]

# negative integral vectors
x[-(47:50)]
x
x3<- x[20:30]
x3
#Factor vectors
v1 <-c("Hockey", "Football", "Baseball", "Curling", "Rugby", 
         "Hurling", "Basketball", "Tennis", "Cricket", "Lacrosse")
v2 <-c(v1, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", 
         "Lacrosse")
v2
v3 <-v2 [c(1,3,6)]
v3
v3_factor <-as.factor(v3)
class(v3)


