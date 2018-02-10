function [ a ] = test( B )
    A = [];

    for i=101:-1:98
        A(i,1) = B(i,1);
    end
    a = A(101,1);
end

