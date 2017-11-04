function outup  = down( inup )

x = inup;
for j=1:4 
while x(4,j)==0 && any(x(1:3,j))
    x(4,j)=x(3,j);
    x(3,j)=x(2,j);
    x(2,j)=x(1,j);
    x(1,j) = 0;
end

while x(3,j)==0 && any(x(1:2,j))
    x(3,j)=x(2,j);
    x(2,j)=x(1,j);
    x(1,j) = 0;
end
while x(2,j)==0 && any(x(1,j))
    x(2,j)=x(1,j);
    x(1,j) = 0;
end

end

for j=1:4
     if x(4,j)~=0 && x(4,j)==x(3,j)
        x(4,j)=2*x(3,j);
        x(3,j)=x(2,j);
        x(2,j)=x(1,j);
        x(1,j)=0;
        
    end

   if x(3,j)~=0 && x(3,j)==x(2,j)
        x(3,j)=2*x(2,j);
        x(2,j)=x(1,j);
        x(1,j)=0;
        
   end
   if x(3,j)~=0 && x(2,j)==x(1,j)
        x(2,j)=2*x(1,j);
        x(1,j)=0;
        
   end
outup=x;
end
end


