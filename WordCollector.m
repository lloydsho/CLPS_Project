
KbName('UnifyKeyNames');
currentcharacters = 0;
correctarray = [];
WordResponse = [];
while KbCheck; end
ListenChar(2);
for jj = 1:length(randomwordarray)
    keyCode = [];
    maxcharacters = strlength(randomwordarray(jj));
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
            for ii = 1:length(recentkeyCode)
                if recentkeyCode(ii) == 1
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
    disp(WordResponse)
    WordResponse = [];
    while KbCheck; end
end
ListenChar(0);

