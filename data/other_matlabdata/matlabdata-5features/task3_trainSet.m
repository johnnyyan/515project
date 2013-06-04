trainSet= struct();
trainSet.labels = ['length       ';'lines        ';'includesCount';'loops        ';'vars         '];
trainSet.length = [2895,3185,1909,2940,7302,6758,4023,7083,1874,1651,1231,2776,1025,725,1208,1915,3517,3554,2576,1423,12298,2889,2271,2535,2306,1230,1636,2718,2956,1290,1548,3195,3140,2160,2546,1138,1686,3285,1218,2559,2449,877,3266,2147,1870,1073,1358,1208,1856,3266,1655,938,1957,1015,4776,1468,937,1442,963,760,1906,1913,3102,2108,1046,2208,1135,2224,1415,1181,1815,4352,1409,1405,1370,3474,3588,1145,1404,2253,673,923,1243,3104,5154,1888,979,2952,4515,1597,1697,944,1765,2294,3584,2425,2751,1187,1006,1159,925,2423,951,1523,1435,1011,2057,1377,2848,1712,1585,3531,851,1577,2471,1414,1617,2007,1572,1308,2248,1124,1286,1796,1078,1604,1645,2489,1656,2318,1493,1299,1496,1489,1813,1525,2626,2387,2185,1300,1621,2446,1260,5355,2966,1382,1340,3010,2680,1704,1305,2128,1897,1282,1585,2415,3746,2418,1099,2008,1633,2471,3512,2906,1374,958,1253,999,1931,2303,992,2070,1070,1923,1294,827,992,2569,2072,2779,1500,1678,1714,2249,1673,1857,1894,3020,2561,1721,1387,569,2465,2288,2693,2925,1879,850,1347,3047,2777,1254,10620,1886,3112,1233,1777,1205,1925,1768,1860,1653,1067,2884,1447,2439,1155,3643,2215,1042,1338,2378,1781,971,1366,1792,1782,1776,1392,1837,1411,1395,2135,2183,1668,882,1241,1668,3485,2220,12654,1845,2178,1444,1298,1119,1759,1208,1684,1045,1390,1227,1795,3306,4110,3583,934,1293,2139,2379,1700,2275,980,1864,3229,2652,1056,1550,3324,1472,1994,1248,701,1796,1705,4324,1815,1832,2108,1117,1084,3498,1230,1029,1379,1116,1667,1109,1208,2271,1259,1893,3895,1169,1274,3198,1743,1934,2045,1288,1978,2458,1766,2262,1514,1683,2193,1373,3181,1540,1606,2693,2943,1997,1447,4240,1531,923,1419,1456,940,1647,2487,1621,2553,897,2355,1118,2012,3040,3356,1830,1891,2889,1118,1894,1540,2559,2282,1671,1935,1712,1686,1191,1632,2725,3059,1808,3713,1871,1115,1788,1403,1076,984,1499,1646,5050,1488,1291,822,1192,2002,2133,2626,1684,1602,2037,5043,850,2504,882,1702,2385,1390,1748,1852,1740,1908,1768,1260,7595,2196,1476,1806,1873,1062,2267,1271,2041,853,1115,3883,2643,1188,1658,3897,2024,4587,3604,1247,1689,2239,1736,1342,1687,2061,826,2038,4151,913,1644,971,1076,1984,3558,1075,1777,1189,1189,1360,1774,3566,1022,923,1094,1690,2427,887,933,2726,2235,1105,1790,5047,1286,699,3645,1439,2721];
trainSet.lines = [102,122,80,112,337,149,176,225,88,48,69,100,48,33,50,113,172,97,75,54,449,140,81,133,98,50,68,143,65,65,90,97,125,85,114,45,67,103,60,89,109,53,108,89,64,44,50,62,87,80,52,50,107,46,168,61,71,64,42,39,93,66,140,93,54,63,65,92,86,66,61,93,64,71,59,92,137,43,55,75,34,42,74,163,150,71,53,133,203,109,75,36,68,86,135,85,108,53,57,58,49,83,50,60,77,39,75,39,117,49,78,172,44,71,80,71,69,60,97,67,70,66,73,63,67,87,55,93,71,94,72,72,88,71,82,77,98,81,99,67,61,90,79,164,85,59,67,90,125,63,82,128,85,102,93,75,98,111,58,70,80,130,106,97,75,53,54,55,61,134,56,67,62,85,54,42,46,82,102,128,60,74,58,74,77,79,50,124,95,82,48,34,105,75,76,99,99,56,76,115,108,67,123,73,152,65,86,38,109,60,85,78,60,83,88,85,62,189,91,51,58,126,88,48,72,74,93,104,62,101,75,69,66,83,74,48,70,74,152,91,206,73,106,51,42,78,87,38,65,86,62,66,62,99,81,143,56,33,76,62,98,68,65,70,104,99,67,93,111,69,75,32,45,82,69,177,115,67,71,42,55,178,63,66,78,60,54,53,42,87,36,92,233,78,65,108,121,63,128,59,69,59,69,82,66,65,93,60,103,73,59,100,78,103,71,166,86,57,92,67,49,73,120,90,98,45,49,59,64,126,134,118,74,111,56,75,79,123,96,68,72,67,35,51,104,78,125,104,98,106,45,73,57,45,49,39,55,142,57,46,46,58,87,85,84,60,86,124,193,61,77,84,87,95,63,72,74,72,96,74,80,359,115,75,63,68,55,113,62,83,50,47,209,150,67,49,185,146,156,138,72,81,96,93,53,62,95,29,98,163,50,69,38,56,82,88,69,94,85,85,49,64,92,57,49,61,69,95,53,38,130,81,86,101,292,74,32,168,59,60];
trainSet.includesCount = [4,2,4,12,18,36,11,19,5,17,4,5,1,1,11,9,5,15,27,4,30,16,11,4,4,2,4,5,15,10,14,3,18,20,17,9,13,22,13,22,14,2,8,7,17,2,9,3,4,13,12,1,15,7,25,11,1,5,8,2,7,20,26,13,2,17,3,5,9,2,15,16,14,11,5,19,21,3,2,22,1,3,3,16,19,2,12,5,8,3,18,2,14,17,6,23,10,1,1,2,1,11,4,12,5,4,14,13,5,14,14,5,2,5,4,7,19,16,14,16,22,4,6,11,2,2,7,19,6,18,9,3,3,6,3,11,5,13,11,3,13,15,1,23,24,2,9,13,3,3,6,14,4,7,9,22,26,10,11,17,4,13,21,4,6,1,2,2,20,19,2,7,4,7,12,1,1,24,16,1,19,16,4,25,10,16,4,9,8,13,2,3,6,6,17,6,8,5,3,24,6,3,11,9,16,9,1,1,19,3,2,9,2,19,2,9,5,3,3,3,2,11,10,3,6,11,4,18,13,7,8,6,13,6,12,6,7,8,21,14,9,5,14,20,8,2,9,15,14,1,16,5,12,12,26,6,7,17,2,13,12,15,3,3,15,19,6,2,13,3,4,14,3,12,3,7,7,3,13,6,2,9,5,1,14,2,5,4,11,11,12,10,6,3,2,19,6,30,8,6,18,28,8,14,5,24,14,14,21,12,2,17,17,10,14,4,3,1,2,3,3,4,9,6,10,12,19,1,19,4,4,6,3,14,4,16,1,11,20,5,12,20,18,3,5,16,15,6,6,3,4,5,9,1,3,21,14,20,10,25,2,8,16,2,18,4,1,2,13,3,9,9,6,5,4,15,7,7,2,14,3,15,8,1,5,17,2,1,4,16,3,2,1,3,2,12,12,2,22,16,6,19,10,8,4,22,13,2,6,4,2,6,3,4,5,17,3,9,1,1,1,3,3,2,3,8,4,6,3,3,21,2,1,1,8,8,2,19,3,20];
trainSet.loops = [14,21,10,29,7,2,16,15,14,12,10,0,7,6,4,6,15,5,2,12,32,23,11,12,25,9,15,20,6,9,1,13,1,9,7,10,8,1,1,2,3,7,12,11,2,7,11,10,11,6,5,7,10,9,24,5,5,4,6,6,3,8,18,1,11,7,7,10,9,9,7,3,6,6,10,3,4,6,6,3,4,6,9,15,8,16,2,26,17,10,11,8,7,8,12,1,12,14,5,11,9,1,9,4,13,8,3,6,24,5,5,17,8,8,11,9,1,11,1,8,3,9,9,9,8,11,7,17,8,4,8,7,12,9,1,0,17,14,13,10,7,9,7,21,3,11,8,2,15,12,9,0,12,6,0,5,9,2,9,1,12,12,5,8,1,9,6,7,0,6,7,11,8,15,14,5,6,10,8,2,8,1,7,2,8,8,10,18,15,5,3,5,8,10,0,27,8,8,12,4,15,10,3,8,4,7,8,7,16,7,17,4,9,6,14,11,8,8,10,8,11,10,12,6,10,8,11,10,12,10,10,8,8,1,11,0,8,11,10,12,5,11,11,1,7,7,10,10,0,9,8,8,7,10,1,9,4,6,10,17,13,6,9,10,7,10,7,7,9,8,11,2,2,0,7,8,11,9,11,9,8,15,9,7,7,10,6,5,3,6,3,10,13,11,14,4,8,6,13,11,10,9,0,8,10,2,12,1,4,7,5,3,11,9,8,19,5,9,10,9,6,9,11,5,4,7,0,8,9,9,12,16,15,9,8,10,11,3,9,7,8,7,0,9,12,0,16,10,10,10,7,8,1,7,7,6,7,11,7,6,8,10,2,13,9,8,6,9,12,7,6,6,8,9,7,0,15,6,14,7,9,26,8,7,8,7,7,13,8,0,5,8,33,4,9,4,16,9,11,11,6,1,10,10,10,3,11,6,10,16,6,4,6,7,3,5,11,0,9,9,6,10,12,8,13,8,9,12,8,8,7,11,9,4,12,10,9,5,7,7];
trainSet.vars = [30,59,27,33,62,36,80,45,22,19,17,13,14,4,14,26,20,12,18,7,111,34,19,27,42,16,25,59,29,4,21,51,40,20,14,18,26,30,14,9,22,8,20,38,22,16,18,20,19,22,13,12,19,15,70,28,10,26,22,8,14,21,37,17,20,20,15,16,22,16,12,22,18,14,17,33,13,16,14,16,9,11,25,41,30,15,10,34,53,25,18,10,11,6,5,21,37,7,12,6,14,10,18,22,6,13,30,8,35,12,23,41,14,17,25,16,21,20,22,19,18,22,18,11,12,18,12,29,21,12,16,19,30,13,11,10,39,22,22,21,19,43,18,44,28,20,21,17,23,13,20,13,32,10,19,12,18,8,20,22,25,38,10,20,8,17,13,19,6,22,21,34,9,16,15,14,12,34,28,29,19,16,8,33,25,23,15,32,23,15,7,10,40,12,13,50,26,14,17,26,28,23,29,9,25,16,26,3,26,12,3,14,13,21,22,28,21,7,15,13,15,29,18,16,20,20,25,20,16,32,17,7,15,11,21,7,16,25,34,20,45,35,25,12,11,17,10,4,14,19,15,19,15,27,35,34,12,6,15,19,32,14,19,16,24,40,13,12,29,1,21,8,2,21,13,14,24,19,20,9,18,39,21,18,20,11,10,12,7,9,11,18,31,11,20,20,15,12,30,22,23,32,11,12,22,19,27,7,30,16,15,25,10,24,20,36,7,17,15,21,19,9,31,13,15,9,10,14,23,15,50,19,28,30,16,28,18,19,34,14,30,23,10,25,34,13,30,16,10,17,13,28,4,12,14,13,14,22,9,7,9,10,15,29,22,10,11,24,30,14,19,10,18,31,24,15,28,15,25,29,4,76,18,15,8,13,12,16,18,6,8,14,47,11,19,7,29,9,33,32,10,13,18,22,17,13,27,10,19,48,11,10,14,4,9,8,20,13,18,18,10,12,5,20,5,10,21,27,3,9,15,8,18,4,21,21,12,43,10,7];
trainSet.states = [1,1,1,1,1,1,1,1,1,0,0,1,0,0,0,0,1,1,0,1,1,1,0,1,1,1,0,1,0,0,0,1,1,1,1,0,0,1,0,0,0,0,1,1,0,0,1,0,1,0,0,0,0,1,1,0,0,0,0,0,1,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,1,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,1,0,1,0,0,0,0,1,1,0,0];
trainSet.features = [2895,3185,1909,2940,7302,6758,4023,7083,1874,1651,1231,2776,1025,725,1208,1915,3517,3554,2576,1423,12298,2889,2271,2535,2306,1230,1636,2718,2956,1290,1548,3195,3140,2160,2546,1138,1686,3285,1218,2559,2449,877,3266,2147,1870,1073,1358,1208,1856,3266,1655,938,1957,1015,4776,1468,937,1442,963,760,1906,1913,3102,2108,1046,2208,1135,2224,1415,1181,1815,4352,1409,1405,1370,3474,3588,1145,1404,2253,673,923,1243,3104,5154,1888,979,2952,4515,1597,1697,944,1765,2294,3584,2425,2751,1187,1006,1159,925,2423,951,1523,1435,1011,2057,1377,2848,1712,1585,3531,851,1577,2471,1414,1617,2007,1572,1308,2248,1124,1286,1796,1078,1604,1645,2489,1656,2318,1493,1299,1496,1489,1813,1525,2626,2387,2185,1300,1621,2446,1260,5355,2966,1382,1340,3010,2680,1704,1305,2128,1897,1282,1585,2415,3746,2418,1099,2008,1633,2471,3512,2906,1374,958,1253,999,1931,2303,992,2070,1070,1923,1294,827,992,2569,2072,2779,1500,1678,1714,2249,1673,1857,1894,3020,2561,1721,1387,569,2465,2288,2693,2925,1879,850,1347,3047,2777,1254,10620,1886,3112,1233,1777,1205,1925,1768,1860,1653,1067,2884,1447,2439,1155,3643,2215,1042,1338,2378,1781,971,1366,1792,1782,1776,1392,1837,1411,1395,2135,2183,1668,882,1241,1668,3485,2220,12654,1845,2178,1444,1298,1119,1759,1208,1684,1045,1390,1227,1795,3306,4110,3583,934,1293,2139,2379,1700,2275,980,1864,3229,2652,1056,1550,3324,1472,1994,1248,701,1796,1705,4324,1815,1832,2108,1117,1084,3498,1230,1029,1379,1116,1667,1109,1208,2271,1259,1893,3895,1169,1274,3198,1743,1934,2045,1288,1978,2458,1766,2262,1514,1683,2193,1373,3181,1540,1606,2693,2943,1997,1447,4240,1531,923,1419,1456,940,1647,2487,1621,2553,897,2355,1118,2012,3040,3356,1830,1891,2889,1118,1894,1540,2559,2282,1671,1935,1712,1686,1191,1632,2725,3059,1808,3713,1871,1115,1788,1403,1076,984,1499,1646,5050,1488,1291,822,1192,2002,2133,2626,1684,1602,2037,5043,850,2504,882,1702,2385,1390,1748,1852,1740,1908,1768,1260,7595,2196,1476,1806,1873,1062,2267,1271,2041,853,1115,3883,2643,1188,1658,3897,2024,4587,3604,1247,1689,2239,1736,1342,1687,2061,826,2038,4151,913,1644,971,1076,1984,3558,1075,1777,1189,1189,1360,1774,3566,1022,923,1094,1690,2427,887,933,2726,2235,1105,1790,5047,1286,699,3645,1439,2721;102,122,80,112,337,149,176,225,88,48,69,100,48,33,50,113,172,97,75,54,449,140,81,133,98,50,68,143,65,65,90,97,125,85,114,45,67,103,60,89,109,53,108,89,64,44,50,62,87,80,52,50,107,46,168,61,71,64,42,39,93,66,140,93,54,63,65,92,86,66,61,93,64,71,59,92,137,43,55,75,34,42,74,163,150,71,53,133,203,109,75,36,68,86,135,85,108,53,57,58,49,83,50,60,77,39,75,39,117,49,78,172,44,71,80,71,69,60,97,67,70,66,73,63,67,87,55,93,71,94,72,72,88,71,82,77,98,81,99,67,61,90,79,164,85,59,67,90,125,63,82,128,85,102,93,75,98,111,58,70,80,130,106,97,75,53,54,55,61,134,56,67,62,85,54,42,46,82,102,128,60,74,58,74,77,79,50,124,95,82,48,34,105,75,76,99,99,56,76,115,108,67,123,73,152,65,86,38,109,60,85,78,60,83,88,85,62,189,91,51,58,126,88,48,72,74,93,104,62,101,75,69,66,83,74,48,70,74,152,91,206,73,106,51,42,78,87,38,65,86,62,66,62,99,81,143,56,33,76,62,98,68,65,70,104,99,67,93,111,69,75,32,45,82,69,177,115,67,71,42,55,178,63,66,78,60,54,53,42,87,36,92,233,78,65,108,121,63,128,59,69,59,69,82,66,65,93,60,103,73,59,100,78,103,71,166,86,57,92,67,49,73,120,90,98,45,49,59,64,126,134,118,74,111,56,75,79,123,96,68,72,67,35,51,104,78,125,104,98,106,45,73,57,45,49,39,55,142,57,46,46,58,87,85,84,60,86,124,193,61,77,84,87,95,63,72,74,72,96,74,80,359,115,75,63,68,55,113,62,83,50,47,209,150,67,49,185,146,156,138,72,81,96,93,53,62,95,29,98,163,50,69,38,56,82,88,69,94,85,85,49,64,92,57,49,61,69,95,53,38,130,81,86,101,292,74,32,168,59,60;4,2,4,12,18,36,11,19,5,17,4,5,1,1,11,9,5,15,27,4,30,16,11,4,4,2,4,5,15,10,14,3,18,20,17,9,13,22,13,22,14,2,8,7,17,2,9,3,4,13,12,1,15,7,25,11,1,5,8,2,7,20,26,13,2,17,3,5,9,2,15,16,14,11,5,19,21,3,2,22,1,3,3,16,19,2,12,5,8,3,18,2,14,17,6,23,10,1,1,2,1,11,4,12,5,4,14,13,5,14,14,5,2,5,4,7,19,16,14,16,22,4,6,11,2,2,7,19,6,18,9,3,3,6,3,11,5,13,11,3,13,15,1,23,24,2,9,13,3,3,6,14,4,7,9,22,26,10,11,17,4,13,21,4,6,1,2,2,20,19,2,7,4,7,12,1,1,24,16,1,19,16,4,25,10,16,4,9,8,13,2,3,6,6,17,6,8,5,3,24,6,3,11,9,16,9,1,1,19,3,2,9,2,19,2,9,5,3,3,3,2,11,10,3,6,11,4,18,13,7,8,6,13,6,12,6,7,8,21,14,9,5,14,20,8,2,9,15,14,1,16,5,12,12,26,6,7,17,2,13,12,15,3,3,15,19,6,2,13,3,4,14,3,12,3,7,7,3,13,6,2,9,5,1,14,2,5,4,11,11,12,10,6,3,2,19,6,30,8,6,18,28,8,14,5,24,14,14,21,12,2,17,17,10,14,4,3,1,2,3,3,4,9,6,10,12,19,1,19,4,4,6,3,14,4,16,1,11,20,5,12,20,18,3,5,16,15,6,6,3,4,5,9,1,3,21,14,20,10,25,2,8,16,2,18,4,1,2,13,3,9,9,6,5,4,15,7,7,2,14,3,15,8,1,5,17,2,1,4,16,3,2,1,3,2,12,12,2,22,16,6,19,10,8,4,22,13,2,6,4,2,6,3,4,5,17,3,9,1,1,1,3,3,2,3,8,4,6,3,3,21,2,1,1,8,8,2,19,3,20;14,21,10,29,7,2,16,15,14,12,10,0,7,6,4,6,15,5,2,12,32,23,11,12,25,9,15,20,6,9,1,13,1,9,7,10,8,1,1,2,3,7,12,11,2,7,11,10,11,6,5,7,10,9,24,5,5,4,6,6,3,8,18,1,11,7,7,10,9,9,7,3,6,6,10,3,4,6,6,3,4,6,9,15,8,16,2,26,17,10,11,8,7,8,12,1,12,14,5,11,9,1,9,4,13,8,3,6,24,5,5,17,8,8,11,9,1,11,1,8,3,9,9,9,8,11,7,17,8,4,8,7,12,9,1,0,17,14,13,10,7,9,7,21,3,11,8,2,15,12,9,0,12,6,0,5,9,2,9,1,12,12,5,8,1,9,6,7,0,6,7,11,8,15,14,5,6,10,8,2,8,1,7,2,8,8,10,18,15,5,3,5,8,10,0,27,8,8,12,4,15,10,3,8,4,7,8,7,16,7,17,4,9,6,14,11,8,8,10,8,11,10,12,6,10,8,11,10,12,10,10,8,8,1,11,0,8,11,10,12,5,11,11,1,7,7,10,10,0,9,8,8,7,10,1,9,4,6,10,17,13,6,9,10,7,10,7,7,9,8,11,2,2,0,7,8,11,9,11,9,8,15,9,7,7,10,6,5,3,6,3,10,13,11,14,4,8,6,13,11,10,9,0,8,10,2,12,1,4,7,5,3,11,9,8,19,5,9,10,9,6,9,11,5,4,7,0,8,9,9,12,16,15,9,8,10,11,3,9,7,8,7,0,9,12,0,16,10,10,10,7,8,1,7,7,6,7,11,7,6,8,10,2,13,9,8,6,9,12,7,6,6,8,9,7,0,15,6,14,7,9,26,8,7,8,7,7,13,8,0,5,8,33,4,9,4,16,9,11,11,6,1,10,10,10,3,11,6,10,16,6,4,6,7,3,5,11,0,9,9,6,10,12,8,13,8,9,12,8,8,7,11,9,4,12,10,9,5,7,7;30,59,27,33,62,36,80,45,22,19,17,13,14,4,14,26,20,12,18,7,111,34,19,27,42,16,25,59,29,4,21,51,40,20,14,18,26,30,14,9,22,8,20,38,22,16,18,20,19,22,13,12,19,15,70,28,10,26,22,8,14,21,37,17,20,20,15,16,22,16,12,22,18,14,17,33,13,16,14,16,9,11,25,41,30,15,10,34,53,25,18,10,11,6,5,21,37,7,12,6,14,10,18,22,6,13,30,8,35,12,23,41,14,17,25,16,21,20,22,19,18,22,18,11,12,18,12,29,21,12,16,19,30,13,11,10,39,22,22,21,19,43,18,44,28,20,21,17,23,13,20,13,32,10,19,12,18,8,20,22,25,38,10,20,8,17,13,19,6,22,21,34,9,16,15,14,12,34,28,29,19,16,8,33,25,23,15,32,23,15,7,10,40,12,13,50,26,14,17,26,28,23,29,9,25,16,26,3,26,12,3,14,13,21,22,28,21,7,15,13,15,29,18,16,20,20,25,20,16,32,17,7,15,11,21,7,16,25,34,20,45,35,25,12,11,17,10,4,14,19,15,19,15,27,35,34,12,6,15,19,32,14,19,16,24,40,13,12,29,1,21,8,2,21,13,14,24,19,20,9,18,39,21,18,20,11,10,12,7,9,11,18,31,11,20,20,15,12,30,22,23,32,11,12,22,19,27,7,30,16,15,25,10,24,20,36,7,17,15,21,19,9,31,13,15,9,10,14,23,15,50,19,28,30,16,28,18,19,34,14,30,23,10,25,34,13,30,16,10,17,13,28,4,12,14,13,14,22,9,7,9,10,15,29,22,10,11,24,30,14,19,10,18,31,24,15,28,15,25,29,4,76,18,15,8,13,12,16,18,6,8,14,47,11,19,7,29,9,33,32,10,13,18,22,17,13,27,10,19,48,11,10,14,4,9,8,20,13,18,18,10,12,5,20,5,10,21,27,3,9,15,8,18,4,21,21,12,43,10,7];
trainSet.binaryFeatures = [1,1,0,1,1,1,1,1,0,0,0,1,0,0,0,0,1,1,1,0,1,1,1,1,1,0,0,1,1,0,0,1,1,1,1,0,0,1,0,1,1,0,1,1,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,1,0,1,0,0,0,1,0,0,0,1,1,0,0,1,0,0,0,1,1,0,0,1,1,0,0,0,0,1,1,1,1,0,0,0,0,1,0,0,0,0,1,0,1,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,1,1,0,0,1,0,1,1,0,0,1,1,0,0,1,0,0,0,1,1,1,0,0,0,1,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,1,1,1,0,0,0,1,1,0,1,0,1,0,0,0,0,0,0,0,0,1,0,1,0,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1,1,0,1,0,0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,1,0,1,0,0,1,0,1,0,0,1,1,0,0,1,0,0,0,0,0,0,1,0,1,0,1,0,0,1,1,0,0,1,0,0,0,1,1,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,1,0,0,0,1,0,1,0,0,1,0,0,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,1,0,0,1,0,1,1,0,0,1,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,1,0,0,1,0,0,1,0,1;1,1,0,1,1,1,1,1,1,0,0,1,0,0,0,1,1,1,0,0,1,1,0,1,1,0,0,1,0,0,1,1,1,0,1,0,0,1,0,1,1,0,1,1,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,1,0,1,1,0,0,0,1,1,0,0,1,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,1,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1,0,1,0,0,1,0,0,0,1,0,1,0,0,1,0,1,0,0,0,1,1,0,0,1,0,1,1,0,1,1,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,1,1,0,0,1,1,0,1,0,1,0,1,0,1,0,0,0,0,0,1,0,0,1,1,0,0,1,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,1,1,1,0,1,0,0,0,1,0,0,1,0,0,0,1,0,1,0,0,0,0,1,0,0,0,1,1,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,1,0,0,1,1,0,1,0,0,0,0,0,0,0,1,0,1,0,0,1,0,1,0,1,1,0,1,0,0,0,1,1,1,0,0,0,0,1,1,1,0,1,0,0,0,1,1,0,0,0,0,0,1,0,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,1,1,1,0,0,0,1,1,0,0,0,0,1,0,0,1,1,0,0,0,0,1,0,0,0,0,1,1,0,0,1,1,1,1,0,0,1,1,0,0,1,0,1,1,0,0,0,0,0,1,0,1,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,1,1,0,0,1,0,0;0,0,0,1,1,1,1,1,0,1,0,0,0,0,1,0,0,1,1,0,1,1,1,0,0,0,0,0,1,1,1,0,1,1,1,0,1,1,1,1,1,0,0,0,1,0,0,0,0,1,1,0,1,0,1,1,0,0,0,0,0,1,1,1,0,1,0,0,0,0,1,1,1,1,0,1,1,0,0,1,0,0,0,1,1,0,1,0,0,0,1,0,1,1,0,1,1,0,0,0,0,1,0,1,0,0,1,1,0,1,1,0,0,0,0,0,1,1,1,1,1,0,0,1,0,0,0,1,0,1,0,0,0,0,0,1,0,1,1,0,1,1,0,1,1,0,0,1,0,0,0,1,0,0,0,1,1,1,1,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,0,0,1,1,0,1,1,0,1,1,1,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,0,1,0,1,1,0,0,0,1,0,1,0,0,0,1,1,0,0,1,1,0,0,0,1,1,0,1,0,1,1,1,0,0,1,0,1,1,1,0,0,1,1,0,0,1,0,0,1,0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,1,1,1,1,0,0,0,1,0,1,0,0,1,1,0,1,0,1,1,1,1,1,0,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,0,1,0,0,0,0,1,0,1,0,1,1,0,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,1,0,0,0,1,0,0,0,0,0,1,1,0,1,1,0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,1;1,1,1,1,0,0,1,1,1,1,1,0,0,0,0,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,1,1,0,0,1,1,1,0,0,0,1,1,1,0,0,0,0,0,0,0,1,0,1,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,1,1,0,1,0,1,1,1,1,0,0,0,1,0,1,1,0,1,1,0,1,0,1,0,0,0,1,0,0,1,0,0,1,1,0,1,0,0,0,1,1,1,0,1,0,1,0,0,0,0,1,1,0,0,1,1,1,1,0,1,0,1,0,1,0,0,1,1,1,0,1,0,0,0,1,0,1,0,1,1,0,0,0,1,0,0,0,0,0,1,0,1,1,0,0,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,0,1,0,0,1,0,1,1,0,0,0,0,0,0,1,0,1,0,1,0,1,1,0,0,1,0,1,1,1,0,1,0,1,1,1,1,1,0,0,0,1,0,0,1,1,1,0,1,1,0,0,0,1,1,0,1,0,0,0,1,0,1,0,0,1,1,1,0,1,1,0,1,0,0,1,0,1,0,0,0,0,0,1,1,1,1,0,1,1,0,0,1,0,0,0,0,0,1,1,1,1,0,0,0,1,1,1,1,0,0,1,0,1,0,0,0,0,0,1,1,0,1,0,1,1,1,0,1,1,0,0,0,0,0,1,1,1,1,1,1,0,1,1,0,1,0,0,0,0,1,1,0,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,1,0,1,1,0,0,1,1,0,0,0,0,1,0,0,1,0,1,0,1,1,0,0,0,0,0,1,0,0,0,0,1,0,1,0,1,1,1,1,0,0,1,1,1,0,1,0,1,1,0,0,0,0,0,0,1,0,1,1,0,1,1,0,1,0,1,1,0,0,0,1,1,0,1,1,1,0,0,0;1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,1,1,0,1,1,0,1,1,1,0,1,1,1,1,0,0,1,1,0,0,1,0,1,1,1,0,0,1,0,1,0,0,0,0,1,1,0,1,1,0,0,1,1,0,1,1,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,1,1,1,0,0,1,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,1,0,0,1,0,1,0,1,1,0,0,1,0,1,1,1,0,0,1,0,0,0,0,0,1,1,0,0,0,1,0,0,0,1,1,1,1,0,1,0,1,1,1,1,0,1,0,1,0,1,0,0,0,0,0,1,1,1,1,0,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,1,1,1,0,1,1,0,0,0,1,0,0,1,1,0,0,1,1,1,1,0,1,0,1,0,1,0,0,0,0,1,1,1,1,0,0,0,0,1,0,0,1,1,1,1,0,1,0,0,0,0,1,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,1,0,0,0,1,1,0,0,1,0,1,0,0,1,0,0,1,0,1,0,0,1,1,0,1,0,0,0,0,0,0,0,1,0,1,1,0,0,1,1,1,1,0,0,1,0,1,0,1,0,0,1,0,1,1,1,0,0,0,1,0,0,1,0,0,0,0,0,1,0,1,0,1,1,0,1,0,0,1,0,1,1,0,1,1,0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,1,0,0,1,1,0,0,0,0,1,1,0,1,0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,1,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,1,1,0,0,0,0,0,0,1,1,0,1,0,0];
