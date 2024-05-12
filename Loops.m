Screen('Preference', 'SkipSyncTests', 1)

%%%%% THIS IS THE FIRST SEQUENCE THAT IS OUR NORMAL SERIAL TEST
try   
%%%% open window
    for trials = 1:2
    window = Screen('OpenWindow', 0);
    %read the image
    
    apple_img = imread('apple_img.png', 'png');

    banana_img = imread('banana_img.png', 'png');

    %Looping Trial
    
    %conversion of image to texture 
    apple_img_texture = Screen('MakeTexture', window, apple_img);
    banana_img_texture = Screen('MakeTexture', window, banana_img);
    
    Screen('DrawTexture', window, apple_img_texture);
    
    %flip the screen to display the text
    Screen('Flip',window)

    WaitSecs(5);

    Screen('DrawTexture', window, banana_img_texture);
    
    Screen('Flip',window)

    WaitSecs(5);
    
    
    
    Screen('TextFont',window,'Courier');
    Screen('TextSize',window, 30);
    [nx, ny, bbox] = DrawFormattedText(window, 'Press the keys in the order you believe the fruits were displayed. Each letter corresponds with the letter the fruit starts with.', 'center', 'center', 0);
    
    Screen('Flip',window)

    KbWait;
    

    end
    %close window
    
    disp(response)

   
catch
    sca;
    fclose('all');
    psychrethrow(psychlasterror);
end

