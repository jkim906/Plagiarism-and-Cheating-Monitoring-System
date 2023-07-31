function[score]=SimilarityScore(Array,k,l)
%score Calculates a similarity score by taking a list of matched positions
% for a string and determining what proportion of characters in a string matched.
%Input: Array=A 1D array containing a list of indices which correspond
%             to position matches (this could be an empty array).
%       k= indicates the length of each match (which will be a positive integer
%          greater than zero).
%       l=The total length of the string that was converted into k-grams.
%Output: score=The percentage of the string that matched, returned as a decimal.
Array=[1,2,6];
k=3;
l=10;
i=1;
score=ones(1,l);
while i<=length(Array)
    score(Array(i):Array(i)+k-1)=0;
    i=i+1;
end

score=num2str(score);
score=length(strfind(score,'0'))/l;

end
