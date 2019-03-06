#!/bin/bash

#SBATCH --job-name=B-Skel_125_catalogs	#Nombre del job
#SBATCH -p short			#Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1				#Nodos requeridos, Default=1
#SBATCH -n 1				#Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=1		#Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem-per-cpu=2000		#Memoria en Mb por CPU, Default=2048
#SBATCH --time=10:00:00			#Tiempo máximo de corrida, Default=2 horas. Formato HH:MM:SS
#SBATCH --mail-user=fl.gomez10@uniandes.edu.co
#SBATCH --mail-type=ALL			
#SBATCH -o B-Skel_125_catalogs_LOG.o%j.LOG			#Nombre de archivo de salida

host=`/bin/hostname`
date=`/bin/date`
echo "Soy un JOB de prueba"
echo "Corri en la maquina: "$host
echo "Corri el: "$date

module load anaconda/python3

python 125_spherical_catalogs.py
