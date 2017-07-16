function Mx = LgLf_h_fun(g,Matrix_Lfh,x )
%LGLF_H_FUN 
%g vettore riga (n,1), x vettore delle incognite di lughezza (1,n) dove n
%sono tutti gli stati
%Matrix_Lfh matrice dei termini lie vracket di f,h  di dimensioni (ordine di derivazione,righe di h)
syms a;
Mx=a*zeros(size(Matrix_Lfh));
    if size(Matrix_Lfh,1)== 0
        disp('errore not consistent matrix vect')
    else
       
     Mx=jacobian(Matrix_Lfh,x')*g;
      
    end


end

