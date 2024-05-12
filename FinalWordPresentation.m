%function WordPresentation
Screen('Preference', 'Verbosity', 0); 
Screen('Preference', 'SkipSyncTests',1); %%%%%% BYPASSES ERROR CODES INTRODUCES BY UNFIXABLE SCREEN REFRESH RATE
Screen('Preference', 'VisualDebugLevel',0);

%%%% open window Introduce Project
    window = Screen('OpenWindow', 0);   %%%%% Opens screen
    line1 = 'Welcome to the written word portion ';
% Draw all the text at once
    Screen('TextSize', window, 70);  %%%establishes text size
    DrawFormattedText(window, line1, 'center', 'center');
    Screen('Flip',window);   %%%%flips window to display text established in line 1
    WaitSecs(5);
%%%%% Introduce Rules of The Project
    line1 = 'Now, we will collect your responses   ';
    line2 = '\n for 5 letter words ';
    line3 = '\n and 10 letter words respectively ';
% Draw all the text at once
    Screen('TextSize', window, 70);
    DrawFormattedText(window, [line1 line2 line3], 'center', 'center');
    Screen('Flip',window);
    WaitSecs(5);
    sca;
    window = Screen('OpenWindow', 0);
%%%% open window and explain response phase
    line1 = 'During the response phase ';
    line2 = '\n please input each word slowly. ';
    line3 = '\n in the command window';
    WaitSecs(5);
% Draw all the text in one go
    Screen('TextSize', window, 70);
    DrawFormattedText(window, [line1 line2 line3], 'center', 'center');
    Screen('Flip',window);
    WaitSecs(5);
    %%%%%%
    line1 = 'you will automatically transition ';
    line2 = '\n to the next word ';
    line3 = '\n when every letter is inputted. ';
    Screen('TextSize', window, 70);
    DrawFormattedText(window, [line1 line2 line3], 'center', 'center');
    Screen('Flip',window);
    WaitSecs(5);
    sca;
for qq = 1:2  %%%% for loop for the 1st 5 letter trial, and the second 10 letter trial
    if qq == 2
        disp('We will now transition to trial 2')
    end
numlettersprompt = input('\n How many letters in each word will be presented in this trial? \n choose either 5 or 10.: ');
if numlettersprompt == 5
    lines = readlines("FiveLetterObjects.txt");  %assigns a text file with all of the 5 letter objects to lines
    HorizontalWordPosition = 700; 
    disp('Now loading array of five letter objects.')
elseif numlettersprompt == 10
    lines = readlines("TenLetterObjects.txt");   %assigns a text file with all of the 10 letter objects to lines
    disp('Now loading array of ten letter objects.')
    HorizontalWordPosition = 400; 
else
    disp('Please choose a number that is 5 or 10.')
    return
end

linesarray = lines';
linesarray = linesarray(1:end-1); %creates an array with the transposed lines
%disp(linesarray);
numberofstimuli=9; %%%establishes total amount of words to extract from the linesarray
randomwordarray =[];
for ii = 1:numberofstimuli
    numelements = numel(linesarray);         % determines the number of elements in linesarray 
    randominteger = randi(numelements);        % returns a random integer between 1 and the number of the element
    randomword = linesarray(randominteger);        % randominteger is the randomly chosen element from linesarray 
    randomwordarray = [randomwordarray, randomword]; %conceatenates randomword into the array
end
%disp('this is random wordarray')
%disp(randomwordarray);


%%%%% THIS IS THE FIRST SEQUENCE THAT IS OUR WORD SERIAL TEST
%Alternative mechanism for randomizing stimuli that are words 
try   
%%%% open window
    stimulicounter = 1; %MUST START AT 1 
    window = Screen('OpenWindow', 0);
    correctArray = [];
    while stimulicounter <10  %this number....(minus one) determines the amount of stimuli presented
        %
        if stimulicounter == 1 %%%%%% while loop goes through every stimuli, which is already randomized
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

        elseif stimulicounter == 8
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
        
        elseif stimulicounter == 9
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
        %close window
        end
    end
    sca;
    %disp('this is correct array')
    %disp(correctArray)
catch
    sca;
end


%%%%%%%%%%%%%%%%%%% WordCollection MECHANISM
WaitSecs(1);
KbName('UnifyKeyNames'); %%%matches KBname with native keyboard
right_arrow = KbName('RightArrow');
currentcharacters = 0;
WordResponse = [];
FinalWordResponse = [];
disp('Please input the words, slowly and firmly until all words have been recorded')
while KbCheck; end
ListenChar(2); %%%opens keyboard for input
for jj = 1:length(correctArray)  %%%iterates through the "correctArray"established during stimulipresentatoin
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
            recentkeyIndex = find(recentkeyCode, 1, "last"); %%%matches the keycode with a certain "index",
            for bb = 1:length(recentkeyCode)                    % such as 65 that matches with key pressed
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
            if currentcharacters <= maxcharacters %if clause that moves to next word when you input enough characters(5 or 10)
                currentcharacters = currentcharacters +1;
                WordResponse = [WordResponse KbName(recentkeyIndex)]; %%%%concatenates the response given each time it goes through for loop
                if recentkeyIndex == right_arrow
                    currentcharacters = 100;
                    WordResponse = WordResponse(1:end-1);
                    break
                end
                clear recentkeyIndex %clears the recent index for the next trial
                break
            end
            %WordResponse = WordResponse(maxcharacters:end);
            %WordResponse = [];
        end
        KbReleaseWait;
        WaitSecs(0.1); % prevents accidental multiple inputs
    end
    FinalWordResponse = [FinalWordResponse WordResponse];
    FinalWordResponse = convertCharsToStrings(FinalWordResponse); 
    disp(WordResponse) %%%displays t
    WordResponse = [];
    while KbCheck; end
end
ListenChar(0); %closes keyboard window
disp('this the final word response')
disp(FinalWordResponse)
while KbCheck; end  %clears any held down key
percentagecheckerarray = [];
totalcorrectlettersarray = [];
percentagelettersarray = [];
for ll = 1:length(FinalWordResponse) %%%%%%%for loop that checks every character in the correct array matches with reponse
    totalcorrectletters = 0;
    percentagecheckerarray = [];
    finalstringassigner = FinalWordResponse(ll);
    correctstringassigner = correctArray(ll);
    finalstringassigner = convertStringsToChars(finalstringassigner);
    correctstringassigner = convertStringsToChars(correctstringassigner);
    for uu = 1: length(finalstringassigner)
        finalletterassigner = finalstringassigner(uu);
        correctletterassigner = correctstringassigner(uu);
       % disp('this is the final letter value')
        %disp(finalletterassigner)
       % disp('this is the correct letter value')
        %disp(correctletterassigner)
        percentagechecker = strcmpi(finalletterassigner, correctletterassigner);
        percentagecheckerarray = [percentagecheckerarray percentagechecker];
        percentagechecker = 0;
        %disp(percentagecheckerarray)
    end
    totalcorrectletters = sum(percentagecheckerarray);
    totalcorrectlettersarray = [totalcorrectlettersarray, totalcorrectletters];
    %disp(totalcorrectletters)
    %disp(percentagecheckerarray)
end



for kk = 1:length(totalcorrectlettersarray) %%%%iterates through array that presents the amount of letters corerct
     percentageletterscorrect = totalcorrectlettersarray(kk)/numlettersprompt;
     percentagelettersarray= [percentagelettersarray, percentageletterscorrect];
end
wordrightwrongarray = [];

for pp = 1:size(percentagelettersarray,2)
    if percentagelettersarray(pp) > 0.6 %%% if more than 60% of letters are correct it's correct, accomodates for typos
        wordrightwrongarray = [wordrightwrongarray, 1];
    elseif percentagelettersarray(pp) < 0.6
    wordrightwrongarray = [wordrightwrongarray, 0];
    end
end
disp(wordrightwrongarray)

numberofstimuliarray = [];
for i = 1:(numberofstimuli)
    numberofstimuliarray = [numberofstimuliarray, i];
end

%%%% THis saves the wordrightwrongarray response as a .matfile
%%%%%updates by adding current trials wordrightwrongarray to the mat file,
%%%%%each trial is a row in the wordrightwrongarray(or
%%%%%tenwordrightwrongarray)

if numlettersprompt == 5 %%%% stores 5 letter version
updatewordrightwrongarray = wordrightwrongarray;
load('5wordmaster.mat')
wordrightwrongarray = [wordrightwrongarray; updatewordrightwrongarray];
save('5wordmaster.mat', 'wordrightwrongarray', '-append')
%%%%%%% This presents the immediate findings as a graph
f= figure;
graph = bar(numberofstimuliarray,updatewordrightwrongarray);
title('Final Results for Participant')
xlabel('Response #')
ylabel('PercentageCorrect')
end

if numlettersprompt == 10  %%%% stores 10 letter version
tenwordrightwrongarray = wordrightwrongarray;
updatetenwordrightwrongarray = tenwordrightwrongarray;
load('10wordmaster.mat')
tenwordrightwrongarray = [tenwordrightwrongarray; updatetenwordrightwrongarray];
save('10wordmaster.mat', 'tenwordrightwrongarray', '-append')
%%%%%%% This presents the immediate findings as a graph
f= figure;
graph = bar(numberofstimuliarray,updatetenwordrightwrongarray);
title('Final Results for Participant')
xlabel('Response #')
ylabel('PercentageCorrect')
end
%%%%%%%%%%%%%%%
end %end for trial # for loop
%%
