c
c    contains coordinates, names (and their lengths), and index points
c  for coordinate array, all accessed in common block
c
c   $Id: polydata.f,v 1.4 2012/03/28 22:43:16 agnew Exp agnew $
c
c   $Log: polydata.f,v $
c   Revision 1.4  2012/03/28 22:43:16  agnew
c   more changes to cortez polygon
c
c   Revision 1.3  2011/11/27 04:29:21  agnew
c   fixed cortez polygon, made all names match those of models
c
c   Revision 1.2  2011/11/19 01:32:04  agnew
c   changed order of polygons to match tables and plot; added points at 180
c
c   Revision 1.1  2011/11/18 16:55:52  agnew
c   Initial revision
c
c
c----------------------------------------------------------------------------
      subroutine polydata
c
c    contains coordinates, names (and their lengths), and index points
c  for coordinate array, all accessed in common block
c
      character*30 names
      common/polys/coords(1516),ind(23),names(22),namlen(22)
c
c   coordinates, long and lat paired, with a short line in the data statement
c    to indicate a new polygon
c
      data coords/
     1  161.983, 49.983, 180.000, 49.983, 216.017, 49.983,
     2  216.017, 60.017, 215.984, 60.050, 215.884, 60.117,
     3  215.750, 60.183, 213.250, 61.017, 194.550, 66.517,
     4  189.383, 66.517, 181.417, 66.350, 180.783, 66.250,
     5  180.383, 66.150, 180.283, 66.117, 180.000, 66.012,
     6  163.816, 60.017, 163.483, 59.883, 163.383, 59.783,
     7  162.116, 58.383, 162.083, 58.317, 162.016, 58.183,
     8  161.983, 55.917, 161.983, 49.983,
     9 -168.008, 26.008,-168.008, 17.992,-152.992, 17.992,
     1 -152.992, 26.008,-168.008, 26.008,
     2 -122.525, 37.895,-122.525, 37.805,-122.515, 37.785,
     3 -122.375, 37.605,-122.355, 37.585,-122.265, 37.535,
     4 -122.105, 37.455,-122.085, 37.445,-122.035, 37.445,
     5 -122.025, 37.455,-121.765, 38.015,-121.765, 38.035,
     6 -121.785, 38.065,-121.995, 38.145,-122.395, 38.155,
     7 -122.405, 38.155,-122.495, 38.115,-122.525, 37.895,
     8 -131.017, 50.517,-131.017, 30.483,-116.016, 30.483,
     9 -115.983, 30.683,-115.983, 30.716,-116.016, 30.816,
     1 -122.183, 48.084,-122.417, 48.650,-122.483, 48.784,
     2 -123.217, 49.617,-124.817, 50.150,-128.083, 50.517,
     3 -131.017, 50.517,
     4 -115.000, 31.500,-114.900, 31.000,-114.800, 30.300,
     5 -114.700, 29.800,-110.600, 24.400,-110.500, 24.300,
     6 -109.500, 23.600,-109.300, 23.500,-109.200, 23.500,
     7 -109.000, 23.600,-107.900, 24.400,-107.800, 24.500,
     8 -107.800, 24.800,-109.300, 26.600,-113.000, 31.100,
     9 -113.100, 31.200,-113.300, 31.300,-114.500, 31.900,
     1 -115.000, 31.900,-115.000, 31.500,
     2  -97.900, 22.656, -97.900, 22.633, -97.855, 22.411,
     3  -97.700, 21.744, -97.678, 21.678, -97.633, 21.567,
     4  -97.167, 20.656, -96.300, 19.345, -96.100, 19.100,
     5  -95.856, 18.811, -95.833, 18.789, -94.522, 18.167,
     6  -87.900, 17.989, -80.478, 17.989, -80.478, 25.233,
     7  -82.767, 29.122, -82.811, 29.189, -83.678, 29.967,
     8  -83.834, 30.055, -83.967, 30.122, -86.233, 30.522,
     9  -87.945, 30.767, -88.011, 30.767, -94.767, 29.811,
     1  -94.989, 29.722, -96.633, 28.744, -97.500, 27.922,
     2  -97.833, 24.589, -97.900, 22.656,
     3  -94.817, 60.017, -94.817, 59.050, -94.784, 59.017,
     4  -92.684, 56.950, -80.450, 51.316, -79.850, 51.150,
     5  -79.750, 51.150, -78.883, 51.316, -63.116, 58.850,
     6  -62.983, 58.917, -62.983, 65.617, -63.016, 65.650,
     7  -63.316, 65.817, -77.717, 70.284, -77.850, 70.317,
     8  -78.417, 70.450, -79.017, 70.584, -79.083, 70.584,
     9  -82.217, 70.184, -91.717, 63.783, -93.550, 61.983,
     1  -93.984, 61.483, -94.717, 60.550, -94.817, 60.017,
     2  -76.950, 38.350, -76.950, 38.216, -76.717, 35.383,
     3  -76.650, 35.016, -76.284, 34.983, -49.983, 34.983,
     4  -49.983, 55.017, -57.916, 55.017, -66.517, 50.283,
     5  -68.584, 49.084, -69.050, 48.783, -70.484, 47.450,
     6  -70.550, 47.383, -70.817, 47.083, -76.450, 39.283,
     7  -76.950, 38.350,
     8  -73.017,-54.117, -73.017,-58.017, -45.983,-58.017,
     9  -45.983,-27.983, -48.583,-27.983, -58.417,-33.916,
     1  -65.117,-40.817, -73.017,-54.117,
     2  -59.041,  8.008, -59.041,  7.925, -58.541,  6.775,
     3  -51.392, -0.491, -49.475, -2.241, -49.425, -2.275,
     4  -44.792, -3.241, -44.759, -3.241, -44.642, -3.208,
     5  -42.992, -2.441, -42.992,  8.008, -59.041,  8.008,
     6  -12.000, 62.000, -12.000, 48.000,  -4.633, 48.000,
     7   -1.667, 48.633,   0.367, 49.433,   8.533, 53.567,
     8    9.000, 53.833,  10.000, 57.600,  10.000, 58.967,
     9    4.967, 62.000, -12.000, 62.000,
     1   -8.017, 36.983,  -8.017, 33.483,  18.950, 30.283,
     2   19.317, 30.283,  29.183, 30.816,  32.817, 31.050,
     3   33.317, 31.083,  33.750, 31.116,  33.950, 31.183,
     4   34.050, 31.216,  34.117, 31.250,  34.184, 31.283,
     5   34.217, 31.316,  34.517, 31.616,  34.550, 31.650,
     6   41.684, 41.650,  41.750, 41.750,  41.784, 41.817,
     7   41.784, 42.017,  41.517, 42.650,  41.450, 42.750,
     8   37.850, 46.984,  37.417, 46.984,  13.183, 45.784,
     9    3.983, 43.584,   3.883, 43.550,   3.283, 43.283,
     1   -8.017, 36.983,
     2   32.359, 29.641,  32.359, 29.591,  32.625, 29.008,
     3   37.408, 18.908,  37.442, 18.842,  39.708, 15.142,
     4   42.691, 11.592,  44.291, 10.459,  44.325, 10.442,
     5   44.358, 10.425,  44.558, 10.409,  44.641, 10.409,
     6   44.975, 10.442,  46.008, 10.809,  46.008, 13.425,
     7   35.008, 29.558,  34.992, 29.575,  32.559, 29.975,
     8   32.509, 29.975,  32.475, 29.941,  32.375, 29.741,
     9   32.359, 29.641,
     1   47.692, 29.408,  47.692, 29.358,  55.042, 16.992,
     2   73.258, 16.992,  73.291, 17.059,  73.291, 17.109,
     3   72.858, 22.275,  66.558, 25.508,  49.175, 30.525,
     4   49.059, 30.541,  49.025, 30.541,  48.875, 30.525,
     5   48.342, 30.275,  48.009, 29.958,  47.692, 29.408,
     6   77.983,  8.350,  77.983,  2.983, 101.017,  2.983,
     7  101.017,  3.650,  98.717, 12.750,  98.617, 13.083,
     8   97.717, 15.883,  97.417, 16.483,  97.150, 16.884,
     9   97.050, 17.017,  91.550, 22.717,  91.517, 22.750,
     1   91.450, 22.784,  91.417, 22.784,  90.783, 22.717,
     2   88.017, 21.984,  87.050, 21.484,  80.383, 15.783,
     3   80.350, 15.750,  80.250, 15.650,  80.083, 15.317,
     4   77.983,  8.350,
     5   99.150, 10.350,  99.150,  9.683,  99.216,  9.250,
     6  104.250,  1.283, 129.017,  1.283, 129.017, 35.084,
     7  125.384, 39.550, 121.817, 40.884, 121.317, 40.917,
     8  121.150, 40.917, 120.984, 40.850, 117.817, 39.184,
     9  117.783, 39.150, 117.750, 39.117,  99.950, 13.316,
     1   99.150, 10.350,
     2  112.000, -3.292, 112.000,-22.000, 155.000,-22.000,
     3  155.000, -2.000, 116.500, -2.000, 112.000, -3.292,
     4  129.983,-31.616, 129.983,-45.017, 155.017,-45.017,
     5  155.017,-30.983, 153.084,-30.983, 131.116,-31.450,
     6  130.250,-31.550, 129.983,-31.616,
     7  126.983, 34.316, 126.983, 32.683, 165.517, 32.683,
     8  165.517, 60.184, 165.084, 62.484, 165.050, 62.517,
     9  164.617, 62.684, 164.117, 62.684, 157.450, 61.784,
     1  143.183, 59.417, 142.450, 59.217, 142.250, 59.150,
     2  142.050, 59.050, 140.983, 58.450, 140.750, 58.317,
     3  135.316, 54.983, 135.217, 54.917, 135.183, 54.883,
     4  127.516, 39.783, 127.483, 39.717, 127.383, 39.283,
     5  126.983, 34.316,
     6  109.958, 20.254, 109.958, 19.958, 165.042, 19.958,
     7  165.042, 57.819, 164.625, 57.967, 164.292, 57.967,
     8  163.625, 57.893, 157.375, 57.152, 143.125, 55.004,
     9  142.708, 54.930, 142.375, 54.855, 142.208, 54.781,
     1  142.042, 54.707, 140.792, 54.115, 135.375, 51.151,
     2  117.708, 36.999, 117.541, 36.703, 110.375, 21.218,
     3  110.208, 20.847, 109.958, 20.254,
     4    0.000, 90.000,   0.000, 64.500,  10.000, 64.500,
     5   10.000, 64.100,  12.000, 64.100,  12.000, 65.150,
     6   14.000, 65.150,  14.000, 67.000,  16.000, 67.000,
     7   16.000, 68.150,  18.000, 68.150,  18.000, 69.300,
     8   20.000, 69.300,  20.000, 69.750,  22.000, 69.750,
     9   22.000, 70.300,  24.000, 70.300,  24.000, 70.150,
     1   26.000, 70.150,  26.000, 70.450,  28.000, 70.450,
     2   28.000, 69.850,  30.000, 69.850,  30.000, 69.650,
     3   32.000, 69.650,  32.000, 66.200,  34.000, 66.200,
     4   34.000, 64.150,  36.000, 64.150,  36.000, 63.800,
     5   38.000, 63.800,  38.000, 63.950,  40.000, 63.950,
     6   40.000, 64.650,  42.000, 64.650,  42.000, 66.150,
     7   44.000, 66.150,  46.000, 66.150,  46.000, 66.850,
     8   48.000, 66.850,  48.000, 67.350,  50.000, 67.350,
     9   50.000, 68.000,  52.000, 68.000,  52.000, 68.200,
     1   54.000, 68.200,  54.000, 68.150,  56.000, 68.150,
     2   56.000, 68.500,  58.000, 68.500,  58.000, 68.300,
     3   60.000, 68.300,  60.000, 68.350,  62.000, 68.350,
     4   62.000, 69.550,  64.000, 69.550,  64.000, 69.100,
     5   66.000, 69.100,  66.000, 68.400,  68.000, 68.400,
     6   68.000, 68.200,  70.000, 68.200,  70.000, 67.100,
     7   72.000, 67.100,  72.000, 66.550,  74.000, 66.550,
     8   74.000, 67.000,  76.000, 67.000,  76.000, 68.950,
     9   78.000, 68.950,  78.000, 70.900,  80.000, 70.900,
     1   80.000, 71.650,  82.000, 71.650,  82.000, 70.900,
     2   84.000, 70.900,  84.000, 73.650,  86.000, 73.650,
     3   86.000, 73.800,  88.000, 73.800,  88.000, 75.050,
     4   90.000, 75.050,  90.000, 75.450,  92.000, 75.450,
     5   92.000, 75.700,  94.000, 75.700,  94.000, 75.900,
     6   96.000, 75.900,  98.000, 75.900,  98.000, 76.000,
     7  100.000, 76.000, 100.000, 76.400, 102.000, 76.400,
     8  102.000, 77.200, 104.000, 77.200, 104.000, 72.950,
     9  106.000, 72.950, 106.000, 72.900, 108.000, 72.900,
     1  108.000, 73.150, 110.000, 73.150, 110.000, 73.400,
     2  112.000, 73.400, 112.000, 73.200, 114.000, 73.200,
     3  114.000, 73.500, 116.000, 73.500, 118.000, 73.500,
     4  118.000, 73.000, 120.000, 73.000, 120.000, 72.900,
     5  122.000, 72.900, 122.000, 72.850, 124.000, 72.850,
     6  124.000, 73.450, 126.000, 73.450, 126.000, 73.400,
     7  128.000, 73.400, 128.000, 71.050, 130.000, 71.050,
     8  130.000, 70.700, 132.000, 70.700, 132.000, 71.250,
     9  134.000, 71.250, 134.000, 71.350, 136.000, 71.350,
     1  136.000, 71.500, 138.000, 71.500, 138.000, 71.400,
     2  140.000, 71.400, 140.000, 71.450, 142.000, 71.450,
     3  142.000, 72.650, 144.000, 72.650, 144.000, 72.450,
     4  146.000, 72.450, 146.000, 72.250, 148.000, 72.250,
     5  148.000, 71.600, 150.000, 71.600, 150.000, 70.850,
     6  152.000, 70.850, 152.000, 70.750, 154.000, 70.750,
     7  154.000, 70.900, 156.000, 70.900, 156.000, 71.000,
     8  158.000, 71.000, 158.000, 69.700, 160.000, 69.700,
     9  160.000, 69.400, 162.000, 69.400, 162.000, 69.450,
     1  164.000, 69.450, 164.000, 69.500, 166.000, 69.500,
     2  166.000, 69.450, 168.000, 69.450, 168.000, 68.750,
     3  170.000, 68.750, 172.000, 68.750, 172.000, 69.800,
     4  174.000, 69.800, 176.000, 69.800, 176.000, 69.400,
     5  178.000, 69.400, 178.000, 69.000, 180.000, 69.000,
     6  180.000, 68.400, 182.000, 68.400, 182.000, 67.800,
     7  184.000, 67.800, 184.000, 66.300, 186.000, 66.300,
     8  188.000, 66.300, 188.000, 65.950, 190.000, 65.950,
     9  190.000, 65.750, 192.000, 65.750, 194.000, 65.750,
     1  194.000, 66.050, 196.000, 66.050, 196.000, 66.000,
     2  198.000, 66.000, 200.000, 66.000, 200.000, 70.300,
     3  202.000, 70.300, 202.000, 70.800, 204.000, 70.800,
     4  204.000, 70.750, 206.000, 70.750, 206.000, 70.550,
     5  208.000, 70.550, 208.000, 70.350, 210.000, 70.350,
     6  210.000, 70.300, 212.000, 70.300, 212.000, 70.100,
     7  214.000, 70.100, 214.000, 69.950, 216.000, 69.950,
     8  216.000, 69.800, 218.000, 69.800, 218.000, 69.600,
     9  220.000, 69.600, 220.000, 69.100, 222.000, 69.100,
     1  222.000, 68.800, 224.000, 68.800, 224.000, 68.750,
     2  226.000, 68.750, 226.000, 69.300, 228.000, 69.300,
     3  228.000, 69.450, 230.000, 69.450, 230.000, 69.700,
     4  232.000, 69.700, 232.000, 69.400, 234.000, 69.400,
     5  234.000, 69.300, 236.000, 69.300, 236.000, 69.350,
     6  238.000, 69.350, 240.000, 69.350, 240.000, 69.000,
     7  242.000, 69.000, 242.000, 68.800, 244.000, 68.800,
     8  244.000, 67.700, 246.000, 67.700, 246.000, 67.650,
     9  248.000, 67.650, 248.000, 67.700, 250.000, 67.700,
     1  250.000, 67.400, 252.000, 67.400, 252.000, 67.600,
     2  254.000, 67.600, 254.000, 68.000, 256.000, 68.000,
     3  256.000, 67.700, 258.000, 67.700, 260.000, 67.700,
     4  260.000, 67.750, 262.000, 67.750, 262.000, 67.250,
     5  264.000, 67.250, 264.000, 67.200, 266.000, 67.200,
     6  266.000, 68.450, 268.000, 68.450, 268.000, 68.300,
     7  270.000, 68.300, 270.000, 67.650, 272.000, 67.650,
     8  272.000, 67.150, 274.000, 67.150, 274.000, 68.050,
     9  276.000, 68.050, 276.000, 69.650, 278.000, 69.650,
     1  278.000, 71.950, 280.000, 71.950, 280.000, 72.200,
     2  282.000, 72.200, 282.000, 72.550, 284.000, 72.550,
     3  284.000, 71.600, 286.000, 71.600, 286.000, 71.050,
     4  288.000, 71.050, 288.000, 70.450, 290.000, 70.450,
     5  290.000, 63.200, 292.000, 63.200, 292.000, 62.250,
     6  294.000, 62.250, 294.000, 62.000, 300.000, 62.000,
     7  300.000, 60.550, 302.000, 60.550, 302.000, 59.950,
     8  304.000, 59.950, 304.000, 59.250, 306.000, 59.250,
     9  306.000, 58.450, 308.000, 58.450, 310.000, 58.450,
     1  310.000, 58.400, 324.000, 58.400, 324.000, 59.200,
     2  326.000, 59.200, 326.000, 59.850, 328.000, 59.850,
     3  328.000, 60.550, 330.000, 60.550, 330.000, 61.100,
     4  332.000, 61.100, 332.000, 61.600, 334.000, 61.600,
     5  334.000, 62.050, 336.000, 62.050, 336.000, 62.400,
     6  338.000, 62.400, 338.000, 62.800, 340.000, 62.800,
     7  340.000, 63.100, 342.000, 63.100, 342.000, 63.400,
     8  344.000, 63.400, 344.000, 63.700, 346.000, 63.700,
     9  346.000, 63.900, 348.000, 63.900, 348.000, 64.050,
     1  350.000, 64.050, 350.000, 64.200, 352.000, 64.200,
     2  352.000, 64.300, 354.000, 64.300, 354.000, 64.350,
     3  356.000, 64.350, 356.000, 64.400, 358.000, 64.400,
     4  358.000, 64.500, 360.000, 64.500, 360.000, 90.000,
     5    0.000, 90.000,
     6    0.000,-86.000,   0.000,-56.500,   4.000,-56.500,
     7    4.000,-57.000,   8.000,-57.000,   8.000,-57.400,
     8   12.000,-57.400,  12.000,-57.650,  16.000,-57.650,
     9   16.000,-57.700,  20.000,-57.700,  24.000,-57.700,
     1   24.000,-57.650,  28.000,-57.650,  28.000,-57.400,
     2   32.000,-57.400,  32.000,-57.050,  36.000,-57.050,
     3   36.000,-56.450,  40.000,-56.450,  44.000,-56.450,
     4   44.000,-56.000,  84.000,-56.000,  84.000,-56.100,
     5   88.000,-56.100,  92.000,-56.100,  92.000,-56.750,
     6   96.000,-56.750,  96.000,-57.200, 100.000,-57.200,
     7  100.000,-57.550, 104.000,-57.550, 104.000,-57.700,
     8  108.000,-57.700, 112.000,-57.700, 116.000,-57.700,
     9  116.000,-57.550, 120.000,-57.550, 120.000,-57.250,
     1  124.000,-57.250, 124.000,-56.750, 128.000,-56.750,
     2  128.000,-56.150, 132.000,-56.150, 136.000,-56.150,
     3  136.000,-56.000, 156.000,-56.000, 156.000,-56.250,
     4  160.000,-56.250, 164.000,-56.250, 164.000,-57.750,
     5  168.000,-57.750, 168.000,-58.950, 172.000,-58.950,
     6  172.000,-59.950, 176.000,-59.950, 176.000,-60.750,
     7  180.000,-60.750, 180.000,-61.350, 184.000,-61.350,
     8  184.000,-61.850, 188.000,-61.850, 188.000,-62.150,
     9  192.000,-62.150, 192.000,-62.350, 196.000,-62.350,
     1  196.000,-62.450, 200.000,-62.450, 204.000,-62.450,
     2  204.000,-62.350, 208.000,-62.350, 208.000,-62.200,
     3  212.000,-62.200, 212.000,-61.850, 216.000,-61.850,
     4  216.000,-61.350, 220.000,-61.350, 220.000,-60.700,
     5  224.000,-60.700, 224.000,-59.900, 228.000,-59.900,
     6  228.000,-58.950, 232.000,-58.950, 232.000,-57.700,
     7  236.000,-57.700, 236.000,-56.250, 240.000,-56.250,
     8  244.000,-56.250, 244.000,-56.000, 360.000,-56.000,
     9  360.000,-86.000,   0.000,-86.000/
c
c polygon names
c
      data names/
     1 'osu.bering.2010             ', 'osu.hawaii.2010             ',
     2 'sfbay.1984                  ', 'osu.usawest.2010            ',
     3 'cortez.1976                 ', 'osu.gulfmex.2010            ',
     4 'osu.hudson.2010             ', 'osu.namereast.2010          ',
     5 'osu.patagonia.2010          ', 'osu.amazon.2010             ',
     6 'osu.europeshelf.2008        ', 'osu.mediterranean.2011      ',
     7 'osu.redsea.2010             ', 'osu.persian.2010            ',
     8 'osu.bengal.2010             ', 'osu.chinasea.2010           ',
     9 'osu.northaustral.2009       ', 'osu.tasmania.2010           ',
     1 'osu.okhotsk.2010            ', 'naoregional.1999            ',
     2 'esr.aotim5.2004             ', 'esr.cats.2008               '/
c
c lengths of polygon names
c
      data namlen/
     1 15,15,10,16,11,16,15,18,18,15,20,22,15,16,15,17,21,17,16,
     2 16,15,13/
c
c index points into the coords array (actually twice these, minus 1)
c
      data ind/
     1    1,  24,  29,  47,  60,  80, 109, 133, 149, 157, 169, 180,
     1  208, 230, 245, 267, 283, 289, 297, 319, 339, 667, 759/
      end