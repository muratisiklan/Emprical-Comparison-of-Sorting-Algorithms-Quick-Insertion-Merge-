function vector = InsertionSort(vector)
%This function takes a cell array as input and returns sorted version
%(ascending order, A to Z) of cell array using insertion sort algorithm


    n = length(vector);
    
    %Starting with second element of array until the end
    for i = 2:n
        %Assign arrays current indexed element to "var"
        var = vector{i};
        %We will compare var with elements have index starting with i-1 to 1st
        %index
        j = i - 1;
        
        %Until reaching first element or 'var' is not greater than jth
        %indexed element of original array
        while j >= 1 && isGreaterThan(var, vector{j})
            %Swap var and jth indexed element
            vector{j+1} = vector{j};
            j = j - 1;%decrease index in order to compare with next element
            %next means left
        end
        %Assign variable to its new position 
        vector{j+1} = var;

    end

end