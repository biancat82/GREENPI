%% PARAMETERS


%% IMPORT DATA
DataImportISS;

UTCtime = datetime(data.DataTime,'ConvertFrom','epochtime','TicksPerSecond',1,'Format','dd-MMM-yyyy HH:mm:ss.SSS');
UTCtime.TimeZone = 'UTC';
%LocalTime = datetime(UTCtime,'TimeZone',TimeZone);

%UTCtime = data.Date + timeofday(data.time);
%UTCtime.Format = 'dd/MM/yy HH:mm:ss.SSS';


%% PLOTS
figure
subplot(211)
plot(UTCtime, data.Temperature,LineWidth=1);
xlabel('time')
title('Temperature [°C]')
grid on;
ha = gca;
set(ha,'FontSize',18)
subplot(212)
plot(UTCtime, data.Humidity,LineWidth=1);
xlabel('time')
title('Humidity [%]')
grid on;
ha = gca;
set(ha,'FontSize',18)
grid on;

%% PLOTS
figure
subplot(311)
plot(UTCtime, data.Blue,LineWidth=2);
xlabel('time')
title('Blue')
grid on;
ha = gca;
set(ha,'FontSize',18)
subplot(312)
plot(UTCtime, data.Red,LineWidth=2,Color = [0.8500 0.3250 0.0980]);
xlabel('time')
title('Red')
grid on;
ha = gca;
set(ha,'FontSize',18)
subplot(313)
plot(UTCtime, data.Green,LineWidth=2, Color = [0.4660 0.6740 0.1880]);
xlabel('time')
title('Green')
grid on;
ha = gca;
set(ha,'FontSize',18)


%% PLOTS IN MAPS
% 'darkwater', 'grayland', 'bluegreen', 'grayterrain', 'colorterrain',
% 'landcover', 'streets', 'streets-light', 'streets-dark', 'satellite',
% 'topographic', 'none'
figure
geoplot(data.Latitude,data.Longitude,'color',[0.8500 0.3250 0.0980],'Marker','.','LineStyle','none')
geobasemap('colorterrain')



%% FREQUENCY ANALYSIS
