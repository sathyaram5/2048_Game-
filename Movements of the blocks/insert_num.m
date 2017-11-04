function x = insert_num( x )

num = generate_number();

row = randi(4);
col = randi(4);

while x(row,col)~=0
    row = randi(4);
    col = randi(4); 
end

x(row,col) = num;

end

