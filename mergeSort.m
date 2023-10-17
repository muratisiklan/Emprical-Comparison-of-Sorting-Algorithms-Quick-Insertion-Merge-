function y = mergeSort(x)
%This function takes input as cell array and returns sorted version of cell
%array(ascending order, A to Z) with using merge sort algorithm



n = length(x);

if n==1      % base case
    y = x;
else         % progress case
    %Find middle index of array x
    mid  = floor(n/2);
    %Generate 2 sub arrays from original array x
    x1 = cell(x(1:mid));
    x2 = cell(x(mid+1:end));
    
    %recursively call function for 2 sub arrays
    y1 = mergeSort(x1);
    y2 = mergeSort(x2);
    
    %Than call function merge to concatanate sorted sub arrays 
    y  = merge(y1,y2);
end



function w = merge(u,v)
%This function takes 2 sorted cell array as input and retuns sorted new
%cell array(descending order) by merging them

%Murat Işıklan 2233567

n = length(u);
m = length(v); 
w = cell(1,n+m);

i = 1;   % Index for sorted vector u
j = 1;   % Index for sorted vector v
k = 1;   % Index for new vector w

%Until both indexes reach length of their own array
while i<=n && j<=m
    %If array v's j th index element is greater than array u's i th index
    %element
    if isGreaterThan(v{j},u{i})
        w{k} = v{j}; %Update new array
        j = j+1; %Update index for vector v
        k = k+1; %Update index for vector w
        
    else%Otherwise
        w{k} = u{i}; %Update new array
        i = i+1;     %Update index for vector u
        k = k+1;     %Update index for vector w
       
    end
end



%If any element left add to new array and increase proper indexes
while i<=n
    w{k} = u{i}; 
    i = i+1; 
    k = k+1;
end

while j<=m
    w{k} = v{j};
    j = j+1; 
    k = k+1;
end