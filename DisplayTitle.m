Screen('Preference', 'SkipSyncTests', 1)
try   
%%%% open window
    window = Screen('OpenWindow', 0);
    Screen('TextFont',window,'Courier');
    Screen('TextSize',window, 130);
    [nx, ny, bbox] = DrawFormattedText(window, 'Lloyd Stroop Test', 'center', 'center', 0);
    
    %flip the screen to display the text
    Screen('Flip',window)
    KbWait;
    
   



    %close window
    sca;


   
catch
    sca;
    fclose('all');
    psychrethrow(psychlasterror);
end

