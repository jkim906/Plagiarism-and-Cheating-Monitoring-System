function[score]=SimilarityScore(Array,k,l)
%score Calculates a similarity score by taking a list of matched positions
% for a string and determining what proportion of characters in a string matched.
%Input: Array=A 1D array containing a list of indices which correspond
%             to position matches (this could be an empty array).
%       k= indicates the length of each match (which will be a positive integer
%          greater than zero).
%       l=The total length of the string that was converted into k-grams.
%Output: score=The percentage of the string that matched, returned as a decimal.
%Initialise i to equal 1
Array=[1 2 6];
k=3;
l=10;
i=1;
%fill an empty array of length l with ones.
A=ones(1,l);
%perform a while loop and loop every single array numerical value in array
%to find the positions matches from i to i+k-1.
while i<=length(Array)
    A(Array(i):Array(i)+k-1)=0; %start:stop
    i=i+1; %add 1 to i so it stops at right time
end
%change to string to find how many zeros there are and divide by l
% to find the score percentage.
score=num2str(A); %change from numerical value to string
score=length(strfind(score,'0'))/l;
end