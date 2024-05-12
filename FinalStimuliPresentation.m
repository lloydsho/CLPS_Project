%%%%%IMPLEMENT SIMILAR MECHANISM AS WORD PRESENTATION FOR RANDOM STIMULI
%%%%% THIS IS THE FIRST SEQUENCE THAT IS OUR NORMAL SERIAL TEST
%function FinalStimuliPresentation
Screen('Preference', 'Verbosity', 0); 
Screen('Preference', 'SkipSyncTests',1); 
Screen('Preference', 'VisualDebugLevel',0);
%%%%subject data collection

name = input('What is your name?: ', 's');
namearray = [];
namearray = [namearray, string(name)];
age = input('What is your age?: ');
agearray = [];
agearray = [agearray, string(age)];
gender = input('What is your sex assigned at birth? Please use the letter m or f: ', 's');
genderarray = [];
genderarray = [genderarray, string(gender)];
finaltable = table(namearray,agearray, genderarray, 'variablenames',{'Name','Age','Gender'});
if gender == 'm'
    genderdata=1;
end
if gender == 'f'
    genderdata = 2;
end
disp(finaltable)
finaldata = [age genderdata];

updatefinaldata = finaldata;
load('data.mat') %%%loads subject data to mat file each time script is performed
finaldata = [finaldata; updatefinaldata];
save('data.mat', 'finaldata', '-append')

%This script covers the presentation of options before the memory test is
%conducted, and serves as a series of examples
%%%% open window Introduce Project
    window = Screen('OpenWindow', 0); 
    %read the image
    apple_img = imread('apple_img.png', 'png');

    banana_img = imread('banana_img.png', 'png');

    %conversion of image to texture 
    apple_img_texture = Screen('MakeTexture', window, apple_img);
    banana_img_texture = Screen('MakeTexture', window, banana_img);

    line1 = 'Welcome to the Serial Position Effect Project ';
% Draw all the text at once
    Screen('TextSize', window, 70);
    DrawFormattedText(window, line1, 'center', 'center');
    Screen('Flip',window);
    WaitSecs(5);
%%%%% Introduce Rules of The Project
    line1 = 'We will record your memory performance  ';
    line2 = '\n concerning two variables ';
    line3 = '\n 1)word length 2) image representations ';
% Draw all the text at onceddd
    Screen('TextSize', window, 70);
    DrawFormattedText(window, [line1 line2 line3], 'center', 'center');
    Screen('Flip',window);
    WaitSecs(5);

%%%% open window and explain response phase
    lines1 = 'During the response phase, each of the images ';
    lines2 = '\n will be represented by its first letter. ';
    lines3 = '\n ';
    lines4 = 'FOR EXAMPLE... ';

% Draw all the text in one go
    Screen('TextSize', window, 70);
    DrawFormattedText(window, [lines1 lines2 lines3 lines4], 'center', 'center');
    Screen('Flip',window);

    WaitSecs(4);
    
    Screen('DrawTexture', window, apple_img_texture);
    Screen('TextFont',window, 'Courier New');
    Screen('TextSize',window, 200);
    Screen('DrawText', window, 'a =', 450, 500, [0, 0, 0, 255]);
    %flip the screen to display the text
    Screen('Flip',window);
    
    WaitSecs(5);

    Screen('DrawTexture', window, banana_img_texture);
    Screen('TextFont',window, 'Courier New');
    Screen('TextSize',window, 200);
    Screen('DrawText', window, 'b =', 450, 500, [0, 0, 0, 255]);
    Screen('Flip',window);
    WaitSecs(3);
    sca;

    window = Screen('OpenWindow', 0);
    line1 = 'We will proceed in 3 seconds  ';
% Draw all the text at once
    Screen('TextSize', window, 70);
    DrawFormattedText(window, line1, 'center', 'center');
    Screen('Flip',window);
    WaitSecs(3);
    line1 = 'THE TEST WILL NOW BEGIN ';
    Screen('TextSize', window, 70);
    DrawFormattedText(window, line1, 'center', 'center');
    Screen('Flip',window);
    WaitSecs(1);

%%%% open window 
    stimulicount = 0;
    correctArray = [];
    maxstimuli = 9;
    randomizingindex = 0.35;
        %read the images
        apple_img = imread('apple_img.png', 'png');
    
        brain_img = imread('brain_img.png', 'png');
        
        chair_img = imread('chair_img.png', 'png');
        eagle_img = imread('eagle_img.png', 'png');
        grass_img = imread('grass_img.png', 'png');
        mango_img = imread('mango_img.png', 'png');
        orange_img = imread('orange_img.png', 'png');
        pizza_img = imread('pizza_img.png', 'png');
        ruler_img = imread('ruler_img.png', 'png');
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
        ruler_img_texture = Screen('MakeTexture', window, ruler_img);
        spoon_img_texture = Screen('MakeTexture', window, spoon_img);
        truck_img_texture = Screen('MakeTexture', window, truck_img);
    while stimulicount < 9
        if( rand() > randomizingindex) && (stimulicount<9)  %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, apple_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 65];
        %flip the screen to display the text
        Screen('Flip',window);
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        elseif stimulicount<9
        Screen('DrawTexture', window, brain_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 66];
        Screen('Flip',window);
        
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end

        if( rand() > randomizingindex) && (stimulicount<9)   %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, chair_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 67]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        elseif stimulicount<9
        Screen('DrawTexture', window, eagle_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 69]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window);
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end

        if( rand() > randomizingindex) && (stimulicount<9)  %chance between stimuli based on randomizing index
        Screen('DrawTexture', window, grass_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 71]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        elseif stimulicount <9
        Screen('DrawTexture', window, mango_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 77]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end

        if( rand() > randomizingindex) && (stimulicount<9)  %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  orange_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 79]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        elseif stimulicount <9
        Screen('DrawTexture', window,  pizza_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 80]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if( rand() > randomizingindex) && (stimulicount<9)  %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  truck_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 84]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if( rand() > randomizingindex) && (stimulicount<9)  %chance between stimuli based on randomizing index
        Screen('DrawTexture', window,  ruler_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 82]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end
        if( rand() > randomizingindex) && (stimulicount<9)
        Screen('DrawTexture', window,  spoon_img_texture);
        stimulicount = stimulicount +1;
        correctArray = [correctArray, 83]; %assigns the corresponding index from KbCheck
        %flip the screen to display the text
        Screen('Flip',window)
    
        WaitSecs(1.5);
        %blank screen inbetween stimuli
        Screen('FillRect',window);
        Screen('Flip', window);
        WaitSecs(1)
        end  
    end
    
    sca;
    disp(correctArray)
   

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%START OF RESPONSE COLLECTION

KbName('UnifyKeyNames')
window = Screen('OpenWindow', 0);
DrawFormattedText(window, 'We will now test your performance on the memory task.', 'center', 'center');
Screen('Flip', window);
WaitSecs(2)
sca;

%Response collection mechanism

while KbCheck; end
right_arrow = KbName('RightArrow');%assigns the right arrow kb input to the variable right arrow
reset = KbName('tab');;%assigns the tab kb input to the variable tab
%invalidinput = keyIndex ~= reset | keyIndex ~= right_arrow; 
condition = 1;
tabcondition = 1;
keyArray = [];
counter = 0;
disp('Please input the items you remember in order')
disp('Make sure to stop at 9 inputs, and press the right arrow to submit your answer')
disp('If you are unsure for one of the images press the delete button.')
disp('If you believe you made a mistake, and would like to restart, press the tab button.')
while condition
    tabcondition = 1;
    while tabcondition %while loop for when tab is pressed
        [keyIsDown, seconds, keyCode] = KbCheck;
        %keyIsDown = 0;
        keyIndex = find(keyCode, 1);
        if keyIsDown 
            counter = counter +1;
            fprintf('Response #%i was %s \n', counter, KbName(keyIndex)) %updates response each time letter is pressed
            keyArray = [keyArray, keyIndex]; %concatenates each keyIndex to a keyArray, that represents each response
            if keyIndex == right_arrow
                condition = 0;
                keyArray = keyArray(1:end-1);
                break
            end
            if keyIndex == reset
                tabcondition = 0;
                disp('Please reinput your choices')
            end
            %
          %  if keyIndex == invalidinput
             %   disp('please input a letter matching the image')
            %    keyArray = keyArray(1:end-1);
           % end
            %
                KbReleaseWait;
        end
    end
end
%disp(keyArray)
responseinletters = string(KbName(keyArray));
disp(responseinletters)
finalresponse = [];
responsetrigger = 1;
counter2 = 0;
%while responsetrigger
WaitSecs(1);
try   %%%%%assigns each letter to the corresponding Image stimuli
    for jj = 1:9
        if counter2 > 9
            responsetrigger = 0;
        end
        if responseinletters(jj) == "a" 
            finalresponse = [finalresponse, 'apple '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "b" 
            finalresponse = [finalresponse, 'banana '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "c" 
            finalresponse = [finalresponse, 'chair '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "e" 
            finalresponse = [finalresponse, 'eagle '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "m" 
            finalresponse = [finalresponse, 'mango '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "o" 
            finalresponse = [finalresponse, 'orange '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "p" 
            finalresponse = [finalresponse, 'pizza '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "r" 
            finalresponse = [finalresponse, 'ruler '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "s" 
            finalresponse = [finalresponse, 'spoon '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "t" 
            finalresponse = [finalresponse, 'truck '];
            counter2 = counter2 +1;
        end
        if responseinletters(jj) == "DELETE"
            finalresponse = [finalresponse, 'forgotten '];
            counter2 = counter2 +1;
        end
    end
catch
    disp('The array was not the length of the original list, please try again.')
    return
end
%end

%%%%Check before confirming response
disp('Your final response is ')
fprintf( '%s ', finalresponse)
disp(' ')
confirmresponse = input('\n Are you satisfied with this response? input y if yes, n if no. : ', 's');
if confirmresponse == 'y'
   disp('Your response has been collected, we will now proceed to Trial #2')
elseif confirmresponse == 'n'
    disp('Please input the responses again')
   return
else 
    disp('Please input either y or n')
    confirmresponse = input('Are you satisfied with this response? input y if yes, n if no. : ', 's');
end
%%%%%%%%%
disp(keyArray)

%%%%%Accuracy Checker Mechanism

%keyArray = [65 66 66 65 66 65 65 65 66];  %%%%% will be established in response collection
%correctArray = [66 66 65 66 66 66 65 66 66]; %%%will be established in stimulipresentation

rightwrongarray = [];
trialnumber = 0;%this will not be here, trial number would be established elsewhere
%while trialnumber<1 % this while would actually envelop the WHOLE SCRIPT
correctcounter = 0;
incorrectcounter =0;
% this line won't be hear in the final script, the trial number will update
% elsewhere
trialnumber = trialnumber + 1;
    for i = 1:size(keyArray, 2)
        if keyArray(i) == correctArray(i)
           % disp(i)
            correctcounter = correctcounter +1;
            if trialnumber == 1
            rightwrongarray= [rightwrongarray, 1];
            end
            if trialnumber>1
            rightwrongarray(i) = rightwrongarray(i) +1;
            end
        else 
            %disp(i)
            incorrectcounter = incorrectcounter +1;
            if trialnumber == 1
            rightwrongarray= [rightwrongarray, 0];
            end
            if trialnumber>1
            rightwrongarray(i) = rightwrongarray(i) +1;
            end
        end
    end
% else
%     correctcounter = 0;
%     incorrectcounter = 0;
%     for i = 1:length(keyArray)
%         if keyArray(i) == correctArray(i)
%            % disp(i)
%             correctcounter = correctcounter +1;
%         else 
%             %disp(i)
%             incorrectcounter = incorrectcounter +1;
% 
%         end
%     end
% end


disp(rightwrongarray)
trialnumberarray = [];
percentagecorrectarray = [];
numberofstimuliarray = [];
for i = 1:length(keyArray)
    trialnumberarray = [trialnumberarray, trialnumber];
end
%disp(trialnumberarray)
for ii = 1:length(keyArray)
  percentagecorrectarray = [percentagecorrectarray, (rightwrongarray(ii)/trialnumberarray(ii))];
end
%disp(percentagecorrectarray)
for i = 1:length(keyArray)
    numberofstimuliarray = [numberofstimuliarray, i];
end
%disp(numberofstimuliarray)

%%%%  THis saves the rightwrongarray response as a .matfile
%%%%%updates by adding current trials rightwrongarray to the mat file,
%%%%%each trial is a row in the rightwrongarray

updaterightwrongarray = rightwrongarray; %updates right wrongarray to temporary variable
% 
load('master.mat')
rightwrongarray = [rightwrongarray; updaterightwrongarray]; %appends temporary variable, and appends ti
save('master.mat', 'rightwrongarray', '-append')
%disp(correctcounter)
%disp(incorrectcounter)

%%%%%%% This presents the immediate findings as a graph
f= figure;
graph = bar(numberofstimuliarray,percentagecorrectarray);
title('Final Results for Participant')
xlabel('Response #')
ylabel('PercentageCorrect')
% %%%%%%%%%%%%%%%

