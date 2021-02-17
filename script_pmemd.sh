#!/bin/bash -l


pmemd.cuda -O -i 1_min_1.in -o 1_min_1.out -p 3O8Y_solv.prmtop -c 3O8Y_solv.inpcrd -ref 3O8Y_solv.inpcrd -r 1_min_1.rst -inf 1_min_1.mdinfo 
echo "Min 1"
times
pmemd.cuda -O -i 1_min_2.in -o 1_min_2.out -p 3O8Y_solv.prmtop -c 1_min_1.rst -ref 1_min_1.rst -r 1_min_2.rst -inf 1_min_2.mdinfo 
echo "Min 2"
times
pmemd.cuda -O -i 1_min_3.in -o 1_min_3.out -p 3O8Y_solv.prmtop -c 1_min_2.rst -ref 1_min_2.rst -r 1_min_3.rst -inf 1_min_3.mdinfo 
echo "Min 3"
times
pmemd.cuda -O -i 2_heat_1.in -o 2_heat_1.out -p 3O8Y_solv.prmtop -c 1_min_3.rst -ref 1_min_3.rst -r 2_heat_1.rst -inf 2_heat_1.mdinfo -x 2_heat_1.nc
echo "Heating 1"
times
pmemd.cuda -O -i 3_ntp_1.in -o 3_ntp_1.out -p 3O8Y_solv.prmtop -c 2_heat_1.rst -ref 2_heat_1.rst -r 3_ntp_1.rst -inf 3_ntp_1.mdinfo -x 3_ntp_1.nc
echo "NPT 1"
times
pmemd.cuda -O -i 3_ntp_2.in -o 3_ntp_2.out -p 3O8Y_solv.prmtop -c 3_ntp_1.rst -ref 3_ntp_1.rst -r 3_ntp_2.rst -inf 3_ntp_2.mdinfo -x 3_ntp_2.nc
echo "NPT 2"
times
pmemd.cuda -O -i 3_ntp_3.in -o 3_ntp_3.out -p 3O8Y_solv.prmtop -c 3_ntp_2.rst -ref 3_ntp_2.rst -r 3_ntp_3.rst -inf 3_ntp_3.mdinfo -x 3_ntp_3.nc
echo "NPT 3"
times
pmemd.cuda -O -i 3_ntp_4.in -o 3_ntp_4.out -p 3O8Y_solv.prmtop -c 3_ntp_3.rst -ref 3_ntp_3.rst -r 3_ntp_4.rst -inf 3_ntp_4.mdinfo -x 3_ntp_4.nc
echo "NPT 4"
times
pmemd.cuda -O -i 3_ntp_5.in -o 3_ntp_5.out -p 3O8Y_solv.prmtop -c 3_ntp_4.rst -ref 3_ntp_4.rst -r 3_ntp_5.rst -inf 3_ntp_5.mdinfo -x 3_ntp_5.nc
echo "NPT 5"
times
pmemd.cuda -O -i 4_eq_1.in -o 4_eq_1.out -p 3O8Y_solv.prmtop -c 3_ntp_5.rst -ref 3_ntp_5.rst -r 4_eq_1.rst -inf 4_eq_1.mdinfo -x 4_eq_1.nc
echo "NVT 1"
times
pmemd.cuda -O -i 4_eq_2.in -o 4_eq_2.out -p 3O8Y_solv.prmtop -c 4_eq_1.rst -ref 4_eq_1.rst -r 4_eq_2.rst -inf 4_eq_2.mdinfo -x 4_eq_2.nc
echo "NVT 2"
times
pmemd.cuda -O -i 4_eq_3.in -o 4_eq_3.out -p 3O8Y_solv.prmtop -c 4_eq_2.rst -ref 4_eq_2.rst -r 4_eq_3.rst -inf 4_eq_3.mdinfo -x 4_eq_3.nc
echo "NVT 3"
times
pmemd.cuda -O -i 4_eq_4.in -o 4_eq_4.out -p 3O8Y_solv.prmtop -c 4_eq_3.rst -ref 4_eq_3.rst -r 4_eq_4.rst -inf 4_eq_4.mdinfo -x 4_eq_4.nc
echo "NVT 4"
times
pmemd.cuda -O -i 4_eq_5.in -o 4_eq_5.out -p 3O8Y_solv.prmtop -c 4_eq_4.rst -ref 4_eq_4.rst -r 4_eq_5.rst -inf 4_eq_5.mdinfo -x 4_eq_5.nc
echo "NVT 5"
times
pmemd.cuda -O -i 5_prod_01.in -o 5_prod_01.out -p 3O8Y_solv.prmtop -c 4_eq_5.rst -ref 4_eq_5.rst -r 5_prod_01.rst -inf 5_prod_01.mdinfo -x 5_prod_01.nc
echo "Prod 1"
times
pmemd.cuda -O -i 5_prod_02.in -o 5_prod_02.out -p 3O8Y_solv.prmtop -c 5_prod_01.rst -ref 5_prod_01.rst -r 5_prod_02.rst -inf 5_prod_02.mdinfo -x 5_prod_02.nc
echo "Prod 2"
times
pmemd.cuda -O -i 5_prod_03.in -o 5_prod_03.out -p 3O8Y_solv.prmtop -c 5_prod_02.rst -ref 5_prod_02.rst -r 5_prod_03.rst -inf 5_prod_03.mdinfo -x 5_prod_03.nc
echo "Prod 3"
times
pmemd.cuda -O -i 5_prod_04.in -o 5_prod_04.out -p 3O8Y_solv.prmtop -c 5_prod_03.rst -ref 5_prod_03.rst -r 5_prod_04.rst -inf 5_prod_04.mdinfo -x 5_prod_04.nc
echo "Prod 4"
times
pmemd.cuda -O -i 5_prod_05.in -o 5_prod_05.out -p 3O8Y_solv.prmtop -c 5_prod_04.rst -ref 5_prod_04.rst -r 5_prod_05.rst -inf 5_prod_05.mdinfo -x 5_prod_05.nc
echo "Prod 5"
times
pmemd.cuda -O -i 5_prod_06.in -o 5_prod_06.out -p 3O8Y_solv.prmtop -c 5_prod_05.rst -ref 5_prod_05.rst -r 5_prod_06.rst -inf 5_prod_06.mdinfo -x 5_prod_06.nc
echo "Prod 6"
times
pmemd.cuda -O -i 5_prod_07.in -o 5_prod_07.out -p 3O8Y_solv.prmtop -c 5_prod_06.rst -ref 5_prod_06.rst -r 5_prod_07.rst -inf 5_prod_07.mdinfo -x 5_prod_07.nc
echo "Prod 7"
times
pmemd.cuda -O -i 5_prod_08.in -o 5_prod_08.out -p 3O8Y_solv.prmtop -c 5_prod_07.rst -ref 5_prod_07.rst -r 5_prod_08.rst -inf 5_prod_08.mdinfo -x 5_prod_08.nc
echo "Prod 8"
times
pmemd.cuda -O -i 5_prod_09.in -o 5_prod_09.out -p 3O8Y_solv.prmtop -c 5_prod_08.rst -ref 5_prod_08.rst -r 5_prod_09.rst -inf 5_prod_09.mdinfo -x 5_prod_09.nc
echo "Prod 9"
times
pmemd.cuda -O -i 5_prod_10.in -o 5_prod_10.out -p 3O8Y_solv.prmtop -c 5_prod_09.rst -ref 5_prod_09.rst -r 5_prod_10.rst -inf 5_prod_10.mdinfo -x 5_prod_10.nc
echo "Prod 10"
times
pmemd.cuda -O -i 5_prod_11.in -o 5_prod_11.out -p 3O8Y_solv.prmtop -c 5_prod_10.rst -ref 5_prod_10.rst -r 5_prod_11.rst -inf 5_prod_11.mdinfo -x 5_prod_11.nc
echo "Prod 11"
times
pmemd.cuda -O -i 5_prod_12.in -o 5_prod_12.out -p 3O8Y_solv.prmtop -c 5_prod_11.rst -ref 5_prod_11.rst -r 5_prod_12.rst -inf 5_prod_12.mdinfo -x 5_prod_12.nc
echo "Prod 12"
times
pmemd.cuda -O -i 5_prod_13.in -o 5_prod_13.out -p 3O8Y_solv.prmtop -c 5_prod_12.rst -ref 5_prod_12.rst -r 5_prod_13.rst -inf 5_prod_13.mdinfo -x 5_prod_13.nc
echo "Prod 13"
times
pmemd.cuda -O -i 5_prod_14.in -o 5_prod_14.out -p 3O8Y_solv.prmtop -c 5_prod_13.rst -ref 5_prod_13.rst -r 5_prod_14.rst -inf 5_prod_14.mdinfo -x 5_prod_14.nc
echo "Prod 14"
times
pmemd.cuda -O -i 5_prod_15.in -o 5_prod_15.out -p 3O8Y_solv.prmtop -c 5_prod_14.rst -ref 5_prod_14.rst -r 5_prod_15.rst -inf 5_prod_15.mdinfo -x 5_prod_15.nc
echo "Prod 15"
times
pmemd.cuda -O -i 5_prod_16.in -o 5_prod_16.out -p 3O8Y_solv.prmtop -c 5_prod_15.rst -ref 5_prod_15.rst -r 5_prod_16.rst -inf 5_prod_16.mdinfo -x 5_prod_16.nc
echo "Prod 16"
times
pmemd.cuda -O -i 5_prod_17.in -o 5_prod_17.out -p 3O8Y_solv.prmtop -c 5_prod_16.rst -ref 5_prod_16.rst -r 5_prod_17.rst -inf 5_prod_17.mdinfo -x 5_prod_17.nc
echo "Prod 17"
times
pmemd.cuda -O -i 5_prod_18.in -o 5_prod_18.out -p 3O8Y_solv.prmtop -c 5_prod_17.rst -ref 5_prod_17.rst -r 5_prod_18.rst -inf 5_prod_18.mdinfo -x 5_prod_18.nc
echo "Prod 18"
times
pmemd.cuda -O -i 5_prod_19.in -o 5_prod_19.out -p 3O8Y_solv.prmtop -c 5_prod_18.rst -ref 5_prod_18.rst -r 5_prod_19.rst -inf 5_prod_19.mdinfo -x 5_prod_19.nc
echo "Prod 19"
times
pmemd.cuda -O -i 5_prod_20.in -o 5_prod_20.out -p 3O8Y_solv.prmtop -c 5_prod_19.rst -ref 5_prod_19.rst -r 5_prod_20.rst -inf 5_prod_20.mdinfo -x 5_prod_20.nc
echo "Prod 20"
times
