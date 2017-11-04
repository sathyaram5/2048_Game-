function  outright  = right( inright )

x=inright;
for i=1:4 
while x(i,4)==0 && any(x(i,1:3))
    x(i,4)=x(i,3);
    x(i,3)=x(i,2);
    x(i,2)=x(i,1);
    x(i,1) = 0;
end

while x(i,3)==0 && any(x(i,1:2))
    x(i,3)=x(i,2);
    x(i,2)=x(i,1);
    x(i,1) = 0;
end
while x(i,2)==0 && any(x(i,1))
    x(i,2)=x(i,1);
    x(i,1)= 0;
end

end
for i=1:4
 if x(i,4)~=0 && x(i,4)==x(i,3)
        x(i,4)=2*x(i,3);
        x(i,3)=x(i,2);
        x(i,2)=x(i,1);
        x(i,1)=0;
        
    end

   if x(i,3)~=0 && x(i,3)==x(i,2)
        x(i,3)=2*x(i,2);
        x(i,2)=x(i,1);
        x(i,1)=0;
       
   end
   if x(i,3)~=0 && x(i,2)==x(i,1)
        x(i,2)=2*x(i,1);
        x(i,1)=0;
       
   end
   

outright = x;
end


