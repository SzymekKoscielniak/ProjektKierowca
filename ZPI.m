clear;
clc;
clf;

DANE = importdata('dane.csv');

X =DANE(:,1);
Y =DANE(:,2);
Z =DANE(:,3);
r = 50;
w = waitforbuttonpress; 
figure(1);


th = 0:pi/50:2*pi;

xunit = r * cos(th) + X(1);
yunit = r * sin(th) + Y(1);

for i = 1:length(X)
    
    hold on;
    axis([-300 300 -300 300])
  plot(X(i),Y(i),'-o')
  
    pause(0.01);
    
  if w == 0
  set (X(i),Y(i),'b+','MarkerSize',15)
  continue;
  
  else
  continue;
  end
  
end

for j = 1:length(xunit)

    plot(xunit(j), yunit(j),'r-o','MarkerSize',4)
    hold on;
    pause(0.01);

end


plot(X(1),Y(1),'r+','MarkerSize',15)

plot(X(end),Y(end),'g+','MarkerSize',15)



