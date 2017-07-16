function [E,T,O,H] = E_fun( x,h,f,g,ord)
%E_FUN Summary of this function goes here

syms a;
E=a*zeros(ord+1,size(h,1));
mx=a*zeros(ord+1,size(h,1));
%build lfh matrix
for i=1:(ord+1)
   mx(i,:)=Lfh_fun(f,x,h,(i-1))';    
end
%build E matrix
O=mx(end-1,:); %last -1  row 
T=mx(1:end-1,:); %trasformation from x to z state
E=LgLf_h_fun(g,O,x); 
H=mx(end,:);

end
%by this you can have your new input u=-inv(E)*H'-inv(E)*v

