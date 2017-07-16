# Feedback-Linearization
easy way to take your matrix to linearizate yor dynamic system

TO USE THIS METHODS YOU SHOULD PUT YOUR DINAMIC SYSTEM INTO THE 'AFFINE CONTROL FORM'.
G,F,H are the matrix that take place in this formulation, in particular H is the exit function; 
G is the control matrix fucntion and F the state fuanction.
All these fucntion are put as symbolic and not linear.

% You should define a max order of derivate not negative and chose what are the unknow vairaibles in your system. 
by run you just call this function in your system

% [E,T,O,H] = E_fun( x,h,f,g,ord)

% note: if you use a mechanic system your order is ord=2;
Now you can just take your new input as u=-inv(E)*H'-inv(E)*v,
where v is non linear input, u the linear. to control yout system you just hypothesis as single integrator..
all theory about this see references

reference theory: 
* http://planning.cs.uiuc.edu/node825.html
* https://it.wikipedia.org/wiki/Controllo_in_feedback_linearization
* http://kyb.fei.tuke.sk/laben/ludia/pdf/Suster_SCYR2012.pdf
