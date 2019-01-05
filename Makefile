FC=gfortran -c
LD=gfortran
SRC=dot.f90 gram.f90
OBJ=dot.o gram.o
gram:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o gram.x
	rm -rf *.o 
clean:
	rm -rf *.o gram.x

