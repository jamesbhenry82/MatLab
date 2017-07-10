%% James Henry
% Assignment 3.
% Chapter 4 Problems.  

%% 4.1
a = [15, 3, 22; 
    3, 8, 5;
    14, 3, 82];

b = [1; 
    5; 
    6];

c = [12, 12, 5, 2];

%% 4.1.a

d = a(:, 3) 

%% 4.1.b

e = [b, d]

%% 4.1.c

f = e(:)

%% 4.1.d

g = [a; c(1:3)]

%% 4.1.e

h = [a(3), c(2), b(2)]

%% 4.2
clc, clear

thermo_scores = load('THERMO_SCORES.DAT');

%% 4.2.A

student_5 = thermo_scores(5, :);

%% 4.2.B

test_1 = thermo_scores(:, 2); 

%% 4.2.C

test_2 = thermo_scores(:, 3); 
test_3 = thermo_scores(:, 4); 

fprintf('Standard deviation of test 2 is %4.2f \n',std(test_2))
fprintf('Variance of test 2 is %4.2f \n',var(test_2))

fprintf('Standard deviation of test 3 is %4.2f \n',std(test_3))
fprintf('Variance of test 3 is %4.2f \n',var(test_3))

%% 4.2.D
format bank;
testScores = thermo_scores(:, 2:4); 
averageScore = sum(testScores, 2) / 3

%% 4.2.E

completeGradeTable = [testScores, averageScore]

%% 4.2.F

sortrows(completeGradeTable, -4)

% 4.3 

%% 4.3.A
clc, clear

times = [0:2:24];

%% 4.3.B

thermoCouple = load('THERMOCOUPLE.DAT');

 %% 4.3.C
 
times_col = times';
thermoCoupleData = [times_col, thermoCouple]

%% 4.3.D

[M, I] = max(thermoCoupleData)

[M, I] = min(thermoCoupleData)

%% 4.4  
clc, clear

sensorData = load('SENSOR.DAT'); %Load Sensor Data for 4.4 

%% 4.4.A

[M, N] = size(sensorData); 
timeMax = max(sensorData(:, 1)); 
fprintf('There are%4.0f sensors.\nMeasured over %4.2f seconds.\n',  (N - 1), timeMax) 

%% 4.4.B

sensorCol = [2:6]; % get max and min values 

for I = sensorCol % use for loop to output data
    [M,N] = max(sensorData(:, I)); 
    timeMax = sensorData(N); 

    [O, new_pressure] = min(sensorData(:, I));
    timeMin = sensorData(new_pressure); 
    sensNum = I - 1;
    fprintf('\nThe maximum value on Sensor%4.0f is %4.2f, occuring at %2.2f seconds.\n', sensNum, M, timeMax)
    fprintf('The minumum value on Sensor%4.0f is %4.2f, occuring at %2.2f seconds.\n', sensNum, O, timeMin)
end 

%% 4.4.C

fprintf('\nThe standard deviation of the sensors are: \n')
std(sensorData(:, 2:6))

fprintf('\nThe Mean Value of each sensor is: \n')
mean(sensorData(:, 2:6))

%% 4.5  - Update the data file using the data at 
% https://en.wikipedia.org/wiki/Accumulated_cyclone_energy
clc, clear

%% 4.5.A
ace_data = load('ace_data.dat'); %Load NOAA data for 4.5

%% 4.5.B
years = ace_data(:, 1);
ace = ace_data(:, 2);
tropical_storms = ace_data(:, 3);
hurricanes = ace_data(:, 4);
major_hurricanes = ace_data(:, 5); 

%% 4.5.C 

[M, N] = max(ace); % get max value for ace and the row it occured in.
maxYear = years(N); % specify the year based on the Row the max occured in.

fprintf('The Maximum ACE index was%4.0f in %4.0f\n', M, maxYear) % nice output

[M, N] = max(tropical_storms); % get max value for tropical_storms and the row it occured in.
maxYear = years(N); % specify the year based on the Row the max occured in.

fprintf('The Maximum number of tropical storms was %4.0f in %4.0f\n', M, maxYear) % nice output

[M, N] = max(hurricanes); % get max value for hurricanes and the row it occured in.
maxYear = years(N); % specify the year based on the Row the max occured in.

fprintf('The Maximum number of Hurricanes was %4.0f in %4.0f\n', M, maxYear) % nice output

[M, N] = max(major_hurricanes); % get max value for major hurricanes and the row it occured in.
maxYear = years(N); % specify the year based on the Row the max occured in.

fprintf('The Maximum number of Major Hurricanes was %4.0f in %4.0f\n', M, maxYear) % nice output. 

%% 4.5.D

ace_data_sub_set = ace_data(:, [2,3,4,5]) % Create array of subset of AceData 

mean(ace_data_sub_set)
median(ace_data_sub_set)

%% 4.5.E

sorted_ace = sortrows(ace_data, 2); % Sort the ace_data table by ACE number

array2table(sorted_ace, 'VariableNames', {'Year' 'ACE' 'Tropical_Storms'...
    'Hurricanes' 'Major_Hurricanes'}) % Arrange into a nice table. 

%% 4.7 Area of Triangles 

base = 0:2:10;
height = 2:1:6;
[new_base, new_height] = meshgrid(base, height);

triangle_area_array = (1/2) .* new_base .* new_height

%% 4.8 Barometer 
clear, clc
format bank 

pressure_range = 0:20:100;  % in kPa
densities= [13560, 1000];   % kilograms per cubic meter
g = 9.8;                    % meters per second 
[new_pressure, new_density] = meshgrid(pressure_range, densities);

column_height = (((new_pressure) ./ (new_density .* g))  .* 1000) .* 100 

colLabels = cellstr('kPa_' + string(new_pressure(1, :)));

array2table(column_height, 'VariableNames', colLabels, 'RowNames',...
    {'Mercury_CM', 'Water_CM'}) % make a nice table from the data. 

%% 4.9
clear, clc
format short 

R = 0.08270;                       % Constant kJ/ kg * K  
pressure_range = [100:200:1000];   % kPa
temperature_k = [100:200:1000];    % kelvin

[new_pressure, new_temperature] = meshgrid(pressure_range, temperature_k); 
volumes = (R .* new_temperature) ./ new_pressure;

colLabels = cellstr('kPa_' + string(pressure_range(1, :))); % Column Labels
rowLabels = cellstr('K_' + string(temperature_k(1, :))); % Row Labels

fprintf('Volumes, in Meters^3 at specific temperatures and pressures\n') 
array2table(volumes, 'VariableNames', colLabels, 'RowNames', rowLabels)


%% 4.10
clc, clear

% matrices from 4.1 
a = [15, 3, 22; 
    3, 8, 5;
    14, 3, 82];

b = [1; 
    5; 
    6];

c = [12, 12, 5, 2];

a_zeros = zeros(size(a))

b_zeros = zeros(size(b))

c_zeros = zeros(size(c))

%% 4.11
clear, clc

magic_matrix_6 = magic(6);

% 4.11.A
row_sum = sum(magic_matrix_6)

% 4.11.B
col_sum = sum(magic_matrix_6')

% 4.11.C
sum(diag(magic_matrix_6))
sum(diag(fliplr(magic_matrix_6)))
