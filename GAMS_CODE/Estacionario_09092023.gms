*FBA PARA Pseudomonas aeruginosa BY DIANA CAROLINA CLAVIJO Junio 16 DE 2016 1116 reacciones 877 metabolitos
$INLINECOM /*  */
$onListing

OPTION decimals = 8
       sysout = off
       solprint = on
       reslim = 100000
       domlim =10
       optcr = 1E-9
       optca = 0.0
       limcol = 10000
       limrow = 10000
       iterlim = 10000000
       lp = cplex;
*lp = cplex;


set
* Aqui voy a declarar mi set de reacciones para el modelo de Pseudomonas aeruginosas tengo 1116 reacciones
* Tambien declaro mi set de metabolitos para el modelo de Pseudomonas aeruginosa tengo 877 metabolitos

n Reactions set

/
'R1'*'R2565'
/

m Metabolites set

$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\FBA\compounds.txt";

parameter
* Aqui voy a declarar los par�metros del modelo para pseudomonas aeruginosa
* Declaro S la Matriz estequiometrica metabolito m punto reaccion n espacio coeficiente
* Declaro los LB y los UB para cada reacci�n seg�n lo publicado por Pappin haciendo modificacion varias reacciones

s(m,n) Matriz estequiometrica
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\FBA\S_matrix.txt";

lb(n) Lower bound de Rxs
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\FBA\lowerbound_on_fluxes.txt";

ub(n) Upper bound de Rxs
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\FBA\upperbound_on_fluxes.txt";

c(n)
/'R2' 1/
*Aqu� declaro con 1 la reacci�n 914 que es la de biomasa en este modelo
;


variable
miu
v(n)

equation

fmiu             Ecuacion de la funcion objetivo
balance(m)       Ecuaci�n de balances para los m;

fmiu..  miu=e=v('R2');
balance(m).. 0=e=sum(n,s(m,n)*v(n));

*Ecucai�n de restriccion lower bound
v.lo(n)=lb(n);
*Ecuaci�n de restricci�n Upper bound
v.up(n)=ub(n);
*R13 o2[e] <=> * ok
*v.fx('R13') = -10;

*Aqui voy a declarar las ecuaciones de restricciones adicionales
*Fijando el flujo de glucosa R1040 _e_ : glc-D <==>
*Fijando el flujos de ox�geno R1080 _e_ : o2 <==>
*Fijando el flujo del upper bound para la producci�n de ATP R144 adp_c_ + (4) h_e_ + pi_c_ <==> atp_c_ + (3) h_c_ + h2o_c_

*V.fx('R1040') =-10;
*v.fx('R1080') =-10;
*v.up('R145') =0;
*v.lo('R145') =0;
*v.fx('R1') =0;
*v.fx('R2462') =0;

*h2o[e] <=>
v.lo('R10') =-10;
v.up('R10') =10;
*h[e] <=>
v.lo('R11') =-10;
v.up('R11') =10;
*o2[e] <=>
v.lo('R13') =-10;
v.up('R13') =10;
*asp-L[e] <=>
v.lo('R34') =-10;
v.up('R34') =10;
*gly[e] <=>
v.lo('R37') =-10;
v.up('R37') =10;

*photonVis[e] <=>
v.fx('R50') =-10;

model FBA/all/;
FBA.workspace = 8000;
FBA.optfile=1;
$onecho > cplex.opt
epopt=1.0000001e-9
eprhs=1.0000001e-9
epint=1.0000001e-9
feasopt=0
threads=4
$offecho
*FBA.workspace = 800000;

solve FBA using LP maximizing miu;

display v.l, miu.l;

file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\FBA_GAMS_EST.csv/;

put results;

put ' '/;

put "Objective function", miu.l:0:8 /;

put ' '/;
put '/'/;
loop(n,
put "'"n.tl:0:30"'", "   ", v.l(n):0:8/;
)
;
put "/" /;

putclose results;