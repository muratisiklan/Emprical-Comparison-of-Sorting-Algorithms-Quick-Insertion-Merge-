function z = isGreaterThan(x,y)

%This function takes input as 2 characters and returns true if x is greater
%than y. Otherwise false
% NOTATION: this function works in a reverse way of matlab syntax
%Example: in matlab: 'a' > 'z' returns false. Yet
%In This function 'a' > 'z' returns true



%Check for greater sized input 
if length(x) > length(y)
    size = length(x);
else
    size = length(y);
end


%Initial index is 1
index = 1;

%Until index reach 'size'
while  index <= size
        %If x's  value is less than y's  value for same index
        if x(index) < y(index)
            %retun true and terminate 
            z = true;
             break;
        elseif x(index) == y(index)%If their values are equal for same index
            index = index+1;%increase index
            %If index exceeds length of x
            if index > length(x)
                %retun true(x is greater than y) and terminate
                z = true;
                break;
            end
            %If index exceeds length of x
            if index > length(y)
                %retun false(y is greater than x) and terminate
                z = false;
                break;
            end
        %If x's  value is greater than y's  value for same index    
        elseif x(index) > y(index)
            %retun false and terminate
            z = false;
            break;
        end
        
        
            
end
    

    



