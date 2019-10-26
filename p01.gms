VARIABLES Z;
POSITIVE VARIABLES Xoutdoor, Xindoor;
EQUATIONS OBJ, M1Limit, M2Limit, Dif, MaxIndoor;

OBJ..       5 * Xoutdoor + 4 * Xindoor =E= Z;
M1Limit..   6 * Xoutdoor + 4 * Xindoor =L= 24;
M2Limit..   1 * Xoutdoor + 2 * Xindoor =L= 6;
Dif..       Xindoor - Xoutdoor =L= 1;
MaxIndoor.. Xindoor =L= 2;

MODEL ReddyMikkysPROBLEM /ALL/
OPTION LP = SOPLEX
SOLVE ReddyMikkysPROBLEM USING LP MAXIMIZING Z;