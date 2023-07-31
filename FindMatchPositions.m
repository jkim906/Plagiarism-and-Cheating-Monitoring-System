function[Position1,Position2]=FindMatchPositions(String1,String2)
%FindMatchPositions compares two fingerprints and determine
% 1) which positions in fingerprint 1 have a value that is also found in string 2.
% 2) which positions in fingerprint 2 have a value that is also found in string 1.
%Input: String 1= A fingerprint for string 1 (i.e., a 2D array where each column
% contains a hash value and its corresponding position).
%       String2= A fingerprint for string 2 (same example as String1)
%Output: Pos1=A 1D array containing a list of index positions in string 1 of
% all values that are also found in string 2.(shown as a Row Array)
%       Pos2= A 1D array containing a list of index positions in string 2 of
% all values that are also found in string 2. (shown as a Row Array)
%notes: If no matches were found,an empty array is returned.

%set the array size of the 2 strings to seperate are use only the columns.
[rows,columns]=size(String1);
[row,column]=size(String2);

%Grab the top array from the 2d array in each of the strings so we compare
% the hash values and not its positions.
HashValue1 = String1(1,1:columns);
HashValue2 = String2(1,1:column);

%Use FindMatchIndices to see which hash values match and store each of
%its positions into Position1 and Position2.(if no matches were found
% Position1 and Position2 will output an empty array.
Pos1=String1(2,1:columns);
Position1=Pos1(FindMatchIndices(HashValue1,HashValue2));

Pos2=String2(2,1:column);
Position2=Pos2(FindMatchIndices(HashValue2,HashValue1));

end