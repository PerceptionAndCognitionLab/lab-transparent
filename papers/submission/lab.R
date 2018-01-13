library('diagram')

par(mar=c(0,0,0,0))
names=c('Data 1','Data 2','...','Local\n Storage','Local\n mySQL\n Server','Local\n Git\n Project\n Server','GitHub\n Data\n Respository','GitHub\n Project\n Repository','Client 1','Client 2','...')

M=matrix(nrow = 11, ncol = 11, byrow = TRUE, data = 0)
M[1,4]=M[1,5]=M[2,4]=M[2,5]=M[3,4]=M[3,5]=''
M[9,6]=M[10,6]=M[11,6]=''
M[9,7]=M[10,7]=M[11,7]=''
M[9,8]=M[10,8]=M[11,8]=''
M[9,5]=M[10,5]=M[11,5]=''
M[4,7]=''

type=c(1,1,1,2,3,4,5,6,7,7,7)


X=c(.1,.3,.5,.7,.9)
Y=c(.85,.5,.4,.15)-.06
pos.x=c(X[2],X[3],X[4],X[2],X[3],X[4],X[1],X[5],X[2],X[3],X[4])
pos.y=c(Y[1],Y[1],Y[1],Y[2],Y[2],Y[2],Y[3],Y[3],Y[4],Y[4],Y[4])
bt=c('rect','circle','circle','circle','circle','circle','rect')[type]
bp=c(.5,.8,.8,.8,.8,.8,.5)[type]
mycol=c('wheat','wheat','thistle','white','wheat','white','white')[type]



plotmat(M,name=names,pos=cbind(pos.x,pos.y),box.type=bt,box.prop=bp,box.size=.09,curve=0,arr.width=0,box.col=mycol)

legend('top',legend=c("Data System","Project System","Both Systems"),fill=c('wheat','white','thistle'),
horiz=T)

#rect(0,.35,.6,.65,lwd=2)
#text(0,.35,'Local Server',adj=c(-.1,1.1))