name = input('What is your name?: ', 's');
namearray = [];
namearray = [namearray, string(name)];
age = input('What is your age?:', 's');
agearray = [];
agearray = [agearray, string(age)];
gender = input('What is your gender?: ', 's');
genderarray = [];
genderarray = [genderarray, string(gender)];
table = table(namearray,agearray, genderarray, 'variablenames',{'Name','Age','Gender'});
disp(table)


