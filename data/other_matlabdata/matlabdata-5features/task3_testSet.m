testSet= struct();
testSet.labels = ['length       ';'lines        ';'includesCount';'loops        ';'vars         '];
testSet.length = [2233,1885,3622,2144,2831,3018,2546,4167,2749,4247,1898,3055,2904,1929,3956,1255,2289,2106,2457,1835,1720,1790,1904,2975,5089,2044,2269,2316,1960,647,870,3037,876,3653,1696,1720,1681,912,1779,922,2828,2946,936,1844,2061,874,2443,2232,1089,1450,1481,1904,2447,1063,1909,3676,2668,1828,1377,1893,2850,2771,892,1141,1707,1733,2588,1600,1324,2073,1133,1383,1387,1680,1395,1711,2216,2029,1902,1566,1195,2011,1333,1315,2098,1473,5092,1978,960,2219,2320,1166,933,940,1461,1451,2525,2965,3104,1272,1437,4096,1340,1732,1749,1469,963,1280,1673,3215,1780,1482,1141,1039,1407,1549,1165,1774,1391,4616,3141,2161,3324,1400,2291,1200,1987,1600,1748,1341,1395,13081,2017,2051,1516,2506,3297,1335,1286,1108,873,1707,1624,1515,1618,1007,1711,2030,1637,834,1456,2081,1614,2034,1257,2123,2621,1557,1969,2729,2377,2426,2474,1180,1215,3280,1456,1425,2665,3413,1937,2822,1557,2804,1465,1401,1656,2166,1003,1660,3263,1083,2540,1450,1240,1520,2038,1337,1813,925,2439,5715,2256,3175,1133,4123,8185,4569,1731,2349,1919,1209,2335,2259,1117,4078,1790,1743,1953,1178,1599,2245,1566,2158,1820,1338,1771,2306,4966,1427,1877,2226,1695,1584,2463,1153,1608,1212,839,1106,2479,1791,1285,2165,1110,2559,1642,2835,1457,1127,1835,1757,1261,1210,1728,2001,1552,2949,1168,1803,1753,1714,1427,1888,1734,3053,1972,1933,3972,1315,1543,2866,611,1706,1006,2458,1356,1281,1353,1465,1202,3092,1212,3472,1320,866,1591,777,1574,2617,1624,1691,4294,1844,2187,2209,1288,2195,1414,2766,3277,1682,4455,2928,3433,1800,1370,1568,3161,3810,1380,762,2318,4607,1389,1781,1010,1628,1812,1552,1556,2222,1284,1726,1509,1348,4850,1256,1069,5627,1162,1507,1697,1610,2029,1563,1628,1626,2858,1448,1822,1850,2067,1593,1998,1237,1245,1456,1322,3182,1372,1555,1396,1147,2101,2147,1201,2098,1136,2020,1941,2422,3448,1766,1872,2915,746,1705,1452,2554,1692,1314,825,3082,822,1625,2363,1507,2088,1267,1770,46387,2105,1579,2837,964,1958,885,2108,1479,2230,2222,1009,4215,2757,1768,1402,2708,2310,1744,3808,1585,1540,2311,2115,1500,2080,1879,2329,1657,1269,1377,866,1162,1563,1424,1150,1647,3425,1228,2888,1048,817,1892,1729,1794,1752,1145,3944,2376,1568,2950,1161,1767,1701,3141,4271,6069];
testSet.lines = [89,106,155,112,114,113,82,154,115,152,85,145,130,70,155,63,75,99,58,52,62,86,56,110,171,94,81,79,77,29,45,88,44,110,72,75,63,50,63,40,90,87,49,57,118,57,99,86,51,73,67,84,97,46,73,246,118,72,75,59,134,93,49,53,86,66,97,74,61,70,58,66,75,59,92,74,102,87,104,49,68,71,65,51,101,58,147,107,37,62,93,84,63,60,56,81,97,104,108,56,101,173,67,69,62,66,50,58,70,99,70,85,60,48,76,61,47,80,65,228,118,77,114,84,114,62,53,96,78,66,72,387,61,60,56,90,137,89,58,54,45,92,65,67,73,43,66,84,79,39,70,89,90,65,58,93,100,62,80,113,98,91,90,52,62,103,61,77,94,81,82,119,71,100,95,53,87,83,67,56,144,50,65,50,79,55,78,53,89,58,70,175,110,117,58,103,245,131,73,136,79,42,92,81,50,107,89,95,71,48,55,110,105,91,94,66,64,91,183,88,79,102,60,92,93,54,77,64,31,36,72,100,52,106,70,154,59,93,74,60,45,58,72,62,84,114,69,137,56,82,81,72,80,67,81,103,92,79,117,71,56,125,31,95,65,96,58,63,56,59,44,151,61,143,63,48,74,46,63,92,54,68,118,89,73,92,45,128,48,107,141,70,144,68,147,78,60,60,145,186,46,36,100,108,41,94,49,70,88,77,59,96,72,72,44,45,142,53,44,137,58,75,70,84,50,60,97,74,91,60,89,83,90,69,82,36,48,49,60,112,70,34,76,74,102,95,85,72,56,61,53,90,91,96,121,157,46,50,70,61,59,49,40,95,46,84,86,55,91,110,59,1142,77,52,141,49,76,36,117,49,150,146,59,136,102,81,61,90,77,93,119,92,61,85,91,69,70,88,110,79,74,56,48,50,46,52,71,78,156,60,127,76,56,99,55,117,61,44,248,117,102,77,76,82,91,115,228,233];
testSet.includesCount = [10,5,15,4,12,16,4,15,17,14,6,9,9,20,15,20,20,9,11,11,2,6,22,22,21,5,18,12,13,1,1,5,9,13,21,9,8,2,25,11,22,19,2,20,4,4,16,22,3,5,5,5,4,10,4,0,11,11,15,10,13,12,6,5,9,3,24,13,8,15,1,6,6,17,2,6,11,15,9,11,2,5,7,9,9,11,12,2,13,23,21,5,2,1,11,2,7,10,13,8,2,13,1,4,12,4,4,6,10,17,16,6,2,2,4,4,7,7,7,7,10,25,21,8,15,6,10,11,7,15,2,13,3,17,18,11,9,1,5,5,6,9,4,21,7,11,10,24,9,2,8,12,10,5,5,13,17,12,16,10,14,5,24,16,7,22,7,8,13,15,3,15,12,19,1,2,2,25,2,8,8,6,14,3,3,7,9,16,7,6,27,23,9,23,4,15,15,23,9,9,9,16,20,11,2,20,14,15,11,7,9,7,1,14,15,20,22,3,11,6,7,3,11,2,19,13,5,3,4,2,14,10,3,2,1,1,10,26,20,3,3,2,7,2,2,4,12,12,1,9,13,11,1,13,2,12,4,23,0,8,17,6,4,1,3,17,3,8,13,8,11,9,11,17,6,7,23,1,14,32,16,11,7,11,18,7,9,11,9,4,15,5,27,2,9,16,13,12,4,30,9,4,13,11,10,14,1,6,2,19,1,2,2,9,17,15,22,4,3,23,12,7,11,3,23,10,4,4,13,15,19,10,13,10,14,3,2,3,7,5,4,16,14,6,21,14,2,3,10,3,16,3,13,4,11,14,2,11,6,18,14,12,3,14,2,6,8,2,13,10,12,23,25,3,8,4,18,3,4,1,3,4,4,14,1,6,9,8,22,2,13,3,5,12,20,3,23,2,4,3,2,4,1,6,7,2,4,5,13,4,7,2,1,7,15,5,12,1,4,6,5,26,3,22,6,7,4,22];
testSet.loops = [10,12,0,12,2,26,25,14,3,4,15,17,10,8,27,6,0,9,6,9,7,14,1,1,8,15,0,8,2,6,8,26,8,8,13,2,14,9,1,8,28,2,1,7,19,11,5,6,9,1,3,20,18,1,10,11,5,10,8,3,23,14,5,10,1,13,0,11,10,1,6,9,7,10,6,2,9,11,1,0,8,7,8,6,10,8,25,20,6,8,2,5,7,6,1,8,10,12,0,8,9,14,8,9,3,2,9,7,8,2,7,7,10,9,8,11,3,1,13,12,21,8,15,8,16,7,7,8,8,9,6,23,8,6,7,5,17,10,6,8,7,11,9,7,8,10,9,9,10,8,10,12,9,11,15,11,5,3,0,17,14,11,2,2,0,13,9,12,14,8,11,5,6,0,6,9,8,5,6,7,15,7,6,14,8,11,2,9,15,6,5,21,10,0,10,8,2,3,11,12,7,3,2,11,7,1,9,5,9,1,1,9,9,19,10,9,1,10,8,8,9,2,9,13,10,8,8,10,3,6,3,9,7,18,12,2,7,11,9,8,14,7,8,12,10,11,10,0,9,8,10,8,11,1,11,11,7,10,0,8,9,8,3,11,10,1,11,8,10,0,12,11,10,11,8,8,5,6,1,2,0,3,10,6,9,16,1,12,8,12,13,14,0,13,17,0,1,10,21,20,7,7,8,17,1,9,9,9,10,10,7,15,8,9,1,8,12,8,1,2,9,4,6,7,9,7,10,12,23,9,11,14,11,3,2,5,8,11,3,11,11,6,0,11,0,1,9,26,7,7,9,12,10,15,11,4,7,4,7,1,1,0,0,11,7,11,13,7,1,6,8,63,8,14,17,8,7,6,9,10,4,3,7,10,31,8,7,12,8,15,12,8,9,9,10,7,7,11,18,11,12,9,6,7,4,2,12,6,5,10,3,11,7,9,1,7,8,13,7,10,9,2,7,2,7,6,23,0];
testSet.vars = [32,42,26,28,28,37,42,42,39,35,39,33,51,30,45,12,12,41,12,9,10,42,12,9,40,39,7,22,9,2,14,35,5,16,21,8,14,17,22,17,24,23,10,11,23,1,12,18,20,11,27,33,30,10,22,33,8,20,24,14,53,51,12,20,24,19,26,15,16,12,10,16,24,26,10,15,22,35,21,10,20,2,20,10,12,22,70,35,9,19,14,20,10,20,20,19,27,34,37,17,25,32,14,21,15,10,19,23,24,38,10,28,9,14,22,11,13,19,21,57,35,18,32,25,29,11,11,24,29,8,11,91,6,29,22,31,29,13,18,17,10,20,21,9,27,7,26,23,23,6,17,25,8,7,13,30,6,14,20,26,27,19,18,14,5,43,11,26,27,18,25,26,17,29,16,15,7,27,13,13,47,11,13,15,32,6,19,16,22,13,28,69,37,21,17,10,42,13,22,15,20,15,19,32,14,12,22,18,29,10,9,23,17,22,22,20,18,15,5,24,10,28,22,36,30,16,17,17,9,4,21,24,14,36,26,6,17,16,12,18,10,10,13,16,15,51,19,31,14,26,11,17,21,14,5,15,18,18,0,11,15,17,6,24,12,16,12,20,17,10,17,47,21,34,22,4,15,11,17,23,14,18,8,14,25,20,10,14,10,17,60,22,18,16,27,8,13,20,21,45,13,12,22,27,10,16,19,20,28,11,14,21,16,13,7,17,47,18,7,25,14,8,19,36,18,15,32,23,38,19,23,22,37,12,16,7,18,16,9,2,16,8,13,19,17,14,19,38,16,12,7,22,36,38,11,34,6,15,23,18,13,8,6,22,11,19,41,11,11,10,16,327,25,10,29,16,19,15,18,17,11,9,10,30,15,19,14,19,20,23,20,17,22,13,25,10,21,27,23,26,19,10,9,15,3,6,14,16,19,16,7,18,14,18,7,21,17,3,5,21,22,18,10,6,12,17,34,22];
testSet.states = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,0,1,0,1,1,1,1,1,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,1,1,0,0,1,1,0,1,1,1,0,0,0,1,1,0,0,1,1,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,0,1,0,1,0,1,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,1,0,0,0,0,0,1,1,1,1,1,1,1,0,0,1,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,0,0,1,0,1,1,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,0,1,0,0,1,0,0,0,1,1,0,1,1,1,1,0,0,0,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,1,1,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,0,0,1,1,1,1,1,0,0,1,1,0,0,0,0,1,1,0,1,0,0,1,1];
testSet.features = [2233,1885,3622,2144,2831,3018,2546,4167,2749,4247,1898,3055,2904,1929,3956,1255,2289,2106,2457,1835,1720,1790,1904,2975,5089,2044,2269,2316,1960,647,870,3037,876,3653,1696,1720,1681,912,1779,922,2828,2946,936,1844,2061,874,2443,2232,1089,1450,1481,1904,2447,1063,1909,3676,2668,1828,1377,1893,2850,2771,892,1141,1707,1733,2588,1600,1324,2073,1133,1383,1387,1680,1395,1711,2216,2029,1902,1566,1195,2011,1333,1315,2098,1473,5092,1978,960,2219,2320,1166,933,940,1461,1451,2525,2965,3104,1272,1437,4096,1340,1732,1749,1469,963,1280,1673,3215,1780,1482,1141,1039,1407,1549,1165,1774,1391,4616,3141,2161,3324,1400,2291,1200,1987,1600,1748,1341,1395,13081,2017,2051,1516,2506,3297,1335,1286,1108,873,1707,1624,1515,1618,1007,1711,2030,1637,834,1456,2081,1614,2034,1257,2123,2621,1557,1969,2729,2377,2426,2474,1180,1215,3280,1456,1425,2665,3413,1937,2822,1557,2804,1465,1401,1656,2166,1003,1660,3263,1083,2540,1450,1240,1520,2038,1337,1813,925,2439,5715,2256,3175,1133,4123,8185,4569,1731,2349,1919,1209,2335,2259,1117,4078,1790,1743,1953,1178,1599,2245,1566,2158,1820,1338,1771,2306,4966,1427,1877,2226,1695,1584,2463,1153,1608,1212,839,1106,2479,1791,1285,2165,1110,2559,1642,2835,1457,1127,1835,1757,1261,1210,1728,2001,1552,2949,1168,1803,1753,1714,1427,1888,1734,3053,1972,1933,3972,1315,1543,2866,611,1706,1006,2458,1356,1281,1353,1465,1202,3092,1212,3472,1320,866,1591,777,1574,2617,1624,1691,4294,1844,2187,2209,1288,2195,1414,2766,3277,1682,4455,2928,3433,1800,1370,1568,3161,3810,1380,762,2318,4607,1389,1781,1010,1628,1812,1552,1556,2222,1284,1726,1509,1348,4850,1256,1069,5627,1162,1507,1697,1610,2029,1563,1628,1626,2858,1448,1822,1850,2067,1593,1998,1237,1245,1456,1322,3182,1372,1555,1396,1147,2101,2147,1201,2098,1136,2020,1941,2422,3448,1766,1872,2915,746,1705,1452,2554,1692,1314,825,3082,822,1625,2363,1507,2088,1267,1770,46387,2105,1579,2837,964,1958,885,2108,1479,2230,2222,1009,4215,2757,1768,1402,2708,2310,1744,3808,1585,1540,2311,2115,1500,2080,1879,2329,1657,1269,1377,866,1162,1563,1424,1150,1647,3425,1228,2888,1048,817,1892,1729,1794,1752,1145,3944,2376,1568,2950,1161,1767,1701,3141,4271,6069;89,106,155,112,114,113,82,154,115,152,85,145,130,70,155,63,75,99,58,52,62,86,56,110,171,94,81,79,77,29,45,88,44,110,72,75,63,50,63,40,90,87,49,57,118,57,99,86,51,73,67,84,97,46,73,246,118,72,75,59,134,93,49,53,86,66,97,74,61,70,58,66,75,59,92,74,102,87,104,49,68,71,65,51,101,58,147,107,37,62,93,84,63,60,56,81,97,104,108,56,101,173,67,69,62,66,50,58,70,99,70,85,60,48,76,61,47,80,65,228,118,77,114,84,114,62,53,96,78,66,72,387,61,60,56,90,137,89,58,54,45,92,65,67,73,43,66,84,79,39,70,89,90,65,58,93,100,62,80,113,98,91,90,52,62,103,61,77,94,81,82,119,71,100,95,53,87,83,67,56,144,50,65,50,79,55,78,53,89,58,70,175,110,117,58,103,245,131,73,136,79,42,92,81,50,107,89,95,71,48,55,110,105,91,94,66,64,91,183,88,79,102,60,92,93,54,77,64,31,36,72,100,52,106,70,154,59,93,74,60,45,58,72,62,84,114,69,137,56,82,81,72,80,67,81,103,92,79,117,71,56,125,31,95,65,96,58,63,56,59,44,151,61,143,63,48,74,46,63,92,54,68,118,89,73,92,45,128,48,107,141,70,144,68,147,78,60,60,145,186,46,36,100,108,41,94,49,70,88,77,59,96,72,72,44,45,142,53,44,137,58,75,70,84,50,60,97,74,91,60,89,83,90,69,82,36,48,49,60,112,70,34,76,74,102,95,85,72,56,61,53,90,91,96,121,157,46,50,70,61,59,49,40,95,46,84,86,55,91,110,59,1142,77,52,141,49,76,36,117,49,150,146,59,136,102,81,61,90,77,93,119,92,61,85,91,69,70,88,110,79,74,56,48,50,46,52,71,78,156,60,127,76,56,99,55,117,61,44,248,117,102,77,76,82,91,115,228,233;10,5,15,4,12,16,4,15,17,14,6,9,9,20,15,20,20,9,11,11,2,6,22,22,21,5,18,12,13,1,1,5,9,13,21,9,8,2,25,11,22,19,2,20,4,4,16,22,3,5,5,5,4,10,4,0,11,11,15,10,13,12,6,5,9,3,24,13,8,15,1,6,6,17,2,6,11,15,9,11,2,5,7,9,9,11,12,2,13,23,21,5,2,1,11,2,7,10,13,8,2,13,1,4,12,4,4,6,10,17,16,6,2,2,4,4,7,7,7,7,10,25,21,8,15,6,10,11,7,15,2,13,3,17,18,11,9,1,5,5,6,9,4,21,7,11,10,24,9,2,8,12,10,5,5,13,17,12,16,10,14,5,24,16,7,22,7,8,13,15,3,15,12,19,1,2,2,25,2,8,8,6,14,3,3,7,9,16,7,6,27,23,9,23,4,15,15,23,9,9,9,16,20,11,2,20,14,15,11,7,9,7,1,14,15,20,22,3,11,6,7,3,11,2,19,13,5,3,4,2,14,10,3,2,1,1,10,26,20,3,3,2,7,2,2,4,12,12,1,9,13,11,1,13,2,12,4,23,0,8,17,6,4,1,3,17,3,8,13,8,11,9,11,17,6,7,23,1,14,32,16,11,7,11,18,7,9,11,9,4,15,5,27,2,9,16,13,12,4,30,9,4,13,11,10,14,1,6,2,19,1,2,2,9,17,15,22,4,3,23,12,7,11,3,23,10,4,4,13,15,19,10,13,10,14,3,2,3,7,5,4,16,14,6,21,14,2,3,10,3,16,3,13,4,11,14,2,11,6,18,14,12,3,14,2,6,8,2,13,10,12,23,25,3,8,4,18,3,4,1,3,4,4,14,1,6,9,8,22,2,13,3,5,12,20,3,23,2,4,3,2,4,1,6,7,2,4,5,13,4,7,2,1,7,15,5,12,1,4,6,5,26,3,22,6,7,4,22;10,12,0,12,2,26,25,14,3,4,15,17,10,8,27,6,0,9,6,9,7,14,1,1,8,15,0,8,2,6,8,26,8,8,13,2,14,9,1,8,28,2,1,7,19,11,5,6,9,1,3,20,18,1,10,11,5,10,8,3,23,14,5,10,1,13,0,11,10,1,6,9,7,10,6,2,9,11,1,0,8,7,8,6,10,8,25,20,6,8,2,5,7,6,1,8,10,12,0,8,9,14,8,9,3,2,9,7,8,2,7,7,10,9,8,11,3,1,13,12,21,8,15,8,16,7,7,8,8,9,6,23,8,6,7,5,17,10,6,8,7,11,9,7,8,10,9,9,10,8,10,12,9,11,15,11,5,3,0,17,14,11,2,2,0,13,9,12,14,8,11,5,6,0,6,9,8,5,6,7,15,7,6,14,8,11,2,9,15,6,5,21,10,0,10,8,2,3,11,12,7,3,2,11,7,1,9,5,9,1,1,9,9,19,10,9,1,10,8,8,9,2,9,13,10,8,8,10,3,6,3,9,7,18,12,2,7,11,9,8,14,7,8,12,10,11,10,0,9,8,10,8,11,1,11,11,7,10,0,8,9,8,3,11,10,1,11,8,10,0,12,11,10,11,8,8,5,6,1,2,0,3,10,6,9,16,1,12,8,12,13,14,0,13,17,0,1,10,21,20,7,7,8,17,1,9,9,9,10,10,7,15,8,9,1,8,12,8,1,2,9,4,6,7,9,7,10,12,23,9,11,14,11,3,2,5,8,11,3,11,11,6,0,11,0,1,9,26,7,7,9,12,10,15,11,4,7,4,7,1,1,0,0,11,7,11,13,7,1,6,8,63,8,14,17,8,7,6,9,10,4,3,7,10,31,8,7,12,8,15,12,8,9,9,10,7,7,11,18,11,12,9,6,7,4,2,12,6,5,10,3,11,7,9,1,7,8,13,7,10,9,2,7,2,7,6,23,0;32,42,26,28,28,37,42,42,39,35,39,33,51,30,45,12,12,41,12,9,10,42,12,9,40,39,7,22,9,2,14,35,5,16,21,8,14,17,22,17,24,23,10,11,23,1,12,18,20,11,27,33,30,10,22,33,8,20,24,14,53,51,12,20,24,19,26,15,16,12,10,16,24,26,10,15,22,35,21,10,20,2,20,10,12,22,70,35,9,19,14,20,10,20,20,19,27,34,37,17,25,32,14,21,15,10,19,23,24,38,10,28,9,14,22,11,13,19,21,57,35,18,32,25,29,11,11,24,29,8,11,91,6,29,22,31,29,13,18,17,10,20,21,9,27,7,26,23,23,6,17,25,8,7,13,30,6,14,20,26,27,19,18,14,5,43,11,26,27,18,25,26,17,29,16,15,7,27,13,13,47,11,13,15,32,6,19,16,22,13,28,69,37,21,17,10,42,13,22,15,20,15,19,32,14,12,22,18,29,10,9,23,17,22,22,20,18,15,5,24,10,28,22,36,30,16,17,17,9,4,21,24,14,36,26,6,17,16,12,18,10,10,13,16,15,51,19,31,14,26,11,17,21,14,5,15,18,18,0,11,15,17,6,24,12,16,12,20,17,10,17,47,21,34,22,4,15,11,17,23,14,18,8,14,25,20,10,14,10,17,60,22,18,16,27,8,13,20,21,45,13,12,22,27,10,16,19,20,28,11,14,21,16,13,7,17,47,18,7,25,14,8,19,36,18,15,32,23,38,19,23,22,37,12,16,7,18,16,9,2,16,8,13,19,17,14,19,38,16,12,7,22,36,38,11,34,6,15,23,18,13,8,6,22,11,19,41,11,11,10,16,327,25,10,29,16,19,15,18,17,11,9,10,30,15,19,14,19,20,23,20,17,22,13,25,10,21,27,23,26,19,10,9,15,3,6,14,16,19,16,7,18,14,18,7,21,17,3,5,21,22,18,10,6,12,17,34,22];
testSet.binaryFeatures = [1,0,1,1,1,1,1,1,1,1,0,1,1,0,1,0,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,0,0,0,0,1,1,0,0,1,0,1,1,0,0,0,0,1,0,0,1,1,0,0,0,1,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0,0,1,1,0,0,0,0,0,1,1,1,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1,0,0,0,0,0,0,1,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,1,1,1,1,0,0,1,0,0,1,1,0,1,0,1,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,0,1,1,1,1,0,1,1,1,0,1,0,0,1,1,0,1,0,0,0,0,0,1,0,1,0,0,0,1,1,0,0,1,0,0,1,0,0,0,0,0,1,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,1,0,1,1,0,1,0,1,1,0,1,1,1,0,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,1,0,1,0,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,0,0,1,0,1,0,0,1,1,0,1,0,0,0,1,0,1,1,0,1,1,0,0,1,1,0,1,0,0,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,1,0,1,0,0,0,1,1,1;1,1,1,1,1,1,0,1,1,1,0,1,1,0,1,0,0,1,0,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,1,0,0,1,0,1,1,0,0,0,0,1,0,0,1,1,0,0,0,1,1,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,1,1,0,0,0,0,0,1,0,1,1,0,0,1,0,0,0,0,0,1,1,1,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,0,1,0,1,0,0,1,0,0,0,1,0,0,0,1,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,0,1,1,1,1,0,0,1,0,0,1,0,0,1,0,1,1,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,1,1,0,1,1,1,0,1,0,0,1,0,0,1,1,1,0,0,0,1,1,1,1,0,0,1,1,1,0,1,0,1,1,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,1,0,1,0,0,1,0,1,0,1,0,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,1,1,0,1,0,1,0,1,1,0,1,0,1,0,0,0,1,1,0,0,1,1,0,1,0,0,1,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,1,0,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,1,0,0,1,0,1,1,0,1,0,0,1,0,0,0,1,0,1,1,0,1,1,0,0,1,0,1,1,1,0,0,1,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,1,0,0,1,1,1,0,0,0,1,1,1,1;1,0,1,0,1,1,0,1,1,1,0,0,0,1,1,1,1,0,1,1,0,0,1,1,1,0,1,1,1,0,0,0,0,1,1,0,0,0,1,1,1,1,0,1,0,0,1,1,0,0,0,0,0,1,0,0,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,0,0,1,0,0,1,1,0,1,0,0,0,0,0,1,1,0,1,1,1,0,0,0,1,0,0,1,1,0,0,1,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,0,1,0,1,1,0,1,0,1,0,1,1,1,0,0,0,0,0,0,0,1,0,1,1,1,0,0,0,1,1,0,0,1,1,1,1,1,1,0,1,1,0,1,0,0,1,1,0,1,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,1,1,0,1,0,1,1,1,0,0,0,1,1,1,0,1,1,1,1,0,0,0,0,1,1,1,1,0,1,0,0,0,1,0,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,0,0,1,1,0,1,0,1,0,1,0,0,1,0,0,0,0,1,0,0,1,0,1,0,1,1,0,0,1,0,1,1,1,1,0,1,1,0,0,1,0,0,1,0,1,0,0,1,1,1,0,1,0,0,1,1,1,1,0,0,0,1,0,0,0,0,1,1,1,0,0,1,1,0,1,0,1,1,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,0,1,1,0,0,1,0,1,0,1,0,1,1,0,1,0,1,1,1,0,1,0,0,0,0,1,1,1,1,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1,0,0,0,0,1,0,1,0,0,0,1;1,1,0,1,0,1,1,1,0,0,1,1,1,0,1,0,0,1,0,1,0,1,0,0,0,1,0,0,0,0,0,1,0,0,1,0,1,1,0,0,1,0,0,0,1,1,0,0,1,0,0,1,1,0,1,1,0,1,0,0,1,1,0,1,0,1,0,1,1,0,0,1,0,1,0,0,1,1,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,1,0,0,1,0,0,0,0,0,1,1,0,1,0,0,1,1,1,0,1,0,1,0,0,0,0,1,0,1,0,0,0,0,1,1,0,0,0,1,1,0,0,1,1,1,1,0,1,1,1,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,1,0,1,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,0,1,1,0,0,1,1,0,1,0,0,0,1,1,0,0,0,1,0,0,1,0,1,0,0,1,1,1,1,1,0,1,0,0,1,0,1,1,1,0,0,1,0,0,0,1,0,1,1,0,0,1,1,0,1,0,0,1,1,1,1,0,1,0,1,0,1,0,1,1,0,1,0,0,1,0,0,1,1,0,1,0,1,0,1,1,1,1,0,0,0,0,0,0,0,0,1,0,1,1,0,1,0,1,1,1,0,1,1,0,0,1,1,1,0,0,0,1,0,1,1,1,1,1,0,1,0,1,0,0,1,0,0,0,1,0,0,0,1,0,1,1,1,1,1,1,1,0,0,0,0,1,0,1,1,0,0,1,0,0,1,1,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,1,1,0,0,0,1,1,0,0,0,1,1,0,0,1,0,1,1,0,1,1,1,0,0,1,1,1,1,1,0,0,0,0,1,0,0,1,0,1,0,1,0,0,0,1,0,1,1,0,0,0,0,0,1,0;1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,0,1,0,0,1,1,0,1,0,0,0,1,0,0,1,0,0,0,1,0,1,1,0,0,1,0,0,0,1,0,1,1,1,0,1,1,0,1,1,0,1,1,0,1,1,0,1,0,0,0,0,0,1,1,0,0,1,1,1,0,1,0,1,0,0,1,1,1,0,0,0,1,0,1,1,0,1,1,1,0,1,1,0,1,0,0,0,1,1,1,0,1,0,0,1,0,0,0,1,1,1,0,1,1,1,0,0,1,1,0,0,1,0,1,1,1,1,0,0,0,0,1,1,0,1,0,1,1,1,0,0,1,0,0,0,1,0,0,1,1,1,0,0,0,0,1,0,1,1,0,1,1,0,1,0,0,0,1,0,0,1,0,0,0,1,0,0,0,1,0,1,1,1,1,0,0,1,0,1,0,1,0,0,1,0,0,1,0,1,0,0,1,0,1,1,1,0,0,0,1,0,1,1,1,1,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,1,1,1,1,0,0,0,0,1,0,0,0,0,1,1,0,0,0,0,1,1,0,0,1,0,0,1,1,1,0,0,1,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1,0,0,0,1,0,0,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,1,0,1,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,0,1,0,1,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,0,0,1,1];