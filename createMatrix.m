function [ A ] = createMatrix( dieColor )
    r = 101;
    c = 101;
    A = zeros(r,c);
    
    if dieColor == 1    
        prob1 = 2/3;
        prob2 = -2/3;
        
        index1 = 1;
        index2 = 5;
        
        for row = 1:r
            for col = 1:c
                if col == index1
                    A(row,index1) = prob1;                
                end
                if col == index2
                    A(row,index2) = prob2;                
                end
                
            end
            index1 = index1 + 1;
            index2 = index2 + 1;
            
        end 
        
    end
    if dieColor == 2    
        prob1 = 1;
        prob2 = -2/3;
        prob3 = -1/3;
        index1 = 1;
        index2 = 3;
        index3 = 7;
        for row = 1:r
            for col = 1:c
                if col == index1
                    A(row,index1) = prob1;                
                end
                if col == index2
                    A(row,index2) = prob2;                
                end
                if col == index3
                    A(row,index3) = prob3;        
                end
            end
            index1 = index1 + 1;
            index2 = index2 + 1;
            index3 = index3 + 1;
        end 
    end
    if dieColor == 3    
        prob1 = 1;
        prob2 = -1/2;
        prob3 = -1/2;
        index1 = 1;
        index2 = 2;
        index3 = 6;
        
        for row = 1:r
            for col = 1:c
                if col == index1
                    A(row,index1) = prob1;                
                end
                if col == index2
                    A(row,index2) = prob2;                
                end
                if col == index3
                    A(row,index3) = prob3;        
                end
            end
            index1 = index1 + 1;
            index2 = index2 + 1;
            index3 = index3 + 1;
        end 
    end
    if dieColor == 4    
        prob1 = 1;
        prob2 = -1;
        
        index1 = 1;
        index2 = 4;
       
        for row = 1:r
            for col = 1:c
                if col == index1
                    A(row,index1) = prob1;                
                end
                if col == index2
                    A(row,index2) = prob2;                
                end
               
            end
            index1 = index1 + 1;
            index2 = index2 + 1;
           
        end 
    end
    
        
end