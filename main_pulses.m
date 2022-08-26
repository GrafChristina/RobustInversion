clear
clc

%%% Robust Inversion Pulses with different optimization aims
% See
% C. Graf, M. Soellradl, C.S. Aigner, A. Rund, R. Stollberger
% Advanced design of MRI inversion pulses for inhomogeneous field
% conditions by optimal control
% NMR in Biomedicine. 2022;e4790
% doi: 10.1002/nbm.4790
%%%


tau = 0.01; % time step length in ms
%%
%%% 1 \Delta B_0 and B_1^+ robust inversion pulse
load('optim.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0, 3.3], 'XTick', [0 1 2 3])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('optim')
grid on

%%
%%% 2 long hyperbolic secant pulse HS1
load('HS1.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0, 15.5], 'XTick', [0 5 10 15])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('HS1')
grid on


%%
%%% 3 short hyperbolic secant pulse HS2
load('HS2.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0, 3.3], 'XTick', [0 1 2 3])
set(gca, 'YLim', [-26 26], 'YTick', [-25 -12 0 12 25])
title('HS2')
grid on


%% 
%%% 4 optimized RF pulses that neglected relaxation effects during
%%% optimization
load('optim_norelax.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0, 4.2], 'XTick', [0 1 2 3 4])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('RF optimized without relaxation')
grid on

%%
%%% 5 optimized RF pulse with a decreased amplitude of 12 \mu T
load('optim_lowB1.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0,10], 'XTick', [0 2 4 6 8])
set(gca, 'YLim', [-13 13], 'YTick', [-12 -6 0 6 12])
title('optim low B_1^+')
grid on

%%
%%% 6 non-robust inversion pulse
load('optim_nonrobust.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0,0.6], 'XTick', [0 0.2 0.4 0.6])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('optim non-robust')
grid on


%%
%%% 7 optimized B_1^+ robust inversion pulse
load('optim_B1robust.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0,1.6], 'XTick', [0 0.5 1 1.5])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('optim B_1^+')
grid on


%%
%%% 8 optimized \Delta B_0 robust inversion pulse
load('optim_B0robust.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0,1.6], 'XTick', [0 0.5 1 1.5])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('optim \DeltaB_0')
grid on



%%
%%% 9 optimized B_1^+ robust inversion pulse with a shift to 3.4ppm
load('optim_B1robust_shift.mat')
figure
plot((0:tau:(length(u)-1)*tau), u*10^3, 'LineWidth', 3)
hold on
plot((0:tau:(length(u)-1)*tau), v*10^3, 'LineWidth', 3)
plot((0:tau:(length(u)-1)*tau), sqrt(u.^2+v.^2)*10^3, 'LineWidth', 3)
ax = gca;
set(gca, 'FontSize', 35)
legend('Re(RF)','Im(RF)','abs(RF)')
xlabel('time in ms')
ylabel('RF in \mu T')
set(gca, 'XLim',[0,1.6], 'XTick', [0 0.5 1 1.5])
set(gca, 'YLim', [-21 21], 'YTick', [-20 -10 0 10 20])
title('optim B_1^+ shift')
grid on