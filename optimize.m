function [ Z ] = optimize( Black, Red, Green, Blue, R )
    
    Z = zeros(100,2);
    
    for i=100:-1:1
        X1 = lsqr(Black, R);
        X2 = lsqr(Red, R);
        X3 = lsqr(Green, R);
        X4 = lsqr(Blue, R);
        
        a1 = X1(i,1);
        a2 = X2(i,1);
        a3 = X3(i,1);
        a4 = X4(i,1);
        
        min = a1;
        counter = 1;
        
        if min >= a2
            min = a2;
            counter = 2;
        end
        
        if min >= a3
            min = a3;
            counter = 3;
        end
        
        if min >= a4
            min = a4;
            counter = 4;
        end
        
        if min == a1
            Z(i,1) = counter;
            Z(i,1) = a1;
            
            Red(i,:) = Black(i,:);
            Green(i,:) = Black(i,:);
            Blue(i,:) = Black(i,:);
        end
        
        if min == a2
            Z(i,1) = counter;
            Z(i,1) = a2;
            Black(i,:) = Red(i,:);
            
            Green(i,:) = Red(i,:);
            Blue(i,:) = Red(i,:);
        end
        
        if min == a3
            Z(i,1) = counter;
            Z(i,1) = a3;
            Black(i,:) = Green(i,:);
            Red(i,:) = Green(i,:);
            
            Blue(i,:) = Green(i,:);
        end
        
        if min == a4
            Z(i,1) = counter;
            Z(i,1) = a4;
            Black(i,:) = Blue(i,:);
            Red(i,:) = Blue(i,:);
            Green(i,:) = Blue(i,:);
            
        end
        
    
    
    end 
    


end
