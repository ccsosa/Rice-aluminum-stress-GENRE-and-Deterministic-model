*FBA PARA Pseudomonas aeruginosa BY DIANA CAROLINA CLAVIJO Junio 16 DE 2016 1116 reacciones 877 metabolitos

OPTION decimals = 8
       sysout = off
       solprint = on
       reslim = 100000
    
       optcr = 1E-9
       optca = 0.0
       limcol = 10000
       limrow = 10000
       iterlim = 10000000
       lp = cplex;
   

    
set
* Aqui voy a declarar mi set de reacciones para el modelo de Pseudomonas aeruginosas tengo 1116 reacciones
* Tambien declaro mi set de metabolitos para el modelo de Pseudomonas aeruginosa tengo 877 metabolitos


n Reactions set
/
'R1'*'R2565'
/


m Metabolites set
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\PSEUDO\compounds.txt";

parameter
* Aqui voy a declarar los par�metros del modelo para pseudomonas aeruginosa
* Declaro S la Matriz estequiometrica metabolito m punto reaccion n espacio coeficiente
* Declaro los LB y los UB para cada reacci�n seg�n lo publicado por Pappin haciendo modificacion varias reacciones

s(m,n) Matriz estequiometrica
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\PSEUDO\S_matrix.txt";

lb(n) Lower bound de Rxs
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\PSEUDO\lowerbound_on_fluxes.txt";

ub(n) Upper bound de Rxs
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\PSEUDO\upperbound_on_fluxes.txt";

c(n)
/R2 1/
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

*Ecucai�n de restriccion low    er bound
v.lo(n)=lb(n);

*Ecuaci�n de restricci�n Upper bound
v.up(n)=ub(n);

*Aqui voy a declarar las ecuaciones de restricciones adicionales
*Fijando el flujo de glucosa R1040 [e] : glc-D <==>
*Fijando el flujos de ox�geno R1080 [e] : o2 <==>

*h2o[e] <=>
*v.lo('R10') =-10;
*v.up('R10') =10;
v.fx('R10') =-10;
*h[e] <=>
*v.lo('R11') =-10;
*v.up('R11') =10;
*o2[e] <=>
*v.lo('R13') =-10;
*v.up('R13') =10;
v.fx('R13') =-10;
*asp-L[e] <=>
*v.lo('R34') =-10;
*v.up('R34') =10;
*gly[e] <=>
*v.lo('R37') =-10;
*v.up('R37') =10;
*photonVis[e] <=>
v.fx('R50') =-10;
*R150 adp[s] + 3 h[u] + pi[s] --> atp[s] + 3 h[s] + h2o[s] * maximum value if blocked
*V.fx('R150') = 10; 
*R151 adp[m] + 3 h[c] + pi[m] --> atp[m] + 2 h[m] + h2o[m] * maximum value if blocked
*V.fx('R151') = 10;
*Fijando el flujo del upper bound para la producci�n de ATP R144 adp[c] + (4) h[e] + pi[c] <==> atp[c] + (3) h[c] + h2o[c]
*V.fx('R1040') =-10;
*V.fx('R1080') =-10;
*v.up('R144') =10;

*R150 adp[s] + 3 h[u] + pi[s] --> atp[s] + 3 h[s] + h2o[s] * maximum value if blocked
*V.fx('R150') = -10; 
*R151 adp[m] + 3 h[c] + pi[m] --> atp[m] + 2 h[m] + h2o[m] * maximum value if blocked
*V.fx('R151') = -10;
*R2057 atp[m] + adp[c] + h[c] --> atp[c] + adp[m] + h[m]
*V.fx('R2057') = -10;
*R2169 adp[c] + atp[s] + h[c] --> adp[s] + atp[c] + h[s]
*V.fx('R2169') = -10;
*R50 photonVis[e] <=>   
*V.fx('R50') = -5;

*V.fx('R8') = -10;
*R9 co2[e] <=>
*fix mg, co2, atp, no3,nh4
*V.fx('R9') = -10;
*R9 co2[e] <=>
*v.lo('R9') = -10;
*R10 h2o[e] <=> * ok high value if blocked
*V.fx('R10') = -10;
*R11 h[e] <=> * ok high value if blocked
*V.fx('R11') = -10;
*R12 no3[e] <=>
*V.fx('R12') = -10;
*R13 o2[e] <=> * ok
*V.fx('R13') = -10; 
*R14 pi[e] <=> * decreased obj func value if blocked
*V.fx('R14') = -10;
*R15 sucr[e] <=> * decreased obj func value if blocked
*V.fx('R15') = -10;
*R16 fru-B[e] <=>
*V.fx('R16') = -10;
*R17 glc-A[e] <=>
*V.fx('R17') = -10;
*R18 so4[e] <=> it is problematic
*V.lo('R18') = -10;
*R20 so3[e] <=>
*V.lo('R20') = -10;
*R21 h2s[e] <=> * decreased obj func value if blocked
*V.fx('R21') = -10;
*R22 nh4[e] <=> * no changes
*V.fx('R22') = -10;
*R23 asn-L[e] <=> * no changes
*V.fx('R23') = -10;
*R25 etoh[e] <=> *it is problematic
*V.fx('R25') = -10; 
*R26 ac[e] <=> #it is problematic
*V.fx('R26') = -10; 
*R27 lac-L[e] <=>; #it is problematic
*V.fx('R27') = -10;
*R42 met-L[e] <=>#* negative
*V.fx('R42') = -10;
*R50 photonVis[e] <=> * no change
*V.fx('R50') = -10;
*V.fx('R50') = -10;
*R29 fe2[e] <=>
*V.lo('R29') = -10;
*V.up('R29') = 0;
*R30 fe3[e] <=>
*V.lo('R30') = -10;
*V.up('R30') = 0;
*R31 mg2[e] <=>
*V.lo('R31') = -10;
*V.up('R31') = 0;
*V.lo('R31') = -5;
*V.fx('R31') = -5;
*R87 h2o[e] <=> h2o[c]
*V.fx('R87') = 10;
*R88 h[e] <=> h[c]
*V.fx('R88') = 10;
*R89 no3[e] <=> no3[c]
*V.fx('R89') = 10;

model FBA /all/;
*https://www.ibm.com/docs/en/icos/22.1.0?topic=information-analyzing-infeasible-problems
*https://www.gams.com/latest/docs/S_CPLEX.html#CPLEXfeasoptmode
*https://raw.githubusercontent.com/maranasgroup/Optimization_Methods_in_Metabolic_Networks/master/Chapter_4_MILP/cplex.opt
FBA.workspace = 8000;
FBA.optfile=1;
$onecho > cplex.opt
iis = 1
feasopt=0
epmrk=0.9
quality=1
preind=1
threads=6
datacheck=2
scaind=1
$offecho

solve FBA using LP max miu;

display v.l, miu.l;


*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_0.1.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_0.5.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_1.csv/;
file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_20.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_50.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_100.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_200.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_500.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_1000.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_2000.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_5000.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_10000.csv/;
*file results /D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\FLUX_RESULTS\SC2\PSEUDOESTACIONARIO_GAMS_200_S2_20000.csv/;

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

*Aqui voy a declarar las restricciones de las Rxs metabolicas de uni�n con la red de QS
*Flujo Rx de producci�n de n3oxdd-hsl  R516 [c] : 3oxddACP + amet <==> 5mta + ACP + h + n3oxdd-hsl
*Flujo Rx de producci�n de nb-hsl      R526 [c] : amet + butACP <==> 5mta + ACP + h + nb-hsl
*Flujo Rx de transporte de pqs         R672 pqs[c] <==> pqs[e]
*Flujo Rx de producci�n de pqs         R673 [c] : nadh + h + hhq + o2 --> nad + h2o + pqs
*Flujo Rx de transporte de n3oxdd-hsl  R906 n3oxdd-hsl[c] <==> n3oxdd-hsl[e]
*Flujo Rx de transporte de nb-hsl      R907 nb-hsl[c] <==> nb-hsl[e]
*Flujo Rx de producci�n de Ferribactin R911 [c] : glu-L + tyr-L + (2) ser-L + arg-L + 24dab + (2) fohorn + lys-L + (2)  thr-L --> fbn + (12) h2o + (2) h
*Flujo Rx de producci�n de Pyoverdin   R912 [c] : fbn + o2 --> pvd1 + h2o
*Flujo Rx de transporte de Pyoverdin   R913 pvd1[c] --> pvd1[e]


set

i intervalo
/
1*501
/
*R220 S-Adenosyl-L-methionine production
*R416 1-Aminocyclopropane-1-carboxylate production
*R417 Ethylene production
*R2384 Auxin transport
*R2451 Indolepyruvate production
*R2452 Indole-3-acetate production
*R2522 Auxin transport

quorum(n)


/
*R220
*R416
R417
*R2384
R2451
*R2452
*R2522
/

parameter

rest(i,quorum)
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\0.1_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\0.5_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\1_SC2_.txt";
$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\20_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\50_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\100_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\200_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\500_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\1000_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\2000_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\5000_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\10000_SC2_.txt";
*$include "D:\PROGRAMAS\Dropbox\shared\Metabolic_network_manual_curation\GAMS\GAMS_INPUTS\DYN_FLUXES\200000_SC2_.txt";

alias(i, i2);

loop (i2, V.fx(quorum)=rest(i2,quorum);

solve FBA using LP max miu;

put ' '/;

put "Objective function", miu.l:9:5 /;

put ' '/;
put '/'/;
loop(n,
put "'"n.tl:5:0"'", "   ", v.l(n):9:5/;
*put "'"n.tl:0:30"'", "   ", v.l(n):0:8/;
);
put "/" /;

)

putclose results;