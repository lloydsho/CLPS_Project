%function WordPresentation
Screen('Preference', 'Verbosity', 0); 
Screen('Preference', 'SkipSyncTests',1); 
Screen('Preference', 'VisualDebugLevel',0);
numstimuliprompt = input('\n How many letters in each word will be presented in this experiment? \n choose either 4 or 5.: ');
if numstimuliprompt == 4
    lines = readlines("FourLetterObjects.txt"); %loads array
    HorizontalWordPosition = 700; 
    disp('Now loading array of four letter objects.')
elseif numstimuliprompt == 5
    lines = readlines("FiveLetterObjects.txt");
    disp('Now loading array of five letter objects.')
    HorizontalWordPosition = 650; 
else
    disp('Please choose a number that is 4 or 5.')
    return
end

linesarray = lines';
linesarray = linesarray(1:end-1);
%disp(linesarray);
numberofstimuli=7;
randomwordarray =[];
for ii = 1:numberofstimuli
    numelements = numel(linesarray);         % determines the number of elements of vector 
    randominteger = randi(numelements);        % returns a random integer between 1 and the number of elementx
    randomword = linesarray(randominteger);        % randominteger is the randomly chosen element from linesarray 
    randomwordarray = [randomwordarray, randomword]; %conceatenates randomword into the array
end
%disp('this is random wordarray')
%disp(randomwordarray);


%%%%% THIS IS THE FIRST SEQUENCE THAT IS OUR WORD SERIAL TEST
%Alternative mechanism for randomizing stimuli that are words 
try   
%%%% open window
    stimulicounter = 1; %MUST START AT 1 FOR SOME REASON
    window = Screen('OpenWindow', 0);
    correctArray = [];
    while stimulicounter <3  %this number....(minus one) determines the amount of stimuli presented
        %
        if stimulicounter == 1 %chance between multiple stimuli, this can be manipulated based on the number of stimuli
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);

        elseif stimulicounter == 2
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);

        elseif stimulicounter == 3
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
        
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);

        elseif stimulicounter == 4
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
        
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);

        elseif stimulicounter == 5
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
     
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);

        elseif stimulicounter == 6
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
        
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);

        elseif stimulicounter == 7
        Screen('TextFont',window, 'Courier New');
        Screen('TextSize',window, 200);
        Screen('DrawText', window, convertStringsToChars(randomwordarray(stimulicounter)), HorizontalWordPosition, 500, [0, 0, 0, 255]);
        
        correctArray = [correctArray, randomwordarray(stimulicounter)];
        stimulicounter = stimulicounter +1;
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1);
        end
        %close window
    end
    sca;
    disp('this is correct array')
    disp(correctArray)
   
catch
    sca;
end


%%%%%%%%%%%%%%%%%%% WordCollection MECHANISM
WaitSecs(2);
KbName('UnifyKeyNames');
right_arrow = KbName('RightArrow');
currentcharacters = 0;
WordResponse = [];
FinalWordResponse = [];
SPACE = ' ';
while KbCheck; end
ListenChar(2);
for jj = 1:length(correctArray)
    keyCode = [];
    maxcharacters = strlength(correctArray(jj));
    currentcharacters = 0;
    %disp(maxcharacters)
    while currentcharacters < maxcharacters
        for ii = 1:maxcharacters
            clear recentkeyCode
            clear keyCode
            KbWait; 
            [keyIsDown, seconds, keyCode] = KbCheck;
            recentkeyCode = keyCode;
            recentkeyIndex = find(recentkeyCode, 1, "last");
            for bb = 1:length(recentkeyCode)
                if recentkeyCode(bb) == 1
                    truerecentkeycode = 1;
                    %disp(truerecentkeycode)
                end
            end
            %disp(recentkeyIndex)
           % disp(recentkeyCode)
            [keyIsDown, seconds, keyCode] = KbCheck;
            %totalletters = recentkeyCode + keyCode;
            %disp(totalletters)
            %totalkeys = find(totalletters == 1);
            if currentcharacters <= maxcharacters
                currentcharacters = currentcharacters +1;
                WordResponse = [WordResponse KbName(recentkeyIndex)];
                if recentkeyIndex == right_arrow
                    currentcharacters = 100;
                    WordResponse = WordResponse(1:end-1);
                    break
                end
                clear recentkeyIndex
                break
            end
            %WordResponse = WordResponse(maxcharacters:end);
            %WordResponse = [];
        end
        KbReleaseWait;
    end
    FinalWordResponse = [FinalWordResponse WordResponse];
    FinalWordResponse = convertCharsToStrings(FinalWordResponse); 
    disp(WordResponse)
    WordResponse = [];
    while KbCheck; end
end
ListenChar(0);
disp('this the final word response')
disp(FinalWordResponse)
while KbCheck; end
percentagechecker = [];
Exactchecker = strcmpi(FinalWordResponse, correctArray);
%disp(Exactchecker)

for ll = 1:length(FinalWordResponse)
    finalstringassigner = FinalWordResponse(ll);
    correctstringassigner = correctArray(ll);
    finalstringassigner = convertStringsToChars(finalstringassigner);
    correctstringassigner = convertStringsToChars(correctstringassigner);
    for uu = 1: length(finalstringassigner)
        finalletterassigner = finalstringassigner(uu);
        correctletterassigner = correctstringassigner(uu);
        disp('this is the final letter value')
        disp(finalletterassigner)
        disp('this is the correct letter value')
        disp(correctletterassigner)
        percentagechecker = strcmpi(finalletterassigner(uu), correctletterassigner(uu));
        disp(percentagechecker)
    end
end

    



