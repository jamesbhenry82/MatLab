%% James Henry
% Assignment 2
% Chapter 3 Exercises. 
% 5/23/2017 
%% 3.1 Find Cube root of -5 by both nthroot and raising to (1/3) power
clc, clear

format short

answer1 = nthroot(-5, 3)
answer2 = (-5)^(1/3)

fprintf('answer1 cubed.\n')
    real(answer1^3)

fprintf('answer2 cubed.\n')
    real(answer2^3)

fprintf('Nthroot() does not return complex numbers.\n') 

%% 3.2
clc, clear

aVector = linspace(1, 10, 10) 

log(10) ./ log(aVector)

%% 3.3 p * e^(r * t) exponential growth
% should equal: 810308.39
clc, clear
format short 

pInitial = 100;
rate = .9; 
time = 10;

pTotal = pInitial * exp(rate * time)

%% 3.4 energy = k * e^(-Q/(RT))

clc, clear
format short e

temperature = [100: 50: 500];

Q = 8000; % cal / mol
R = 1.987; % cal / mol K
kInitial = 1200; % min^-1

kRate = kInitial * exp(-Q ./ (R * temperature) ) ;
table(temperature', kRate', 'VariableNames', {'Temperature_K' 'Rate'}) 

%% 3.5
clc, clear

format short

lightBulbs = 20 * 100; % J/Second
appliances = 4 * 500; % J/Second
outsideAir = 3000; % J/Second

% a. 
totalEnergyRequired = lightBulbs + appliances + outsideAir

% b. 

unitSize = 2000; % J/Second total unit size
totalUnits = round( totalEnergyRequired / unitSize );
fprintf('Total energy required to chill home: %4.0f Joules / second\n', totalEnergyRequired); 
fprintf('Total number of units necessary: %4.0f units\n', totalUnits)

%% 3.9 number of primes between 10,000 and 20,000
clc, clear
p10k = primes(10000);
p20k = primes(20000);

numberOfPrimes = length(p20k) - length(p10k);

fprintf('There are %4i primes betweeh 10,000 and 20,000\n', numberOfPrimes)


%% 3.11 x = A cos( frequency * time 
clc, clear

time = [0:1:10];
frequency = .6;  % radians per second
A = 4;          % maximum displacement in cm

displacement = A * cos( frequency .* time);

table(time', displacement', 'VariableNames', {'Time_Seconds', 'Position_cm'})


%% 3.12 acceleration 
clc, clear

time = [0:1:10];
frequency = .6;  % radians per second
A = 4;          % maximum displacement in cm

acceleration = -A * frequency^2 * cos(frequency .* time); % cm/sec
displacement = A * cos( frequency .* time);

table(time', displacement', acceleration', 'VariableNames', ...
    {'Time_Seconds', 'Position_cm', 'Acceleration'}) 




%% 3.13
clc, clear
format short

degrees = [27, 33]; 
height = 120 .* tan(degtorad(degrees)); 

fprintf('The building is between %4.2f and %4.2f meters tall\n', height) 

%% 3.14
clc, clear

angleRadians = atan((200/20));
angleDegrees = radtodeg(angleRadians);

% a. 
fprintf('A. The angle is %4.1f degrees. \n', angleDegrees)

%b. 

hypotenuse = sqrt(20^2 + 200^2); 

fprintf('B. The building is %4.2f feet from the top of my head. \n', ...
    hypotenuse) 

%c
clc, clear

angleRadians = atan((194/20));
angleDegrees = radtodeg(angleRadians);
hypotenuse = sqrt(20^2 + 194^2); 

 
fprintf('Part C-A. The angle is %4.1f degrees. \n', angleDegrees)
fprintf('Part C-B. The building is %4.2f feet from the top of my head \n', ... 
     hypotenuse'); 
 
%% 3.15 
clc, clear
load thermocouple -ASCII; 

% a
max(thermocouple)

% b
min(thermocouple)

%% 3.16 
clc, clear
format bank

theta = [0: (pi / 100): (pi / 2)];
g = 9.8;             % meters / second^2
initVelocity = 100;  % meters / second

range = (initVelocity^2 ./ g ) * sin(2 * theta);

max(range);

expectedAngle = pi / 4; 
expectedRange = (initVelocity^2 ./ g ) * sin(2 * expectedAngle);

fprintf('The maximum range is %4.2f meters.\n', max(range));
fprintf('The maximum range according to the control angle, ?/4, is: ');
fprintf('%4.2f meters', expectedRange);


%% 3.17 
% find mean, median, mode, standard deviation, number of grades, sort
% ascending

clc, clear
 G =[68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 63, 71, 96, 78, 76, 68, ...
     72, 75, 83, 93];
 
meanGrade = mean(G);
medianGrade = median(G);
modeGrade = mode(G);
standardDeviation = std(G);
numberOfGrades = length(G);
sortedGrades = sort(G);

fprintf('The Mean or Average Grade is: %4.2f \n', meanGrade)
fprintf('The Median Grade is: %4.2f \n', medianGrade)
fprintf('The Mode Grade (or grade that occurs most commonly) is: %4.2f \n', modeGrade)
fprintf('The Standard Deviation of grades is: %4.2f \n', standardDeviation)
fprintf('The number of grades is: %4.2f \n', numberOfGrades)
fprintf('Sorted grades: \n' )
sortedGrades'

% The Mode grade indicates which grade is most frequenly occuring.  
 
%% 3.18  
% Mean = 80 standard variance = 23.5 
clc, clear

randomMean = 80;
standardVariance = 23.5; 

cruft = standardVariance .* randn(10000, 1) + randomMean ;

stats = [ mean(cruft) std(cruft) var(cruft) ]


%% 3.19 
clc, clear

date 

%% 3.21
clc, clear

temperatureMean = 70; 
varianceTemp = 2; 

% 241 values
t1 = datetime(2017,1,17,0,0,0);
t2 = datetime(2017,1,17,2,0,0);

timeValues = t1:minutes(.5):t2;

length(timeValues);

temperatureMedian = varianceTemp .* randn(241, 1) + temperatureMean;

plot(timeValues, temperatureMedian); 

%% 3.24
clc, clear
fileName = 'Denver_Climate_Data_2015.xlsx';

EMXP = xlsread(fileName, 'D:D');
MMNT = xlsread(fileName, 'K:K');
EMXT = xlsread(fileName, 'H:H');
MXSD = xlsread(fileName, 'E:E');
MMXT = xlsread(fileName, 'J:J');
TPCP = xlsread(fileName, 'F:F');
EMNT = xlsread(fileName, 'I:I');
MNTM = xlsread(fileName, 'L:L');
TSNW = xlsread(fileName, 'G:G');

totalPrecipitation = sum(TPCP);
averageMinimumTemp = mean(MMXT);
maxSnowDepth = max(MXSD);
maxTotalSnow = max(TSNW); 

fprintf('3.24a: The Total Precipitation was %4.2f inches.\n', ...
    totalPrecipitation)

fprintf('3.24b: The average monthly mean minimum temperature was %4.2f degrees.\n', ...
    averageMinimumTemp)

fprintf('3.24c: The maximum snow depth was %4.2f inches.\n', maxSnowDepth)

fprintf('3.24d: The maximum total snow fall was %4.2f inches.\n', maxTotalSnow)


%% 3.25    Use the data for SLC from the NOAA National Centers for Environmental Information
clc, clear
fileName = 'SLCClimateData_2016.csv'

maxTemp = csvread(fileName, 2, 6, [2, 6, 365, 6]);  % Max
minTemp = csvread(fileName, 2, 7, [2, 7, 365, 7]);  %  Min


fprintf(' the Maximum temperature recorded was %4.2f degrees.\n', max(maxTemp))

fprintf(' the Minumum temperature recorded was %4.2f degrees.\n', min(minTemp))