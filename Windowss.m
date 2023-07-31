function[windows]=Window(w,Array)
%Windows Takes a sequence of integer values and creates a
% 2D array of windows for a specified window size w.
%Input: w= The window size, w (a positive integer greater than 0).
%       Array= A 1D array of integer values.
%Output:Windows=A 2D array of integer values where each row of the array
%               is a window containing w integer values.
%               If w is greater than the length of the array, we return the array.
%Last modified 06/08/2022
%Author:Jaewon Kim/jkim906

w=4;
Array=[ 3 1 4 1 5 9 2 6 5];

i=1:length(Array)-w+1;
%windows=zeros(w,i);

% if the length of the array is greater than the window size perform a for
% loop to create a 2d array of windows for the specifed window size w.
if w<length(Array)
    
    for j=1:length(i)

        windows(i,j)=Array(i-w+1);

    end

    %if the window size is greater than the array windows will equal the array
else
    windows=Array;

end
end

