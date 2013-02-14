%% dataset: ds_train - ds_test
clear all; close all; clc;
 
ds = load('ds_reflectance.csv');
foo
N = size(ds, 1);
r = randperm(N);
 
ind = r(1:6000);
ds_train.X = ds(ind, 1:4)';
ds_train.y = ds(ind, 5:10)';
 
ind = r(6001:end);
ds_test.X = ds(ind, 1:4)';
ds_test.y = ds(ind, 5:10)';
%% dataset: ds_train - ds_test
ds = load('ds_reflectance.csv');
N = size(ds, 1);
r = randperm(N);
 
ind = r(1:6000);
ds_train.X = ds(ind, 1:4)';
ds_train.y = ds(ind, 5:10)';
 
ind = r(6001:end);
ds_test.X = ds(ind, 1:4)';
ds_test.y = ds(ind, 5:10)';
save('ds_train_test.mat', 'ds_train', 'ds_test');
