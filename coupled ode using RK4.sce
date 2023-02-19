//date : 2/12/21
//Aim : To solve a system of coupled first order lineardifferential equations using RK_4th order method
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
x=0:0.1:9
n=length(x)
//R_K 4th order 
exec('C:\Users\MANIDIPA BANERJEE\Desktop\SEM III MP LAB\second order ODE\R_K 4th order for second order .sci', -1)
sol_RK4=RKfourth(x0,y1,x,f,h)
//disp("solutions : ",sol_RK4')
plot(x,sol_RK4(1,:),'k')
plot(x,sol_RK4(2,:))

//Inbuilt command 
y_new=[2;0]
sol=ode(y_new,x0,x,f)
disp("two solutions : ","y1          y2",sol')
plot(x,sol(1,:),'*y')
plot(x,sol(2,:),'*r')
title("Plotting of First order Coupled linear differential equation")
title color Red
title fontsize 4
xlabel("X ---->")
xlabel color magenta fontsize 4
ylabel("f(X)_1 , f(X)_2 ----->")
ylabel color magenta fontsize 4
legend(["By RK 4 method_y1";"By RK 4 method_y2";"By inbuilt ODE_y1";"By inbuilt ODE_y2"])

