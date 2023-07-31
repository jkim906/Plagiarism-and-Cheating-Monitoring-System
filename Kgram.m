function[New_Array]=Kgram(k,String)
%Kgram Take a string and divide it into a sequence of k-grams,
% where each element is k characters long.
%Input: k= A k value (a positive integer greater than 0)
%       String= A string in the form of an array of characters
%Output: New_Array= A 1xn cell array where each element of the array
%                   is one of the k-grams.
String='doyouwantto';
k=5;

% Notes: If k is greater than the length of the string,
%        we return a 1x1 cell array containing the string.
%if the length of the string is greater than k use for loop to select the k
% characters to divide up a string into a sequence of k-grams.
if k<length(String)
    for i=1:(length(String)-k+1)
        New_Array{i}=String(i:i+k-1);
        disp(New_Array{i})

    end

    %if k is greater than the string length of the string,
    % we return a 1x1 cell array containing the string.
else
    New_Array={String};
end
end