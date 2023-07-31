function[HashValue]=HashList(String)
%HashList Calculates the hash31 value for every string stored in a
% cell array to generate a sequence of hashed values (which will be integers).
%Input: String= A 1xn cell array where each element of the array is a string
%Output: HashValue= A 1xn array containing hash values for the corresponding
%                   elements of the cell array.
%Use a for loop to calculate the hash31 value for each string in the cell
%array
for i=1:length(String)
    HashValue(i)=Hash31(String{i}); %calling the Hash31 function

end
end
