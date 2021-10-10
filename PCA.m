clc;
load fisheriris;
%�����Ļ�����
meas = meas';
X_average = mean(meas , 2);
%�����C
C = (( meas - X_average )*( meas - X_average )') * ( 1/150 );

[X,B] = eig(C);

Y =  X( : , 3 : 4 )' * ( meas - X_average ) ;

figure(1);
scatter(meas(1,:) ,meas(2,:) , 400 ,  categorical(species) ,'.');
figure(2);
scatter(Y(2,:) ,Y(1,:) , 400 ,  categorical(species) , '.');



