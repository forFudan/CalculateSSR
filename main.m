% Purpose:
%   Main script of the Exam Principles in Programming in Econometrics.
%   It consists of 5 sub-programs under path /program.
%   It consists of several functions under path /include.
%
% Date:
%   30 Oct. 2013
%
% Author:
%   Junze Sun and Yuhao Zhu

% Initializing the program
clear;
clc;
addpath('include\');
addpath('data');
addpath('program');

% Magic numbers
iY1=25;   %Year 1953 Season 1 is row 25
iY2=200;  %Year 1996 season 4 is row 200
iN=iY2-iY1+1;   %number of observations
vThetaZero=[0,0,0];

% Program 1: Load data
disp('Program 1: Read the data, and prepares c and X.');
[vC, mX]=LoadData('consumption.data', iY1, iY2, iN);

% Program 2: Average SSR for theta=[0, 0, 0]
disp('Program 2: Computes the average SSR for theta = [0; 0; 0].');
dSSR=AverageSSR(mX, vC, vThetaZero, iN);

% Program 3: Optimizes SSR function
disp('Program 3: Optimizes SSR function using fminsearch.');
OptSSR(mX, vC, iN);

% Program 4: Optimizes SSR function under restriction
disp('Program 4: Restrict rho and optimize with fminsearch.');
OptWithRes(mX, vC, iN);

% Program 5: Own alternatives
disp('Program 5: Own alternatives for fminsearch.');
Alternative1(mX, vC, iN);
Alternative2(mX, vC, iN);
