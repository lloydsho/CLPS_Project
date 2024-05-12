%This script covers the presentation of options before the memory test is
%conducted, and serves as a series of examples
function LetterToImageDemo
%%%% open window
    window = Screen('OpenWindow', 0);
    line1 = 'During the response phase, each of the images .';
    line2 = '\n will be represented by its first letter. ';
    line3 = '\n\n FOR EXAMPLE...';
    WaitSecs(5)
% Draw all the text in one go
    Screen('TextSize', window, 70);
    DrawFormattedText(window, [line1 line2 line3], 'center', 'center');
    Screen('Flip',window)
    WaitSecs(5)
    %read the image
    apple_img = imread('apple_img.png', 'png');

    banana_img = imread('banana_img.png', 'png');

    %conversion of image to texture 
    apple_img_texture = Screen('MakeTexture', window, apple_img);
    banana_img_texture = Screen('MakeTexture', window, banana_img);
    
    Screen('DrawTexture', window, apple_img_texture);
    Screen('TextFont',window, 'Courier New');
    Screen('TextSize',window, 200);
    Screen('DrawText', window, 'a =', 450, 500, [0, 0, 0, 255]);
    %flip the screen to display the text
    Screen('Flip',window)

    WaitSecs(5);
    
    Screen('DrawTexture', window, banana_img_texture);
    Screen('TextFont',window, 'Courier New');
    Screen('TextSize',window, 200);
    Screen('DrawText', window, 'b =', 450, 500, [0, 0, 0, 255]);
    Screen('Flip',window)
    WaitSecs(1)
    WaitSecs(3);
    sca;
return
