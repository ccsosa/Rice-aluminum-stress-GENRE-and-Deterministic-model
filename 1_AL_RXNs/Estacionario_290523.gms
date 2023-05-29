*FBA PARA Pseudomonas aeruginosa BY DIANA CAROLINA CLAVIJO Junio 16 DE 2016 1116 reacciones 877 metabolitos

OPTION decimals = 8
       sysout = off
       solprint = on
       reslim = 100000
       iterlim = 10000000
       lp = cplex;


set
* Aqui voy a declarar mi set de reacciones para el modelo de Pseudomonas aeruginosas tengo 1116 reacciones
* Tambien declaro mi set de metabolitos para el modelo de Pseudomonas aeruginosa tengo 877 metabolitos


n Reactions set

/
R1*R2685
/

m Metabolites set

$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\compounds.txt"

parameter
* Aqui voy a declarar los par�metros del modelo para pseudomonas aeruginosa
* Declaro S la Matriz estequiometrica metabolito m punto reaccion n espacio coeficiente
* Declaro los LB y los UB para cada reacci�n seg�n lo publicado por Pappin haciendo modificacion varias reacciones

s(m,n) Matriz estequiometrica
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\S_matrix.txt"


lb(n) Lower bound de Rxs
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\lowerbound_on_fluxes.txt"


ub(n) Upper bound de Rxs
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\upperbound_on_fluxes.txt"

c(n)
/
R1 1
/
*Aqu� declaro con 1 la reacci�n 914 que es la de biomasa en este modelo
;


variable
miu
v(n)

equation

fmiu             Ecuacion de la funcion objetivo
balance(m)       Ecuaci�n de balances para los m;

fmiu..  miu=e=v('R1');
balance(m).. 0=e=sum(n,s(m,n)*v(n));

*Ecucai�n de restriccion lower bound
v.lo(n)=lb(n);

*Ecuaci�n de restricci�n Upper bound
v.up(n)=ub(n);

*Aqui voy a declarar las ecuaciones de restricciones adicionales
*Fijando el flujo de glucosa R1040 _e_ : glc-D <==>
*Fijando el flujos de ox�geno R1080 _e_ : o2 <==>
*Fijando el flujo del upper bound para la producci�n de ATP R144 adp_c_ + (4) h_e_ + pi_c_ <==> atp_c_ + (3) h_c_ + h2o_c_

*V.fx('R1040') =-10;
*v.fx('R1080') =-10;
*v.up('R144') =10;

model FBA/all/;

FBA.workspace = 8000;

solve FBA using LP max miu;

display v.l, miu.l;

file results /FIRST_ATTEMPT_PREC.csv/;

put results;

put ' '/;

put "Objective function", miu.l:9:5 /;

put ' '/;
put '/'/;
loop(n,
put "'"n.tl:5:0"'", "   ", v.l(n):9:5/;
)
;
put "/" /;