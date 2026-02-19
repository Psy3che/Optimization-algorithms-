# Optimization-algorithms


**command windows**
>> %%
>> af3=@(x)x^3-x;
>> af(3)4
 af(3)4
      ↑
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other syntax error. To construct matrices, use brackets instead of
parentheses.
 
Did you mean:
>> af(3)4;
 af(3)4;
      ↑
Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other syntax error. To construct matrices, use brackets instead of
parentheses.
 
Did you mean:
>> af3(4);
>> af3(5)

ans =

   120

>> %%
>> af4=@(x,y)x+y-x.*y;
>> %%
af5=@(x)x(1)+x(2)-x(1)*x(2);
>> af4(2,-3)

ans =

     5

>> af5[2,-3]
 af5[2,-3]
    ↑
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched delimiters.
 
>> af5([2,-3])

ans =

     5

>> af4(2,-3)

ans =

     5

>> plot(3,2,'ro')
>> untitled
>> untitled
>> untitled
>> untitled
>> untitled
>> untitled
>> untitled
>> untitled2
>> untitled2
>> untitled2
>> x=[-1,1,2,4];
y=[2,1,3,0];
plot(x,y)
>> 
>> x=[-1,1,2,4];
>> y=[2,1,3,0];
>> plot(x,y)
>> untitled2
>> untitled2
>> untitled2
>> untitled2
>> untitled2
>> untitled2
>> untitled3
>> y=[2,1,3,0];
>> plot(x,y)
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> doc fminsearch
>> untitled3
>> untitled3
>> untitled3
>> untitled3
Error using  ^  (line 52)
Incorrect dimensions for raising a matrix to a power. Check that the matrix is square and the power is a
scalar. To operate on each element of the matrix individually, use POWER (.^) for elementwise power.

Error in untitled3>@(x)25*(sqrt(100+x^2+x.^2))+10*(20-x) (line 45)
cost=@(x) 25*(sqrt(100+x^2+x.^2))+10*(20-x);

Error in untitled3 (line 46)
y=cost(x);
 
>> untitled3
File: untitled3.m Line: 45 Column: 32
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for
mismatched delimiters.
 
>> untitled3
File: untitled3.m Line: 45 Column: 32
Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for
mismatched delimiters.
 
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> fmesh(f)
>> untitled3
>> untitled3
>> size
Error using size
Not enough input arguments.
 
>> size(x)

ans =

     1   100

>> size(xx)

ans =

   100   100

>> size(zz)

ans =

   100   100

>> untitled3
>> untitled3
>> untitled3
>> untitled3
>> 
>> untitled3
>> fun

fun =

  function_handle with value:

    @(x)2*x(1).*x(2)+2000./x(1)+2000./x(2)

>> untitled3
>> fval

fval =

  600.0000

>> xmin,fval

xmin =

   10.0000   10.0000


fval =

  600.0000

>> [xmin,fval]

ans =

   10.0000   10.0000  600.0000

>> untitled3
>> [xmin,fval]

ans =

   10.0000   10.0000  600.0000

>> 
