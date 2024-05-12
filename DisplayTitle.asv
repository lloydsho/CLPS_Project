try   
%%%% open window
    w=Screen('OpenWindow', screenNumber);
    
    [nx, ny, bbox] = DrawFormattedText(w, mytext, 'center', 'center', 0);
    
    %flip the screen to see the text
    
    %close window
    sca;

catch
    sca;
    fclose('all');
    psychrethrow(psychlasterror);
end