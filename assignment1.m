% James Henry
% Chapter 2
% 5/22/2017

%% 2.4a. 
clear, clc
format short

radius = 5; 
areaCircle = pi * radius^2


%% 2.4b. 
clear, clc

radius = 10; 
surfaceAreaSphere = 4 * pi * radius^2

%% 2.4c
clear, clc
format short 

radius = 2;
volumeSphere = (4/3) * pi * radius^2

%% 2.6a
clear, clc

radiusSphere = 10;
lengthRod = 15;
diameterRod = 1;
radiusRod = diameterRod / 2; 

volumeSphere = (4/3) * pi * radiusSphere^2;
volumeRod = pi * radiusRod^2 * lengthRod;

totalVolume = 2 * volumeSphere + volumeRod

%% 2.6b

surfaceSphere = 4 * pi * radiusSphere^2
surfaceRod = 2 * pi * radiusRod * lengthRod

totalArea = 2 * surfaceSphere + surfaceRod

%% 2.7
clear, clc

R = .08314472; % ideal gas constant. 
pressure = 220;
n = 2;
volume = 1;
a = 5.536; 
b = .03049; 

temperature = (pressure + (n^2 * a) / (volume^2)) * (volume - n * b) / (n * R)

%% 2.8a
clear, clc
format short

radius = 3;
h = [1, 5, 3]; 

volume = pi * radius^2 * h

%% 2.8b
clear, clc

h = 12;
b = [2, 4, 6];

area = (1/2) * h * b

%% 2.8c

prismVolume = area * 6

%% 2.11
clear, clc
format bank

co2 = 19.4
miles = 12000

cars = [107, 35, 35, 46, 56, 32]
gallons = [miles./ cars]

totalCo2 = co2 * gallons

%% 2.12a
clear, clc

aVector = [1:1:20]

%% 2.12b
clear, clc

increment = pi / 10;
minVal = 0;
maxVal = 2 * pi;
aPiVector = [minVal: increment: maxVal]

%% 2.12c
clear, clc

aVector = linspace(4, 20, 15)

%% 2.12d
clear, clc

aVector = logspace(1, 3, 10)

%% 2.13a
clear, clc

feet = [0:1:100];
meters = feet * .3048;

feetToMeters = [feet' , meters']

%% 2.13b
clear, clc

radians = [0: 0.1 * pi: pi];
degrees = radians.* 180 / pi;

radiansToDegrees = [radians', degrees']
%% 2.13c
clear, clc

increment = 100 / 15;
mph = [0: increment: 100];
feetPerSecond = mph.* 1.46667;

mphToFps = [mph', feetPerSecond']

%% 2.13d
clear, clc
format short

H_conc = linspace(0.001, 0.1, 10);
pH = -log10(H_conc);

phTable = [H_conc', pH']

%% 2.14
clear, clc

g = 9.8
time = [0:5:100];
distance = (1/2) * g * power(time, 2);
fallTable = [time', distance']


%% 2.17
clear, clc

G = 6.673e-11;
earthMass= 6e+24;
moonMass = 7.4e+22;
earthMoonDistance = 3.9e+8;

Force = G * ((earthMass * moonMass) / earthMoonDistance^2)

%% 2.18 
clear, clc
format short e;

G = 6.673e-11;
earthMass= 6e+24;
moonMass = 7.4e+22;
earthMoonDistance = 3.9e+8;

earthMoonTable = linspace(3.8e+8, 4.0e+8, 10);
forceTable = G * ((earthMass * moonMass)./ power(earthMoonTable, 2));

output = [earthMoonTable', forceTable']


%% 2.19a
clear, clc
format bank

pressures = linspace(0, 400, 10);

R = .08314472; % ideal gas constant. 
n = 2;
volume = 1;
a = 5.536; 
b = .03049; 

temperatures = (pressures + (n^2 * a) / (volume^2)) * (volume - n * b) /...
    (n * R)

%% 2.19b

volumes = linspace(.1, 10, 10);
pressure = 220;

temperatures = (pressure + (n^2 * a) ./ power(volumes, 2)) .* (volumes - (n * b))... 
 / (n * R)

%% 2.21a

degrees = [10: 10: 90]; 
radians = degrees * pi / 180;

D_to_R = table(degrees', radians', 'VariableNames',{'Degrees' 'Radians'})

save degrees D_to_R 

%% 2.21b to load the file. 

clear, clc

load degrees
