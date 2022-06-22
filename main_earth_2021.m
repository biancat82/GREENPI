data_control2 = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/data/control_2nd_acquisition.csv");
data_control = Importfile3Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/data/control_raw_data.csv");
data_bambu = Importfile4Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/data/Bambu_raw_data.csv");
data_ficus = Importfile4Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/data/Ficus.csv");
data_pianta4 = Importfile4Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/data/pianta4_raw_data.csv");
data_potus = Importfile4Columns("/Users/jacopobiancat/Documents/Scuola/2021-22/Astro_PI/MATLAB/GREENPI/data/Potus_raw_data.csv");

time_data_control2 = time_converter(data_control2.Time);
time_data_control = time_converter(data_control.Time);
time_data_bambu = time_converter(data_bambu.Time);
time_data_ficus = time_converter(data_ficus.Time);
time_data_pianta4 = time_converter(data_pianta4.Time);
time_data_potus = time_converter(data_potus.Time);

figure
plot(time_data_control,data_control.Humidity,'LineWidth',2)
hold on
plot(time_data_control2,data_control2.Humidity,'LineWidth',2)
plot(time_data_bambu,data_bambu.Humidity,'LineWidth',2)
plot(time_data_ficus,data_ficus.Humidity,'LineWidth',2)
%plot(time_data_pianta4,data_pianta4.Humidity,'LineWidth',2)
plot(time_data_potus,data_potus.Humidity,'LineWidth',2)
legend('control','control2','bambu','ficus','potus')
xlabel('time [calendar]')
ylabel('Humidity [%]')
title('Humidity')
grid on;
ha = gca;
set(ha,'FontSize',18)

figure
plot(time_data_control,data_control.Temperature,'LineWidth',2)
hold on
plot(time_data_control2,data_control2.Temperature,'LineWidth',2)
plot(time_data_bambu,data_bambu.Temperature,'LineWidth',2)
plot(time_data_ficus,data_ficus.Temperature,'LineWidth',2)
plot(time_data_pianta4,data_pianta4.Temperature,'LineWidth',2)
plot(time_data_potus,data_potus.Temperature,'LineWidth',2)
legend('control','control2','bambu','ficus','pianta4','potus')
xlabel('time [calendar]')
ylabel('Temperature [°C]')
title('Temperature')

figure;
plot(data_potus.Humidity,data_control.Humidity(1:length(data_potus.Humidity)),'.');