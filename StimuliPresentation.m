%%%%%IMPLEMENT SIMILAR MECHANISM AS WORD PRESENTATION FOR RANDOM STIMULI
%%%%% THIS IS THE FIRST SEQUENCE THAT IS OUR NORMAL SERIAL TEST
function StimuliPresentation
Screen('Preference', 'Verbosity', 0); 
Screen('Preference', 'SkipSyncTests',1); 
Screen('Preference', 'VisualDebugLevel',0);
try   
%%%% open window
    stimulicount =0;
    window = Screen('OpenWindow', 0);
    correctArray = [];
    maxstimuli = 8;
    randomizingindex = (1/maxstimuli);
    while stimulicount <8
        %read the images
        apple_img = imread('apple_img.png', 'png');
    
        brain_img = imread('brain_img.png', 'png');
        
        chair_img = imread('chair_img.png', 'png');
        eagle_img = imread('eagle_img.png', 'png');
        grass_img = imread('grass_img.png', 'png');
        mango_img = imread('mango_img.png', 'png');
        orange_img = imread('orange_img.png', 'png');
        pizza_img = imread('pizza_img.png', 'png');
        radio_img = imread('radio_img.png', 'png');
        spoon_img = imread('spoon_img.png', 'png');
        truck_img = imread('truck_img.png', 'png');
        
        %conversion of image to texture 
        apple_img_texture = Screen('MakeTexture', window, apple_img);
        brain_img_texture = Screen('MakeTexture', window, brain_img);
        chair_img_texture = Screen('MakeTexture', window, chair_img);
        eagle_img_texture = Screen('MakeTexture', window, eagle_img);
        grass_img_texture = Screen('MakeTexture', window, grass_img);
        mango_img_texture = Screen('MakeTexture', window, mango_img);
        orange_img_texture = Screen('MakeTexture', window, orange_img);
        pizza_img_texture = Screen('MakeTexture', window, pizza_img);
        radio_img_texture = Screen('MakeTexture', window, radio_img);
        spoon_img_texture = Screen('MakeTexture', window, spoon_img);
        truck_img_texture = Screen('MakeTexture', window, truck_img);
        

        if rand() > randomizingindex %chance between stimuli based on randomizing index
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
        end

        if rand() > randomizingindex
        Screen('DrawTexture', window, brain_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 66];
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end

        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, chair_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 67]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, eagle_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 69]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, grass_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 71]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, mango_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 77]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end

        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  orange_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 79]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  pizza_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 80]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  radio_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 82]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  spoon_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 83]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end

        if rand() > randomizingindex %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  truck_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 84]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
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

return