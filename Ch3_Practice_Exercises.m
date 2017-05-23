%% James Henry
% Assignment 2
% Chapter 3 Practice Exercises. 
% 5/23/2017 

%% Practice Exercise 3.1.1a

help cos

cos(x) % Where x is argument in radians. 
%% 3.1.1b
help sqrt

sqrt(x) % where x is any number, could return complex numbers if X is negative

%% 3.1.1c
help exp

exp(x) % is the exponential of the elements of X, e to the X

%%3.1.2 Checked help feature for above elements 

%%3.1.3

% doc cos
% doc sqrt
% doc exp

%% Practice Exercise 3.2 

x = [-2, -1, 0, 1, 2]

%%3.2.1a

abs(x) 

%%3.2.1b

sqrt(x) 

%%3.2.2a

sqrt(3)
sqrt(-3)

%%3.2.2b

nthroot(3, 2)

%%3.2.2c

nthroot(3, 1/2)
nthroot((-3), 1/2); %gives an error. 

%% Practice Exercise 3.2.3 
clc, clear
x = (-9:3:12)

 %% 3.2.3a
 x / 2 
 
 %% 3.2.3b
 
 rem(x, 2)
 
 %% 3.2.4
 format bank
 exp(x)

 %% 3.2.5a
 log(x) 
 
 %% 3.2.5b
 format short
 log10(x)
 
 %% 3.2.6
 sign(x)
 
 %% 3.2.7
 format rat
 
 x / 2

%% Practice Exercise 3.3
clear, clc
format short g 

%% 3.3.1  Factor 322

factor(322)

%% 3.3.2

gcd(322, 6)

%% 3.3.3

if isprime(322)
    fprintf('number is prime')    
else fprintf('Number is not prime\n')
end


%% 3.3.4

primes(322)

%% 3.3.5

rats(pi) 


%% 3.3.6

factorial(10)


%% 3.3.7

nchoosek(20, 3)


%% Practice Exercise 3.4

%% 3.4.1
clc, clear
format bank 

theta = 3 * pi; 
sin(2 * theta) 

%% 3.4.2

clc, clear

theta = (0:  .2 * pi: 2 * pi);

cos(theta)

%% 3.4.3

asin(-1) 

%% 3.4.4

x = (-1:.2:1);
cos(x)

%% 3.4.5a

 deg = 45
 rad = deg2rad(deg)
 
 cos(rad)
 
 %% 3.4.5b
 cosd(rad)

%% 3.4.6
clear, clc

angle = asin(.5)
fprintf('radians') 

rad2deg(angle)
fprintf('degrees') 

%% 3.4.7
clear, clc

degrees = 60;
radians = deg2rad(degrees);

csc(radians)
 
%% Practice Exercise 3.5 
 x = [4, 90, 85, 75;
     2, 55, 65, 75;
     3, 78, 82, 79;
     1, 84, 92, 93];
 
%% 3.5.1 What is the maximum value in each column?

max(x)

%% 3.5.2 In what row does the maxumum value occur?

[a,b] = max(x);

max(b)


%% 3.5.3 What is the maximum value in each row?
y = x'
max(y)
 
%% 3.5.4 In what column does the maximum occur?

[a,b] = max(y);
max(b)

%% 3.5.5 What is the maximum value in the entire table? 

y = max(x);
z = max(y)

%% Practice Exercise 3.6 
clear, clc

 x = [4, 90, 85, 75;
     2, 55, 65, 75;
     3, 78, 82, 79;
     1, 84, 92, 93];
 
%% 3.6.1

mean(x)

%% 3.6.2

median(x) 

%% 3.6.3
mean(x')

%% 3.6.4
median(x')

%% 3.6.5
mode(x) 

%% 3.6.6

y = mean(x);
z = mean(y)

%% Practice Exercise 3.7 

clear, clc
format short
 x = [4, 90, 85, 75;
     2, 55, 65, 75;
     3, 78, 82, 79;
     1, 84, 92, 93];
 
 %% 3.7.1
 
 size(x)
 
 %% 3.7.2
 
 sort(x) 
 
 %% 3.7.3
  
 sort(x, 'descend') 
 
 %% 3.7.4
 
 sortrows(x, 1)
 %% 3.7.5
 
sortrows(x, -3)

%% Practice Exercise 3.8 
clear, clc
format short
 
x = [4, 90, 85, 75;
     2, 55, 65, 75;
     3, 78, 82, 79;
     1, 84, 92, 93];
 

%% 3.8.1

std(x) 

%% 3.8.2

varianceVector = var(x)

%% 3.8.3

sqrt(varianceVector)


%% 3.8.4

std(x)
fprintf('the results from 3 are the same as the standard variation of 1\n')

%% Practice Exercise 3.9 

%% 3.9.1

rand(3) 

%% 3.9.2

randn(3) 

%% 3.9.3

randomMatrix = rand(100, 5);

%% 3.9.4

max(randomMatrix)

standardVariation = std(randomMatrix)

variance = var(randomMatrix)

MEAN = mean(randomMatrix)

%% 3.9.5

gaussRandom = randn(100,5) 

%% 3.9.6

max(gaussRandom)

standardVariation = std(gaussRandom)

variance = var(gaussRandom)

MEAN = mean(gaussRandom)


%% 3.9.7
fprintf('values are different because the way the random values are generated is different')

%% Practice Exercise 3.10 

%% 3.10.1

A = complex(1, 1)

B = complex(2, -3) 

C = complex(8, 2)

%% 3.10.2

D = [complex(2, -3), complex(4, 8), complex(6, -16)]

%% 3.10.3

abs(A)
abs(B)
abs(C)

%% 3.10.4

angle(A)
angle(B)
angle(C)
%% 3.10.5

E = conj(D)

%% 3.10.6

F = conj(D') 

%% 3.10.7

G = A * conj(A)

sqrt(G) 
abs(A) 

fprintf('they are the same\n') 

%% Practice Exercise 3.11

%% 3.11.1
clock

%% 3.11.2
date

%% 3.11.3
fact(322) % outside the limit of MatLab

5*10^500 % outside the limit fo matlab

1 / 5*10^500 % outside the limit fo matlab

0 / 0 % outside the limit fo matlab