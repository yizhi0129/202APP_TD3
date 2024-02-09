#!/bin/bash

cd /Users/yangyizhi/Documents/M1\ CHPS/202\ APP/td3_mpi_collective/prod_scal
/usr/local/mpich-3.4.1/bin/mpicc exo_prod_scal.c
/usr/local/mpich-3.4.1/bin/mpirun -n 4 ./a.out
rm -f a.out

cd /Users/yangyizhi/Documents/M1\ CHPS/202\ APP/td3_mpi_collective/prod_scal/correction
/usr/local/mpich-3.4.1/bin/mpicc corr_prod_scal.c
/usr/local/mpich-3.4.1/bin/mpirun -n 4 ./a.out
rm -f a.out

cd /Users/yangyizhi/Documents/M1\ CHPS/202\ APP/td3_mpi_collective/reduction
/usr/local/mpich-3.4.1/bin/mpicc exo_reduction.c
/usr/local/mpich-3.4.1/bin/mpirun -n 7 ./a.out
rm -f a.out

cd /Users/yangyizhi/Documents/M1\ CHPS/202\ APP/td3_mpi_collective/reduction/correction
/usr/local/mpich-3.4.1/bin/mpicc corr_pt2pt_reduction.c
/usr/local/mpich-3.4.1/bin/mpirun -n 7 ./a.out
rm -f a.out

cd /Users/yangyizhi/Documents/M1\ CHPS/202\ APP/td3_mpi_collective/reduction/correction
/usr/local/mpich-3.4.1/bin/mpicc corr_coll_reduction.c
/usr/local/mpich-3.4.1/bin/mpirun -n 7 ./a.out
rm -f a.out