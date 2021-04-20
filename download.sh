#!/bin/bash

wget -O wind_speed.nc 'http://iridl.ldeo.columbia.edu/ds:/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.u/decompress/dup/mul/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.v/decompress/dup/mul/add/sqrt//long_name/%28speed%5Bm/s%5D%29def/windspeed_anomaly_colors/DATA/0/3/6/9/12/15/18/21/24/27/30/VALUES//name/%28speed%29def/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.u//name/%28u%29def/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.v//name/%28v%29def/:ds/speed/data.nc'
wget -O zonal_wind.nc 'http://iridl.ldeo.columbia.edu/ds:/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.u/decompress/dup/mul/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.v/decompress/dup/mul/add/sqrt//long_name/%28speed%5Bm/s%5D%29def/windspeed_anomaly_colors/DATA/0/3/6/9/12/15/18/21/24/27/30/VALUES//name/%28speed%29def/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.u//name/%28u%29def/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.v//name/%28v%29def/:ds/u/data.nc'
wget -O meridional_wind.nc 'http://iridl.ldeo.columbia.edu/ds:/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.u/decompress/dup/mul/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.v/decompress/dup/mul/add/sqrt//long_name/%28speed%5Bm/s%5D%29def/windspeed_anomaly_colors/DATA/0/3/6/9/12/15/18/21/24/27/30/VALUES//name/%28speed%29def/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.u//name/%28u%29def/SOURCES/.NOAA/.NCEP-NCAR/.CDAS-1/.mc8110/.Intrinsic/.PressureLevel/.v//name/%28v%29def/:ds/v/data.nc'

