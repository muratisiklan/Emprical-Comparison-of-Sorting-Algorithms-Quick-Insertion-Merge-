function array = quickSort(array)
%This function takes cell array as input and returns sorted cell
%array(ascending order, A to Z)
%with using quick sort algorithm recursively


%If array size 1 or less return(base case)
if length(array) <= 1
    return;
    
else%otherwise
   
    %Pick pivot index(selected 1 by default)
    pivot = 1;
    %Call function quickLess for obtain elemets less than pivot and greater
    %than pivot
   [less,great] = quickLess(pivot,array);
    
    %Recursively concatanate sorted cell arrays 
    array = [quickSort(great) array{pivot} quickSort(less)];
    
    
end

function [y,z] = quickLess(pivot,vector)
%This function takes a pivot index and cell array(vector) then returns 
% y <- array elemets less than array's pivot indexed element
% z <- array elemets greater than array's pivot indexed element

%Murat Işıklan 2233567

%n is length of cell array(vector)
n = length(vector);
y = {};%Storages elements less than pivot element
z = {};%Storages elements greater than pivot elements

%Initial indexes

i = 2;%Because 1 is choosed as pivot;original array index starts with 2
j = 1;
k = 1;
%Until the end of the original array starting with secon index
while i <= n
    
    % if array element is less than pivot element
    if isGreaterThan(vector{pivot},vector{i})
        %update array y and index j
        y{j} = vector{i};
        j = j+1;
    % if array element is greater than pivot element 
    elseif isGreaterThan(vector{i},vector{pivot})
        %update array z and index k
        z{k}= vector{i};
        k = k+1;  
    end
    %index increment for original array(vector)
    i = i+ 1;
end
    
    