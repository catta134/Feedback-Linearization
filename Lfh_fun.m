function vet = Lfh_fun( f,x,h,ord)
%LFH_FUN 
% ingressi vettore h(x) colonna (l,1) , F(x) vettore colonna (n,1), ord=
% ordine di derivazione se 0 esce h altriemnti fa la lie bracket
% x vettore delle incognite deve essere di lunghezza pari a f (1,n)
vet=zeros(1,size(h,1));
  if ord ==0
            vet= h;
  else
      vet = jacobian(Lfh_fun( f,x,h,ord-1),x')*f;
   end
 
end

