Screen('Preference', 'SkipSyncTests', 1)
try   
%%%% open window
    window = Screen('OpenWindow', 0);
    %read the image
    apple_img = imread('apple_img.png', 'png');

    banana_img = imread('banana_img.png', 'png');

    %conversion of image to texture 
    apple_img_texture = Screen('MakeTexture', window, apple_img);
    banana_img_texture = Screen('MakeTexture', window, banana_img);
    
    Screen('DrawTexture', window, apple_img_texture);
    
    %flip the screen to display the text
    Screen('Flip',window)

    WaitSecs(5);

    Screen('DrawTexture', window, banana_img_texture);
    
    Screen('Flip',window)

    KbWait;



    %close window
    sca;


   
catch
    sca;
    fclose('all');
    psychrethrow(psychlasterror);
end

