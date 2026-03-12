% load and plot the data

data=load('pontok200.txt');

figure; plot3(data(:,1),data(:,2),data(:,3),'r*')
title('Data points')

%%
% scaling   % standardization of data 

data_orig=data; %save the original data
scaling = true;
if scaling == true
    means=mean(data(:,1:2));    % row vector: 1x2, means of columns
    stds=std(data(:,1:2));  % row vector, standard deviations of x and y
    data(:,1:2)=(data(:,1:2)-means)./stds;
end

%%
% the model
% define the p function with 3 inputs: w (a vector), x, y
% output: z

function z=pfun(w,x,y)
    z=w(1)+w(2)*x+w(3)*y;
end
    
%%
% the objective function
% mean squared difference, 
% inputs: w (a vector), d (for data: array: m x 3) 

function obj = Ffun(w,d)
    obj=mean((pfun(w,d(:,1),d(:,2))-d(:,3)).^2);
end  

%%
% the gradient
% define the function which gives the gradient vector for inputs w 
% and d as an array 

function gv = gradF(w,d)
    fact=2*(pfun(w,d(:,1),d(:,2))-d(:,3));
    g1=fact;
    g2=fact.*d(:,1);      % *x
    g3=fact.*d(:,2);      % *y
    gv=[mean(g1);mean(g2);mean(g3)];    % column vector
end
  

%%
% backtracking function from last week  
% set a default value for c and rho with an arguments block:

function alpha = backtrack(fun,x,gfun,p,alpha,c,rho)
    arguments
        fun, x, gfun, p, alpha
        c=1e-4
        rho=0.5
    end
    while fun(x+alpha*p) > fun(x) + alpha*c*dot(gfun(x),p)
        alpha = alpha*rho;
    end
end

%%
% gradient with backtracking
% from gradient descent code
% outputs: x0, number of steps

function [x0,n,fvals]=graddesc(fun,gfun,x0,tol,maxit)
    arguments 
        fun,gfun,x0
        tol=1e-3
        maxit=5000
    end
    n=0;
    fvals=fun(x0);
    while norm(gfun(x0)) > tol && n< maxit
        alpha = backtrack(fun,x0,gfun,-gfun(x0),0.4);
        x0=x0-alpha*gfun(x0);
        n = n+1;
        fvals=[fvals,fun(x0)];
    end
end

%%
% gradient with optimal step length (exercise 3 in Task1)
% similar as above but alpha doesn't come from backtracking

% function [x0,n]=graddesc2...(ATA)


%%
% let's define the objective function and its gradient as univariate 
% anonymous functions for the gradient descent 

fun_1=@(w) Ffun(w,data);
fun_1_g=@(w) gradF(w,data);

%%
% apply the optimization, initial point: [0.1;-1.0;0.1]

[wopt,n,fvals]=graddesc(fun_1,fun_1_g,[0.1;-1.0;0.1]);

% display the results: 

disp(['the parameters: [',num2str(wopt'), ']' newline 'number of steps: ',num2str(n)])

%%
% plot the model

figure;
xx=linspace(0,30);
yy=linspace(0,200);
[X,Y]=meshgrid(xx,yy);

if scaling == true
    % we have to apply the same transformation for the grid points
    % before predicting the Z value
    mesh(X,Y,pfun(wopt,(X-means(1))/stds(1),(Y-means(2))/stds(2)))
else
    mesh(X,Y,pfun(wopt,X,Y))
end
hold on; plot3(data_orig(:,1),data_orig(:,2),data_orig(:,3),'r*')


%%
% additional output: in gradient descent, use an extra output parameter: 
% fvals. It's initial value should be fun(x0), then attach in every step
% the new value to obtain a row vector

% plot these values 

figure;plot(fvals)
xlabel('iterations')
ylabel('Objective function vals')
