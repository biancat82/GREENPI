%% DATA
bambu_rosso = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/bambu_rosso");
potus_rosso = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/potus_rosso");
control_rosso = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/controllo_rosso");
bambu_blu = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/bambu_blu");
potus_blu = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/potus_blu");
control_blu = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/controllo_blu");
bambu_verde = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/bambu_verde");
potus_verde = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/potus_verde");
control_verde = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/controllo_verde");

bambu_blu2 = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/bambu_blu_02");
potus_blu2 = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/potus_blu_02");
ficus_blu2 = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/ficus_blu_02");
control_blu2 = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/Data/controllo_blu_02");

time_bambu_rosso = time_converter(bambu_rosso.Time);
time_potus_rosso = time_converter(potus_rosso.Time);
time_control_rosso = time_converter(control_rosso.Time);
time_bambu_blu= time_converter(bambu_blu.Time);
time_potus_blu = time_converter(potus_blu.Time);
time_control_blu = time_converter(control_blu.Time);
time_bambu_verde= time_converter(bambu_verde.Time);
time_potus_verde = time_converter(potus_verde.Time);
time_control_verde = time_converter(control_verde.Time);

time_bambu_blu2 = time_converter(bambu_blu2.Time);
time_potus_blu2 = time_converter(potus_blu2.Time);
time_ficus_blu2 = time_converter(ficus_blu2.Time);
time_control_blu2 = time_converter(control_blu2.Time);

%% RED LED
figure
tiledlayout(2,1)
ax1 = nexttile;
plot(time_bambu_rosso,bambu_rosso.Humidity,'LineWidth',2)
hold on
plot(time_potus_rosso,potus_rosso.Humidity,'LineWidth',2)
plot(time_control_rosso,control_rosso.Humidity,'LineWidth',2)
legend('bambu','potus','control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Red LED: Humidity','FontSize',24)
grid on;
ha = gca;
set(ha,'FontSize',18)
ax2 = nexttile;
plot(time_bambu_rosso,bambu_rosso.Temperature,'LineWidth',2)
hold on
plot(time_potus_rosso,potus_rosso.Temperature,'LineWidth',2)
plot(time_control_rosso,control_rosso.Temperature,'LineWidth',2)
legend('bambu','potus','control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Temperature [°C]','FontSize',18)
title('Red LED: Temperature','FontSize',24)
grid on;
ha = gca;
set(ha,'FontSize',18)
linkaxes([ax1 ax2],'x')

%% BLUE LED
figure
tiledlayout(2,1)
ax1 = nexttile;
plot(time_bambu_blu,bambu_blu.Humidity,'LineWidth',2)
hold on
plot(time_potus_blu,potus_blu.Humidity,'LineWidth',2)
plot(time_control_blu,control_blu.Humidity,'LineWidth',2)
plot(time_ficus_blu2,ficus_blu2.Humidity,'LineWidth',2)
plot(time_bambu_blu2,bambu_blu2.Humidity,'LineWidth',2, 'Color', [0 0.4470 0.7410])
plot(time_potus_blu2,potus_blu2.Humidity,'LineWidth',2 , 'Color', [0.8500 0.3250 0.0980])
plot(time_control_blu2,control_blu2.Humidity,'LineWidth',2, 'Color', [0.9290 0.6940 0.1250])
legend('bambu','potus','control','ficus','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Blue LED: Humidity','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)
ax2 = nexttile;
plot(time_bambu_blu,bambu_blu.Temperature,'LineWidth',2)
hold on
plot(time_potus_blu,potus_blu.Temperature,'LineWidth',2)
plot(time_control_blu,control_blu.Temperature,'LineWidth',2)
plot(time_ficus_blu2,ficus_blu2.Temperature,'LineWidth',2)
plot(time_bambu_blu2,bambu_blu2.Temperature,'LineWidth',2, 'Color', [0 0.4470 0.7410])
plot(time_potus_blu2,potus_blu2.Temperature,'LineWidth',2, 'Color', [0.8500 0.3250 0.0980])
plot(time_control_blu2,control_blu2.Temperature,'LineWidth',2, 'Color', [0.9290 0.6940 0.1250])
legend('bambu','potus','control','ficus','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Temperature [°C]','FontSize',18)
title('Blue LED: Temperature','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)
linkaxes([ax1 ax2],'x')

%% GREEN LED
figure
tiledlayout(2,1)
ax1 = nexttile;
plot(time_bambu_verde,bambu_verde.Humidity,'LineWidth',2)
hold on
plot(time_potus_verde,potus_verde.Humidity,'LineWidth',2)
plot(time_control_verde,control_verde.Humidity,'LineWidth',2)
legend('bambu','potus','control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Green LED: Humidity','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)

ax2 = nexttile;
plot(time_bambu_verde,bambu_verde.Temperature,'LineWidth',2)
hold on
plot(time_potus_verde,potus_verde.Temperature,'LineWidth',2)
plot(time_control_verde,control_verde.Temperature,'LineWidth',2)
legend('bambu','potus','control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Temperature [°C]','FontSize',18)
title('Green LED: Temperature','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)
linkaxes([ax1 ax2],'x')

%% BAMBU ALL LEDS
figure
plot(time_bambu_blu,bambu_blu.Humidity,'LineWidth',2)
hold on
plot(time_bambu_rosso,bambu_rosso.Humidity,'LineWidth',2)
plot(time_bambu_verde,bambu_verde.Humidity,'LineWidth',2,'Color',[0.4660 0.6740 0.1880])
plot(time_bambu_blu2,bambu_blu2.Humidity,'LineWidth',2)
plot(time_control_blu,control_blu.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
plot(time_control_rosso,control_rosso.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
plot(time_control_verde,control_verde.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
plot(time_control_blu2,control_blu2.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
legend('Blue LED','Red LED','Green LED', 'Blue LED 2nd','Control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Bambu: Humidity','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)

%% BAMBU BLU
figure
plot(time_bambu_blu,bambu_blu.Humidity,'LineWidth',2)
hold on
plot(time_control_blu,control_blu.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
legend('Blue LED','Control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Bambu: Humidity with blue LED','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)

%% POTUS ALL LEDS
figure
plot(time_potus_blu,potus_blu.Humidity,'LineWidth',2)
hold on
plot(time_potus_rosso,potus_rosso.Humidity,'LineWidth',2)
plot(time_potus_verde,potus_verde.Humidity,'LineWidth',2,'Color',[0.4660 0.6740 0.1880])
plot(time_potus_blu2,potus_blu2.Humidity,'LineWidth',2)
plot(time_control_rosso,control_rosso.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
plot(time_control_blu,control_blu.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
plot(time_control_verde,control_verde.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
plot(time_control_blu2,control_blu2.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
legend('Blue LED','Red LED','Green LED', 'Blue LED 2nd','Control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Potus: Humidity','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)


%% FICUS ALL LEDS
figure
plot(time_ficus_blu2,ficus_blu2.Humidity,'LineWidth',2)
hold on
plot(time_control_blu2,control_blu2.Humidity,'LineWidth',2,'Color',[0.9290 0.6940 0.1250])
legend('Blue LED','Control','FontSize',18,'Location','southwest')
xlabel('time [calendar]','FontSize',18)
ylabel('Humidity [%]','FontSize',18)
title('Ficus: Humidity with blue LED','FontSize',18)
grid on;
ha = gca;
set(ha,'FontSize',18)