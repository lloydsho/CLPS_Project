
%%%%% THIS IS THE FIRST SEQUENCE THAT IS OUR NORMAL SERIAL TEST
try   
%%%% open window
    stimulicount =0;
    window = Screen('OpenWindow', 0);
    correctArray = [];
    while stimulicount <9
        %read the image
        apple_img = imread('apple_img.png', 'png');
    
        banana_img = imread('banana_img.png', 'png');
    
        %conversion of image to texture 
        apple_img_texture = Screen('MakeTexture', window, apple_img);
        banana_img_texture = Screen('MakeTexture', window, banana_img);
        if rand() > 0.5 %50 chance between two stimuli
        Screen('DrawTexture', window, apple_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 65];
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        else
        Screen('DrawTexture', window, banana_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 66];
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        %close window
    end
    sca;
    disp(correctArray)
   
catch
    sca;
    fclose('all');
end

