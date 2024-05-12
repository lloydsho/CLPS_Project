keyArray = [65 66 66 65 66 65 65 65 66];  %%%%% will be established in response collection
correctArray = [66 66 65 66 66 66 65 66 66]; %%%will be established in stimulipresentation

rightwrongarray = [];
trialnumber = 0;%this will not be here, trial number would be established elsewhere
while trialnumber<2 % this while would actually envelop the WHOLE SCRIPT
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

%updaterightwrongarray = rightwrongarray;
% 
%load('master.mat')
%rightwrongarray = [rightwrongarray; updaterightwrongarray];
%save('master.mat', 'rightwrongarray', '-append')
%disp(correctcounter)
%disp(incorrectcounter)

%%%%%%% This presents the immediate findings as a graph
f= figure;
graph = bar(numberofstimuliarray,percentagecorrectarray);
title('Final Results for Participant')
xlabel('Response #')
ylabel('PercentageCorrect')
%%%%%%%%%%%%%%%
