
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
load('data.mat')
finaldata = [finaldata; updatefinaldata];
save('data.mat', 'finaldata', '-append')

% 
% subject.name = input('What is your name?: ', 's');
% 
% subject.age = input('What is your age?:', 's');
% 
% subject.gender = input('What is your gender?: ', 's');