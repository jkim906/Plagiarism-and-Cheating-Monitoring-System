function[S]=StripString(String)
%StripString removes irrelevant features we want to discard from our string, so 
% we can work with a string that only contains the information we wish to work with.
%Input: String= A string.
%Output: S= the new array that has stripped out unprintable characters
%           as well as uppercase converted to lowercase.
%counter is set to zero
Counter=0;
%convert the String into lowercase
String=lower(String);
%convert the string into numerical values from characters
String= double(String);
%use a for loop to filter out and store the unprintable characters
% with ascii values less or equal to 33 and greater or equal to 126.
for i=1:length(String)
    if (String(i) >= 33) && (String(i) <= 126)
        S(i)=String(i);
        S=nonzeros(S).'; %discard zero values
        S=char(S); %change back to characters
        Counter=Counter+1; %add to counter
    end
end
%if counter remains zero after the for loop then S= an empty 0x0 character array
if Counter==0
    S=char([]);
end