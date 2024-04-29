t=0:0.01:1;
T=0:0.01:2*pi;
figure
hold on
% ochi stanga
D0=0.7.*sin(T) +3.8;
D1=1.5.*cos(T) + 17.5;
D=[D0;D1;];
x1=D;
% ochi dreapta
d0=0.7.*sin(T) +8;
d1=1.5.*cos(T) + 17.5;
d=[d0;d1;];
x2=d;

% sclipire mare ochi stanga 
Ss0=0.3.*sin(T) +3.55;
Ss1=0.5.*cos(T) + 17.85;
Ss=[Ss0;Ss1;];
ss1=Ss;
% sclipire mica ochi stanga 
Sms0=0.2.*sin(T) +4.05;
Sms1=0.3.*cos(T) + 17.4;
Sms=[Sms0;Sms1];
ss2=Sms;
% sclipire mare ochi dreapta
Sd0=0.3.*sin(T) +7.8;
Sd1=0.5.*cos(T) + 17.85;
Sd=[Sd0;Sd1;];
sd1=Sd;
% sclipire mica ochi dreapta
Smd0=0.2.*sin(T) +8.4;
Smd1=0.3.*cos(T) + 17.4;
Smd=[Smd0;Smd1;];
sd2=Smd;

%narile
G0=0.4.*sin(T) +3.55;
G1=0.5*cos(T) + 11.25;
G=[G0;G1;];
x3=G;
g0=0.4.*sin(T) +8.11;
g1=0.5.*cos(T) + 11.25;
gn=[g0;g1;];
x4=gn;

%gura g2
b0=[5;8];
b1=[6.5;7.5];
b2=[8;9.2];
b=[b0 b1 b2];
Bezier_grad_2(t,[b0 b1 b2])
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b2(1),b2(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%corn stanga  cu G1
b0=[3.72;24.01];
b1=[3;27];
b2=[4;28.5];
b3=[4.3;28.5];
b4=[4.4;27];
b5=[4.62;26.185];
b6=[5;25.79];
b7=b5;
b8=b6;
b=[b0 b1 b2 b3 b4 b5 b6 b7 b8 ];
Spline_clasa_G1(t,[b0 b1 b2 b3 b4 b5 b6 b7 b8 ])
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b8(1),b8(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)

%corn dreapta cu G1
b0=[6.5;25.75];
b1=[7;26.185];
b2=[7.2;27];
b3=[7.4;28.7];
b4=[7.5;28.5];
b5=[9;24];
b6=[8.02;23.78];
b7=b5;
b8=b6;
b=[b0 b1 b2 b3 b4 b5 b6 b7 b8];
Spline_clasa_G1(t,[b0 b1 b2 b3 b4 b5 b6 b7 b8])
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b6(1),b6(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)


%ureche stanga grad 4
b0=[2.71;20.98];
b1=[1.2;21.2];
b2=[-1;26];
b3=[3.1;25.1];
b4=[3.65;23.88];
b=[b0 b1 b2 b3 b4 ];
Bezier_grad_4(t,[b0 b1 b2 b3 b4 ])
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b4(1),b4(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%urechea interna stanga grad 4
b0=[2.79;21.44];
b1=[1.6;21.86];
b2=[0;25];
b3=[3.1;24.1];
b4=[3.46;23.29];
b=[b0 b1 b2 b3 b4 ];
Bezier_grad_4(t,[b0 b1 b2 b3 b4 ])
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b4(1),b4(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)

%ureche mare dreapta grad 4
b0=[8.02;23.78];
b1=[9.08;25.1];
b2=[12.45;26.3];
b3=[11.18;21.2];
b4=[8.99;20.86];
b=[b0 b1 b2 b3 b4];
Bezier_grad_4(t,[b0 b1 b2 b3 b4])
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b4(1),b4(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%ureche interna dreapta grad 4
b0=[8.31;23.30];
b1=[9.3;24.2];
b2=[11.3;25];
b3=[10.8;22];
b4=[8.88;21.38];
b=[b0 b1 b2 b3 b4];
Bezier_grad_4(t,[b0 b1 b2 b3 b4])
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b4(1),b4(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)


%capul cu spline cubica G1
b0 = [1.83;10.86];
b1 = [1.65;13];
b2=[2.7;20.95];
b3=[3.05;22.8];
b4=[3.8;24.2];
b5 = [4.35;25.4];
b6=[5.2;26];
b7 = [6;26.3];
b8=[6.5;25.75];
b9=[7.6;25];
b10 = [8.5;23];
b11= [9.1;21.19];
b12=[10;13];
b13 = [10.15;11];
b14 = [10.15;11];
b15=b14;
b=[b0 b1 b2  b3  b4 b5  b6 b7 b8 b9  b10 b11 b12 b13 b14 b15];
Spline_clasa_G1(t,[b0 b1 b2  b3  b4 b5  b6 b7 b8 b9  b10 b11 b12 b13 b14 b15])
plot(b0(1),b0(2),'or-',MarkerFaceColor='r',LineWidth=0.1,MarkerSize=4)
plot(b14(1),b14(2),'or-',MarkerFaceColor='r',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'or-',LineWidth=0.1,MarkerSize=4)

%bot cu spline cubica G0
e0=[6.2;15.5];
e1=[4.5;15.5];
e2=[2.5;15];
e3=[1.83;10.86];
e4=[2.2;6.5];
e5=[4;6];
e61=[5.61;6.2];
e62=[6.04;6.1];
e6=[6.4;6.05];
e63=[6.84;6.2];
e7=[8.5;6.5];
e8=[10;6.9];
e9=[10.15;11];
e10=[9.5;14.7];
e11=[8.1;15.4];
e12=e0;
e13=e12;
e=[e0 e1 e2 e3 e4 e5 e61 e62 e6  e63 e7 e8 e9 e10 e11 e12 e13];
Spline_cubica_G0(t,[e0 e1 e2 e3 e4 e5 e61 e62 e6  e63 e7 e8 e9 e10 e11 e12 e13])
plot(e0(1),e0(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=4)
plot(e(1,:),e(2,:),'om-',LineWidth=0.1,MarkerSize=4)

%corp 1 cu G0
b0=[9.28;18.47];
b1=[12;18.3];
b2=[21.5;18.5];
b3=[22;10];
b4=[22.7;6];
b5=[22.5;1];
b6=[22;-9.5];
b7=b6;
b=[b0 b1 b2 b3 b4 b5 b6 b7];
Spline_cubica_G0(t,[b0 b1 b2 b3 b4 b5 b6 b7])
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b7(1),b7(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%picioare
j0=[22;-9.5];
j1=[20.5;-9.5];
j2=[19.5;-5];
j3=[11;-5];
j4=[10.5;-9.5];
j5=[9;-9.5];
j6=[8.5;-5];
j7=[6.5;-5];
j8=[6;-9.5];
j9=[4.5;-9.5];
j=[j0 j1 j2 j3 j4 j5 j6 j7 j8 j9];
j01=[18.87;-6.7];
j11=[18.5;-9.5];
j12=[17;-9.5];
j13=[16.5;-5];
jj=[j01 j11 j12 j13];
plot(j(1,:), j(2,:),'ok-',jj(1,:), jj(2,:),'ok-',LineWidth=1);
plot(j0(1),j0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=3)
plot(j9(1),j9(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=3)
plot(j01(1),j01(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=3)
plot(j13(1),j13(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=3)

%corp 2 G0
b0=[4.5;-9.5];
b1=[4.3;-7];
b2=[4;-3];
b3=[3.9;2];
b4=[3.91;6.18];
b5=b4;
b6=b5;
b7=b6;
b=[b0 b1 b2 b3 b4 b5 b6 b7];
Spline_cubica_G0(t,[b0 b1 b2 b3 b4 b5 b6 b7])
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b4(1),b4(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%uger gr2
b0=[17.5;-5];
b1=[18.5;-7.5];
b2=[19.8;-6.35];
b=[b0 b1 b2];
Bezier_grad_2(t,[b0 b1 b2])
plot(b0(1),b0(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=4)
plot(b2(1),b2(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'om-',LineWidth=0.1,MarkerSize=4)

%gr 3
b0=[18.28;-6.35];
b1=[18.3;-7];
b2=[18.4;-9];
b3=[18.66;-6.63];
b=[b0 b1 b2 b3 ];
Bezier_grad_3(t,[b0 b1 b2 b3 ])
plot(b0(1),b0(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=2)
plot(b3(1),b3(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=2)
plot(b(1,:),b(2,:),'om-',LineWidth=0.1,MarkerSize=4)

%gr 3
b0=[19.19;-6.69];
b1=[19.3;-7];
b2=[19.4;-9];
b3=[19.64;-6.47];
b=[b0 b1 b2 b3 ];
Bezier_grad_3(t,[b0 b1 b2 b3])
plot(b0(1),b0(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=2)
plot(b3(1),b3(2),'om-',MarkerFaceColor='m',LineWidth=0.1,MarkerSize=2)
plot(b(1,:),b(2,:),'om-',LineWidth=0.1,MarkerSize=4)

%coada gr 2
b0=[21.30;13.08];
b1=[23;13.3];
b2=[23.5;15.5];
b=[b0 b1 b2];
Bezier_grad_2(t,[b0 b1 b2])
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b2(1),b2(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)

%deal grad 2
b0=[-2;-3];
b1=[1;-2.3];
b2=[3.99;-2.5];
b=[b0 b1 b2];
Bezier_grad_2(t,[b0 b1 b2])
plot(b0(1),b0(2),'og-',MarkerFaceColor='g',LineWidth=0.1,MarkerSize=4)
plot(b2(1),b2(2),'og-',MarkerFaceColor='g',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'og-',LineWidth=0.1,MarkerSize=4)

%deal grad 3
b0=[22.28;-2.5;];
b1=[32;0];
b2=[40;-6];
b3=[47;-2];
b=[b0 b1 b2 b3];
Bezier_grad_3(t,[b0 b1 b2 b3])
plot(b0(1),b0(2),'og-',MarkerFaceColor='g',LineWidth=0.1,MarkerSize=2)
plot(b3(1),b3(2),'og-',MarkerFaceColor='g',LineWidth=0.1,MarkerSize=2)
plot(b(1,:),b(2,:),'og-',LineWidth=0.1,MarkerSize=4)


%copac
%latura g2
b0=[39.2;-3.31];
b1=[37;2.5];
b2=[37.6;8];
b=[b0 b1 b2];
Bezier_grad_2(t,[b0 b1 b2])  
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b2(1),b2(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%latura Casteljiau
x=0:.01:1;
b0=[31;-2.13];
b1=[33.5;2.9];
b2=[33;2.5];
b3=[33;8];
b=[b0 b1 b2 b3];
Casteljiau(t,[b0 b1 b2 b3])
plot(b0(1),b0(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b2(1),b2(2),'ok-',MarkerFaceColor='k',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ok-',LineWidth=0.1,MarkerSize=4)

%coroana copac G1
b0=[33;6.92];
b1=[31.8;7];
b2=[29.5;10];
b3=[28;13];
b4=[28;15];
b5=[27;16];
b6=[28;25];
b7=[27;28];
b8=[29;30];
b9=[31;33];
b10=[31;33.1];
b11=[31;34];
b12=[34;36];
b13=[35;38];
b14=[38;37];
b15=[42.5;32];
b16=[43;28];
b17=[43.5;18];
b18=[43;15];
b19=[42;13];
b20=[41;10];
b21=[40;8];
b22=[38;7];
b23=[37.47;6];
b24=b23;
b25=b24;
b=[b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25];
Spline_clasa_G1(t,[b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25])
plot(b0(1),b0(2),'og-',MarkerFaceColor='g',LineWidth=0.1,MarkerSize=4)
plot(b23(1),b23(2),'og-',MarkerFaceColor='g',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'og-',LineWidth=0.1,MarkerSize=4)

%nor stanga
b0=[0.8;34.4];
b1=[-1;35];
b2=[2;39];
b3=[5.5;40];
b4=[7;43];
b5=[10;42];
b6=[11;45];%varful
b66=[11.46;45.5];
b7=[13;45.5];
b77=[14.45;43.5];
b8=[17;44];
b9=[17.8;40.5];
b99=[21;39];
b10=[24;34.4];
b11=[23;34.4];
b12=[12;34.4];
b13=[20;34.4];
b14=[12;34.4];
b15=[0.8;34.4];
b16=b15;
b17=b16;
b18=b17;
b=[b0 b1 b2 b3 b4 b5 b6 b66 b7 b77 b8 b9 b99 b10 b11 b12 b13 b14 b15 b16 b17 b18 ];
Spline_clasa_G1(t,[b0 b1 b2 b3 b4 b5 b6 b66 b7 b77 b8 b9 b99 b10 b11 b12 b13 b14 b15 b16 b17 b18 ])
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b15(1),b15(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)

%nor dreapta
b0=[25.8;42.4];
b1=[24;43];
b2=[27;47];
b3=[30.5;48];
b4=[32;51];
b5=[35;50];
b6=[36;53];%varful
b7=[36.46;53.5];
b8=[38;53.5];
b9=[39.45;53.5];
b10=[42;52];
b11=[42.8;48.5];
b12=[46;47];
b13=[49;42.4];
b14=[48;42.4];
b15=[37;42.4];
b16=[45;42.4];
b17=[37;42.4];
b18=[25.8;42.4];
b19=b18;
b20=b19;
b=[b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 ];
Spline_clasa_G1(t,[b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 ])
%plot(b(1,:),b(2,:),'m*-')
plot(b0(1),b0(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b18(1),b18(2),'ob-',MarkerFaceColor='b',LineWidth=0.1,MarkerSize=4)
plot(b(1,:),b(2,:),'ob-',LineWidth=0.1,MarkerSize=4)



grid on
fill(x1(1,:),x1(2,:),'k',x2(1,:),x2(2,:),'k')
fill(ss1(1,:),ss1(2,:),'w',ss2(1,:),ss2(2,:),'w')
fill(sd1(1,:),sd1(2,:),'w',sd2(1,:),sd2(2,:),'w')
plot(x3(1,:),x3(2,:),'k',x4(1,:),x4(2,:),'k')%narile




axis manual
xlim([-10 55])
ylim([-30 65])
hold off