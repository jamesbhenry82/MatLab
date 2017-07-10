%% James Henry
% Chapter 4 Exercises 
% 01/23/2017

%% Practice Exercise 4.1 
clc, clear

a = [12, 17, 3, 6]
b = [5, 8, 3;
    1, 2, 3;
    2, 4, 6;]
c = [22;
    17;
    4;]

%% 4.1.1

x1 = a(:, 2)
%% 4.1.2

x2 = b(:, 3)

%% 4.1.3

x3 = b(3, :)

%% 4.1.4
x4 = [b(1:1, 1:1), b(2:2, 2:2), b(3:3, 3:3)]

%% 4.1.5

x5 = [a(1:3); b]

%% 4.1.6

x6 = [c, b; a]

%% 4.1.7
 x7 = b(8)
 
%% 4.1.8 
 x8 = b(:)

 
%% Practice Exercise 4.2
clc, clear

x = [1, 3, 5];
y = [2, 4, 6, 8];

%% 4.2.1 
[new_x, new_y ] = meshgrid(x, y);
rectangleArea = new_x .* new_y; 

%% 4.2.2
clc, clear

radii = (0: 3: 12);
height = (10: 2: 20); 
[newRadii, newHeight] = meshgrid(radii, height);

volumeCylinder = pi .* power(newRadii, .2) .* newHeight

%% Practice Exercise 4.3
clc, clear

% 4.3.1

zeros(4) 

% 4.3.2

zeros(3, 4)

% 4.3.3

ones(4) 

% 4.3.4

ones(5, 3) 

% 4.3.5

piMatrix = ones(4, 6) .* pi

% 4.3.6

a = [1, 2, 3];

diag(a) 

% 4.3.7
 
aMagicMatrix = magic(10); 

% 4.3.7.a 

diag(aMagicMatrix) 

% 4.3.7.b

diag(fliplr(aMagicMatrix)) 

% 4.3.7.c


sum(aMagicMatrix(:, 1));
sum(aMagicMatrix(:, 2));
sum(aMagicMatrix(:, 3));
sum(aMagicMatrix(:, 4));
sum(aMagicMatrix(:, 5));
sum(aMagicMatrix(:, 6));
sum(aMagicMatrix(:, 7));
sum(aMagicMatrix(:, 8));
sum(aMagicMatrix(:, 9));
sum(aMagicMatrix(:, 10));

sum(aMagicMatrix(1, :));
sum(aMagicMatrix(2, :));
sum(aMagicMatrix(3, :));
sum(aMagicMatrix(4, :));
sum(aMagicMatrix(5, :));
sum(aMagicMatrix(6, :));
sum(aMagicMatrix(7, :));
sum(aMagicMatrix(8, :));
sum(aMagicMatrix(9, :));
sum(aMagicMatrix(10, :))

sum(aMagicMatrix)
sum(diag(aMagicMatrix))

fprintf('Sum of all rows, columns, and diagonals is%4.0f and are the same.\n', ...
    sum(diag(aMagicMatrix)) )
