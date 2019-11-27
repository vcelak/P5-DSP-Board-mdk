

clear all; clc;
format shorteng;


PI = 3.1415926;
F_S = 48828.0;
F_OUT = 1000.0;

mySinVal = 0; % float
sample_dt = 0; % float
sample_N = 0; % uint16
i_t = 0; % uint16
myDacVal = 0; % uint32
dataI2S = zeros(1,100); % uint16

right_ch = zeros(1,50);


sample_dt = F_OUT/F_S;
sample_N = F_S/F_OUT;


for i=0:sample_N
    mySinVal = sin(i*2*PI*sample_dt);
    dataI2S(i*2+1) = (mySinVal )*8000;  
    dataI2S(i*2 + 2) = (mySinVal )*8000;
    right_ch(i+1) = mySinVal*8000;
end


pd = right_ch(1:50)


length(pd)

plot(pd)

x = [pd, pd, pd, pd];
x = [x, x, x, x, x, x];

x = x(1:512);

X = fft(x);

stem(  10*log10( abs(X(1:256)))  )

%%

clear all; clc;
format shorteng;

x = [0.000000 ,0.038594 ,0.077131 ,0.115553 ,0.153803 ,0.191824 ,0.229558 ,0.266951 ,0.303946 ,0.340488 ,0.376523 ,0.411996 ,0.446856 ,0.481050 ,0.514527 ,0.547237 ,0.579132 ,0.610164 ,0.640287 ,0.669456 ,0.697627 ,0.724758 ,0.750810 ,0.775743 ,0.799520 ,0.822106 ,0.843466 ,0.863570 ,0.882387 ,0.899889 ,0.916051 ,0.930847 ,0.944256 ,0.956258 ,0.966836 ,0.975972 ,0.983655 ,0.989871 ,0.994613 ,0.997873 ,0.999645 ,0.999928 ,0.998722 ,0.996027 ,0.991847 ,0.986190 ,0.979064 ,0.970478 ,0.960447 ,0.948984 ,0.936107 ,0.921835 ,0.906190 ,0.889194 ,0.870874 ,0.851256 ,0.830369 ,0.808245 ,0.784916 ,0.760419 ,0.734787 ,0.708062 ,0.680281 ,0.651486 ,0.621721 ,0.591029 ,0.559456 ,0.527050 ,0.493859 ,0.459931 ,0.425318 ,0.390072 ,0.354244 ,0.317888 ,0.281059 ,0.243811 ,0.206200 ,0.168281 ,0.130112 ,0.091748 ,0.053249 ,0.014669 ,-0.023932 ,-0.062497 ,-0.100970 ,-0.139292 ,-0.177406 ,-0.215256 ,-0.252786 ,-0.289938 ,-0.326659 ,-0.362892 ,-0.398586 ,-0.433685 ,-0.468138 ,-0.501893 ,-0.534901 ,-0.567111 ,-0.598476 ,-0.628950 ,-0.658487 ,-0.687042 ,-0.714573 ,-0.741040 ,-0.766402 ,-0.790623 ,-0.813666 ,-0.835496 ,-0.856080 ,-0.875390 ,-0.893395 ,-0.910069 ,-0.925386 ,-0.939325 ,-0.951864 ,-0.962985 ,-0.972671 ,-0.980907 ,-0.987682 ,-0.992985 ,-0.996809 ,-0.999147 ,-0.999996 ,-0.999356 ,-0.997226 ,-0.993610 ,-0.988514 ,-0.981944 ,-0.973912 ,-0.964428 ,-0.953507 ,-0.941166 ,-0.927422 ,-0.912296 ,-0.895810 ,-0.877990 ,-0.858862 ,-0.838454 ,-0.816796 ,-0.793921 ,-0.769863 ,-0.744659 ,-0.718344 ,-0.690959 ,-0.662545 ,-0.633143 ,-0.602798 ,-0.571555 ,-0.539460 ,-0.506561 ,-0.472907 ,-0.438549 ,-0.403537 ,-0.367924 ,-0.331763 ,-0.295107 ,-0.258012 ,-0.220531 ,-0.182723 ,-0.144642 ,-0.106346 ,-0.067891];
x = [4000 ,4348 ,4694 ,5035 ,5367 ,5690 ,5999 ,6293 ,6570 ,6827 ,7063 ,7276 ,7463 ,7624 ,7758 ,7863 ,7938 ,7984 ,8000 ,7984 ,7939 ,7864 ,7759 ,7626 ,7465 ,7277 ,7065 ,6830 ,6572 ,6296 ,6002 ,5692 ,5370 ,5038 ,4697 ,4351 ,4003 ,3654 ,3308 ,2967 ,2635 ,2312 ,2003 ,1708 ,1431 ,1174 ,938 ,725 ,537 ,376 ,242 ,137 ,61 ,15 ,0 ,14 ,59 ,135 ,239 ,372 ,533 ,720 ,932 ,1167 ,1424 ,1701 ,1995 ,2304 ,2626 ,2959 ,3299 ,3645];

n = length(x)

dt = [x, x, x, x];

plot(dt(1:n))

%%
k = 256;

dt = [dt, dt, dt, dt, dt, dt, dt, dt, dt, dt, dt];

dt = dt(1:k);
% plot(dt)
w = hamming(k);
dt = dt.*w;

X = abs(fft(dt));
X = X(1:(k/2));
stem(  10*log10(X) );






