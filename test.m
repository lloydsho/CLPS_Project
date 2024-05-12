if numlettersprompt == 5
    lines = readlines("FiveLetterObjects.txt"); %loads array
    HorizontalWordPosition = 700; 
    disp('Now loading array of five letter objects.')
elseif numlettersprompt == 10
    lines = readlines("TenLetterObjects.txt");
    disp('Now loading array of ten letter objects.')
    HorizontalWordPosition = 650; 
else
    disp('Please choose a number that is 5 or 10.')
    return
end