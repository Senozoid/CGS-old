#!/bin/bash

LOGFILE="compression.log"

date > ${LOGFILE}
echo "Starting script..." >> ${LOGFILE}

rm a.out
g++ -O3 CGS_compression.cpp -w
chmod +x a.out

# $1 represents dataset name
# $2 represents the CGS Algorithm i.e, {I,E,U} for {CGS-I, CGS-E, CGS-U} respectively.
# $3 represents the threshold value [0,1]

date >> ${LOGFILE}
echo "Running on datasets..." >> ${LOGFILE}

nohup ./a.out "./Dataset/GF.txt" "./Compression_Results/GF.txt" GF.txt E 0 >> ${LOGFILE} 2>&1
nohup ./a.out "./Dataset/DB.txt" "./Compression_Results/DB.txt" DB.txt E 0 >> ${LOGFILE} 2>&1
nohup ./a.out "./Dataset/SD.txt" "./Compression_Results/SD.txt" SD.txt E 0 >> ${LOGFILE} 2>&1
nohup ./a.out "./Dataset/SE.txt" "./Compression_Results/SE.txt" SE.txt E 0 >> ${LOGFILE} 2>&1
nohup ./a.out "./Dataset/AP.txt" "./Compression_Results/AP.txt" AP.txt E 0 >> ${LOGFILE} 2>&1
nohup ./a.out "./Dataset/LJ.txt" "./Compression_Results/LJ.txt" LJ.txt E 0 >> ${LOGFILE} 2>&1

date >> ${LOGFILE}
echo "Ending script..." >> ${LOGFILE}
