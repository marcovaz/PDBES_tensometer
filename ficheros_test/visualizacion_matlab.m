clc
clear

fid = fopen('korotkoff.txt');
y = fscanf(fid, '%f');
x=(1:120000)';
scrollplotdemo(x,y,10000)

figure;

fid = fopen('presion.txt');
y = fscanf(fid, '%f');
x=(1:120000)';
scrollplotdemo(x,y,10000)
