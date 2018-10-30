%well let's not suppose n at first
%well let's make n=3 at first
n=3;
m=3;
A=[1 2 3;4 5 6;7 8 10];
B=[0 1 0;0 0 1;1 0 0];
C=[A B];
P=eye(n);
M=eye(n);
for k=1:n-1
    %adjusting the lines and the P mat
   [t,p]=max(abs(C(k:n,k)));
   p=k-1+p;
   C([k p],:)=C([p k],:);
   P([k p],:)=P([p k],:);
   for j =k+1:n
       mji=C(j,k)/C(k,k);
       M(j,k)=-mji; %%??
       for i =k:n+m
           C(j,i)=C(j,i)-C(k,i)*mji;
       end    
   end
   %display C
end    
L=triu(C(:,[1:n]));
S=C(:,[n+1:n+m]);
Z=zeros(n,m);
for i=1:m      %for each subsystem
    for j=n:1
        tar=S(j,i);
        for l=n-1:j %%??
            tar -= ;
        end    
        Z(j,i)=tar/L(j,i); %%??
    end
end

