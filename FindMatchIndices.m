function[indices]=FindMatchIndices(A1,A2)
% FindMathIndices Compares two non-empty 1D arrays and...
% returns a list of index positions from array one of any values...
% that also appear in array 2.
% Input: A1= Array 1,  A2= Array 2
% Output: indices=A 1D array containing a list of index positions...
% in array 1 of all values that are also found in array 2.
% notes:  this will be a row array with values listed in order...
% from smallest to largest. If no matches were found,an empty array is returned

%check if there is an element from A1 that occurs in A2.
if intersect(A1,A2) >=1
% this for loop goes through every element to check what elements in A1 occur in A2.
    for i=1:length(A1)
        for j=1:length(A2)
            if A1(i)==A2(j)
                indices(i)= A2(j);
            end
        end
    end
%using this for loop to store the location of each of the matching elements in A1.
    for i=1:length(indices)
        if indices(i) ~=0
            indices(i)=i;
        end
    end
    indices=nonzeros(indices).';% filtering out the zeros in the array
else indices = [];% if no matches found at the start the output will return an empty array
end