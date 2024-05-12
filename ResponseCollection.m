function ResponseCollection
KbName('UnifyKeyNames')
window = Screen('OpenWindow', 0);
DrawFormattedText(window, 'We will now test your performance on the memory task.', 'center', 'center');
Screen('Flip', window);
WaitSecs(2)
sca;

%Response collection mechanism

while KbCheck; end
right_arrow = KbName('RightArrow');
reset = KbName('tab');
%invalidinput = keyIndex ~= reset | keyIndex ~= right_arrow; 
condition = 1;
keyArray = [];
counter = 0;
disp('Please input the items you remember in order')
disp('If you are unsure press the delete button.')
disp('If you believe you made a mistake, and would like to restart, press the tab button.')
while condition
    [keyIsDown, seconds, keyCode] = KbCheck;
    %keyIsDown = 0;
    keyIndex = find(keyCode, 1);
    if keyIsDown 
        counter = counter +1;
        fprintf('Response #%i was %s \n', counter, KbName(keyIndex))
        keyArray = [keyArray, keyIndex];
        if keyIndex == right_arrow
            condition = 0;
            keyArray = keyArray(1:end-1);
            break
        end
        if keyIndex == reset
            condition = 0;
            break
            return 
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
disp(keyArray)
responseinletters = string(KbName(keyArray));
disp(responseinletters)
finalresponse = [];
responsetrigger = 1;
counter2 = 0;
%while responsetrigger
try
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

%keyArray = [65 66 66 65 66 65 65 65 66];  %%%%% will be established in response collection
%correctArray = [66 66 65 66 66 66 65 66 66]; %%%will be established in stimulipresentation

rightwrongarray = [];
trialnumber = 0;%this will not be here, trial number would be established elsewhere
while trialnumber<1 % this while would actually envelop the WHOLE SCRIPT
correctcounter = 0;
incorrectcounter =0;
% this line won't be hear in the final script, the trial number will update
% elsewhere
trialnumber = trialnumber + 1;
    for i = 1:length(keyArray)
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

%%%% THis saves the rightwrongarray response as a .matfile

updaterightwrongarray = rightwrongarray;
% 
load('master.mat')
rightwrongarray = [rightwrongarray; updaterightwrongarray];
save('master.mat', 'rightwrongarray', '-append')
%disp(correctcounter)
%disp(incorrectcounter)

%%%%%%% This presents the immediate findings as a graph
f= figure;
graph = plot(numberofstimuliarray,percentagecorrectarray,'-o','LineWidth',2);
title('Final Results for Participant')
xlabel('Response #')
ylabel('PercentageCorrect')
%%%%%%%%%%%%%%%


