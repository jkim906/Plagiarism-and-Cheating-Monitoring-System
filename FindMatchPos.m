function[Pos1,Pos2]=FindMatchPositions(String1,String2)
%FindMatchPositions compares two fingerprints and determine
% 1) which positions in fingerprint 1 have a value that is also found in string 2.
% 2) which positions in fingerprint 2 have a value that is also found in string 1.
%Input: String 1= A fingerprint for string 1 (i.e., a 2D array where each column
% contains a hash value and its corresponding position).
%       String2= A fingerprint for string 2 (same example as String1)
%Output: Pos1=A 1D array containing a list of index positions in string 1 of
% all values that are also found in string 2.(Row Array)
%       Pos2= A 1D array containing a list of index positions in string 2 of
% all values that are also found in string 2. (Row Array)
%notes: If no matches were found,an empty array is returned.
String1 = [10 30 20; 2 4 7];
String2 = [30 40 30 10; 1 3 5 7];
%set the array size of the strings
[rows,columns]=size(String1);
[row,column]=size(String2);
Pos1=[];
Pos2=[];
%grab the top array from the 2d array in each of the strings so we compare
% the hash values and not its positions.
for i=String1(1,1:columns)
    for j=String2(1,1:column)
        %Use FindMatchIndices to see which hash values match and store each of
        %its positions into pos1 and pos2.(if no matches were found pos1 and pos2
        %will output an empty array.
        HashValue1=String1(2,1:columns);
        [Pos1(i)]=HashValue1(FindMatchIndices(i,j));

        HashValue2=String2(2,1:column);
        [Pos2]=HashValue2(FindMatchIndices(j,i));
    end
end
