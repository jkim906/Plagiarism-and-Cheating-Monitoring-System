function[m,pos]=RightMin(array)
% RightMin finds the value and position of the...
% rightmost minimum in an array of values.
% input: array=A 1D array of values
% output: m= The minimum value
%         pos= rightmost position of that minimum
% finding the minimum value from a list of...
% values and the leftmost position of that minimum.
[m, pos]= min(array);
% using a for loop and if statement to select the rightmost minimum...
% value, to also find its position.
for i=1:length(array)
    if array(i)== min(array)
        pos=i;
    end

end
end
