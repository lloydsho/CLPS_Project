%function ResponseCollection
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
