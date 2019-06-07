#!/bin/sh
# Octave tutorial commands of Pauline
# Define working directory
pwd
cd /Users/pauline/Documents/Octave
pwd
#
# exit % exit Octave
# lists the files in the current directory
ls
# Basic algebra in Octave
2+2
# ans = 4
2^3
# Built-in functions
exp(1)
# to calculate 1.2 sin(40◦ + ln(2.42))
1.2 * sin(40*pi/180 + log(2.4^2))
# variables. All variables in Octave are floating point numbers
deg = pi/180;
deg
1.2 * sin(40*deg + log(2.4^2))
b = 1.2 * sin(40*deg + log(2.4^2));
b
#
1.2 * sin(40*deg + log(2.4^2))
new = 3*ans
#
who
Variables in the current scope:
ans  b    deg  new
#
clear name
clear all
clear
# Fixed point format with 16 significant figures
format long
pi
# Octave displays 5 significant digits
format short
pi
# save workspace
save paulineoct.mat
load paulineoct.mat
#
save degconv deg
#
help sqrt
#Cancelling a command
Ctrl-C
# A list of numbers separated by spaces or commas, inside square brackets, defines a row vector.
a=[1 4 5]
b=[2,1,0]
# Numbers separated by semicolons, or carriage returns, define a column vector.
c=[4;7;10]
c=[4
7
10]
#  shortcut for constructing a vector of counting numbers is using the colon symbol ‘:’
e=2:6
# A third number may also be added between the two, making a : b : c. The middle number then specifies the increment between elements of the vector.
e=2:0.3:4
# The increment can also be negative, in which case it will count down to the end number.
e=4:-0.3:2
# zeros(M,N)
zeros(2,3)
ones(3,4)
#linspace(x1, x2, N ) Create a vector of N elements, evenly spaced between x1 and x2
linspace(1, 10, 9)
linspace(1, 10, 10)
# logspace(x1,x2,N)
logspace(1,100,5)
# Individual elements are referred to by using normal brackets ()
# then we can get the third element by typing octave:##>
a=[1:2:6 -1 0]
a(3)
a=[1:2:6 -1 0]
a(3:5)
a(1:2:5)
# Multiplying/dividing all the numbers in a vector by the same number
a
a * 2
a / 2
b=[1 2 3 4 5];
# element-by-element matrix operation as long as they are the same size and shape
a.*b
# plotting graphs plot(x,y)
# angles 60 degrees
angles=linspace(0,2*pi,100);
y=sin(angles);
plot(angles, y);
# to plot the graph with red circles
plot(angles, y, 'ro')
plot(angles, y, 'g+')
plot(angles, y, 'm>')
title('Graph of y=sin(x)')
title('Pauline first Octave plot: Graph of y=sin(x)')
xlabel('Angle')
ylabel('Value')
grid on
plot(angles,y,':',angles,cos(angles),'-')
# specify the names for the curves in the order they were plotted.
legend('Sine', 'Cosine')
#
plot(angles,y,':')
hold on
plot(angles,cos(angles),'g-')
legend('Sine', 'Cosine')
hold off
print('graph1.png','-dpng','-r300')
print('graph300.jpg','-djpg','-r300','-color')
# multiple figure windows: produce a graph in a new figure window.
figure
plot(angles, tan(angles))
grid on
axis([0 7 -5 5])
print('graph2.jpg','-djpg','-r300','-color')
# run the script
Octave03script
run Octave03script.m
# list Octave scripts: m-files in current directory
what
# help on script
help Octave03script.m

a=0; b=2;
if a > b
    c=3
else
    c=4
end

# Boolean logical expressions (1/0)
2==2
1==2

# switch selection. The disp function displays a value or string.
a=1;
switch a
case 0
    disp('a is zero');
case 1
    disp('a is one');
otherwise
    disp('a is not a binary digit');
end
disp(a)

# for loops
for n=1:5
    nf(n) = factorial(n);
end
disp(nf)

# while loops
x=1;
while 1+x > 1
    x = x/2;
end
x
# To enter the example of matrix into Octave
A=[5 7 9
   -1 3 -2]
A=[5 7 9 ; -1 3 -2]
# colon notations
C = [1:3; 8:-2:4]
D=[1 2 3];
D=[D; 4 5 6];
D=[D; 7 8 9]
# vector
x=[1 0 3]
# The transpose of a matrix interchanges the rows with the columns.
% initial matrix
A
% transposed matrix
A'
A*x'
# identity matrix eye - is the matrix that, when multiplying any other matrix or vector, does not change anything. an identity matrix must be square.
I = eye(4)
I * [5; 8; 2; 0]
# The identity matrix is a special case of a diagonal matrix, which is zero apart from the diagonal entries.
diag([-1 7 2])
A
diag(A)
# for non-square matrices it still begins at the top left corner, stopping when it runs out of rows or columns.
E = []
B = [2 0 ; 0 -1 ; 1 0]
# composite matrix
comp = [eye(3) B; A zeros(2,2)]
# Matrices as tables
t=0:0.2:1;
freq=[sin(t)' sin(2*t)', sin(3*t)']
#
J = [1 2 3 4 ; 5 6 7 8 ; 11 13 18 10];
J(1,1)
J(2,3)
J(1:2, 4) %Rows 1-2, column 4
J(3,:) % Row 3, all columns
J(:,3) % Columns 3, all rows
size(J)
A = [3 0 4; 0 1 -1; 2 1 -3]
# determinant
det(A)
# eigenvectors
eig(A)
# inverse matrix
inv(A)
A*inv(A)
#
      A=[1 1;2 -3];
      b=[3 5]';
      inv(A)*b
      A*ans
# matrix division
A\b
#\ AX = B Octave command: A\B mathematical equivalent: A−1B left division (backslash)
# / XA = B Octave command: B/A mathematical equivalent: BA−1 right division (forward slash)
#
A=[1 1 1; 2 0 3 ; 3 1 4];
      b=[ 2 5 6]';
      x=A\b;
x
A*x
    rank(A)
      det(A)
# Matrices which are near-singular are an example of ill-conditioned matrices. Ill-conditioning плохо обусловленная матрица (квадратная матрица с большим значением показателя обусловленности (отношения наибольшего собственного значения к наименьшему), вследствие чего её трудно обращать). A problem is ill-conditioned if small changes in the data produce large changes in the results.
M=[1 1; 1 1.01]; b=[2; 2.01];
      x=M\b
M(1,2)=1.005;
      M
      x=M\b
# The sensitivity of a matrix is estimated using the condition number. The larger the condition number, the more sensitive the solution is to numerical errors.
cond(M)
# For a set of equations which can be written as Ax = b, the least-squares solution is given by the pseudoinverse
A=[2 -1; 1 1; 6 -1];
b = [2 5 -5]';
x = inv(A'*A)*A'*b
x=pinv(A)*b
x = A\b

#Eigenvectors and the Singular Value Decomposition
#eigenvalues
A=[1 3 -2 ; 3 5 1 ; -2 1 4];
    eig(A)
#eigenvectors
[V,D]=eig(A)
V*D*inv(V)
#Eigenvectors and eigenvalues can only be found for a square matrix, and thus the decomposition into UΛU−1 is only possible for these matrices.
# The Singular Value Decomposition (SVD) is a very useful technique, which provides a similar decomposition for any matrix.
A=[1 3 -2 3 ; 3 5 1 5 ; -2 1 4 2];
    svd(A)
[U,S,V] = svd(A,0)
U*S*V' % Check Answers
# Complex numbers
format long
z1 = 4-3i
z2 = 1 + 3*j

# Plot complex numbers
plot(z1,'*', z2,'*')
axis([-5 5 -5 5])

#
# open/close file
fopen profile1s.txt
fclose profile1s.txt
#
close all % Close all open figure windows
clc % Clear command window (shell)
    
# округление до ближайшего целого floor(x) / ceil(x)
A=[1 1 1; 2 0 3 ; 3 1 4];
b=[ 2 5 6]';
x=A\b;
x
floor(x) %rounds down these elements of a, so 0.5 gets rounded down to 0.
ceil(x) % the ceiling of x, gets values rounded up, so 0.5 is rounded up to 1.
A = rand(3)
ceil(A)
floor(A)
# The magic square: every column, row and diagonal sums the same.
A=magic(9)
sum(A,1) % sums up each column of A
sum(A,2) % sums up each row of A
        
# plot matrix
A=magic(13);
clf;
figure;
imagesc(A), colorbar, colormap jet;
        
        
############################ 2nd tutorial ##########
a = pi
format long
a
format short
a
format bank
a
b = 'hello world'
disp(b)
a = 3
a
a = 3;  % no echo
disp(sprintf('6 decimals: %o.6f', a))
# Vectors and matrices in Octave
#
% Elements in the same line are separated either by spaces or by commas ’,’.
% Lines are separated by semicolons ’;’.
% The matrix can be entered in the console as a whole, or line by line.
A = [1 2; 3 4; 5 6]
%
A = [1 2;
3 4;
5 6]
%
v = [1 2 3]
%
v = [1; 2; 3;]
%
v = ones (2,3)
%
C = 2* ones(2,3)
%
C = [2 2 2; 3 3 3]
%
v=1:6
%
w = zeros(1,3)
%
w = rand(1,3)
%
rand(3,3)
% creates a histogram of the given vector on-the-fly
hist(w)
% The number of bins in the histogram can be controlled through an additional attribute sent to the command hist(). Thus, ’hist(w,50)’ creates the histogram of the vector w with 50 bins
hist(w,50)
hist(w,70)
% ’eye(n)’ generates an n × n identity matrix (’eye’ reads approximately as the beginning of the word ’identity’.)
eye(4)
% call help
help eye
%
A = [1 2; 3 4; 5 6]
size(A)
sz = size(A)
size(sz)
%
load table1_Octave01.dat
% load table, converts all non-numeric values to 0
x = csvread('test.txt')
%
x = csvread('test.csv')
%
% textscan: results are stored in a cell array
fid = fopen('table1_Octave.txt');
x = textscan(fid,'%s %f %f %f %f','Delimiter',',') % %s stands for string, %f for float
C = textscan(fid,'%f')
fclose(fid);
%
run Octave02script.m
   
# loops
indices = 1:10
for i=indices,
disp(i);
end;
