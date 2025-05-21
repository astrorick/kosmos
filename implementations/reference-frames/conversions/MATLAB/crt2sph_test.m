clear; clc; close all;

%% Data Setup %%

xArray = [0, 1, 0, 0, -1, 0, 0, 1];
yArray = [0, 0, 1, 0, 0, -1, 0, 1];
zArray = [0, 0, 0, 1, 0, 0, -1, 1];
crt = [xArray; yArray; zArray];

%% Function Call %%

sph = crt2sph(crt);

%% Print %%

fprintf("rho = %f %f %f %f %f %f %f %f\n", sph(1, :));
fprintf("theta = %f %f %f %f %f %f %f %f\n", rad2deg(sph(2, :)));
fprintf("phi = %f %f %f %f %f %f %f %f\n", rad2deg(sph(3, :)));
