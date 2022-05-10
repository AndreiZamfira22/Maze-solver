Tema a fost realizata in modulul maze.

Pentru a realiza problema am creat un automat format din 6 stari:
  ->start
  ->schimbare_pozitie
  ->verificare
  ->move
  ->perete_dreapta
  ->stop

start: in aceasta stare am initializat linia si coloana de unde pleaca labirintul si am setat ca prima directie dreapta;

schimbare_pozitie: a fost realizata pentru a modifica pozitia daca am gasit perete, in aceasta stare modific randurile si coloanele in functie de directia oferita in starea verificare care apeleaza aceasta stare;

verificare: verific constant daca am perete in dreapta mea, daca nu gasesc, atunci schimb directia pentru a putea realiza algoritmul, iar la urma apelez starea move;

move: in aceasta stare imi continui deplasarea prin labirint(maze_we = 1, astfel notez drumul prin labirint), verific daca am ajuns la final(apelez starea stop),iar daca dau de perete ma intorc si reincerc, apoi se apeleaza functia perete_dreapta;

perete_dreapta: verific sa am in continuare perete in dreapta pentru fiecare directie, iar apoi reincep procesul prin apelarea starii verificare.

stop: am iesit din labirint

