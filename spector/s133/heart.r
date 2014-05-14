heart = function(name){
  t = seq(-1,1,len=5000)
  x = sin(t) * cos(t) * log(abs(t))
  y = sqrt(abs(t)) * cos(t)
  plot(x,y,type='l',axes=FALSE,xlab='',ylab='')
  text(0,.38,"Happy Valentine's Day",col='red',cex=2.5)
  text(0,.32,name,col='red',cex=2.5)
}

heart1 = function(name){
  t = seq(0,60,len=100)
  plot(c(-8,8),c(0,20),type='n',axes=FALSE,xlab='',ylab='')
  x = -.01*(-t^2+40*t+1200)*sin(pi*t/180)
  y = .01*(-t^2+40*t+1200)*cos(pi*t/180)
  lines(x,y)
  lines(-x,y)
  text(0,7,"Happy Valentine's Day",col='red',cex=2.5)
  text(0,5.5,name,col='red',cex=2.5)
}

cat("Type (1 or 2)? ")
type = readLines(n=1)
cat("Name? ")
name = readLines(n=1)

if(type == 1)heart(name) else heart1(name)
