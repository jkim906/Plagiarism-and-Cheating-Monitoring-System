function[f]=Fingerprint(w)
%Fingerprint takes a set of windows (in the form of a 2D array) and calculates a document
%fingerprint using the winnowing algorithm. It will return the document fingerprint
% as a 2D array in which each column contains a winnowed value and its corresponding position.
%Input: w= A n x w 2D array representing a set of windows, where each window has w values in it.
%Output: f=A 2 row 2D array representing a fingerprint, which consists of a set of winnowed
% values(the first row) and the relative positions of those values (the second row).
% Each column of the output, therefore, contains a hash value/position pair.
hashes = [77 74 42 17 98 50 17 98 8 88 67 39 77 74 42 17 98];
w = Window(4,hashes);

%Use a for loop to find the right most minimum on each row and store each
%of the rows position in the array of window.
[rows,columns]=size(w); %set the array size of w
for i=1:rows
    [right(i), pos]=RightMin(w(i,:));
    positions(i)=pos+i-1;
end
%using a for loop and checking if i is the same as the next value and
% if it is we will set the duplicate numbers to zero.
newpositions = positions; %setting positions to a new variable of the same values.
for i=1:length(positions)-1
    if positions(i)==positions(i+1)
        newpositions(i+1)=0;
    end
end
%if each of values in newpositions is not zero we will store the value of
% right (into f) that is in the same position of newpositions.(with the use
% of a for loop)
f=zeros(1,length(positions)); %preallocating the size of f for efficiency
for i=1:length(positions)
    if newpositions(i)~=0
        f(i)=right(i);
    end
end
%removing all zeros and transposing to a row array
newpositions=nonzeros(newpositions).';
f=nonzeros(f).';
f(2,:)=newpositions; %adding new positions to f to make it a 2d array
end
