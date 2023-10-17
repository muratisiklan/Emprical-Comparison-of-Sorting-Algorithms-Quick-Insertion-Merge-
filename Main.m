
clear all
clc


Names={'Naz','Cem','Tuna','Dilay','Ceren','Gunsu','Erdinc','Batu','Derren','Dilan','Ceyhan',...
'Alper','Yagmurcan','Melis','Nazli','Ali','Batuhan','Derya','Tunahan','Umur','Ceyhun','Ceyda',...
'Yagmur','Kemal','Canan','Sevgi','Ridvan','Alp','Umut','Murat','Mustafa','Serhan','Serkan'};

%% Takse sorting algorithm preference as input and prints sorted version
algorithm = input("Enter the sorting algorithm(1: Quick, 2:instertion, 3:merge) :\n");


if algorithm == 1%%Quick Sort
    fprintf("-------Quick Sort-------\n");
    fprintf("Names: ");
    for i = 1:length(Names)
        fprintf(" %s ,'",Names{i});
        if rem(i,8) == 0
            fprintf("\n");
        end
    end
    
    fprintf("\n")
    quickSorted = quickSort(Names);
    fprintf("Names (Sorted) : ");
    for i = 1:length(quickSorted)
        fprintf(" %s ,'",quickSorted{i});
        if rem(i,8) == 0
            fprintf("\n");
        end
    end
elseif algorithm == 2%Insertion Sort
    fprintf("-------Insertion Sort-------\n");
    fprintf("Names: ");
    for i = 1:length(Names)
        fprintf(" %s ,'",Names{i});
        if rem(i,8) == 0
            fprintf("\n");
        end
    end
    
    fprintf("\n")
    insertionSorted = InsertionSort(Names);
    fprintf("Names (Sorted) : ");
    for i = 1:length(insertionSorted)
        fprintf(" %s ,'",insertionSorted{i});
        if rem(i,8) == 0
            fprintf("\n");
        end
    end
else%Merge Sort
     fprintf("-------Insertion Sort-------\n");
    fprintf("Names: ");
    for i = 1:length(Names)
        fprintf(" %s ,'",Names{i});
        if rem(i,8) == 0
            fprintf("\n");
        end
    end
    
    fprintf("\n")
    mergeSorted = mergeSort(Names);
    fprintf("Names (Sorted) : ");
    for i = 1:length(mergeSorted)
        fprintf(" %s ,'",mergeSorted{i});
        if rem(i,8) == 0
            fprintf("\n");
        end
    end
    
    
end

%% Time comparisons of different algorithms while sorting array 'Names'
% Insertion sort
tic;
insertionSorted = InsertionSort(Names);
insertion_Time = toc;

% Merge sort
tic;
mergeSorted = mergeSort(Names);
merge_Time = toc;

%Quick sort
tic;
quickSorted = quickSort(Names);
quickTime = toc;

%PLOT TIMES
x = categorical(["Insertion" "Merge" "Quick"]);
y = [insertion_Time,merge_Time,quickTime];
bar(x,y);
ylabel("Solution Time");
title("Comparison of 3 sorting algorithm execution times for array 'NAMES'");


%% COMPARISON OF ALGORITHMS FOR DIFFERENT SIZE OF ARRAYS


testArray = {};%Test array initially empty
insertionTimes = [];%This array  storage insertion sorting times for different sized arrays
mergeTimes = [];%This array  storage merge sorting times for different sized arrays
quickTimes = [];%This array  storage quick sorting times for different sized arrays

upToSize = 700;%Wanted array size upper limit for comparison(starting with size 1; up to this number)


for i = 1:upToSize
    
    %randomly add variable from cell array 'Names' for each iteration
    testArray{i} = Names{randi(length(Names))};
    
    %Insertion sort for array sized i
    tic;
    ins = InsertionSort(testArray);
    ins_Time = toc;
    %Add time to array of insertion times
    insertionTimes = [insertionTimes ins_Time];
    
    %Merge sort for array sized i
    tic;
    mer = mergeSort(testArray);
    mer_Time = toc;
    %Add time to array of merge times
    mergeTimes = [mergeTimes mer_Time];
    
    %quick sort for array sized i
    tic;
    quick = quickSort(testArray);
    quTime = toc;
    %Add time to array of quick times
    quickTimes = [quickTimes quTime];


    
end



% Plot outputs

%X axis is array size's
xAxis = 1:upToSize;

figure
%plot
plot(xAxis,insertionTimes,'r-');
hold on
plot(xAxis,mergeTimes,'g-');
hold on
plot(xAxis,quickTimes,'b-');
xlabel("PROBLEM SIZE");
ylabel("SOLUTION TIME");
legend('Insertion Sort','Merge Sort','Quick Sort');
title("Sorting Algorithm Performances");






