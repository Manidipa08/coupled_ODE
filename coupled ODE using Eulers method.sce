//date : 2/12/21
//Aim :To solve a system of coupled first order linear differential equations using Euler's method
clc
clear
function dy = f(x,y)
    dy(1)=sin(x)-y(2)
    dy(2)=cos(x)-y(1)
endfunction
x0=0
y0=[2;0]
y1=y0
h=0.1
x=0:0.1:10
n=length(x)
//Eulers method
for i=1:n-1
    y=y0+h*f(x(i),y0)
    y0=y
    y1=[y1 y0]
end
plot(x,y1(1,:))
plot(x,y1(2,:),'*m')

//Inbuilt command 
y_new=[2;0]
sol=ode(y_new,x0,x,f)
disp("two solutions : ","y1          y2",sol')
plot(x,sol(1,:),'-*g')
plot(x,sol(2,:),'-*k')
title("Plotting of First order Coupled linear differential equation")
title color Red
title fontsize 4
xlabel("X ---->")
xlabel color magenta fontsize 4
ylabel("f(X)_1 , f(X)_2 ----->")
ylabel color magenta fontsize 4
legend(["By Eulers method_y1";"By Eulers method_y2";"By inbuilt ODE_y1";"By inbuilt ODE_y2"])
