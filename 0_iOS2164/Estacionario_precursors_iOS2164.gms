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
R1*R2444
/

m Metabolites set
/
dump_s_
eihkaur_s_
no2_m_
no3_m_
o2D_u_
10fthglu_c_
11-kesttt_c_
16-kesttt_c_
22hcampst_c_
2phetoh_c_
34hb_c_
4crsol_s_
5mthglu_c_
5mthglu_v_
5mthglu_x_
6-kesttr_c_
aacoa_s_
acACP_m_
acgal_c_
acylcoa_os_c_
ala-B_m_
ala-B-bet_c_
alatrna_c_
alatrna_m_
alatrna_s_
apocytc_m_
apocytc_s_
arab-L_v_
aracpalm_r_
ardt_r_
argtrna_c_
argtrna_s_
asntrna_c_
asntrna_m_
asntrna_s_
Asn-X-Ser-FSLASH-Thr_c_
asptrna_c_
asptrna_m_
asptrna_s_
b2coa_c_
behdt_r_
behpalm_r_
benzald_c_
cbasp_c_
cbp_m_
chitb_c_
chitin_c_
cinnoh_c_
citr-L_m_
clpn_os_m_
co_s_
conoh_c_
cys-prot_c_
cystrna_c_
cystrna_m_
cystrna_s_
dad-5_c_
dad-5_m_
dad-5_s_
dgdg_os_s_
dhap_m_
dolichol_c_
dopa-L_c_
dtdprmn_c_
f6p-B_v_
fald_c_
fdxox_m_
fdxrd_m_
feralk_c_
G00019_c_
G13045_c_
G13056_c_
g6p-A_v_
g6p-B_v_
gdp_m_
gdpgul_c_
glcn_c_
glcn_s_
glntrna_c_
glutrna_c_
glytrna_c_
glytrna_m_
glytrna_s_
gppppg_c_
gtp_m_
hcys-L_v_
hcys-L_x_
hdca_m_
hddt_r_
hemeA_m_
hista_s_
histrna_c_
histrna_m_
histrna_s_
hso3_x_
hxdcal_r_
hxdceal_r_
hxndl_s_
hxnl_s_
iaa-asp_c_
iaa-gln_c_
iaa-glu_c_
iaainostarab_c_
iaainostgal_c_
iletrna_c_
iletrna_m_
iletrna_s_
kdo2lipid4_m_
leutrna_c_
lipACP_m_
lipro_m_
lystrna_c_
lystrna_m_
lystrna_s_
mal-L_v_
malttt_s_
mcfer_c_
meoh_c_
metjas_c_
met-L_v_
met-L_x_
metsel_c_
mettrna_c_
mettrna_m_
mettrna_s_
mlsdt_r_
mlsol_r_
mntdt_r_
mntol_r_
oaa_v_
oddt_r_
pail35p_c_
pail5p_c_
paps_c_
pc_os_m_
pect_c_
phetrna_c_
phetrna_m_
phetrna_s_
ppgpp_c_
protrna_c_
protrna_m_
protrna_s_
pstrp_c_
ptd1ino_os_m_
rhcys-L_c_
sakur_c_
seahcys_c_
selhcys_s_
seln_s_
selnp_c_
selt_c_
semetselmet_c_
sertrnamet_c_
sertrnasec_c_
sertrna_c_
sertrna_m_
sertrna_s_
sheme_s_
sin_c_
sinoh_c_
sitstfer_c_
sprm_c_
stist_c_
succoa_c_
suchms_c_
thglu_x_
thrtrna_c_
thrtrna_m_
thymd_s_
trdox_m_
trdrd_m_
tricing_c_
trna_c_
trnaala_c_
trnaala_m_
trnaala_s_
trnaarg_c_
trnaarg_s_
trnaasn_c_
trnaasn_m_
trnaasn_s_
trnaasp_c_
trnaasp_m_
trnaasp_s_
trnacys_c_
trnacys_m_
trnacys_s_
trnagln_c_
trnaglu_c_
trnagly_c_
trnagly_m_
trnagly_s_
trnahis_c_
trnahis_m_
trnahis_s_
trnaile_c_
trnaile_m_
trnaile_s_
trnaleu_c_
trnalys_c_
trnalys_m_
trnalys_s_
trnamet_c_
trnamet_m_
trnamet_s_
trnaphe_c_
trnaphe_m_
trnaphe_s_
trnapro_c_
trnapro_m_
trnapro_s_
trnasecys_c_
trnasemet_c_
trnaser_c_
trnaser_m_
trnaser_s_
trnathr_c_
trnathr_m_
trnatrp_c_
trnatrp_m_
trnatrp_s_
trnatyr_c_
trnatyr_m_
trnatyr_s_
trnaval_m_
trnaval_s_
trptrna_c_
trptrna_m_
trptrna_s_
tyramine_c_
tyrtrna_c_
tyrtrna_m_
tyrtrna_s_
uaagmda_c_
uacmam_c_
udcpp_c_
udp_m_
udp_r_
udparab_v_
udpgalfur_c_
ump_m_
upp1_s_
upp3_s_
urea_s_
valtrna_m_
valtrna_s_
dtmp_s_
cgly_c_
1213s-epoxlin_s_
12dgr_os_m_
12dmpo_c_
12oxophyt_c_
12oxophyt_s_
12oxophyt_x_
13dampp_c_
13dpg_c_
13dpg_s_
13-hpod_s_
16opalm_r_
18oole_r_
1ag3p_os_m_
1ag3p_os_r_
1ag3p_os_s_
1agpc_os_r_
1pyr5c_m_
20oarac_r_
22h5camp43e_c_
22obeh_r_
23ddhb_s_
23dhb_s_
23dhmb_m_
23dhmb_s_
23dhmp_s_
24olgnc_r_
25aics_s_
25dhpp_s_
26dap-LL_s_
26dap-M_c_
26ocero_r_
28omntt_r_
2ahbut_s_
2ahhmd_m_
2ahhmp_c_
2ahhmp_m_
2-coum_c_
2cpr5p_s_
2dda7p_s_
2dhp_m_
2dr5p_c_
2herdtl_c_
2herdtl6g_c_
2herdtl8g_c_
2hnrgn_c_
2hnrgn6g_c_
2hnrgn8g_c_
2kmb_c_
2maacoa_m_
2mahmp_s_
2mb2coa_m_
2mbcoa_m_
2mbdhl_m_
2me4p_s_
2mecdp_s_
2mhob_m_
2mhop_m_
2mp2coa_m_
2mpdhl_m_
2ombzl_m_
2omhmbl_m_
2ommbl_m_
2omph_m_
2oxoadp_c_
2oxoadp_m_
2p4c2me_s_
2pg_c_
2pglyc_s_
2sbz_s_
2sbzcoa_s_
30omls_r_
33dma_c_
34hpp_c_
3c2hmp_s_
3c3hmp_s_
3c4mop_s_
3chpthmpp_m_
3dhq_s_
3dhsk_s_
3dsphgn_r_
3haraccoa_r_
3hbcoa_x_
3hbehcoa_r_
3hbutACP_m_
3hbutACP_s_
3hcercoa_r_
3hdcoa_m_
3hdcoa_x_
3hddcoa_m_
3hddcoa_x_
3hddecACP_m_
3hddecACP_s_
3hdecACP_m_
3hdecACP_s_
3hhcoa_m_
3hhcoa_x_
3hhdcoa_m_
3hhdcoa_x_
3hhexACP_m_
3hhexACP_s_
3hib_m_
3hibutcoa_m_
3hlgnccoa_r_
3hmbcoa_m_
3hmlscoa_r_
3hmntcoa_r_
3hmrsACP_s_
3hocoa_m_
3hocoa_x_
3hoctaACP_m_
3hoctaACP_s_
3hoctacoa_x_
3hoctACP_m_
3hoctACP_s_
3hpalmACP_m_
3hpalmACP_s_
3hpcoa_c_
3hpcoa_m_
3hpp_c_
3htdcoa_m_
3htdcoa_x_
3mb2coa_m_
3mbdhl_m_
3mgcoa_m_
3mhtpp_m_
3mop_m_
3mop_s_
3-non_s_
3-nond_s_
3o2c2poct_x_
3oaraccoa_r_
3obehcoa_r_
3ocercoa_r_
3odcoa_m_
3odcoa_x_
3oddcoa_m_
3oddcoa_x_
3oddecACP_m_
3oddecACP_s_
3odecACP_m_
3odecACP_s_
3ohcoa_m_
3ohcoa_x_
3ohdcoa_m_
3ohdcoa_x_
3ohexACP_m_
3ohexACP_s_
3olgnccoa_r_
3omlscoa_r_
3omntcoa_r_
3omrsACP_m_
3omrsACP_s_
3oocoa_m_
3oocoa_x_
3ooctACP_m_
3ooctACP_s_
3ooctdACP_m_
3ooctdACP_s_
3ooctdcoa_x_
3opalmACP_m_
3opalmACP_s_
3opdhmb_m_
3otdcoa_m_
3otdcoa_x_
3php_s_
3psme_s_
3sala_m_
3sala_s_
3spyr_m_
3spyr_s_
44mctr_c_
44mzym_c_
4abz_c_
4abz_m_
4abz_s_
4adcho_s_
4ahmmp_s_
4ampm_s_
4c2me_s_
4fumacac_c_
4hbz_m_
4hthbpt_c_
4mlacac_c_
4mop_m_
4mop_s_
4mpetz_s_
4mzym_c_
4mzym_int1_c_
4mzym_int2_c_
4pasp_s_
4ppan_c_
4ppcys_c_
56dura_c_
5aizc_s_
5aop_s_
5aprbu_s_
5apru_s_
5dpmev_c_
5fthf_m_
5fthf_s_
5hiu_c_
5houdic_c_
5mdr1p_c_
5mdru1p_c_
5mtr_c_
5oxpro_c_
5pmev_c_
6pgl_c_
6pgl_s_
7dhchsterol_c_
7ijas_x_
8aonn_c_
9-hpod_s_
9-hpot_s_
aacoa_c_
aacoa_m_
aacoa_x_
aact_x_
abs_s_
absald_s_
ac_e_
ac_x_
acac_c_
acac_m_
acald_s_
acg5p_c_
acg5sa_c_
acg5sa_s_
acgam1p_c_
acglu_s_
acnam_c_
acon-C_c_
acon-C_m_
acorn_c_
a-cptxan_s_
acrtnl_s_
act_c_
actACP_m_
actACP_s_
ade_s_
adhlam_m_
adhlam_s_
adpglc_s_
afzl_c_
ahcys_r_
ahdt_c_
akg_x_
akgACPme_c_
alaala_c_
alac-S_m_
alac-S_s_
ala-D_c_
ala-L_e_
ala-L_x_
alltn_c_
alpro_m_
amet_r_
amob_c_
amygd_c_
anth_s_
apgng_c_
apgnnp_c_
aps_c_
ara5p_c_
arab-L_c_
aracol_r_
arg-L_e_
arg-L_m_
arg-L_s_
argsuc_s_
ascb-L_m_
asn-L_e_
asn-L_m_
asp-L_e_
avest_c_
avite1_s_
bamppald_c_
b-carot_s_
b-cptxan_s_
behol_r_
betald_c_
betald_s_
betaldh_s_
b-glucan_v_
bgptl_c_
bgptn_c_
biliverd_s_
brsnl_c_
btcoa_c_
btcoa_m_
btn_c_
but2eACP_m_
but2eACP_s_
butACP_m_
butACP_s_
butin_c_
bvite_s_
b-zcarot_s_
cadaverine_s_
caff_c_
caffqnt_c_
caffskm_c_
cala_c_
cala-L_c_
camp_c_
campst43l_c_
campstfer_c_
campstl_c_
catcn_c_
cav_s_
cavsucc_s_
cbasp_s_
cbmp_c_
cdpchol_r_
cdpchol_s_
cdpdag_os_c_
cdpea_r_
cellb_c_
cer2_os_r_
cerdt_r_
cerool_r_
cgly_v_
ch4s_c_
chlestol_c_
chlstol_c_
chor_c_
chor_m_
chsterol_c_
chumu_c_
citr-L_s_
ckdo_c_
cmpacna_c_
cndn5g_c_
cndng_c_
cnxan_s_
co2_e_
coumald_c_
coumghcinn_c_
coumn_c_
coumnt_c_
coumntg_c_
coumoh_c_
coumqnt_c_
coumskm_c_
cpp1_s_
cpppg1_s_
cpppg3_s_
crpe_c_
cstn_c_
ctp_m_
ctrna_c_
cyan_m_
cyan_s_
cyartfer_c_
cyeuol_c_
cys-L_e_
cys-L_v_
cytc_m_
cytc_s_
c-ztn7g_c_
c-ztn9g_c_
c-ztng_c_
c-ztnr_c_
c-ztnrp_c_
damp_c_
dann_c_
db4p_s_
dc2coa_m_
dc2coa_x_
dcaACP_m_
dcaACP_s_
dcacoa_m_
dcacoa_x_
dcamp_c_
dcamp_s_
dcmp_c_
dcyt_c_
dd2coa_m_
dd2coa_x_
ddcaACP_m_
ddcaACP_s_
ddcacoa_m_
ddcacoa_x_
dedoldp_c_
dgmp_c_
dgsn_c_
dha_c_
dha_s_
dhavest_c_
dhbpt_c_
dhbzcarot_s_
dhcinncoa_c_
dhepist_c_
dhf_c_
dhf_m_
dhgly_s_
dhlam_s_
dhlpro_m_
dhncoa_s_
dhnpt_c_
dhor-S_c_
dhor-S_s_
dhpmp_c_
dhpt_m_
dhydro1016_c_
dhydro1016_r_
dhydro1018_c_
dhz_s_
dhz7g_c_
dhz9g_c_
dhzg_c_
din_c_
dkmpp_c_
dldpng_c_
dldpngcaff_c_
dldpntg_c_
dlpdn_c_
dmetgly_s_
dmlz_s_
dmpp_m_
dmpq_s_
dmq_s_
dmsbs_c_
dpcoa_c_
dpplibtn_c_
dpplivlpn_c_
dscl_s_
dtbt_c_
dtdp_c_
dtdp4d6dg_c_
dtdp4d6dm_c_
dtdpglu_c_
dvchlda_s_
dvite_s_
dxtst_c_
e-carot_s_
ecasd_c_
ecasd_s_
ecasdal_c_
ecasdol_c_
edenelo_c_
ee-carotl_s_
egluACPme_c_
ehkaurate_c_
eig3p_s_
eihkaur_c_
eikaur_c_
eikaur_s_
ekaur_c_
ekaur_s_
ekaural_c_
ekaurate_c_
ekaurol_c_
elm_c_
entb_s_
epctcn_c_
epflzn_c_
epimACPme_c_
ergstt_c_
ergsttt_c_
ergtrol_c_
esand_c_
esand_s_
etha_r_
etha_s_
ethamp_s_
ethylene_c_
etoh_c_
etoh_e_
f1p_c_
fad_r_
fadh2_r_
fc1p_c_
fcl-L_c_
fdxox_c_
fdxrd_c_
fe2_c_
fe2_e_
fe3_c_
fe3_e_
fecost_c_
fgam_m_
fglut-S_s_
fmn_m_
fmn_s_
fpram_s_
fprica_s_
frcysmpest_c_
frcysprot_c_
frmd_c_
frp_c_
frprot_c_
fru-B_e_
fuc1p_c_
fuc-L_c_
G00001_c_
G00002_c_
G00003_c_
G00004_c_
G00005_c_
G00006_c_
G00007_c_
G00008_c_
G00012_c_
G00013_c_
G00014_c_
G00143_c_
G00144_c_
G00145_c_
G00146_c_
G00147_c_
G00148_c_
G00149_c_
G00179_c_
G10526_c_
G10595_c_
G10596_c_
G10597_c_
G10598_c_
G10599_c_
G13044_c_
g1p_v_
g3pc_r_
ga1_c_
ga12-ald_c_
ga13_c_
ga14_c_
ga15_c_
ga17_c_
ga25_c_
ga29_c_
ga29cat_c_
ga34_c_
ga37_c_
ga51_c_
ga51cat_c_
ga53_c_
ga8_c_
ga8cat_c_
ga98_c_
gabut_c_
gabutn_c_
gal-L_c_
gallac_c_
gam_c_
gar_m_
gbside_c_
g-carot_s_
gccoa_x_
gcoa_c_
gcoa_m_
gcoa_x_
gdhlam_m_
gdpddman_c_
gdptp_s_
gentdp_c_
glc-A_e_
glc-B_s_
glc-B_v_
glcur_c_
glcur1p_c_
gln-L_e_
glu1sa_s_
glu5p_c_
glu5p_s_
gluACPme_c_
gluala_c_
glucys_m_
glucys_s_
glu-D_c_
glu-L_e_
glu-L_v_
glu-L_x_
gluside_r_
glutrna_s_
glx_m_
gly_e_
gly_v_
glybet_c_
glyc_m_
glyc_s_
glyclt_s_
glyclt_x_
glyc-R_c_
gm1_c_
grdp_c_
grdp_m_
gthox_m_
gthrd_v_
h_e_
h2o_e_
h2o_u_
h2o2_v_
h2s_e_
h2s_m_
habs_s_
hakgACPme_c_
hco3_e_
hconald_c_
hdca_x_
hdcea_x_
hdd2coa_m_
hdd2coa_x_
hdeACP_m_
hemeO_m_
hexACP_m_
hexACP_s_
hfer_c_
his-L_e_
his-L_m_
hisp_s_
histd_s_
histda_s_
hmglut-S_s_
hmppp9me_s_
hpimACPme_c_
hso3_e_
huml_c_
humu_c_
hx2coa_m_
hx2coa_x_
hxcoa_m_
hxcoa_x_
hydro16_c_
hydro18_c_
hydro20_r_
hydro22_r_
hydro24_r_
hydro26_r_
hydro28_r_
hydro30_r_
iaa-ala_c_
iaa-leu_c_
iad_c_
iasp_s_
icit_x_
ile-L_e_
imacp_s_
imp_s_
ind3acetaldoxime_c_
ind3acg_c_
ind3acnl_c_
indole_s_
indpyr_c_
inost_r_
iorntn2g_c_
iorntn2gcoum_c_
ipadn_c_
ipadne7g_c_
ipadne9g_c_
ipadp_s_
ipatp_s_
iscprn_c_
iscprn2gcoum_c_
iscprn2gfer_c_
iscs_s_
iscssh_s_
isfst_c_
isoqtgn_c_
ivtxn_c_
ivtxn2g_c_
ivtxn2gfer_c_
jas_x_
jascoa_x_
jasile_c_
jasleu_c_
jasval_c_
kdo_c_
kdo8p_c_
kdolipid4_m_
kmpfl3g_c_
kpimACPme_c_
L2aadp_c_
L2aadp6sa_c_
lac-D_c_
lac-L_e_
lacxan_s_
lald_c_
lanost_c_
lcdpn_c_
leu-L_e_
leu-L_m_
leu-L_s_
lgncol_r_
lgndt_r_
lgt-S_c_
lim_s_
lipidA_m_
lipidAds_m_
lipidX_m_
lnlnl_x_
lnlnlACP_m_
lpam_s_
lpro_m_
lqtgn_c_
ltlng_c_
ltlnnp_c_
lys-L_e_
lys-L_m_
malACPme_c_
malcoa_s_
maltt_s_
man1p_c_
manit_c_
marm_c_
mchsterol_c_
mercppyr_m_
mercppyr_s_
mergtrol_c_
met-L_e_
metphnl_c_
mfecostrl_c_
mg2_c_
mg2_e_
mg2_s_
mgdg_os_s_
mgr_os_c_
mi12345p_c_
mi12346p_c_
mi12356p_c_
mi14p_c_
mi3456p_c_
mi346p_c_
mi4p-D_c_
mmet_c_
mmsa_m_
mnqnne_s_
mnt_c_
mppp9_s_
mppp9me_s_
msbq_s_
mthgxl_c_
mthgxl_x_
mtrctn_c_
myrsACP_m_
nac_c_
nad_v_
nadh_v_
ncam_c_
nh4_e_
nh4_x_
nicrnt_s_
no2_s_
no2_v_
no3_e_
no3_v_
npdp_s_
nrgchal_c_
nxan_s_
o2_e_
o2_v_
obfool_c_
oc2coa_m_
oc2coa_x_
ocACP_s_
occoa_m_
occoa_x_
ocdca_r_
ocdca_x_
ocdcaACP_m_
ocdcea_x_
ocdcya_x_
oclysLCP_m_
ocp4t2ecoa_x_
ocp6t2ecoa_x_
ocp8t2ecoa_x_
octdp_m_
omppp9me_s_
oopc4coa_x_
oopc6coa_x_
oopc8coa_x_
opc4coa_x_
opc4hacoa_x_
opc6coa_x_
opc6hacoa_x_
opc8coa_x_
opc8hacoa_x_
orn_m_
orn_s_
orntn_c_
orot_c_
orot_s_
orot5p_s_
oxa_c_
ozln-A_c_
ozln-B_c_
ozln-E_c_
ozln-F_c_
ozln-S_c_
pa_os_s_
pacald_c_
pail3p_c_
pail4p_c_
pan4p_c_
pant-R_c_
pant-R_m_
pap_s_
pc_os_s_
pccu1p_u_
pccu2p_u_
pe_os_m_
pg_os_m_
pgp_os_c_
pgp_os_r_
phas_s_
phdp_s_
phe-L_e_
phe-L_m_
pheme_c_
phom_c_
phpyr_s_
phtc-A_c_
phtc-D_c_
phtc-E_c_
phyt_s_
phytfl_s_
phytol_s_
pi_e_
pimACP_c_
pimACPme_c_
pinban_c_
pincem_c_
pinchal_c_
plast_s_
plgng_c_
plibtn_c_
plibtn_m_
plivlpn_c_
plivlpn_m_
pmtcoa_m_
pnq_s_
pnto-R_c_
ppbng_s_
ppgpp_s_
pphn_c_
ppi_v_
pplibtn_c_
pplivlpn_c_
pppg9_s_
pppgpp_c_
pqnne_s_
pram_s_
pran_s_
prbamp_s_
prbatp_s_
prfp_s_
primard_s_
primardn_s_
prlp_s_
pro-L_e_
prpncoa_m_
prunasin_c_
ps_os_c_
pser-L_s_
psor_c_
psqldp_c_
ptrna_c_
pyr_v_
pyr_x_
qnt_c_
qrctn3g_c_
quln_s_
r1p_s_
rib-D_s_
ribflv_c_
ribflv_s_
s17bp_s_
saccrp-L_c_
sarc_s_
scl_s_
sclgn_c_
sdhlam_m_
selhcys_c_
sephchc_s_
sephhc_s_
ser-L_e_
ser-L_x_
sinald_c_
skm_c_
skm_s_
skm5p_s_
so4_e_
so4_m_
so4_x_
sph1p_r_
sphs1p_r_
sq12dgr_os_s_
sql_c_
srntn_c_
stcsd_c_
stem_c_
stem_s_
stemol_c_
succ_x_
succoa_s_
sucr_e_
sucsal_m_
suo2_s_
tarac2ecoa_r_
tbeh2ecoa_r_
tcer2ecoa_r_
tcynt_m_
tcynt_s_
td2coa_m_
td2coa_x_
tdcoa_m_
tdcoa_r_
tddec2eACP_m_
tddec2eACP_s_
tdec2eACP_m_
tdec2eACP_s_
thbpt_c_
thex2eACP_m_
thex2eACP_s_
thf_v_
thglu_c_
thm_c_
thr-L_e_
thr-L_m_
thr-L_s_
thr-L_x_
thydro91018_c_
thydro91018_r_
thymd_c_
tlgnc2ecoa_r_
tmls2ecoa_r_
tmnt2ecoa_r_
tmrs2eACP_m_
tmrs2eACP_s_
toct2eACP_m_
toct2eACP_s_
toctd2eACP_m_
toctd2eACP_s_
toctd2ecoa_x_
tpalm2eACP_m_
tpalm2eACP_s_
trctn_c_
trdox_s_
trdrd_s_
tre_c_
tre6p_c_
triglyc_os_c_
trnaglu_s_
trp-L_e_
trp-L_m_
trpn_c_
tstn_c_
tsul_e_
tsul_m_
tsul_s_
ttdca_r_
ttdca_x_
tyr-L_e_
tyr-L_m_
t-ztn7g_c_
t-ztn9g_c_
t-ztng_c_
t-ztnr_c_
t-ztnrtp_s_
u3aga_m_
u3hga_m_
uaccg_c_
uacgam_m_
uagmda_c_
uama_c_
uamag_c_
uamr_c_
udpddg_c_
udpg_r_
udpg_s_
udpgalur_c_
udpkrmn_c_
udpsq_s_
ugmd_c_
ugmda_c_
uhom-L_s_
umblf_c_
ura_s_
urate_c_
urdgly_c_
utp_s_
utp_v_
val-L_e_
vtxn_c_
xanxn_s_
xylan_c_
xyl-D_c_
xylu-D_c_
yvite_s_
z-carot_s_
znxan_s_
zym_int1_c_
zym_int2_c_
o2_u_
12o9dd_s_
13-hpot_s_
1acpc_c_
1Dgali_c_
1pyr5c_c_
1pyr5c_s_
22h5camp3e_c_
23dhdp_s_
26dap-M_s_
2aobut_x_
2obut_s_
2pg_s_
34hpp_s_
3ig3p_s_
3mob_s_
3opdhb_m_
3ophb_m_
4abut_m_
4abut_s_
4abutn_c_
4r5au_s_
5camp3e_c_
5fthf_c_
6pgc_c_
6pgc_s_
9-nonan_s_
acACP_s_
acald_m_
a-carot_s_
acgam6p_c_
acglu_c_
achms_c_
achms_s_
acmana_c_
acorn_s_
ACP_os_m_
ACP_os_s_
acser_m_
acser_s_
adp_v_
agm_c_
aicar_s_
air_s_
alltt_c_
ametam_c_
arac_r_
argsuc_c_
asn-L_s_
atp_v_
B-ara1p_c_
beh_r_
b-glucan_c_
btcoa_x_
campst43e_c_
cbp_c_
cdp_s_
cer1_os_r_
cero_r_
chla_s_
chlb_s_
chldb_s_
chol_c_
cinnald_c_
cinncoa_c_
cit_x_
ckdo_m_
cndn35dg_c_
cnln-L_s_
co2_x_
conald_c_
cyart_c_
cytd_s_
dad-2_c_
dadp_c_
d-carot_s_
dcdp_c_
dgdp_c_
dhdascb_c_
dhdxstn_c_
dhn_s_
dhtstn_c_
dhydro1018_r_
dldpndg_c_
dlgcgg_c_
dnad_c_
doldp_c_
dudp_c_
dxcstn_c_
dxstn_c_
dxyl5p_s_
ecasdate_c_
epist_c_
erdtl_c_
erdtlt_c_
fdp-B_s_
fe3_s_
fer_c_
fgam_s_
ficytc_m_
focytc_m_
frdp_m_
frdp_s_
frnsl_c_
frnsol_c_
fum_m_
G00009_c_
G00011_c_
G00015_c_
ga19_c_
ga20_c_
ga36_c_
ga4_c_
ga44_c_
ga9_c_
gal1p_c_
gam6p_c_
gar_s_
gcald_c_
gdpfuc_c_
gdpgal_c_
gln-L_m_
glu5sa_c_
gluside_c_
glx_c_
glx_s_
glyald_c_
glybet_s_
glyc3p_s_
glyclt_c_
glyc-R_x_
gm3_c_
grdp_s_
gthox_c_
gthrd_m_
h2s_s_
hco3_s_
hdca_s_
hdcea_r_
hdcea_s_
hdcoa_x_
hgentis_c_
hmbil_s_
hmgcoa_c_
hmgcoa_m_
hpyr_s_
hpyr_x_
hso3_c_
ibcoa_m_
ichor_s_
id3acald_c_
ile-L_m_
ile-L_s_
iorntn_c_
ipadn_s_
ipadne_s_
iscprn2g_c_
ivcoa_m_
kmpfl_c_
lcyc_c_
lgnc_r_
lnlncoa_r_
lnlncoa_x_
lnlnl_r_
lplg_c_
lthstrl_c_
ltln_c_
lutein_s_
lycop_s_
malcoa_m_
mal-L_x_
malt_s_
man_c_
man6p_c_
melib_c_
menecyart_c_
met-L_m_
mev-R_c_
mhdascb_m_
mi1346p_c_
mls_r_
mntt_r_
moma_s_
mpq_s_
msa_c_
na1_s_
nmn_c_
no_c_
nrgnt_c_
nrsprn_s_
oaa_x_
ocACP_m_
ocdca_c_
ocdca_s_
ocdcea_s_
ocdcya_r_
ocdcyaACP_m_
ocdycacoa_r_
octdp_s_
octeACP_m_
odecoa_r_
ozln-C_c_
ozln-D_c_
pail45p_c_
paps_s_
pc_os_c_
pgp_os_m_
pheme_m_
phpyr_c_
phtc-B_c_
phtc-C_c_
pi_r_
plgn_c_
ppcoa_m_
ppp9_s_
primardt_s_
pro-L_m_
ps_os_m_
ps_os_r_
psphings_r_
pyam5p_c_
qrctn_c_
rb15bp_s_
s7p_s_
scodp_s_
selcys_s_
selcyst_s_
selmet_c_
sitst_c_
so4_s_
spmd_c_
Ssq23epx_c_
stc_c_
stcoa_r_
suc6p_c_
suc6p_v_
succ_s_
succoa_m_
suchms_s_
tdcoa_c_
tdcoa_x_
thdp_s_
thglu_v_
thm_s_
thmpp_c_
tpst_c_
tricin_c_
tsul_c_
ttdca_c_
ttdca_s_
t-ztnr_s_
t-ztnrdp_s_
t-ztnrp_s_
u23ga_m_
udpacgal_c_
udpg_v_
udpgal_s_
udprmn_c_
uppg1_s_
urdglyc_c_
val-L_m_
val-L_s_
xu5p-D_c_
10fthf_c_
10fthf_m_
12dgr_os_s_
1-kesttr_c_
2ahethmpp_m_
3hmrsACP_m_
3mob_m_
3pg_c_
5mta_c_
5mthf_c_
5mthf_s_
ac_m_
ACP_c_
acser_c_
ahcys_m_
ala-L_m_
ala-L_s_
apgn_c_
aps_s_
arogenate_s_
asp-L_m_
aspsa_s_
b2coa_x_
campst_c_
cellulose_c_
cer3_os_r_
chol_s_
cholp_r_
cholp_s_
cndn_c_
coum_c_
ctp_r_
ctp_s_
cyan_c_
cytd_c_
c-ztn_c_
datp_c_
dgtp_c_
dhdascb_s_
dhk_c_
dhz_c_
dolpglc_c_
dtmp_c_
dttp_c_
duri_c_
dutp_c_
e4p_s_
ecasd2ate_c_
esandol_c_
fa_os_c_
fald_s_
fdp-B_c_
fdxox_u_
fdxrd_u_
fmn_c_
for_m_
G00010_c_
G00171_c_
ga12_c_
ga24_c_
glc-A_v_
glu5sa_m_
glu5sa_s_
glyc3p_c_
glyc3p_m_
glyc3p_r_
gm2_c_
gthox_s_
h2o2_m_
hco3_m_
hdca_c_
hdca_r_
hdcea_c_
hdeACP_s_
hgentis_s_
his-L_s_
hso3_m_
hydro16_r_
hydro18_r_
iaainost_c_
ipamp_s_
lac-L_c_
lnlnl_c_
lnlnlACP_s_
lys-L_s_
malACP_c_
mi13456p_c_
mi1345p_c_
mi134p_c_
mi34p_c_
mi3p-D_c_
mlscoa_r_
msa_m_
myrsACP_s_
na1_m_
nicrnt_c_
no2_c_
ocdcaACP_s_
ocdcea_c_
ocdcea_r_
ocdcya_c_
pa_os_m_
palmACP_m_
pdx5p_c_
pe_os_c_
phe-L_s_
pheme_s_
phom_s_
pi_v_
pmtcoa_r_
pro-L_s_
ptd1ino_os_r_
pydam_c_
pydxn_c_
raffin_c_
ru5p-D_c_
ru5p-D_s_
selcyst_c_
seln_c_
ser-L_r_
sphings_r_
stcoa_c_
stcoa_x_
sucr_v_
thcrm_c_
thmmp_s_
triglyc_os_r_
trp-L_s_
tryptamine_c_
udp_v_
uppg3_s_
ura_c_
uri_s_
vlxan_s_
xmp_c_
xtsn_c_
xu5p-D_s_
zxan_s_
zymst_c_
10fthf_s_
12dgr_os_c_
12dgr_os_r_
2ahethmpp_s_
2dr1p_c_
2obut_c_
acald_c_
acgam_c_
adp_r_
amet_m_
araccoa_r_
asn-L_c_
behcoa_r_
cbp_s_
cdpdag_os_m_
cdpdag_os_r_
cercoa_r_
chol_r_
cit_m_
citr-L_c_
dctp_c_
dhqrctn_c_
dump_c_
ethamp_r_
fru-B_v_
fum_s_
g1p_c_
g1p_s_
g6p-A_s_
g6p-B_s_
gdp_s_
ggdp_s_
glucan_s_
gly_x_
glyc-R_s_
gsn_c_
gua_c_
h2mb4p_s_
h2s_c_
hcys-L_s_
hdcoa_c_
hdcoa_r_
ins_c_
ipadne_c_
ipdp_m_
jas_c_
lgnccoa_r_
lnlncoa_c_
lnlnl_s_
methf_c_
methf_m_
met-L_s_
mhdascb_s_
mi145p_c_
mlthf_s_
mntcoa_r_
nh4_m_
oaa_s_
ocdcya_s_
ocdcyaACP_s_
ocdycacoa_x_
octeACP_s_
odecoa_x_
pa_os_r_
pdp_s_
pe_os_r_
pmtcoa_x_
ptd1ino_os_c_
ptrc_c_
pydx_c_
selcys_c_
ser-L_m_
so4_c_
t-cinn_c_
trdox_c_
trdrd_c_
tyr-L_s_
t-ztn_s_
uri_c_
xan_c_
4abut_c_
ala-B_c_
anxan_s_
caffcoa_c_
chor_s_
cmp_m_
cmp_r_
cmp_s_
cys-L_m_
cyst-L_s_
dhap_s_
ecdp_s_
f6p-B_s_
fadh2_m_
fdxox_s_
fdxrd_s_
fe2_s_
for_s_
fum_c_
g6p-A_c_
galgluside_c_
glc-A_s_
gly_m_
glyc_c_
gtp_s_
hco3_c_
hcys-L_c_
his-L_c_
hom-L_s_
hxan_c_
icit_c_
icit_m_
methf_s_
minohp_c_
mlthf_c_
mlthf_m_
no3_c_
ocdycacoa_c_
odecoa_c_
orn_c_
palmACP_s_
pc_os_r_
photon410_u_
photon590_u_
photonVis_e_
pmtcoa_c_
pphn_s_
pq_u_
pqh2_u_
prpp_c_
pydx5p_c_
r1p_c_
r5p_c_
rib-D_c_
sphgn_r_
succ_m_
t-ztn_c_
udpglcur_c_
udpxyl_c_
urea_c_
val-L_c_
ac_s_
acylcoa_os_r_
ascb-L_s_
cdp_c_
cit_c_
dhap_c_
dhlam_m_
dmpp_s_
fad_m_
fadh2_s_
g6p-B_c_
glx_x_
gthrd_c_
gthrd_s_
ile-L_c_
imp_c_
ipdp_c_
lpam_m_
lys-L_c_
malcoa_c_
malcoa_r_
mal-L_m_
mhdascb_c_
na1_c_
nadp_x_
nadph_x_
nrgn_c_
oaa_m_
pep_s_
photon430_u_
photon450_u_
photon470_u_
photon510_u_
photon530_u_
photon550_u_
photon570_u_
photon610_u_
photon630_u_
photon650_u_
photon670_u_
photon690_u_
starch_s_
thf_c_
thmpp_s_
udp_s_
udparab_c_
adn_c_
adp_x_
ascb-L_c_
cmp_c_
dmpp_c_
fa_os_r_
fad_s_
frdp_c_
g3p_c_
gly_s_
gmp_c_
h_u_
hso3_s_
mal-L_s_
pep_c_
phe-L_c_
photon490_u_
pro-L_c_
prpp_s_
pyr_m_
q8_m_
r5p_s_
thf_s_
ump_s_
3pg_s_
ade_c_
coumcoa_c_
dolmanp_c_
f6p-B_c_
gal_c_
gdpmann_c_
gly_c_
h2o2_s_
inost_c_
ipdp_s_
leu-L_c_
malACP_m_
pi_x_
q8h2_m_
thf_m_
thr-L_c_
ump_c_
accoa_s_
ahcys_s_
amp_x_
co2_r_
fad_x_
fadh2_x_
fercoa_c_
malACP_s_
ppi_x_
ser-L_c_
trp-L_c_
tyr-L_c_
amet_s_
cys-L_c_
cys-L_s_
fadh2_c_
gln-L_s_
h2o2_x_
ser-L_s_
utp_c_
fad_c_
for_c_
fru-B_c_
gln-L_c_
gtp_c_
ind3ac_c_
mal-L_c_
o2_x_
oaa_c_
thmpp_m_
udpgal_c_
ac_c_
accoa_c_
arg-L_c_
asp-L_s_
g3p_s_
glc-A_c_
nh4_s_
uacgam_c_
amp_r_
coa_s_
ctp_c_
gdp_c_
nad_x_
nadh_x_
o2_m_
o2_r_
pyr_c_
sucr_c_
ACP_m_
h2o_v_
accoa_x_
asp-L_c_
dolp_c_
met-L_c_
pchlda_s_
ppi_r_
accoa_m_
dvpchlda_s_
glc-B_c_
h_v_
h2o2_c_
photonPSI_u_
photonPSII_u_
ala-L_c_
atp_x_
adp_m_
akg_s_
amp_m_
atp_r_
pi_m_
pyr_s_
glu-L_m_
akg_m_
ahcys_c_
nadh_m_
ppi_m_
ACP_s_
coa_x_
h2o_x_
nad_m_
amet_c_
co2_m_
coa_m_
nadh_s_
photonDrain_u_
nad_s_
glu-L_c_
chlda_s_
glu-L_s_
amp_s_
nadh_c_
atp_m_
succ_c_
coa_r_
nad_c_
nadp_m_
nadph_m_
co2_s_
h_x_
h2o_r_
nh4_c_
o2_s_
nadp_r_
nadph_r_
udpg_c_
adp_s_
akg_c_
coa_c_
amp_c_
h2o_m_
pi_s_
ppi_s_
udp_c_
h_r_
co2_c_
atp_s_
ppi_c_
pi_c_
adp_c_
nadph_s_
nadp_s_
nadph_c_
nadp_c_
o2_c_
h_m_
atp_c_
h2o_s_
h_s_
h2o_c_
h_c_
/
parameter
* Aqui voy a declarar los par�metros del modelo para pseudomonas aeruginosa
* Declaro S la Matriz estequiometrica metabolito m punto reaccion n espacio coeficiente
* Declaro los LB y los UB para cada reacci�n seg�n lo publicado por Pappin haciendo modificacion varias reacciones

s(m,n) Matriz estequiometrica
/
ala-L_c_.R1 -0.0914
arg-L_c_.R1 -0.0639
asp-L_c_.R1 -0.0985
cys-L_c_.R1 -0.0126
glu-L_c_.R1 -0.1758
gly_c_.R1 -0.094
his-L_c_.R1 -0.021
ile-L_c_.R1 -0.045
leu-L_c_.R1 -0.0901
lys-L_c_.R1 -0.0409
met-L_c_.R1 -0.0251
phe-L_c_.R1 -0.041
pro-L_c_.R1 -0.0638
ser-L_c_.R1 -0.0699
thr-L_c_.R1 -0.0478
trp-L_c_.R1 -0.012
tyr-L_c_.R1 -0.0386
val-L_c_.R1 -0.075
glc-A_c_.R1 -0.0265
sucr_c_.R1 -0.5346
fru-B_c_.R1 -0.0169
starch_s_.R1 -1.93
cellulose_c_.R1 -0.74
udparab_c_.R1 -0.054
udpxyl_c_.R1 -0.246
udpgal_c_.R1 -0.0099
udpg_c_.R1 -0.1728
udpglcur_c_.R1 -0.2165
datp_c_.R1 -7e-04
dctp_c_.R1 -5e-04
dttp_c_.R1 -7e-04
dgtp_c_.R1 -5e-04
utp_c_.R1 -0.0072
ctp_c_.R1 -0.0057
gtp_c_.R1 -0.0057
fa_os_r_.R1 -0.0012
triglyc_os_r_.R1 -0.0752
pa_os_r_.R1 -0.001356
pc_os_r_.R1 -0.0244
pe_os_r_.R1 -0.01265
ptd1ino_os_r_.R1 -0.00293
atp_c_.R1 -33.2572
adp_c_.R1 33.2572
pi_c_.R1 33.2572
udp_c_.R1 0.6992
h_c_.R1 0.6992
ala-L_c_.R2 -0.0321
arg-L_c_.R2 -0.0123
asp-L_c_.R2 -0.0417
cys-L_c_.R2 -0.0033
glu-L_c_.R2 -0.0385
gly_c_.R2 -0.0282
his-L_c_.R2 -0.057
ile-L_c_.R2 -0.014
leu-L_c_.R2 -0.0234
lys-L_c_.R2 -0.0153
met-L_c_.R2 -0.0076
phe-L_c_.R2 -0.0133
pro-L_c_.R2 -0.0225
ser-L_c_.R2 -0.0219
thr-L_c_.R2 -0.0192
trp-L_c_.R2 -0.0016
tyr-L_c_.R2 -0.0077
val-L_c_.R2 -0.0225
glc-A_c_.R2 -0.0546
sucr_c_.R2 -0.1049
fru-B_c_.R2 -0.0643
starch_s_.R2 -0.3249
cellulose_c_.R2 -0.74
udparab_c_.R2 -0.054
udpxyl_c_.R2 -0.246
udpgal_c_.R2 -0.0099
udpg_c_.R2 -0.1728
udpglcur_c_.R2 -0.2165
datp_c_.R2 -7e-04
utp_c_.R2 -0.0072
ctp_c_.R2 -0.0057
gtp_c_.R2 -0.0057
dctp_c_.R2 -5e-04
dgtp_c_.R2 -5e-04
dttp_c_.R2 -7e-04
fa_os_r_.R2 -0.0012
triglyc_os_r_.R2 -0.0752
pa_os_r_.R2 -0.001356
pc_os_r_.R2 -0.0244
pe_os_r_.R2 -0.01265
ptd1ino_os_r_.R2 -0.00293
atp_c_.R2 -33.87297
adp_c_.R2 33.87297
pi_c_.R2 33.87297
udp_c_.R2 0.6992
h_c_.R2 0.6992
pmtcoa_c_.R3 -0.2532
hdcoa_c_.R3 -0.0411
odecoa_c_.R3 -0.3398
ocdycacoa_c_.R3 -0.342
lnlncoa_c_.R3 -0.0238
acylcoa_os_c_.R3 1
pmtcoa_r_.R4 -0.2532
hdcoa_r_.R4 -0.0411
odecoa_r_.R4 -0.3398
ocdycacoa_r_.R4 -0.342
lnlncoa_r_.R4 -0.0238
acylcoa_os_r_.R4 1
palmACP_s_.R5 -0.2532
hdeACP_s_.R5 -0.0411
octeACP_s_.R5 -0.3398
ocdcyaACP_s_.R5 -0.342
lnlnlACP_s_.R5 -0.0238
ACP_os_s_.R5 1
palmACP_m_.R6 -0.2532
hdeACP_m_.R6 -0.0411
octeACP_m_.R6 -0.3398
ocdcyaACP_m_.R6 -0.342
lnlnlACP_m_.R6 -0.0238
ACP_os_m_.R6 1
fa_os_c_.R7 -1
hdca_c_.R7 0.2532
hdcea_c_.R7 0.0411
ocdcea_c_.R7 0.3398
ocdcya_c_.R7 0.342
lnlnl_c_.R7 0.0238
fa_os_r_.R8 -1
hdca_r_.R8 0.2532
hdcea_r_.R8 0.0411
ocdcea_r_.R8 0.3398
ocdcya_r_.R8 0.342
lnlnl_r_.R8 0.0238
co2_e_.R9 -1
h2o_e_.R10 -1
h_e_.R11 -1
no3_e_.R12 -1
o2_e_.R13 -1
pi_e_.R14 -1
sucr_e_.R15 -1
fru-B_e_.R16 -1
glc-A_e_.R17 -1
so4_e_.R18 -1
hco3_e_.R19 -1
hso3_e_.R20 -1
h2s_e_.R21 -1
nh4_e_.R22 -1
asn-L_e_.R23 -1
gln-L_e_.R24 -1
etoh_e_.R25 -1
ac_e_.R26 -1
lac-L_e_.R27 -1
tsul_e_.R28 -1
fe2_e_.R29 -1
fe3_e_.R30 -1
mg2_e_.R31 -1
ala-L_e_.R32 -1
arg-L_e_.R33 -1
asp-L_e_.R34 -1
cys-L_e_.R35 -1
glu-L_e_.R36 -1
gly_e_.R37 -1
his-L_e_.R38 -1
ile-L_e_.R39 -1
leu-L_e_.R40 -1
lys-L_e_.R41 -1
met-L_e_.R42 -1
phe-L_e_.R43 -1
pro-L_e_.R44 -1
ser-L_e_.R45 -1
thr-L_e_.R46 -1
trp-L_e_.R47 -1
tyr-L_e_.R48 -1
val-L_e_.R49 -1
photonVis_e_.R50 -1
photonVis_e_.R51 -1
photon410_u_.R51 0.0009290386222
photon430_u_.R51 0.370517176
photon450_u_.R51 0.520401408
photon470_u_.R51 0.094361569
photon490_u_.R51 0.00457897551
photonVis_e_.R52 -1
photon610_u_.R52 0.002879576
photon630_u_.R52 0.003855380193
photon650_u_.R52 0.483357529
photon670_u_.R52 0.456570768
photon690_u_.R52 0.010829504
photonVis_e_.R53 -1
photon430_u_.R53 0.002723395
photon450_u_.R53 0.135928126
photon470_u_.R53 0.189971935
photon490_u_.R53 0.050389911
photon510_u_.R53 0.147583919
photon530_u_.R53 0.132047235
photon550_u_.R53 0.03140161
photon570_u_.R53 0.004592156577
photon590_u_.R53 0.00058518
photon610_u_.R53 0.0008778146299
photon630_u_.R53 0.01410125
photon650_u_.R53 0.140107154
photon670_u_.R53 0.146392098
photon690_u_.R53 0.003258373729
photonVis_e_.R54 -1
photon490_u_.R54 0.072259765
photon510_u_.R54 0.432884077
photon530_u_.R54 0.376758388
photon550_u_.R54 0.102672594
photon570_u_.R54 0.0013448784
photonVis_e_.R55 -1
photon410_u_.R55 0.0875466208216505
photon430_u_.R55 0.0777032069830811
photon450_u_.R55 0.16853092734227
photon470_u_.R55 0.0879940630355183
photon490_u_.R55 0.0554809714890051
photon510_u_.R55 0.0533930518919026
photon530_u_.R55 0.0991797178348545
photon550_u_.R55 0.053840402093837
photon570_u_.R55 0.0593586844218185
photon590_u_.R55 0.0616106756465811
photon610_u_.R55 0.0708277726962523
photon630_u_.R55 0.073676345660808
photon650_u_.R55 0.0314690080805471
photon670_u_.R55 0.0815809794281998
photon690_u_.R55 0.06219
photon410_u_.R56 -1
photonPSI_u_.R56 0.700028
photonDrain_u_.R56 0.299972
photon430_u_.R57 -1
photonPSI_u_.R57 0.796708442
photonDrain_u_.R57 0.203291558
photon450_u_.R58 -1
photonPSI_u_.R58 0.617580018
photonDrain_u_.R58 0.382419982
photon470_u_.R59 -1
photonPSI_u_.R59 0.524710291
photonDrain_u_.R59 0.475289709
photon490_u_.R60 -1
photonPSI_u_.R60 0.399317934
photonDrain_u_.R60 0.600682066
photon510_u_.R61 -1
photonPSI_u_.R61 0.18437505
photonDrain_u_.R61 0.81562495
photon530_u_.R62 -1
photonPSI_u_.R62 0.092758148
photonDrain_u_.R62 0.907241852
photon550_u_.R63 -1
photonPSI_u_.R63 0.098111892
photonDrain_u_.R63 0.901888108
photon570_u_.R64 -1
photonPSI_u_.R64 0.152178
photonDrain_u_.R64 0.847822
photon590_u_.R65 -1
photonPSI_u_.R65 0.191296711
photonDrain_u_.R65 0.808703289
photon610_u_.R66 -1
photonPSI_u_.R66 0.258195936
photonDrain_u_.R66 0.741804064
photon630_u_.R67 -1
photonPSI_u_.R67 0.322072036
photonDrain_u_.R67 0.677927964
photon650_u_.R68 -1
photonPSI_u_.R68 0.552832539
photonDrain_u_.R68 0.447167461
photon670_u_.R69 -1
photonPSI_u_.R69 0.490895969
photonDrain_u_.R69 0.509104031
photon690_u_.R70 -1
photonPSI_u_.R70 0.068254056
photonDrain_u_.R70 0.931745944
photon410_u_.R71 -1
photonPSII_u_.R71 0.768811
photonDrain_u_.R71 0.231189
photon430_u_.R72 -1
photonPSII_u_.R72 0.852685475
photonDrain_u_.R72 0.14731525
photon450_u_.R73 -1
photonPSII_u_.R73 0.791244063
photonDrain_u_.R73 0.208755937
photon470_u_.R74 -1
photonPSII_u_.R74 0.685799028
photonDrain_u_.R74 0.314200972
photon490_u_.R75 -1
photonPSII_u_.R75 0.612537409
photonDrain_u_.R75 0.387462591
photon510_u_.R76 -1
photonPSII_u_.R76 0.348632042
photonDrain_u_.R76 0.651367958
photon530_u_.R77 -1
photonPSII_u_.R77 0.167573364
photonDrain_u_.R77 0.832426636
photon550_u_.R78 -1
photonPSII_u_.R78 0.141326491
photonDrain_u_.R78 0.858673509
photon570_u_.R79 -1
photonPSII_u_.R79 0.157294434
photonDrain_u_.R79 0.842705566
photon590_u_.R80 -1
photonPSII_u_.R80 0.216296356
photonDrain_u_.R80 0.783703644
photon610_u_.R81 -1
photonPSII_u_.R81 0.25191974
photonDrain_u_.R81 0.748080254
photon630_u_.R82 -1
photonPSII_u_.R82 0.298803678
photonDrain_u_.R82 0.701196322
photon650_u_.R83 -1
photonPSII_u_.R83 0.390343412
photonDrain_u_.R83 0.609656588
photon670_u_.R84 -1
photonPSII_u_.R84 0.65691013
photonDrain_u_.R84 0.34308987
photon690_u_.R85 -1
photonPSII_u_.R85 0.367269367
photonDrain_u_.R85 0.632730633
co2_e_.R86 -1
co2_c_.R86 1
h2o_e_.R87 -1
h2o_c_.R87 1
h_e_.R88 -1
h_c_.R88 1
no3_e_.R89 -1
no3_c_.R89 1
o2_e_.R90 -1
o2_c_.R90 1
pi_e_.R91 -1
pi_c_.R91 1
sucr_e_.R92 -1
sucr_c_.R92 1
fru-B_e_.R93 -1
fru-B_c_.R93 1
glc-A_e_.R94 -1
glc-A_c_.R94 1
so4_e_.R95 -1
so4_c_.R95 1
hso3_e_.R96 -1
hso3_c_.R96 1
hco3_e_.R97 -1
hco3_c_.R97 1
h2s_e_.R98 -1
h2s_c_.R98 1
nh4_e_.R99 -1
nh4_c_.R99 1
asn-L_e_.R100 -1
asn-L_c_.R100 1
gln-L_e_.R101 -1
gln-L_c_.R101 1
etoh_c_.R102 -1
etoh_e_.R102 1
ac_c_.R103 -1
ac_e_.R103 1
lac-L_c_.R104 -1
lac-L_e_.R104 1
tsul_e_.R105 -1
tsul_c_.R105 1
fe2_e_.R106 -1
fe2_c_.R106 1
fe3_e_.R107 -1
fe3_c_.R107 1
mg2_e_.R108 -1
mg2_c_.R108 1
ala-L_e_.R109 -1
ala-L_c_.R109 1
arg-L_e_.R110 -1
arg-L_c_.R110 1
asp-L_e_.R111 -1
asp-L_c_.R111 1
cys-L_e_.R112 -1
cys-L_c_.R112 1
glu-L_e_.R113 -1
glu-L_c_.R113 1
gly_e_.R114 -1
gly_c_.R114 1
his-L_e_.R115 -1
his-L_c_.R115 1
ile-L_e_.R116 -1
ile-L_c_.R116 1
leu-L_e_.R117 -1
leu-L_c_.R117 1
lys-L_e_.R118 -1
lys-L_c_.R118 1
met-L_e_.R119 -1
met-L_c_.R119 1
phe-L_e_.R120 -1
phe-L_c_.R120 1
pro-L_e_.R121 -1
pro-L_c_.R121 1
ser-L_e_.R122 -1
ser-L_c_.R122 1
thr-L_e_.R123 -1
thr-L_c_.R123 1
trp-L_e_.R124 -1
trp-L_c_.R124 1
tyr-L_e_.R125 -1
tyr-L_c_.R125 1
val-L_e_.R126 -1
val-L_c_.R126 1
h2o_c_.R127 -1
ppi_c_.R127 -1
h_c_.R127 1
pi_c_.R127 2
h2o_s_.R128 -1
ppi_s_.R128 -1
h_s_.R128 1
pi_s_.R128 2
h2o_m_.R129 -1
ppi_m_.R129 -1
h_m_.R129 1
pi_m_.R129 2
h2o_x_.R130 -1
ppi_x_.R130 -1
h_x_.R130 1
pi_x_.R130 2
h2o_v_.R131 -1
ppi_v_.R131 -1
h_v_.R131 1
pi_v_.R131 2
h2o_c_.R132 -1
ppi_c_.R132 -1
h_x_.R132 1
pi_c_.R132 2
h2o_c_.R133 -1
ppi_c_.R133 -1
h_v_.R133 1
pi_c_.R133 2
pyr_s_.R134 -1
2ahethmpp_s_.R134 -1
alac-S_s_.R134 1
thmpp_s_.R134 1
pyr_m_.R135 -1
2ahethmpp_m_.R135 -1
alac-S_m_.R135 1
thmpp_m_.R135 1
h2o2_v_.R136 -2
h2o_v_.R136 2
o2_v_.R136 1
h2o2_s_.R137 -2
h2o_s_.R137 2
o2_s_.R137 1
h2o2_x_.R138 -2
h2o_x_.R138 2
o2_x_.R138 1
h2o2_m_.R139 -2
h2o_m_.R139 2
o2_m_.R139 1
gln-L_m_.R140 -1
akg_m_.R140 -1
fdxrd_m_.R140 -2
glu-L_m_.R140 2
fdxox_m_.R140 2
h_m_.R140 2
gln-L_s_.R141 -1
akg_s_.R141 -1
fdxrd_s_.R141 -2
glu-L_s_.R141 2
fdxox_s_.R141 2
h_s_.R141 2
co2_s_.R142 -1
h2o_s_.R142 -1
rb15bp_s_.R142 -1
3pg_s_.R142 2
co2_s_.R143 -3
o2_s_.R143 -1
h2o_s_.R143 -3
rb15bp_s_.R143 -4
3pg_s_.R143 7
2pglyc_s_.R143 1
focytc_m_.R144 -4
h_m_.R144 -8
o2_m_.R144 -1
ficytc_m_.R144 4
h_c_.R144 4
h2o_m_.R144 2
h_c_.R145 -2
no3_c_.R145 -1
q8h2_m_.R145 -1
h2o_m_.R145 1
q8_m_.R145 1
h_e_.R145 2
no2_c_.R145 1
h_m_.R146 -4
o2_m_.R146 -1
q8h2_m_.R146 -1
h2o_m_.R146 2
q8_m_.R146 1
h_c_.R146 2
atp_c_.R147 -1
h2o_c_.R147 -1
adp_c_.R147 1
pi_c_.R147 1
h_c_.R147 1
atp_m_.R148 -1
h2o_m_.R148 -1
adp_m_.R148 1
pi_m_.R148 1
h_m_.R148 1
atp_s_.R149 -1
h2o_s_.R149 -1
adp_s_.R149 1
pi_s_.R149 1
h_s_.R149 1
adp_s_.R150 -1
h_u_.R150 -3
pi_s_.R150 -1
atp_s_.R150 1
h_s_.R150 3
h2o_s_.R150 1
adp_m_.R151 -1
h_c_.R151 -3
pi_m_.R151 -1
atp_m_.R151 1
h_m_.R151 2
h2o_m_.R151 1
adp_v_.R152 -1
h_c_.R152 -3
pi_v_.R152 -1
atp_v_.R152 1
h_v_.R152 2
h2o_v_.R152 1
gln-L_s_.R153 -1
akg_s_.R153 -1
nadh_s_.R153 -1
h_s_.R153 -1
glu-L_s_.R153 2
nad_s_.R153 1
gln-L_s_.R154 -1
akg_s_.R154 -1
nadph_s_.R154 -1
h_s_.R154 -1
glu-L_s_.R154 2
nadp_s_.R154 1
gthox_c_.R155 -1
nadph_c_.R155 -1
h_c_.R155 -1
gthrd_c_.R155 2
nadp_c_.R155 1
gthox_s_.R156 -1
nadph_s_.R156 -1
h_s_.R156 -1
gthrd_s_.R156 2
nadp_s_.R156 1
gthox_m_.R157 -1
nadph_m_.R157 -1
h_m_.R157 -1
gthrd_m_.R157 2
nadp_m_.R157 1
atp_c_.R158 -1
amp_c_.R158 -1
adp_c_.R158 2
atp_m_.R159 -1
amp_m_.R159 -1
adp_m_.R159 2
atp_s_.R160 -1
amp_s_.R160 -1
adp_s_.R160 2
atp_c_.R161 -1
h2o_c_.R161 -2
amp_c_.R161 1
ppi_c_.R161 1
h_c_.R161 6
adp_c_.R162 -1
h2o_c_.R162 -1
amp_c_.R162 1
pi_c_.R162 1
h_c_.R162 1
gal1p_c_.R163 -1
utp_c_.R163 -1
h_c_.R163 -1
udpgal_c_.R163 1
ppi_c_.R163 1
atp_c_.R164 -1
dpcoa_c_.R164 -1
adp_c_.R164 1
coa_c_.R164 1
h_c_.R164 1
uri_c_.R165 -1
gtp_c_.R165 -1
ump_c_.R165 1
gdp_c_.R165 1
h_c_.R165 1
uri_s_.R166 -1
gtp_s_.R166 -1
ump_s_.R166 1
gdp_s_.R166 1
h_s_.R166 1
56dura_c_.R167 -1
nadp_c_.R167 -1
h_c_.R167 -1
ura_c_.R167 1
nadph_c_.R167 1
cala_c_.R168 -1
h2o_c_.R168 -1
h_c_.R168 -1
ala-B_c_.R168 1
co2_c_.R168 1
nh4_c_.R168 1
56dura_c_.R169 -1
h2o_c_.R169 -1
cala_c_.R169 1
h_c_.R169 1
dump_c_.R170 -1
mlthf_c_.R170 -1
dhf_c_.R170 1
dtmp_c_.R170 1
cytd_c_.R171 -1
h2o_c_.R171 -1
h_c_.R171 -1
uri_c_.R171 1
nh4_c_.R171 1
cytd_c_.R172 -1
gtp_c_.R172 -1
gdp_c_.R172 1
cmp_c_.R172 1
cytd_s_.R173 -1
gtp_s_.R173 -1
gdp_s_.R173 1
cmp_s_.R173 1
dctp_c_.R174 -1
h2o_c_.R174 -1
nh4_c_.R174 1
dutp_c_.R174 1
ctp_c_.R175 -1
fadh2_c_.R175 -1
fad_c_.R175 1
h2o_c_.R175 1
dctp_c_.R175 1
utp_c_.R176 -1
fadh2_c_.R176 -1
fad_c_.R176 1
h2o_c_.R176 1
dutp_c_.R176 1
atp_c_.R177 -1
fadh2_c_.R177 -1
fad_c_.R177 1
h2o_c_.R177 1
datp_c_.R177 1
gtp_c_.R178 -1
fadh2_c_.R178 -1
fad_c_.R178 1
h2o_c_.R178 1
dgtp_c_.R178 1
dcyt_c_.R179 -1
h2o_c_.R179 -1
h_c_.R179 -1
duri_c_.R179 1
nh4_c_.R179 1
ump_s_.R180 -1
ppi_s_.R180 -1
ura_s_.R180 1
prpp_s_.R180 1
ump_c_.R181 -1
ppi_c_.R181 -1
ura_c_.R181 1
prpp_c_.R181 1
pi_c_.R182 -1
uri_c_.R182 -1
r1p_c_.R182 1
ura_c_.R182 1
pi_s_.R183 -1
uri_s_.R183 -1
r1p_s_.R183 1
ura_s_.R183 1
atp_c_.R184 -1
duri_c_.R184 -1
adp_c_.R184 1
dump_c_.R184 1
h_c_.R184 1
atp_c_.R185 -1
thymd_c_.R185 -1
adp_c_.R185 1
dtmp_c_.R185 1
h_c_.R185 1
atp_c_.R186 -1
cytd_c_.R186 -1
adp_c_.R186 1
cmp_c_.R186 1
h_c_.R186 1
atp_s_.R187 -1
cytd_s_.R187 -1
adp_s_.R187 1
cmp_s_.R187 1
h_s_.R187 1
atp_c_.R188 -1
uri_c_.R188 -1
adp_c_.R188 1
ump_c_.R188 1
h_c_.R188 1
atp_s_.R189 -1
uri_s_.R189 -1
adp_s_.R189 1
ump_s_.R189 1
h_s_.R189 1
dgmp_c_.R190 -1
h2o_c_.R190 -1
dgsn_c_.R190 1
pi_c_.R190 1
dtmp_c_.R191 -1
h2o_c_.R191 -1
thymd_c_.R191 1
pi_c_.R191 1
dtmp_s_.R192 -1
h2o_s_.R192 -1
thymd_s_.R192 1
pi_s_.R192 1
dump_c_.R193 -1
h2o_c_.R193 -1
duri_c_.R193 1
pi_c_.R193 1
dcmp_c_.R194 -1
h2o_c_.R194 -1
dcyt_c_.R194 1
pi_c_.R194 1
cmp_c_.R195 -1
h2o_c_.R195 -1
cytd_c_.R195 1
pi_c_.R195 1
cmp_s_.R196 -1
h2o_s_.R196 -1
cytd_s_.R196 1
pi_s_.R196 1
ump_c_.R197 -1
h2o_c_.R197 -1
uri_c_.R197 1
pi_c_.R197 1
ump_s_.R198 -1
h2o_s_.R198 -1
uri_s_.R198 1
pi_s_.R198 1
atp_c_.R199 -1
utp_c_.R199 -1
gln-L_c_.R199 -1
h2o_c_.R199 -1
adp_c_.R199 1
pi_c_.R199 1
ctp_c_.R199 1
glu-L_c_.R199 1
h_c_.R199 2
dutp_c_.R200 -1
h2o_c_.R200 -1
dump_c_.R200 1
ppi_c_.R200 1
h_c_.R200 1
trdrd_c_.R201 -1
cdp_c_.R201 -1
dcdp_c_.R201 1
trdox_c_.R201 1
h2o_c_.R201 1
trdrd_c_.R202 -1
udp_c_.R202 -1
dudp_c_.R202 1
trdox_c_.R202 1
h2o_c_.R202 1
trdox_s_.R203 -1
nadph_s_.R203 -1
h_s_.R203 -1
trdrd_s_.R203 1
nadp_s_.R203 1
trdox_c_.R204 -1
nadph_c_.R204 -1
h_c_.R204 -1
trdrd_c_.R204 1
nadp_c_.R204 1
trdox_m_.R205 -1
nadph_m_.R205 -1
h_m_.R205 -1
trdrd_m_.R205 1
nadp_m_.R205 1
atp_c_.R206 -1
dtdp_c_.R206 -1
adp_c_.R206 1
dttp_c_.R206 1
atp_c_.R207 -1
dtmp_c_.R207 -1
adp_c_.R207 1
dtdp_c_.R207 1
atp_c_.R208 -1
dudp_c_.R208 -1
adp_c_.R208 1
dutp_c_.R208 1
atp_c_.R209 -1
dump_c_.R209 -1
adp_c_.R209 1
dudp_c_.R209 1
atp_c_.R210 -1
dcdp_c_.R210 -1
adp_c_.R210 1
dctp_c_.R210 1
atp_c_.R211 -1
dcmp_c_.R211 -1
adp_c_.R211 1
dcdp_c_.R211 1
atp_c_.R212 -1
cdp_c_.R212 -1
adp_c_.R212 1
ctp_c_.R212 1
atp_s_.R213 -1
cdp_s_.R213 -1
adp_s_.R213 1
ctp_s_.R213 1
atp_c_.R214 -1
cmp_c_.R214 -1
adp_c_.R214 1
cdp_c_.R214 1
atp_s_.R215 -1
cmp_s_.R215 -1
adp_s_.R215 1
cdp_s_.R215 1
atp_c_.R216 -1
udp_c_.R216 -1
adp_c_.R216 1
utp_c_.R216 1
atp_s_.R217 -1
udp_s_.R217 -1
adp_s_.R217 1
utp_s_.R217 1
atp_v_.R218 -1
udp_v_.R218 -1
adp_v_.R218 1
utp_v_.R218 1
atp_c_.R219 -1
ump_c_.R219 -1
adp_c_.R219 1
udp_c_.R219 1
atp_c_.R220 -1
met-L_c_.R220 -1
h2o_c_.R220 -1
pi_c_.R220 1
ppi_c_.R220 1
amet_c_.R220 1
amp_c_.R221 -1
h2o_c_.R221 -1
h_c_.R221 -1
imp_c_.R221 1
nh4_c_.R221 1
amp_c_.R222 -1
h2o_c_.R222 -1
adn_c_.R222 1
pi_c_.R222 1
atp_c_.R223 -1
adn_c_.R223 -1
adp_c_.R223 1
amp_c_.R223 1
h_c_.R223 1
ade_c_.R224 -1
prpp_c_.R224 -1
amp_c_.R224 1
ppi_c_.R224 1
ade_s_.R225 -1
prpp_s_.R225 -1
amp_s_.R225 1
ppi_s_.R225 1
ahcys_c_.R226 -1
h2o_c_.R226 -1
adn_c_.R226 1
hcys-L_c_.R226 1
h2o_s_.R227 -1
pyr_s_.R227 -1
atp_s_.R227 -1
pi_s_.R227 1
pep_s_.R227 1
amp_s_.R227 1
adp_c_.R228 -1
h_c_.R228 -1
pep_c_.R228 -1
atp_c_.R228 1
pyr_c_.R228 1
adp_s_.R229 -1
h_s_.R229 -1
pep_s_.R229 -1
atp_s_.R229 1
pyr_s_.R229 1
atp_s_.R230 -1
pyr_s_.R230 -1
pi_s_.R230 -1
ppi_s_.R230 1
pep_s_.R230 1
amp_s_.R230 1
atp_c_.R231 -1
pyr_c_.R231 -1
pi_c_.R231 -1
ppi_c_.R231 1
pep_c_.R231 1
amp_c_.R231 1
mal-L_c_.R232 -1
nadp_c_.R232 -1
co2_c_.R232 1
nadph_c_.R232 1
pyr_c_.R232 1
mal-L_s_.R233 -1
nadp_s_.R233 -1
co2_s_.R233 1
nadph_s_.R233 1
pyr_s_.R233 1
2ahethmpp_m_.R234 -1
acald_m_.R234 1
thmpp_m_.R234 1
2ahethmpp_s_.R235 -1
acald_s_.R235 1
thmpp_s_.R235 1
coa_c_.R236 -1
ac_c_.R236 -1
atp_c_.R236 -1
accoa_c_.R236 1
ppi_c_.R236 1
amp_c_.R236 1
coa_x_.R237 -1
ac_x_.R237 -1
atp_x_.R237 -1
accoa_x_.R237 1
ppi_x_.R237 1
amp_x_.R237 1
coa_s_.R238 -1
ac_s_.R238 -1
atp_s_.R238 -1
accoa_s_.R238 1
ppi_s_.R238 1
amp_s_.R238 1
atp_c_.R239 -1
glu-L_c_.R239 -1
adp_c_.R239 1
glu5p_c_.R239 1
atp_s_.R240 -1
glu-L_s_.R240 -1
adp_s_.R240 1
glu5p_s_.R240 1
glu-L_m_.R241 -1
nadp_m_.R241 -1
h2o_m_.R241 -1
akg_m_.R241 1
nh4_m_.R241 1
nadph_m_.R241 1
h_m_.R241 1
glu-L_m_.R242 -1
nad_m_.R242 -1
h2o_m_.R242 -1
akg_m_.R242 1
nh4_m_.R242 1
nadh_m_.R242 1
h_m_.R242 1
glu5sa_m_.R243 -1
h2o_m_.R243 -1
nad_m_.R243 -1
glu-L_m_.R243 1
h_m_.R243 2
nadh_m_.R243 1
glu5sa_s_.R244 -1
h2o_s_.R244 -1
nad_s_.R244 -1
glu-L_s_.R244 1
h_s_.R244 2
nadh_s_.R244 1
glu5sa_m_.R245 -1
h2o_m_.R245 -1
nadp_m_.R245 -1
glu-L_m_.R245 1
h_m_.R245 2
nadph_m_.R245 1
glu5sa_s_.R246 -1
h2o_s_.R246 -1
nadp_s_.R246 -1
glu-L_s_.R246 1
h_s_.R246 2
nadph_s_.R246 1
atp_c_.R247 -1
glu-L_c_.R247 -1
nh4_c_.R247 -1
adp_c_.R247 1
pi_c_.R247 1
gln-L_c_.R247 1
h_c_.R247 1
atp_m_.R248 -1
glu-L_m_.R248 -1
nh4_m_.R248 -1
adp_m_.R248 1
pi_m_.R248 1
gln-L_m_.R248 1
h_m_.R248 1
atp_s_.R249 -1
glu-L_s_.R249 -1
nh4_s_.R249 -1
adp_s_.R249 1
pi_s_.R249 1
gln-L_s_.R249 1
h_s_.R249 1
glx_m_.R250 -1
ala-L_m_.R250 -1
gly_m_.R250 1
pyr_m_.R250 1
glx_x_.R251 -1
ala-L_x_.R251 -1
gly_x_.R251 1
pyr_x_.R251 1
glx_s_.R252 -1
ala-L_s_.R252 -1
gly_s_.R252 1
pyr_s_.R252 1
akg_c_.R253 -1
ala-L_c_.R253 -1
glu-L_c_.R253 1
pyr_c_.R253 1
akg_m_.R254 -1
ala-L_m_.R254 -1
glu-L_m_.R254 1
pyr_m_.R254 1
akg_s_.R255 -1
ala-L_s_.R255 -1
glu-L_s_.R255 1
pyr_s_.R255 1
accoa_c_.R256 -1
glu-L_c_.R256 -1
coa_c_.R256 1
acglu_c_.R256 1
h_c_.R256 1
glu-L_s_.R257 -1
h_s_.R257 -1
4abut_s_.R257 1
co2_s_.R257 1
glu-L_c_.R258 -1
h_c_.R258 -1
4abut_c_.R258 1
co2_c_.R258 1
glu-L_m_.R259 -1
h_m_.R259 -1
4abut_m_.R259 1
co2_m_.R259 1
asp-L_c_.R260 -1
ala-B_c_.R260 1
co2_c_.R260 1
icit_c_.R261 -1
nadp_c_.R261 -1
akg_c_.R261 1
co2_c_.R261 1
nadph_c_.R261 1
icit_m_.R262 -1
nadp_m_.R262 -1
akg_m_.R262 1
co2_m_.R262 1
nadph_m_.R262 1
h2o2_s_.R263 -1
gthrd_s_.R263 -2
gthox_s_.R263 1
h2o_s_.R263 2
h2o2_c_.R264 -1
gthrd_c_.R264 -2
gthox_c_.R264 1
h2o_c_.R264 2
h2o2_m_.R265 -1
gthrd_m_.R265 -2
gthox_m_.R265 1
h2o_m_.R265 2
udpg_c_.R266 -1
h2o_c_.R266 -1
nad_c_.R266 -2
udpglcur_c_.R266 1
nadh_c_.R266 2
h_c_.R266 3
atp_c_.R267 -1
gal_c_.R267 -1
adp_c_.R267 1
gal1p_c_.R267 1
h_c_.R267 1
gal1p_c_.R268 -1
udpg_c_.R268 -1
g1p_c_.R268 1
udpgal_c_.R268 1
tre_c_.R269 -1
h2o_c_.R269 -1
glc-B_c_.R269 2
tre6p_c_.R270 -1
h2o_c_.R270 -1
tre_c_.R270 1
pi_c_.R270 1
udpg_c_.R271 -1
g6p-A_c_.R271 -1
udp_c_.R271 1
tre6p_c_.R271 1
h_c_.R271 1
udpg_c_.R272 -2
h2o_c_.R272 -1
b-glucan_c_.R272 1
udp_c_.R272 2
b-glucan_c_.R273 -1
h2o_c_.R273 -1
glc-B_c_.R273 2
b-glucan_v_.R274 -1
h2o_v_.R274 -1
glc-B_v_.R274 2
b-glucan_c_.R275 -1
h2o_c_.R275 -1
glc-A_c_.R275 2
b-glucan_v_.R276 -1
h2o_v_.R276 -1
glc-A_v_.R276 2
utp_c_.R277 -1
g1p_c_.R277 -1
h_c_.R277 -1
ppi_c_.R277 1
udpg_c_.R277 1
utp_v_.R278 -1
g1p_v_.R278 -1
h_v_.R278 -1
ppi_v_.R278 1
udpg_v_.R278 1
mnt_c_.R279 -1
h2o_c_.R279 -1
gal_c_.R279 1
melib_c_.R279 1
melib_c_.R280 -1
h2o_c_.R280 -1
gal_c_.R280 1
glc-A_c_.R280 1
melib_c_.R281 -1
h2o_c_.R281 -1
gal_c_.R281 1
glc-B_c_.R281 1
stc_c_.R282 -1
h2o_c_.R282 -1
mnt_c_.R282 1
fru-B_c_.R282 1
raffin_c_.R283 -1
h2o_c_.R283 -1
gal_c_.R283 1
sucr_c_.R283 1
stc_c_.R284 -1
h2o_c_.R284 -1
raffin_c_.R284 1
gal_c_.R284 1
1Dgali_c_.R285 -1
raffin_c_.R285 -1
inost_c_.R285 1
stc_c_.R285 1
1Dgali_c_.R286 -1
sucr_c_.R286 -1
inost_c_.R286 1
raffin_c_.R286 1
udpgal_c_.R287 -1
inost_c_.R287 -1
udp_c_.R287 1
1Dgali_c_.R287 1
h_c_.R287 1
udpg_c_.R288 -1
udpgal_c_.R288 1
atp_c_.R289 -1
gdp_c_.R289 -1
adp_c_.R289 1
gtp_c_.R289 1
atp_s_.R290 -1
gdp_s_.R290 -1
adp_s_.R290 1
gtp_s_.R290 1
atp_s_.R291 -1
gtp_s_.R291 -1
amp_s_.R291 1
gdptp_s_.R291 1
ppgpp_s_.R292 -1
h2o_s_.R292 -1
gdp_s_.R292 1
ppi_s_.R292 1
gdptp_s_.R293 -1
h2o_s_.R293 -1
ppgpp_s_.R293 1
pi_s_.R293 1
h_s_.R293 1
atp_s_.R294 -1
ump_s_.R294 -1
adp_s_.R294 1
udp_s_.R294 1
atp_c_.R295 -1
dadp_c_.R295 -1
adp_c_.R295 1
datp_c_.R295 1
atp_c_.R296 -1
dgdp_c_.R296 -1
adp_c_.R296 1
dgtp_c_.R296 1
oaa_c_.R297 -1
atp_c_.R297 -1
co2_c_.R297 1
pep_c_.R297 1
adp_c_.R297 1
mal-L_s_.R298 -1
nadp_s_.R298 -1
oaa_s_.R298 1
nadph_s_.R298 1
h_s_.R298 1
mal-L_s_.R299 -1
nad_s_.R299 -1
oaa_s_.R299 1
nadh_s_.R299 1
h_s_.R299 1
mal-L_c_.R300 -1
nad_c_.R300 -1
oaa_c_.R300 1
nadh_c_.R300 1
h_c_.R300 1
mal-L_x_.R301 -1
nad_x_.R301 -1
oaa_x_.R301 1
nadh_x_.R301 1
h_x_.R301 1
mal-L_m_.R302 -1
nad_m_.R302 -1
oaa_m_.R302 1
nadh_m_.R302 1
h_m_.R302 1
mal-L_v_.R303 -1
nad_v_.R303 -1
oaa_v_.R303 1
nadh_v_.R303 1
h_v_.R303 1
co2_c_.R304 -1
h2o_c_.R304 -1
pep_c_.R304 -1
h_c_.R304 1
oaa_c_.R304 1
pi_c_.R304 1
cit_c_.R305 -1
coa_c_.R305 -1
atp_c_.R305 -1
oaa_c_.R305 1
accoa_c_.R305 1
pi_c_.R305 1
adp_c_.R305 1
oaa_x_.R306 -1
accoa_x_.R306 -1
h2o_x_.R306 -1
cit_x_.R306 1
coa_x_.R306 1
h_x_.R306 1
oaa_m_.R307 -1
accoa_m_.R307 -1
h2o_m_.R307 -1
cit_m_.R307 1
coa_m_.R307 1
h_m_.R307 1
oaa_c_.R308 -1
h2o_c_.R308 -1
h_c_.R308 2
ac_c_.R308 1
oxa_c_.R308 1
oxa_c_.R309 -1
o2_c_.R309 -1
h_c_.R309 -2
co2_c_.R309 2
h2o2_c_.R309 1
asp-L_s_.R310 -1
o2_s_.R310 -1
h_s_.R310 1
h2o2_s_.R310 1
iasp_s_.R310 1
h_s_.R311 -2
prpp_s_.R311 -1
quln_s_.R311 -1
co2_s_.R311 1
nicrnt_s_.R311 1
ppi_s_.R311 1
atp_c_.R312 -1
h_c_.R312 -1
nicrnt_c_.R312 -1
dnad_c_.R312 1
ppi_c_.R312 1
atp_c_.R313 -1
dnad_c_.R313 -1
nh4_c_.R313 -1
amp_c_.R313 1
h_c_.R313 1
nad_c_.R313 1
ppi_c_.R313 1
atp_c_.R314 -1
dnad_c_.R314 -1
gln-L_c_.R314 -1
h2o_c_.R314 -1
amp_c_.R314 1
ppi_c_.R314 1
nad_c_.R314 1
glu-L_c_.R314 1
h_c_.R314 1
dhap_s_.R315 -1
iasp_s_.R315 -1
h2o_s_.R315 2
pi_s_.R315 1
quln_s_.R315 1
atp_c_.R316 -1
h2o_c_.R316 -1
nac_c_.R316 -1
prpp_c_.R316 -1
adp_c_.R316 1
nicrnt_c_.R316 1
pi_c_.R316 1
ppi_c_.R316 1
h2o_c_.R317 -1
ncam_c_.R317 -1
nac_c_.R317 1
nh4_c_.R317 1
h_c_.R317 1
h2o_c_.R318 -1
nmn_c_.R318 -1
nh4_c_.R318 1
nicrnt_c_.R318 1
h_c_.R318 1
h2o_c_.R319 -1
nmn_c_.R319 -1
h_c_.R319 1
ncam_c_.R319 1
r5p_c_.R319 1
atp_c_.R320 -1
h_c_.R320 -1
nmn_c_.R320 -1
nad_c_.R320 1
ppi_c_.R320 1
pi_s_.R321 -1
nad_s_.R321 -1
nadp_s_.R321 1
h2o_s_.R321 1
pi_c_.R322 -1
nad_c_.R322 -1
nadp_c_.R322 1
h2o_c_.R322 1
atp_c_.R323 -1
nad_c_.R323 -1
adp_c_.R323 1
h_c_.R323 1
nadp_c_.R323 1
atp_s_.R324 -1
nad_s_.R324 -1
adp_s_.R324 1
h_s_.R324 1
nadp_s_.R324 1
atp_m_.R325 -1
nad_m_.R325 -1
adp_m_.R325 1
h_m_.R325 1
nadp_m_.R325 1
atp_c_.R326 -1
nadh_c_.R326 -1
adp_c_.R326 1
h_c_.R326 1
nadph_c_.R326 1
atp_s_.R327 -1
nadh_s_.R327 -1
adp_s_.R327 1
h_s_.R327 1
nadph_s_.R327 1
atp_m_.R328 -1
nadh_m_.R328 -1
adp_m_.R328 1
h_m_.R328 1
nadph_m_.R328 1
akg_c_.R329 -1
asp-L_c_.R329 -1
glu-L_c_.R329 1
oaa_c_.R329 1
akg_m_.R330 -1
asp-L_m_.R330 -1
glu-L_m_.R330 1
oaa_m_.R330 1
akg_s_.R331 -1
asp-L_s_.R331 -1
glu-L_s_.R331 1
oaa_s_.R331 1
glx_x_.R332 -1
glu-L_x_.R332 -1
gly_x_.R332 1
akg_x_.R332 1
succ_m_.R333 -1
coa_m_.R333 -1
gtp_m_.R333 -1
succoa_m_.R333 1
gdp_m_.R333 1
pi_m_.R333 1
succ_m_.R334 -1
coa_m_.R334 -1
atp_m_.R334 -1
succoa_m_.R334 1
adp_m_.R334 1
pi_m_.R334 1
gtp_c_.R335 -1
h2o_c_.R335 -1
ahdt_c_.R335 1
for_c_.R335 1
h_c_.R335 2
lys-L_s_.R336 -1
h_s_.R336 -1
co2_s_.R336 1
cadaverine_s_.R336 1
L2aadp_c_.R337 -1
h_c_.R337 -1
nadh_c_.R337 -1
L2aadp6sa_c_.R337 1
nad_c_.R337 1
h2o_c_.R337 1
h2o_c_.R338 -1
nadp_c_.R338 -1
saccrp-L_c_.R338 -1
akg_c_.R338 1
lys-L_c_.R338 1
nadph_c_.R338 1
h_c_.R338 1
L2aadp6sa_c_.R339 -1
glu-L_c_.R339 -1
h_c_.R339 -1
nadh_c_.R339 -1
h2o_c_.R339 1
nad_c_.R339 1
saccrp-L_c_.R339 1
2oxoadp_c_.R340 -1
glu-L_c_.R340 -1
L2aadp_c_.R340 1
akg_c_.R340 1
pyr_m_.R341 -1
thmpp_m_.R341 -1
h_m_.R341 -1
2ahethmpp_m_.R341 1
co2_m_.R341 1
2ahethmpp_m_.R342 -1
lpam_m_.R342 -1
adhlam_m_.R342 1
thmpp_m_.R342 1
adhlam_m_.R343 -1
coa_m_.R343 -1
accoa_m_.R343 1
dhlam_m_.R343 1
dhlam_m_.R344 -1
nad_m_.R344 -1
h_m_.R344 1
lpam_m_.R344 1
nadh_m_.R344 1
pyr_s_.R345 -1
thmpp_s_.R345 -1
h_s_.R345 -1
2ahethmpp_s_.R345 1
co2_s_.R345 1
2ahethmpp_s_.R346 -1
lpam_s_.R346 -1
adhlam_s_.R346 1
thmpp_s_.R346 1
adhlam_s_.R347 -1
coa_s_.R347 -1
accoa_s_.R347 1
dhlam_s_.R347 1
dhlam_s_.R348 -1
nad_s_.R348 -1
h_s_.R348 1
lpam_s_.R348 1
nadh_s_.R348 1
akg_m_.R349 -1
thmpp_m_.R349 -1
h_m_.R349 -1
3chpthmpp_m_.R349 1
co2_m_.R349 1
3chpthmpp_m_.R350 -1
h_m_.R350 -1
lpam_m_.R350 -1
co2_m_.R350 1
sdhlam_m_.R350 1
coa_m_.R351 -1
sdhlam_m_.R351 -1
h_m_.R351 -1
dhlam_m_.R351 1
succoa_m_.R351 1
2oxoadp_m_.R352 -1
h_m_.R352 -1
lpam_m_.R352 -1
co2_m_.R352 1
gdhlam_m_.R352 1
coa_m_.R353 -1
gdhlam_m_.R353 -1
h_m_.R353 -1
dhlam_m_.R353 1
gcoa_m_.R353 1
26dap-M_s_.R354 -1
h_s_.R354 -1
lys-L_s_.R354 1
co2_s_.R354 1
accoa_s_.R355 -1
glx_s_.R355 -1
h2o_s_.R355 -1
coa_s_.R355 1
h_s_.R355 1
mal-L_s_.R355 1
accoa_x_.R356 -1
glx_x_.R356 -1
h2o_x_.R356 -1
coa_x_.R356 1
h_x_.R356 1
mal-L_x_.R356 1
glyclt_x_.R357 -1
o2_x_.R357 -1
glx_x_.R357 1
h2o2_x_.R357 1
icit_x_.R358 -1
glx_x_.R358 1
succ_x_.R358 1
aact_x_.R359 -1
h2o_x_.R359 -1
o2_x_.R359 -1
mthgxl_x_.R359 1
nh4_x_.R359 1
h2o2_x_.R359 1
2aobut_x_.R360 -1
h_x_.R360 -2
aact_x_.R360 1
co2_x_.R360 1
thr-L_x_.R361 -1
nad_x_.R361 -1
2aobut_x_.R361 1
nadh_x_.R361 1
h_x_.R361 2
accoa_x_.R362 -1
gly_x_.R362 -1
coa_x_.R362 1
2aobut_x_.R362 1
h_x_.R362 1
atp_s_.R363 -1
asp-L_s_.R363 -1
adp_s_.R363 1
4pasp_s_.R363 1
asp-L_s_.R364 -1
atp_s_.R364 -1
nh4_s_.R364 -1
amp_s_.R364 1
asn-L_s_.R364 1
h_s_.R364 1
ppi_s_.R364 1
asp-L_c_.R365 -1
atp_c_.R365 -1
nh4_c_.R365 -1
amp_c_.R365 1
asn-L_c_.R365 1
h_c_.R365 1
ppi_c_.R365 1
asn-L_c_.R366 -1
h2o_c_.R366 -1
asp-L_c_.R366 1
nh4_c_.R366 1
for_m_.R367 -1
nad_m_.R367 -1
co2_m_.R367 1
nadh_m_.R367 1
for_c_.R368 -1
q8_m_.R368 -1
h_m_.R368 -2
q8h2_m_.R368 1
h_c_.R368 1
co2_c_.R368 1
hso3_x_.R369 -1
o2_x_.R369 -1
h2o_x_.R369 -1
so4_x_.R369 1
h2o2_x_.R369 1
h_x_.R369 1
hso3_m_.R370 -1
o2_m_.R370 -1
h2o_m_.R370 -1
so4_m_.R370 1
h2o2_m_.R370 1
h_m_.R370 1
atp_c_.R371 -1
so4_c_.R371 -1
h_c_.R371 -1
ppi_c_.R371 1
aps_c_.R371 1
atp_s_.R372 -1
so4_s_.R372 -1
h_s_.R372 -1
ppi_s_.R372 1
aps_s_.R372 1
h2o_c_.R373 -1
arg-L_c_.R373 -1
orn_c_.R373 1
urea_c_.R373 1
ptrc_c_.R374 -1
o2_c_.R374 -1
h2o_c_.R374 -1
4abutn_c_.R374 1
nh4_c_.R374 1
h2o2_c_.R374 1
13dampp_c_.R375 -1
o2_c_.R375 -1
h2o_c_.R375 -1
bamppald_c_.R375 1
nh4_c_.R375 1
h2o2_c_.R375 1
bamppald_c_.R376 -1
nad_c_.R376 -1
h2o_c_.R376 -1
ala-B_c_.R376 1
nadh_c_.R376 1
h_c_.R376 2
spmd_c_.R377 -1
o2_c_.R377 -1
h2o_c_.R377 -1
13dampp_c_.R377 1
4abutn_c_.R377 1
h2o2_c_.R377 1
4abutn_c_.R378 -1
nad_c_.R378 -1
h2o_c_.R378 -1
4abut_c_.R378 1
nadh_c_.R378 1
h_c_.R378 2
o2_c_.R379 -1
arg-L_c_.R379 -1
gabut_c_.R379 1
co2_c_.R379 1
h2o_c_.R379 1
gabut_c_.R380 -1
h2o_c_.R380 -1
gabutn_c_.R380 1
nh4_c_.R380 1
gabutn_c_.R381 -1
h2o_c_.R381 -1
4abut_c_.R381 1
urea_c_.R381 1
cbmp_c_.R382 -1
h2o_c_.R382 -1
h_c_.R382 -1
ptrc_c_.R382 1
co2_c_.R382 1
nh4_c_.R382 1
agm_c_.R383 -1
h2o_c_.R383 -1
cbmp_c_.R383 1
nh4_c_.R383 1
agm_c_.R384 -1
h2o_c_.R384 -1
ptrc_c_.R384 1
urea_c_.R384 1
arg-L_c_.R385 -1
h_c_.R385 -1
agm_c_.R385 1
co2_c_.R385 1
arg-L_c_.R386 -1
o2_c_.R386 -1
nadph_c_.R386 -1
no_c_.R386 1
citr-L_c_.R386 1
nadp_c_.R386 1
arg-L_c_.R387 -1
h2o_c_.R387 -1
citr-L_c_.R387 1
nh4_c_.R387 1
atp_c_.R388 -2
gln-L_c_.R388 -1
hco3_c_.R388 -1
h2o_c_.R388 -1
adp_c_.R388 2
pi_c_.R388 1
glu-L_c_.R388 1
cbp_c_.R388 1
h_c_.R388 2
gln-L_c_.R389 -1
h2o_c_.R389 -1
glu-L_c_.R389 1
nh4_c_.R389 1
asp-L_s_.R390 -1
atp_s_.R390 -1
gln-L_s_.R390 -1
h2o_s_.R390 -1
amp_s_.R390 1
asn-L_s_.R390 1
glu-L_s_.R390 1
h_s_.R390 1
ppi_s_.R390 1
pser-L_s_.R391 -1
h2o_s_.R391 -1
ser-L_s_.R391 1
pi_s_.R391 1
cyst-L_s_.R392 -1
h2o_s_.R392 -1
2obut_s_.R392 1
cys-L_s_.R392 1
nh4_s_.R392 1
hcys-L_s_.R393 -1
ser-L_s_.R393 -1
cyst-L_s_.R393 1
h2o_s_.R393 1
ser-L_c_.R394 -1
accoa_c_.R394 -1
acser_c_.R394 1
coa_c_.R394 1
ser-L_s_.R395 -1
accoa_s_.R395 -1
acser_s_.R395 1
coa_s_.R395 1
ser-L_m_.R396 -1
accoa_m_.R396 -1
acser_m_.R396 1
coa_m_.R396 1
ser-L_s_.R397 -1
glx_s_.R397 -1
hpyr_s_.R397 1
gly_s_.R397 1
ser-L_x_.R398 -1
glx_x_.R398 -1
hpyr_x_.R398 1
gly_x_.R398 1
met-L_c_.R399 -1
amet_c_.R399 -1
ahcys_c_.R399 1
mmet_c_.R399 1
amet_c_.R400 -1
hcys-L_c_.R400 -1
ahcys_c_.R400 1
h_c_.R400 1
met-L_c_.R400 1
amet_c_.R401 -1
ahcys_c_.R401 1
mmet_c_.R402 -1
hcys-L_c_.R402 -1
met-L_c_.R402 2
5mthglu_x_.R403 -1
hcys-L_x_.R403 -1
met-L_x_.R403 1
thglu_x_.R403 1
5mthglu_v_.R404 -1
hcys-L_v_.R404 -1
met-L_v_.R404 1
thglu_v_.R404 1
5mthglu_c_.R405 -1
hcys-L_c_.R405 -1
met-L_c_.R405 1
thglu_c_.R405 1
12dmpo_c_.R406 -1
o2_c_.R406 -1
2kmb_c_.R406 1
for_c_.R406 1
h_c_.R406 1
met-L_c_.R407 -1
h2o_c_.R407 -1
nh4_c_.R407 1
2obut_c_.R407 1
ch4s_c_.R407 1
ch4s_c_.R408 -1
achms_c_.R408 -1
met-L_c_.R408 1
ac_c_.R408 1
2kmb_c_.R409 -1
glu-L_c_.R409 -1
met-L_c_.R409 1
akg_c_.R409 1
atp_c_.R410 -1
5mtr_c_.R410 -1
adp_c_.R410 1
5mdr1p_c_.R410 1
h_c_.R410 1
5mta_c_.R411 -1
h2o_c_.R411 -1
ade_c_.R411 1
5mtr_c_.R411 1
5mta_c_.R412 -1
sprm_c_.R412 -1
h_c_.R412 -1
ametam_c_.R412 1
spmd_c_.R412 1
orn_c_.R413 -1
h_c_.R413 -1
ptrc_c_.R413 1
co2_c_.R413 1
ametam_c_.R414 -1
ptrc_c_.R414 -1
5mta_c_.R414 1
spmd_c_.R414 1
h_c_.R414 1
amet_c_.R415 -1
h_c_.R415 -1
ametam_c_.R415 1
co2_c_.R415 1
amet_c_.R416 -1
1acpc_c_.R416 1
5mta_c_.R416 1
h_c_.R416 1
ascb-L_c_.R417 -1
1acpc_c_.R417 -1
o2_c_.R417 -1
h_c_.R417 -1
h2o_c_.R417 2
dhdascb_c_.R417 1
co2_c_.R417 1
cyan_c_.R417 1
ethylene_c_.R417 1
5mdr1p_c_.R418 -1
5mdru1p_c_.R418 1
5mdru1p_c_.R419 -1
dkmpp_c_.R419 1
h2o_c_.R419 1
dkmpp_c_.R420 -1
h2o_c_.R420 -1
12dmpo_c_.R420 1
pi_c_.R420 1
h_c_.R420 1
2pg_c_.R421 -1
h2o_c_.R421 1
pep_c_.R421 1
2pg_s_.R422 -1
h2o_s_.R422 1
pep_s_.R422 1
orn_m_.R423 -1
akg_m_.R423 -1
glu5sa_m_.R423 1
glu-L_m_.R423 1
orn_c_.R424 -1
akg_c_.R424 -1
glu5sa_c_.R424 1
glu-L_c_.R424 1
trp-L_c_.R425 -1
nadph_c_.R425 -2
o2_c_.R425 -2
h_c_.R425 -2
ind3acetaldoxime_c_.R425 1
co2_c_.R425 1
nadp_c_.R425 2
h2o_c_.R425 3
id3acald_c_.R426 -1
o2_c_.R426 -1
h2o_c_.R426 -1
ind3ac_c_.R426 1
h2o2_c_.R426 1
h_c_.R426 1
tryptamine_c_.R427 -1
h2o_c_.R427 -1
o2_c_.R427 -1
nh4_c_.R427 1
h2o2_c_.R427 1
id3acald_c_.R427 1
akg_c_.R428 -1
trp-L_c_.R428 -1
glu-L_c_.R428 1
indpyr_c_.R428 1
h_c_.R429 -1
trp-L_c_.R429 -1
co2_c_.R429 1
tryptamine_c_.R429 1
h_c_.R430 -1
indpyr_c_.R430 -1
co2_c_.R430 1
id3acald_c_.R430 1
ind3acetaldoxime_c_.R431 -1
h2o_c_.R431 1
ind3acnl_c_.R431 1
tryptamine_c_.R432 -1
o2_c_.R432 -1
nadph_c_.R432 -1
srntn_c_.R432 1
h2o_c_.R432 1
nadp_c_.R432 1
h2o_c_.R433 -2
ind3acnl_c_.R433 -1
ind3ac_c_.R433 1
nh4_c_.R433 1
trp-L_c_.R434 -1
o2_c_.R434 -1
h2o_c_.R434 1
iad_c_.R434 1
co2_c_.R434 1
h2o_c_.R435 -1
iad_c_.R435 -1
ind3ac_c_.R435 1
nh4_c_.R435 1
ind3ac_c_.R436 -1
udpg_c_.R436 -1
ind3acg_c_.R436 1
udp_c_.R436 1
ind3acg_c_.R437 -1
inost_c_.R437 -1
iaainost_c_.R437 1
glc-B_c_.R437 1
iaainost_c_.R438 -1
udpgal_c_.R438 -1
iaainostgal_c_.R438 1
udp_c_.R438 1
iaainost_c_.R439 -1
udparab_c_.R439 -1
iaainostarab_c_.R439 1
udp_c_.R439 1
ind3ac_c_.R440 -1
ala-L_c_.R440 -1
atp_c_.R440 -1
iaa-ala_c_.R440 1
amp_c_.R440 1
ppi_c_.R440 1
h_c_.R440 1
ind3ac_c_.R441 -1
leu-L_c_.R441 -1
atp_c_.R441 -1
iaa-leu_c_.R441 1
amp_c_.R441 1
ppi_c_.R441 1
h_c_.R441 1
ind3ac_c_.R442 -1
asp-L_c_.R442 -1
atp_c_.R442 -1
iaa-asp_c_.R442 1
amp_c_.R442 1
ppi_c_.R442 1
h_c_.R442 1
ind3ac_c_.R443 -1
glu-L_c_.R443 -1
atp_c_.R443 -1
iaa-glu_c_.R443 1
amp_c_.R443 1
ppi_c_.R443 1
h_c_.R443 1
ind3ac_c_.R444 -1
gln-L_c_.R444 -1
atp_c_.R444 -1
iaa-gln_c_.R444 1
amp_c_.R444 1
ppi_c_.R444 1
h_c_.R444 1
iaa-ala_c_.R445 -1
h2o_c_.R445 -1
ind3ac_c_.R445 1
ala-L_c_.R445 1
iaa-leu_c_.R446 -1
h2o_c_.R446 -1
ind3ac_c_.R446 1
leu-L_c_.R446 1
iaainost_c_.R447 -1
h2o_c_.R447 -1
inost_c_.R447 1
ind3ac_c_.R447 1
ser-L_s_.R448 -1
3ig3p_s_.R448 -1
trp-L_s_.R448 1
g3p_s_.R448 1
h2o_s_.R448 1
ser-L_s_.R449 -1
indole_s_.R449 -1
trp-L_s_.R449 1
h2o_s_.R449 1
pphn_c_.R450 -1
h_c_.R450 -1
phpyr_c_.R450 1
h2o_c_.R450 1
co2_c_.R450 1
pphn_s_.R451 -1
h_s_.R451 -1
phpyr_s_.R451 1
h2o_s_.R451 1
co2_s_.R451 1
nadh_c_.R452 -1
pyr_c_.R452 -1
h_c_.R452 -1
nad_c_.R452 1
lac-L_c_.R452 1
co2_c_.R453 -1
accoa_c_.R453 -1
malcoa_c_.R453 1
h_c_.R453 1
nad_m_.R454 -1
msa_m_.R454 -1
coa_m_.R454 -1
accoa_m_.R454 1
nadh_m_.R454 1
co2_m_.R454 1
nadp_m_.R455 -1
msa_m_.R455 -1
coa_m_.R455 -1
accoa_m_.R455 1
nadph_m_.R455 1
co2_m_.R455 1
icit_m_.R456 -1
nad_m_.R456 -1
akg_m_.R456 1
co2_m_.R456 1
nadh_m_.R456 1
acald_c_.R457 -1
nad_c_.R457 -1
h2o_c_.R457 -1
nadh_c_.R457 1
ac_c_.R457 1
h_c_.R457 2
acald_s_.R458 -1
nad_s_.R458 -1
h2o_s_.R458 -1
nadh_s_.R458 1
ac_s_.R458 1
h_s_.R458 2
acald_m_.R459 -1
nad_m_.R459 -1
h2o_m_.R459 -1
nadh_m_.R459 1
ac_m_.R459 1
h_m_.R459 2
glyc_c_.R460 -1
nad_c_.R460 -1
glyald_c_.R460 1
nadh_c_.R460 1
h_c_.R460 1
glyald_c_.R461 -1
nadph_c_.R461 -1
h_c_.R461 -1
glyc_c_.R461 1
nadp_c_.R461 1
sucsal_m_.R462 -1
nad_m_.R462 -1
h2o_m_.R462 -1
succ_m_.R462 1
nadh_m_.R462 1
h_m_.R462 2
tyr-L_c_.R463 -1
h_c_.R463 -1
co2_c_.R463 1
tyramine_c_.R463 1
34hpp_c_.R464 -1
o2_c_.R464 -1
hgentis_c_.R464 1
co2_c_.R464 1
34hpp_s_.R465 -1
o2_s_.R465 -1
hgentis_s_.R465 1
co2_s_.R465 1
hgentis_c_.R466 -1
o2_c_.R466 -1
4mlacac_c_.R466 1
h_c_.R466 1
pphn_s_.R467 -1
nadp_s_.R467 -1
34hpp_s_.R467 1
nadph_s_.R467 1
co2_s_.R467 1
akg_c_.R468 -1
tyr-L_c_.R468 -1
34hpp_c_.R468 1
glu-L_c_.R468 1
akg_s_.R469 -1
tyr-L_s_.R469 -1
34hpp_s_.R469 1
glu-L_s_.R469 1
4fumacac_c_.R470 -1
h2o_c_.R470 -1
acac_c_.R470 1
fum_c_.R470 1
h_c_.R470 1
4mlacac_c_.R471 -1
4fumacac_c_.R471 1
arogenate_s_.R472 -1
h_s_.R472 -1
co2_s_.R472 1
h2o_s_.R472 1
phe-L_s_.R472 1
pphn_s_.R473 -1
asp-L_s_.R473 -1
oaa_s_.R473 1
arogenate_s_.R473 1
pphn_s_.R474 -1
glu-L_s_.R474 -1
akg_s_.R474 1
arogenate_s_.R474 1
arogenate_s_.R475 -1
nadp_s_.R475 -1
tyr-L_s_.R475 1
nadph_s_.R475 1
co2_s_.R475 1
chol_c_.R476 -1
nad_c_.R476 -1
betald_c_.R476 1
nadh_c_.R476 1
h_c_.R476 1
betald_c_.R477 -1
nad_c_.R477 -1
h2o_c_.R477 -1
glybet_c_.R477 1
nadh_c_.R477 1
h_c_.R477 2
glybet_s_.R478 -1
hcys-L_s_.R478 -1
met-L_s_.R478 1
dmetgly_s_.R478 1
dmetgly_s_.R479 -1
fad_s_.R479 -1
h2o_s_.R479 -1
fadh2_s_.R479 1
fald_s_.R479 1
sarc_s_.R479 1
sarc_s_.R480 -1
o2_s_.R480 -1
h2o_s_.R480 -1
h2o2_s_.R480 1
fald_s_.R480 1
gly_s_.R480 1
gly_m_.R481 -1
lpro_m_.R481 -1
alpro_m_.R481 1
co2_m_.R481 1
dhlpro_m_.R482 -1
nad_m_.R482 -1
lpro_m_.R482 1
nadh_m_.R482 1
h_m_.R482 1
alpro_m_.R483 -1
thf_m_.R483 -1
h_m_.R483 -1
dhlpro_m_.R483 1
mlthf_m_.R483 1
nh4_m_.R483 1
thr-L_c_.R484 -1
acald_c_.R484 1
gly_c_.R484 1
acald_c_.R485 -1
nadh_c_.R485 -1
h_c_.R485 -1
etoh_c_.R485 1
nad_c_.R485 1
man6p_c_.R486 -1
f6p-B_c_.R486 1
man1p_c_.R487 -1
man6p_c_.R487 1
man_c_.R488 -1
atp_c_.R488 -1
man6p_c_.R488 1
adp_c_.R488 1
mhdascb_c_.R489 -2
nadh_c_.R489 -1
h_c_.R489 -1
ascb-L_c_.R489 2
nad_c_.R489 1
mhdascb_s_.R490 -2
nadh_s_.R490 -1
h_s_.R490 -1
ascb-L_s_.R490 2
nad_s_.R490 1
mhdascb_m_.R491 -2
nadh_m_.R491 -1
h_m_.R491 -1
ascb-L_m_.R491 2
nad_m_.R491 1
mhdascb_c_.R492 -2
nadph_c_.R492 -1
h_c_.R492 -1
ascb-L_c_.R492 2
nadp_c_.R492 1
mhdascb_s_.R493 -2
nadph_s_.R493 -1
h_s_.R493 -1
ascb-L_s_.R493 2
nadp_s_.R493 1
mhdascb_m_.R494 -2
nadph_m_.R494 -1
h_m_.R494 -1
ascb-L_m_.R494 2
nadp_m_.R494 1
o2_c_.R495 -1
ascb-L_c_.R495 -4
h_c_.R495 -4
h2o_c_.R495 2
mhdascb_c_.R495 4
ascb-L_c_.R496 -2
h2o2_c_.R496 -1
h_c_.R496 -2
mhdascb_c_.R496 2
h2o_c_.R496 2
ascb-L_s_.R497 -2
h2o2_s_.R497 -1
h_s_.R497 -2
mhdascb_s_.R497 2
h2o_s_.R497 2
mhdascb_c_.R498 -2
h_c_.R498 -2
ascb-L_c_.R498 1
dhdascb_c_.R498 1
mhdascb_s_.R499 -2
h_s_.R499 -2
dhdascb_s_.R499 1
ascb-L_s_.R499 1
h2o_v_.R500 -1
gthrd_v_.R500 -1
glu-L_v_.R500 1
cgly_v_.R500 1
ala-L_c_.R501 -1
gthrd_c_.R501 -1
gluala_c_.R501 1
cgly_c_.R501 1
gluala_c_.R502 -1
5oxpro_c_.R502 1
ala-L_c_.R502 1
5oxpro_c_.R503 -1
atp_c_.R503 -1
h2o_c_.R503 -2
adp_c_.R503 1
glu-L_c_.R503 1
h_c_.R503 1
pi_c_.R503 1
cgly_v_.R504 -1
h2o_v_.R504 -1
cys-L_v_.R504 1
gly_v_.R504 1
atp_s_.R505 -1
cys-L_s_.R505 -1
glu-L_s_.R505 -1
adp_s_.R505 1
glucys_s_.R505 1
h_s_.R505 1
pi_s_.R505 1
atp_m_.R506 -1
cys-L_m_.R506 -1
glu-L_m_.R506 -1
adp_m_.R506 1
glucys_m_.R506 1
h_m_.R506 1
pi_m_.R506 1
atp_s_.R507 -1
glucys_s_.R507 -1
gly_s_.R507 -1
adp_s_.R507 1
gthrd_s_.R507 1
h_s_.R507 1
pi_s_.R507 1
atp_m_.R508 -1
glucys_m_.R508 -1
gly_m_.R508 -1
adp_m_.R508 1
gthrd_m_.R508 1
h_m_.R508 1
pi_m_.R508 1
dhdascb_c_.R509 -1
gthrd_c_.R509 -2
gthox_c_.R509 1
ascb-L_c_.R509 1
dhdascb_s_.R510 -1
gthrd_s_.R510 -2
gthox_s_.R510 1
ascb-L_s_.R510 1
focytc_m_.R511 -1
gallac_c_.R511 -1
ficytc_m_.R511 1
ascb-L_c_.R511 1
h_m_.R511 1
gal-L_c_.R512 -1
nad_c_.R512 -1
gallac_c_.R512 1
nadh_c_.R512 1
h_c_.R512 1
gdpgal_c_.R513 -1
h2o_c_.R513 -1
gdp_c_.R513 1
h_c_.R513 1
gal-L_c_.R513 1
gdpmann_c_.R514 -1
gdpgal_c_.R514 1
gdpgal_c_.R515 -1
gdpgul_c_.R515 1
gtp_c_.R516 -1
man1p_c_.R516 -1
h_c_.R516 -1
ppi_c_.R516 1
gdpmann_c_.R516 1
gdpmann_c_.R517 -1
h2o_c_.R517 1
gdpddman_c_.R517 1
gdpddman_c_.R518 -1
h_c_.R518 -1
nadph_c_.R518 -1
gdpfuc_c_.R518 1
nadp_c_.R518 1
gdpfuc_c_.R519 -1
ppi_c_.R519 -1
gtp_c_.R519 1
h_c_.R519 1
fuc1p_c_.R519 1
h2o_c_.R520 -1
nad_c_.R520 -1
lald_c_.R520 -1
nadh_c_.R520 1
lac-L_c_.R520 1
h_c_.R520 2
fc1p_c_.R521 -1
lald_c_.R521 1
dhap_c_.R521 1
atp_c_.R522 -1
fcl-L_c_.R522 -1
adp_c_.R522 1
fc1p_c_.R522 1
h_c_.R522 1
fuc-L_c_.R523 -1
fcl-L_c_.R523 1
fuc-L_c_.R524 -1
atp_c_.R524 -1
h_c_.R524 1
fuc1p_c_.R524 1
adp_c_.R524 1
fdp-B_c_.R525 -1
h2o_c_.R525 -1
f6p-B_c_.R525 1
pi_c_.R525 1
fdp-B_s_.R526 -1
h2o_s_.R526 -1
f6p-B_s_.R526 1
pi_s_.R526 1
udpg_c_.R527 -1
f6p-B_c_.R527 -1
suc6p_c_.R527 1
udp_c_.R527 1
h_c_.R527 1
udpg_v_.R528 -1
f6p-B_v_.R528 -1
suc6p_v_.R528 1
udp_v_.R528 1
h_v_.R528 1
g6p-A_c_.R529 -1
f6p-B_c_.R529 1
g6p-A_s_.R530 -1
f6p-B_s_.R530 1
g6p-B_c_.R531 -1
f6p-B_c_.R531 1
g6p-B_s_.R532 -1
f6p-B_s_.R532 1
no2_s_.R533 -1
fdxrd_s_.R533 -6
h_s_.R533 -7
nh4_s_.R533 1
fdxox_s_.R533 6
h2o_s_.R533 2
no_c_.R534 -2
o2_c_.R534 -2
nadh_c_.R534 -1
no3_c_.R534 2
nad_c_.R534 1
h_c_.R534 1
no_c_.R535 -2
o2_c_.R535 -2
nadph_c_.R535 -1
no3_c_.R535 2
nadp_c_.R535 1
h_c_.R535 1
no3_c_.R536 -1
nadh_c_.R536 -1
h_c_.R536 -1
no2_c_.R536 1
nad_c_.R536 1
h2o_c_.R536 1
no3_v_.R537 -1
nadh_v_.R537 -1
h_v_.R537 -1
no2_v_.R537 1
nad_v_.R537 1
h2o_v_.R537 1
suc6p_c_.R538 -1
h2o_c_.R538 -1
fru-B_c_.R538 1
g6p-B_c_.R538 1
suc6p_v_.R539 -1
h2o_v_.R539 -1
fru-B_v_.R539 1
g6p-B_v_.R539 1
sucr_c_.R540 -1
h2o_c_.R540 -1
fru-B_c_.R540 1
glc-A_c_.R540 1
sucr_v_.R541 -1
h2o_v_.R541 -1
fru-B_v_.R541 1
glc-A_v_.R541 1
suc6p_c_.R542 -1
h2o_c_.R542 -1
sucr_c_.R542 1
pi_c_.R542 1
suc6p_v_.R543 -1
h2o_v_.R543 -1
sucr_v_.R543 1
pi_v_.R543 1
udpg_c_.R544 -1
fru-B_c_.R544 -1
sucr_c_.R544 1
udp_c_.R544 1
h_c_.R544 1
udpg_v_.R545 -1
fru-B_v_.R545 -1
sucr_v_.R545 1
udp_v_.R545 1
h_v_.R545 1
g6p-B_c_.R546 -1
mi3p-D_c_.R546 1
hso3_s_.R547 -1
fdxrd_s_.R547 -3
h_s_.R547 -6
h2s_s_.R547 1
fdxox_s_.R547 3
h2o_s_.R547 3
glc-A_c_.R548 -1
fru-B_c_.R548 1
glc-A_v_.R549 -1
fru-B_v_.R549 1
uacgam_c_.R550 -1
uacmam_c_.R550 1
utp_c_.R551 -1
acgam1p_c_.R551 -1
h_c_.R551 -1
ppi_c_.R551 1
uacgam_c_.R551 1
acgam6p_c_.R552 -1
acgam1p_c_.R552 1
accoa_c_.R553 -1
gam6p_c_.R553 -1
coa_c_.R553 1
acgam6p_c_.R553 1
h_c_.R553 1
atp_c_.R554 -1
gam_c_.R554 -1
gam6p_c_.R554 1
adp_c_.R554 1
accoa_c_.R555 -1
gam_c_.R555 -1
coa_c_.R555 1
acgam_c_.R555 1
h_c_.R555 1
atp_c_.R556 -1
acgam_c_.R556 -1
adp_c_.R556 1
acgam6p_c_.R556 1
chitb_c_.R557 -1
h2o_c_.R557 -1
acgam_c_.R557 2
chitin_c_.R558 -1
h2o_c_.R558 -1
acgam_c_.R558 1
acgam_c_.R559 -1
acmana_c_.R559 1
h2o_c_.R560 -1
uacgam_c_.R560 -1
acmana_c_.R560 1
h_c_.R560 1
udp_c_.R560 1
acnam_c_.R561 -1
acmana_c_.R561 1
pyr_c_.R561 1
acnam_c_.R562 -1
ctp_c_.R562 -1
cmpacna_c_.R562 1
ppi_c_.R562 1
gln-L_c_.R563 -1
f6p-B_c_.R563 -1
glu-L_c_.R563 1
gam6p_c_.R563 1
fru-B_c_.R564 -1
atp_c_.R564 -1
f6p-B_c_.R564 1
adp_c_.R564 1
h_c_.R564 1
cyan_m_.R565 -1
mercppyr_m_.R565 -1
pyr_m_.R565 1
tcynt_m_.R565 1
h_m_.R565 1
tsul_m_.R566 -1
cyan_m_.R566 -1
tcynt_m_.R566 1
h_m_.R566 1
hso3_m_.R566 1
cyan_s_.R567 -1
mercppyr_s_.R567 -1
pyr_s_.R567 1
tcynt_s_.R567 1
h_s_.R567 1
tsul_s_.R568 -1
cyan_s_.R568 -1
tcynt_s_.R568 1
h_s_.R568 1
hso3_s_.R568 1
hso3_s_.R569 -1
o2_s_.R569 -1
h2o_s_.R569 -1
so4_s_.R569 1
h2o2_s_.R569 1
mercppyr_s_.R570 -1
glu-L_s_.R570 -1
cys-L_s_.R570 1
akg_s_.R570 1
mercppyr_m_.R571 -1
glu-L_m_.R571 -1
cys-L_m_.R571 1
akg_m_.R571 1
3sala_s_.R572 -1
akg_s_.R572 -1
3spyr_s_.R572 1
glu-L_s_.R572 1
3sala_m_.R573 -1
akg_m_.R573 -1
3spyr_m_.R573 1
glu-L_m_.R573 1
3spyr_s_.R574 -1
h2o_s_.R574 -1
hso3_s_.R574 1
pyr_s_.R574 1
3spyr_m_.R575 -1
h2o_m_.R575 -1
hso3_m_.R575 1
pyr_m_.R575 1
cys-L_s_.R576 -1
o2_s_.R576 -1
3sala_s_.R576 1
cys-L_m_.R577 -1
o2_m_.R577 -1
3sala_m_.R577 1
acser_c_.R578 -1
h2s_c_.R578 -1
cys-L_c_.R578 1
ac_c_.R578 1
h_c_.R578 1
acser_m_.R579 -1
h2s_m_.R579 -1
cys-L_m_.R579 1
ac_m_.R579 1
h_m_.R579 1
acser_s_.R580 -1
h2s_s_.R580 -1
cys-L_s_.R580 1
ac_s_.R580 1
h_s_.R580 1
msa_c_.R581 -1
ala-L_c_.R581 -1
ala-B_c_.R581 1
pyr_c_.R581 1
dhf_c_.R582 -1
h_c_.R582 -1
nadph_c_.R582 -1
nadp_c_.R582 1
thf_c_.R582 1
dhf_m_.R583 -1
h_m_.R583 -1
nadph_m_.R583 -1
nadp_m_.R583 1
thf_m_.R583 1
atp_c_.R584 -1
10fthf_c_.R584 -1
glu-L_c_.R584 -1
adp_c_.R584 1
pi_c_.R584 1
10fthglu_c_.R584 1
atp_c_.R585 -1
for_c_.R585 -1
thf_c_.R585 -1
10fthf_c_.R585 1
adp_c_.R585 1
pi_c_.R585 1
atp_m_.R586 -1
for_m_.R586 -1
thf_m_.R586 -1
10fthf_m_.R586 1
adp_m_.R586 1
pi_m_.R586 1
atp_s_.R587 -1
for_s_.R587 -1
thf_s_.R587 -1
10fthf_s_.R587 1
adp_s_.R587 1
pi_s_.R587 1
asp-L_c_.R588 -1
nh4_c_.R588 -1
cala-L_c_.R588 1
h2o_c_.R588 2
cys-L_c_.R589 -1
cyan_c_.R589 -1
cala-L_c_.R589 1
h2s_c_.R589 1
cyan_c_.R590 -1
benzald_c_.R590 -1
manit_c_.R590 1
manit_c_.R591 -1
glc-B_c_.R591 -1
prunasin_c_.R591 1
h2o_c_.R591 1
prunasin_c_.R592 -1
glc-B_c_.R592 -1
amygd_c_.R592 1
h2o_c_.R592 1
frmd_c_.R593 -1
h2o_c_.R593 -1
for_c_.R593 1
nh4_c_.R593 1
h_c_.R593 1
frmd_c_.R594 -1
h2o_c_.R594 1
cyan_c_.R594 1
10fthf_c_.R595 -1
h2o_c_.R595 -1
for_c_.R595 1
h_c_.R595 1
thf_c_.R595 1
10fthf_m_.R596 -1
h2o_m_.R596 -1
for_m_.R596 1
h_m_.R596 1
thf_m_.R596 1
10fthf_s_.R597 -1
h2o_s_.R597 -1
for_s_.R597 1
h_s_.R597 1
thf_s_.R597 1
mlthf_s_.R598 -1
gly_s_.R598 -1
h2o_s_.R598 -1
thf_s_.R598 1
ser-L_s_.R598 1
mlthf_m_.R599 -1
gly_m_.R599 -1
h2o_m_.R599 -1
thf_m_.R599 1
ser-L_m_.R599 1
mlthf_c_.R600 -1
nadph_c_.R600 -1
h_c_.R600 -1
nadp_c_.R600 1
5mthf_c_.R600 1
mlthf_s_.R601 -1
nadph_s_.R601 -1
h_s_.R601 -1
nadp_s_.R601 1
5mthf_s_.R601 1
5mthf_c_.R602 -1
hcys-L_c_.R602 -1
thf_c_.R602 1
met-L_c_.R602 1
5mthf_s_.R603 -1
hcys-L_s_.R603 -1
thf_s_.R603 1
met-L_s_.R603 1
mlthf_c_.R604 -1
fdxrd_c_.R604 -2
h_c_.R604 -2
fdxox_c_.R604 2
5mthf_c_.R604 1
mlthf_s_.R605 -1
fdxrd_s_.R605 -2
h_s_.R605 -2
fdxox_s_.R605 2
5mthf_s_.R605 1
atp_s_.R606 -1
g1p_s_.R606 -1
adpglc_s_.R606 1
ppi_s_.R606 1
atp_m_.R607 -2
gln-L_m_.R607 -1
hco3_m_.R607 -1
h2o_m_.R607 -1
adp_m_.R607 2
pi_m_.R607 1
glu-L_m_.R607 1
cbp_m_.R607 1
h_m_.R607 2
orot5p_s_.R608 -1
h_s_.R608 -1
ump_s_.R608 1
co2_s_.R608 1
chor_s_.R609 -1
gln-L_s_.R609 -1
anth_s_.R609 1
pyr_s_.R609 1
glu-L_s_.R609 1
h_s_.R609 1
thr-L_c_.R610 -1
2obut_c_.R610 1
nh4_c_.R610 1
dhap_c_.R611 -1
g3p_c_.R611 1
dhap_s_.R612 -1
g3p_s_.R612 1
atp_c_.R613 -1
r5p_c_.R613 -1
amp_c_.R613 1
prpp_c_.R613 1
h_c_.R613 1
atp_s_.R614 -1
r5p_s_.R614 -1
amp_s_.R614 1
prpp_s_.R614 1
h_s_.R614 1
r5p_c_.R615 -1
r1p_c_.R615 1
r5p_s_.R616 -1
r1p_s_.R616 1
atp_c_.R617 -1
rib-D_c_.R617 -1
adp_c_.R617 1
h_c_.R617 1
r5p_c_.R617 1
atp_s_.R618 -1
rib-D_s_.R618 -1
adp_s_.R618 1
h_s_.R618 1
r5p_s_.R618 1
5apru_s_.R619 -1
nadph_s_.R619 -1
h_s_.R619 -1
5aprbu_s_.R619 1
nadp_s_.R619 1
dmlz_s_.R620 -2
h_s_.R620 -1
ribflv_s_.R620 1
4r5au_s_.R620 1
atp_c_.R621 -1
ribflv_c_.R621 -1
adp_c_.R621 1
fmn_c_.R621 1
h_c_.R621 1
atp_s_.R622 -1
fmn_s_.R622 -1
h_s_.R622 -2
ppi_s_.R622 1
fad_s_.R622 1
atp_c_.R623 -1
fmn_c_.R623 -1
h_c_.R623 -2
ppi_c_.R623 1
fad_c_.R623 1
atp_m_.R624 -1
fmn_m_.R624 -1
h_m_.R624 -2
ppi_m_.R624 1
fad_m_.R624 1
gtp_s_.R625 -1
h2o_s_.R625 -3
for_s_.R625 1
25dhpp_s_.R625 1
ppi_s_.R625 1
h_s_.R625 2
25dhpp_s_.R626 -1
h2o_s_.R626 -1
5apru_s_.R626 1
nh4_s_.R626 1
r5p_s_.R627 -1
db4p_s_.R627 1
for_s_.R627 1
h_s_.R627 1
4r5au_s_.R628 -1
db4p_s_.R628 -1
dmlz_s_.R628 1
h2o_s_.R628 2
pi_s_.R628 1
h_s_.R628 1
5aprbu_s_.R629 -1
h2o_s_.R629 -1
4r5au_s_.R629 1
pi_s_.R629 1
r5p_c_.R630 -1
ru5p-D_c_.R630 1
r5p_s_.R631 -1
ru5p-D_s_.R631 1
g3p_s_.R632 -1
nadp_s_.R632 -1
h2o_s_.R632 -1
3pg_s_.R632 1
nadph_s_.R632 1
h_s_.R632 2
g3p_c_.R633 -1
nad_c_.R633 -1
h2o_c_.R633 -1
3pg_c_.R633 1
nadh_c_.R633 1
h_c_.R633 2
g3p_s_.R634 -1
nad_s_.R634 -1
h2o_s_.R634 -1
3pg_s_.R634 1
nadh_s_.R634 1
h_s_.R634 2
g3p_c_.R635 -1
nad_c_.R635 -1
pi_c_.R635 -1
13dpg_c_.R635 1
h_c_.R635 1
nadh_c_.R635 1
g3p_s_.R636 -1
nadp_s_.R636 -1
pi_s_.R636 -1
13dpg_s_.R636 1
h_s_.R636 1
nadph_s_.R636 1
atp_c_.R637 -1
fru-B_c_.R637 -1
adp_c_.R637 1
f1p_c_.R637 1
h_c_.R637 1
f1p_c_.R638 -1
dhap_c_.R638 1
glyald_c_.R638 1
fald_c_.R639 -1
xu5p-D_c_.R639 -1
dha_c_.R639 1
g3p_c_.R639 1
fald_s_.R640 -1
xu5p-D_s_.R640 -1
dha_s_.R640 1
g3p_s_.R640 1
dha_c_.R641 -1
atp_c_.R641 -1
dhap_c_.R641 1
adp_c_.R641 1
h_c_.R641 1
dha_s_.R642 -1
atp_s_.R642 -1
dhap_s_.R642 1
adp_s_.R642 1
h_s_.R642 1
fdp-B_c_.R643 -1
dhap_c_.R643 1
g3p_c_.R643 1
fdp-B_s_.R644 -1
dhap_s_.R644 1
g3p_s_.R644 1
his-L_s_.R645 -1
h_s_.R645 -1
hista_s_.R645 1
co2_s_.R645 1
prpp_s_.R646 -1
atp_s_.R646 -1
prbatp_s_.R646 1
ppi_s_.R646 1
gln-L_s_.R647 -1
prpp_s_.R647 -1
h2o_s_.R647 -1
pram_s_.R647 1
ppi_s_.R647 1
glu-L_s_.R647 1
anth_s_.R648 -1
prpp_s_.R648 -1
pran_s_.R648 1
ppi_s_.R648 1
mal-L_m_.R649 -1
fum_m_.R649 1
h2o_m_.R649 1
dcamp_c_.R650 -1
fum_c_.R650 1
amp_c_.R650 1
dcamp_s_.R651 -1
fum_s_.R651 1
amp_s_.R651 1
argsuc_c_.R652 -1
fum_c_.R652 1
arg-L_c_.R652 1
leu-L_s_.R653 -1
akg_s_.R653 -1
4mop_s_.R653 1
glu-L_s_.R653 1
leu-L_m_.R654 -1
akg_m_.R654 -1
4mop_m_.R654 1
glu-L_m_.R654 1
gsn_c_.R655 -1
pi_c_.R655 -1
gua_c_.R655 1
r1p_c_.R655 1
adn_c_.R656 -1
pi_c_.R656 -1
ade_c_.R656 1
r1p_c_.R656 1
ins_c_.R657 -1
pi_c_.R657 -1
hxan_c_.R657 1
r1p_c_.R657 1
adn_c_.R658 -1
h2o_c_.R658 -1
h_c_.R658 -1
ins_c_.R658 1
nh4_c_.R658 1
imp_c_.R659 -1
h2o_c_.R659 -1
ins_c_.R659 1
pi_c_.R659 1
gmp_c_.R660 -1
h_c_.R660 -2
nadph_c_.R660 -1
imp_c_.R660 1
nadp_c_.R660 1
nh4_c_.R660 1
fprica_s_.R661 -1
imp_s_.R661 1
h2o_s_.R661 1
atp_c_.R662 -1
xmp_c_.R662 -1
gln-L_c_.R662 -1
h2o_c_.R662 -1
amp_c_.R662 1
ppi_c_.R662 1
gmp_c_.R662 1
glu-L_c_.R662 1
h_c_.R662 2
atp_c_.R663 -1
xmp_c_.R663 -1
nh4_c_.R663 -1
amp_c_.R663 1
ppi_c_.R663 1
gmp_c_.R663 1
h_c_.R663 2
atp_c_.R664 -1
gmp_c_.R664 -1
adp_c_.R664 1
gdp_c_.R664 1
atp_c_.R665 -1
dgmp_c_.R665 -1
adp_c_.R665 1
dgdp_c_.R665 1
atp_c_.R666 -1
damp_c_.R666 -1
adp_c_.R666 1
dadp_c_.R666 1
gdp_c_.R667 -1
trdrd_c_.R667 -1
dgdp_c_.R667 1
trdox_c_.R667 1
h2o_c_.R667 1
trdrd_c_.R668 -1
adp_c_.R668 -1
dadp_c_.R668 1
trdox_c_.R668 1
h2o_c_.R668 1
imp_c_.R669 -1
nad_c_.R669 -1
h2o_c_.R669 -1
xmp_c_.R669 1
nadh_c_.R669 1
h_c_.R669 1
atp_c_.R670 -1
ins_c_.R670 -1
adp_c_.R670 1
h_c_.R670 1
imp_c_.R670 1
hxan_c_.R671 -1
prpp_c_.R671 -1
imp_c_.R671 1
ppi_c_.R671 1
asp-L_c_.R672 -1
gtp_c_.R672 -1
imp_c_.R672 -1
dcamp_c_.R672 1
gdp_c_.R672 1
h_c_.R672 2
pi_c_.R672 1
asp-L_s_.R673 -1
gtp_s_.R673 -1
imp_s_.R673 -1
dcamp_s_.R673 1
gdp_s_.R673 1
h_s_.R673 2
pi_s_.R673 1
inost_c_.R674 -1
o2_c_.R674 -1
glcur_c_.R674 1
h2o_c_.R674 1
h_c_.R674 1
h2o_c_.R675 -1
pail45p_c_.R675 -1
12dgr_os_c_.R675 1
h_c_.R675 1
mi145p_c_.R675 1
atp_c_.R676 -1
pail5p_c_.R676 -1
adp_c_.R676 1
h_c_.R676 1
pail45p_c_.R676 1
atp_c_.R677 -1
pail4p_c_.R677 -1
adp_c_.R677 1
h_c_.R677 1
pail45p_c_.R677 1
atp_c_.R678 -1
ptd1ino_os_c_.R678 -1
adp_c_.R678 1
h_c_.R678 1
pail4p_c_.R678 1
atp_c_.R679 -1
ptd1ino_os_c_.R679 -1
adp_c_.R679 1
h_c_.R679 1
pail3p_c_.R679 1
atp_c_.R680 -1
pail3p_c_.R680 -1
pail35p_c_.R680 1
adp_c_.R680 1
h_c_.R680 1
mi3p-D_c_.R681 -1
atp_c_.R681 -1
mi34p_c_.R681 1
adp_c_.R681 1
mi34p_c_.R682 -1
atp_c_.R682 -1
mi346p_c_.R682 1
adp_c_.R682 1
mi346p_c_.R683 -1
atp_c_.R683 -1
mi3456p_c_.R683 1
adp_c_.R683 1
mi34p_c_.R684 -1
h2o_c_.R684 -1
mi3p-D_c_.R684 1
pi_c_.R684 1
h2o_c_.R685 -1
mi14p_c_.R685 -1
mi4p-D_c_.R685 1
pi_c_.R685 1
h2o_c_.R686 -1
mi134p_c_.R686 -1
mi34p_c_.R686 1
pi_c_.R686 1
h2o_c_.R687 -1
mi145p_c_.R687 -1
mi14p_c_.R687 1
pi_c_.R687 1
atp_c_.R688 -2
mi145p_c_.R688 -1
adp_c_.R688 2
h_c_.R688 2
mi13456p_c_.R688 1
atp_c_.R689 -1
mi145p_c_.R689 -1
adp_c_.R689 1
h_c_.R689 1
mi1345p_c_.R689 1
mi134p_c_.R690 -1
atp_c_.R690 -1
adp_c_.R690 1
h_c_.R690 1
mi1345p_c_.R690 1
mi134p_c_.R691 -1
atp_c_.R691 -1
adp_c_.R691 1
h_c_.R691 1
mi1346p_c_.R691 1
atp_c_.R692 -1
mi1346p_c_.R692 -1
adp_c_.R692 1
h_c_.R692 1
mi13456p_c_.R692 1
atp_c_.R693 -1
mi1346p_c_.R693 -1
adp_c_.R693 1
h_c_.R693 1
mi12346p_c_.R693 1
mi13456p_c_.R694 -1
atp_c_.R694 -1
minohp_c_.R694 1
adp_c_.R694 1
h_c_.R694 1
mi12346p_c_.R695 -1
atp_c_.R695 -1
minohp_c_.R695 1
adp_c_.R695 1
h_c_.R695 1
mi12356p_c_.R696 -1
atp_c_.R696 -1
minohp_c_.R696 1
adp_c_.R696 1
h_c_.R696 1
mi12345p_c_.R697 -1
atp_c_.R697 -1
minohp_c_.R697 1
adp_c_.R697 1
h_c_.R697 1
minohp_c_.R698 -1
h2o_c_.R698 -1
mi12345p_c_.R698 1
h_c_.R698 2
pi_c_.R698 1
minohp_c_.R699 -1
h2o_c_.R699 -1
mi12356p_c_.R699 1
h_c_.R699 2
pi_c_.R699 1
mi1345p_c_.R700 -1
h2o_c_.R700 -1
mi145p_c_.R700 1
h_c_.R700 2
pi_c_.R700 1
mi1345p_c_.R701 -1
h2o_c_.R701 -1
mi134p_c_.R701 1
h_c_.R701 2
pi_c_.R701 1
atp_c_.R702 -1
mi3456p_c_.R702 -1
adp_c_.R702 1
mi13456p_c_.R702 1
h_c_.R702 1
mi4p-D_c_.R703 -1
h2o_c_.R703 -1
inost_c_.R703 1
pi_c_.R703 1
mi3p-D_c_.R704 -1
h2o_c_.R704 -1
inost_c_.R704 1
pi_c_.R704 1
23dhmb_s_.R705 -1
3mob_s_.R705 1
h2o_s_.R705 1
accoa_c_.R706 -1
h2o_c_.R706 -1
aacoa_c_.R706 -1
hmgcoa_c_.R706 1
coa_c_.R706 1
accoa_m_.R707 -1
h2o_m_.R707 -1
aacoa_m_.R707 -1
hmgcoa_m_.R707 1
coa_m_.R707 1
gcoa_x_.R708 -1
fad_x_.R708 -1
fadh2_x_.R708 1
gccoa_x_.R708 1
gccoa_x_.R709 -1
co2_x_.R709 1
b2coa_x_.R709 1
accoa_x_.R710 -2
aacoa_x_.R710 1
coa_x_.R710 1
accoa_s_.R711 -2
aacoa_s_.R711 1
coa_s_.R711 1
accoa_c_.R712 -2
aacoa_c_.R712 1
coa_c_.R712 1
accoa_m_.R713 -2
aacoa_m_.R713 1
coa_m_.R713 1
accoa_s_.R714 -1
3mob_s_.R714 -1
h2o_s_.R714 -1
3c3hmp_s_.R714 1
coa_s_.R714 1
h_s_.R714 1
3hib_m_.R715 -1
nad_m_.R715 -1
mmsa_m_.R715 1
nadh_m_.R715 1
h_m_.R715 1
3mob_m_.R716 -1
thmpp_m_.R716 -1
h_m_.R716 -1
2mhop_m_.R716 1
co2_m_.R716 1
2mhop_m_.R717 -1
lpam_m_.R717 -1
2mpdhl_m_.R717 1
thmpp_m_.R717 1
coa_m_.R718 -1
2mpdhl_m_.R718 -1
ibcoa_m_.R718 1
dhlam_m_.R718 1
mmsa_m_.R719 -1
coa_m_.R719 -1
nad_m_.R719 -1
ppcoa_m_.R719 1
co2_m_.R719 1
nadh_m_.R719 1
ibcoa_m_.R720 -1
fad_m_.R720 -1
2mp2coa_m_.R720 1
fadh2_m_.R720 1
3hibutcoa_m_.R721 -1
h2o_m_.R721 -1
coa_m_.R721 1
3hib_m_.R721 1
h_m_.R721 1
2mp2coa_m_.R722 -1
h2o_m_.R722 -1
3hibutcoa_m_.R722 1
23dhmb_m_.R723 -1
3mob_m_.R723 1
h2o_m_.R723 1
val-L_s_.R724 -1
akg_s_.R724 -1
3mob_s_.R724 1
glu-L_s_.R724 1
val-L_m_.R725 -1
akg_m_.R725 -1
3mob_m_.R725 1
glu-L_m_.R725 1
mlthf_m_.R726 -1
nad_m_.R726 -1
methf_m_.R726 1
nadh_m_.R726 1
mlthf_s_.R727 -1
nad_s_.R727 -1
methf_s_.R727 1
nadh_s_.R727 1
mlthf_c_.R728 -1
nad_c_.R728 -1
methf_c_.R728 1
nadh_c_.R728 1
atp_c_.R729 -1
5fthf_c_.R729 -1
h_c_.R729 -1
adp_c_.R729 1
pi_c_.R729 1
methf_c_.R729 1
atp_m_.R730 -1
5fthf_m_.R730 -1
h_m_.R730 -1
adp_m_.R730 1
pi_m_.R730 1
methf_m_.R730 1
atp_s_.R731 -1
5fthf_s_.R731 -1
h_s_.R731 -1
adp_s_.R731 1
pi_s_.R731 1
methf_s_.R731 1
mlthf_m_.R732 -1
nadp_m_.R732 -1
methf_m_.R732 1
nadph_m_.R732 1
mlthf_s_.R733 -1
nadp_s_.R733 -1
methf_s_.R733 1
nadph_s_.R733 1
mlthf_c_.R734 -1
nadp_c_.R734 -1
methf_c_.R734 1
nadph_c_.R734 1
3mob_m_.R735 -1
h2o_m_.R735 -1
mlthf_m_.R735 -1
2dhp_m_.R735 1
thf_m_.R735 1
h2o_c_.R736 -1
gmp_c_.R736 -1
pi_c_.R736 1
gsn_c_.R736 1
gsn_c_.R737 -1
atp_c_.R737 -1
gmp_c_.R737 1
adp_c_.R737 1
h_c_.R737 1
gua_c_.R738 -1
prpp_c_.R738 -1
gmp_c_.R738 1
ppi_c_.R738 1
dad-2_c_.R739 -1
h2o_c_.R739 -1
h_c_.R739 -1
din_c_.R739 1
nh4_c_.R739 1
dgsn_c_.R740 -1
pi_c_.R740 -1
2dr1p_c_.R740 1
gua_c_.R740 1
din_c_.R741 -1
pi_c_.R741 -1
hxan_c_.R741 1
2dr1p_c_.R741 1
duri_c_.R742 -1
pi_c_.R742 -1
2dr1p_c_.R742 1
ura_c_.R742 1
dad-2_c_.R743 -1
pi_c_.R743 -1
2dr1p_c_.R743 1
ade_c_.R743 1
damp_c_.R744 -1
h2o_c_.R744 -1
dad-2_c_.R744 1
pi_c_.R744 1
ade_c_.R745 -1
h2o_c_.R745 -1
nh4_c_.R745 1
hxan_c_.R745 1
h2o_c_.R746 -1
adn_c_.R746 -1
rib-D_c_.R746 1
ade_c_.R746 1
gtp_c_.R747 -1
atp_c_.R747 -1
pppgpp_c_.R747 1
amp_c_.R747 1
pppgpp_c_.R748 -1
h2o_c_.R748 -1
ppgpp_c_.R748 1
pi_c_.R748 1
h_c_.R748 1
pro-L_m_.R749 -1
fad_m_.R749 -1
1pyr5c_m_.R749 1
fadh2_m_.R749 1
h_m_.R749 1
1pyr5c_c_.R750 -1
nadh_c_.R750 -1
h_c_.R750 -2
pro-L_c_.R750 1
nad_c_.R750 1
1pyr5c_s_.R751 -1
nadh_s_.R751 -1
h_s_.R751 -2
pro-L_s_.R751 1
nad_s_.R751 1
1pyr5c_c_.R752 -1
nadph_c_.R752 -1
h_c_.R752 -2
pro-L_c_.R752 1
nadp_c_.R752 1
1pyr5c_s_.R753 -1
nadph_s_.R753 -1
h_s_.R753 -2
pro-L_s_.R753 1
nadp_s_.R753 1
cyst-L_s_.R754 -1
h2o_s_.R754 -1
hcys-L_s_.R754 1
nh4_s_.R754 1
pyr_s_.R754 1
gcald_c_.R755 -1
h2o_c_.R755 -1
nad_c_.R755 -1
glyclt_c_.R755 1
h_c_.R755 2
nadh_c_.R755 1
2pglyc_s_.R756 -1
h2o_s_.R756 -1
glyclt_s_.R756 1
pi_s_.R756 1
glcur1p_c_.R757 -1
utp_c_.R757 -1
h_c_.R757 -1
udpglcur_c_.R757 1
ppi_c_.R757 1
xylan_c_.R758 -1
h2o_c_.R758 -1
xyl-D_c_.R758 2
udpxyl_c_.R759 -2
h2o_c_.R759 -1
xylan_c_.R759 1
udp_c_.R759 2
udpglcur_c_.R760 -1
udpgalur_c_.R760 1
udpg_c_.R761 -1
udpddg_c_.R761 1
h2o_c_.R761 1
udpgalur_c_.R762 -3
h2o_c_.R762 -2
pect_c_.R762 1
udp_c_.R762 3
udpddg_c_.R763 -1
udpkrmn_c_.R763 1
udpkrmn_c_.R764 -1
nadph_c_.R764 -1
h_c_.R764 -1
udprmn_c_.R764 1
nadp_c_.R764 1
udpglcur_c_.R765 -1
h_c_.R765 -1
udpxyl_c_.R765 1
co2_c_.R765 1
h_s_.R766 -1
hpyr_s_.R766 -1
nadh_s_.R766 -1
glyc-R_s_.R766 1
nad_s_.R766 1
h_x_.R767 -1
hpyr_x_.R767 -1
nadh_x_.R767 -1
glyc-R_x_.R767 1
nad_x_.R767 1
h_s_.R768 -1
hpyr_s_.R768 -1
nadph_s_.R768 -1
glyc-R_s_.R768 1
nadp_s_.R768 1
h_x_.R769 -1
hpyr_x_.R769 -1
nadph_x_.R769 -1
glyc-R_x_.R769 1
nadp_x_.R769 1
cbp_c_.R770 -1
asp-L_c_.R770 -1
pi_c_.R770 1
cbasp_c_.R770 1
phom_s_.R771 -1
h2o_s_.R771 -1
thr-L_s_.R771 1
pi_s_.R771 1
atp_c_.R772 -1
arab-L_c_.R772 -1
adp_c_.R772 1
B-ara1p_c_.R772 1
h_c_.R772 1
utp_c_.R773 -1
B-ara1p_c_.R773 -1
h_c_.R773 -1
ppi_c_.R773 1
udparab_c_.R773 1
udp_c_.R774 -1
B-ara1p_c_.R774 -1
h_c_.R774 -1
pi_c_.R774 1
udparab_c_.R774 1
udparab_v_.R775 -1
h2o_v_.R775 -1
arab-L_v_.R775 1
udp_v_.R775 1
h_v_.R775 1
udparab_c_.R776 -1
h2o_c_.R776 -1
arab-L_c_.R776 1
udp_c_.R776 1
h_c_.R776 1
udpxyl_c_.R777 -1
udparab_c_.R777 1
glcur_c_.R778 -1
atp_c_.R778 -1
glcur1p_c_.R778 1
adp_c_.R778 1
h_c_.R778 1
13dpg_c_.R779 -1
adp_c_.R779 -1
3pg_c_.R779 1
atp_c_.R779 1
13dpg_s_.R780 -1
adp_s_.R780 -1
3pg_s_.R780 1
atp_s_.R780 1
3pg_s_.R781 -1
nad_s_.R781 -1
3php_s_.R781 1
nadh_s_.R781 1
h_s_.R781 1
atp_s_.R782 -1
glyc-R_s_.R782 -1
adp_s_.R782 1
3pg_s_.R782 1
h_s_.R782 1
atp_s_.R783 -1
glyc-R_s_.R783 -1
adp_s_.R783 1
2pg_s_.R783 1
h_s_.R783 1
3pg_c_.R784 -1
2pg_c_.R784 1
3pg_s_.R785 -1
2pg_s_.R785 1
g6p-A_c_.R786 -1
g6p-B_c_.R786 1
g6p-A_s_.R787 -1
g6p-B_s_.R787 1
atp_s_.R788 -1
ru5p-D_s_.R788 -1
adp_s_.R788 1
h_s_.R788 1
rb15bp_s_.R788 1
atp_c_.R789 -1
glcn_c_.R789 -1
6pgc_c_.R789 1
adp_c_.R789 1
h_c_.R789 1
atp_s_.R790 -1
glcn_s_.R790 -1
6pgc_s_.R790 1
adp_s_.R790 1
h_s_.R790 1
6pgc_c_.R791 -1
nadp_c_.R791 -1
co2_c_.R791 1
nadph_c_.R791 1
ru5p-D_c_.R791 1
6pgc_s_.R792 -1
nadp_s_.R792 -1
co2_s_.R792 1
nadph_s_.R792 1
ru5p-D_s_.R792 1
xyl-D_c_.R793 -1
xylu-D_c_.R793 1
atp_c_.R794 -1
xylu-D_c_.R794 -1
adp_c_.R794 1
h_c_.R794 1
xu5p-D_c_.R794 1
ru5p-D_c_.R795 -1
xu5p-D_c_.R795 1
ru5p-D_s_.R796 -1
xu5p-D_s_.R796 1
3hpp_c_.R797 -1
nad_c_.R797 -1
h_c_.R797 1
msa_c_.R797 1
nadh_c_.R797 1
r5p_s_.R798 -1
xu5p-D_s_.R798 -1
g3p_s_.R798 1
s7p_s_.R798 1
4abut_m_.R799 -1
akg_m_.R799 -1
glu-L_m_.R799 1
sucsal_m_.R799 1
ala-B_m_.R800 -1
akg_m_.R800 -1
glu-L_m_.R800 1
msa_m_.R800 1
3c4mop_s_.R801 -1
h_s_.R801 -1
4mop_s_.R801 1
co2_s_.R801 1
h2o_c_.R802 -1
methf_c_.R802 -1
10fthf_c_.R802 1
h_c_.R802 1
h2o_s_.R803 -1
methf_s_.R803 -1
10fthf_s_.R803 1
h_s_.R803 1
h2o_m_.R804 -1
methf_m_.R804 -1
10fthf_m_.R804 1
h_m_.R804 1
gua_c_.R805 -1
h_c_.R805 -1
h2o_c_.R805 -1
nh4_c_.R805 1
xan_c_.R805 1
h2o_c_.R806 -1
gsn_c_.R806 -1
rib-D_c_.R806 1
gua_c_.R806 1
3psme_s_.R807 -1
chor_s_.R807 1
pi_s_.R807 1
chor_s_.R808 -1
pphn_s_.R808 1
chor_s_.R809 -1
gln-L_s_.R809 -1
4adcho_s_.R809 1
glu-L_s_.R809 1
h2o_c_.R810 -1
urea_c_.R810 -1
nh4_c_.R810 2
co2_c_.R810 1
alltt_c_.R811 -1
h2o_c_.R811 -1
h_c_.R811 -1
urdglyc_c_.R811 1
urea_c_.R811 1
alltn_c_.R812 -1
h2o_c_.R812 -1
alltt_c_.R812 1
h_c_.R812 1
5houdic_c_.R813 -1
h_c_.R813 -1
alltn_c_.R813 1
co2_c_.R813 1
5hiu_c_.R814 -1
h2o_c_.R814 -1
5houdic_c_.R814 1
h_c_.R814 1
urate_c_.R815 -1
o2_c_.R815 -1
h2o_c_.R815 -1
5hiu_c_.R815 1
h2o2_c_.R815 1
h_c_.R815 1
xan_c_.R816 -1
nad_c_.R816 -1
h2o_c_.R816 -1
urate_c_.R816 1
nadh_c_.R816 1
h_c_.R816 1
hxan_c_.R817 -1
nad_c_.R817 -1
h2o_c_.R817 -1
xan_c_.R817 1
nadh_c_.R817 1
h_c_.R817 1
ins_c_.R818 -1
h2o_c_.R818 -1
hxan_c_.R818 1
rib-D_c_.R818 1
accoa_s_.R819 -1
hom-L_s_.R819 -1
achms_s_.R819 1
coa_s_.R819 1
succoa_s_.R820 -1
hom-L_s_.R820 -1
suchms_s_.R820 1
coa_s_.R820 1
achms_s_.R821 -1
cys-L_s_.R821 -1
cyst-L_s_.R821 1
ac_s_.R821 1
h_s_.R821 1
suchms_s_.R822 -1
h2o_s_.R822 -1
2obut_s_.R822 1
succ_s_.R822 1
nh4_s_.R822 1
h_s_.R822 1
suchms_s_.R823 -1
cys-L_s_.R823 -1
cyst-L_s_.R823 1
succ_s_.R823 1
h_s_.R823 1
atp_s_.R824 -1
hom-L_s_.R824 -1
adp_s_.R824 1
phom_s_.R824 1
h_s_.R824 1
aspsa_s_.R825 -1
nadh_s_.R825 -1
h_s_.R825 -1
hom-L_s_.R825 1
nad_s_.R825 1
aspsa_s_.R826 -1
nadph_s_.R826 -1
h_s_.R826 -1
hom-L_s_.R826 1
nadp_s_.R826 1
atp_c_.R827 -1
glc-A_c_.R827 -1
adp_c_.R827 1
g6p-A_c_.R827 1
h_c_.R827 1
atp_s_.R828 -1
glc-A_s_.R828 -1
adp_s_.R828 1
g6p-A_s_.R828 1
h_s_.R828 1
glc-A_c_.R829 -1
glc-B_c_.R829 1
glc-A_s_.R830 -1
glc-B_s_.R830 1
atp_c_.R831 -1
glc-B_c_.R831 -1
adp_c_.R831 1
g6p-B_c_.R831 1
h_c_.R831 1
atp_s_.R832 -1
glc-B_s_.R832 -1
adp_s_.R832 1
g6p-B_s_.R832 1
h_s_.R832 1
starch_s_.R833 -1
h2o_s_.R833 -1
malt_s_.R833 2
starch_s_.R834 -1
h2o_s_.R834 -3
glc-A_s_.R834 4
malt_s_.R835 -1
h2o_s_.R835 -1
glc-A_s_.R835 2
starch_s_.R836 -1
pi_s_.R836 -2
glucan_s_.R836 1
g1p_s_.R836 2
pep_s_.R837 -1
e4p_s_.R837 -1
h2o_s_.R837 -1
2dda7p_s_.R837 1
pi_s_.R837 1
g3p_s_.R838 -1
s7p_s_.R838 -1
e4p_s_.R838 1
f6p-B_s_.R838 1
dhap_s_.R839 -1
e4p_s_.R839 -1
s17bp_s_.R839 1
e4p_s_.R840 -1
xu5p-D_s_.R840 -1
f6p-B_s_.R840 1
g3p_s_.R840 1
h2o_s_.R841 -1
s17bp_s_.R841 -1
pi_s_.R841 1
s7p_s_.R841 1
cbp_s_.R842 -1
asp-L_s_.R842 -1
pi_s_.R842 1
cbasp_s_.R842 1
orot5p_s_.R843 -1
ppi_s_.R843 -1
orot_s_.R843 1
prpp_s_.R843 1
acon-C_c_.R844 -1
h2o_c_.R844 -1
icit_c_.R844 1
cit_c_.R845 -1
acon-C_c_.R845 1
h2o_c_.R845 1
acon-C_m_.R846 -1
h2o_m_.R846 -1
icit_m_.R846 1
cit_m_.R847 -1
acon-C_m_.R847 1
h2o_m_.R847 1
atp_s_.R848 -1
citr-L_s_.R848 -1
asp-L_s_.R848 -1
amp_s_.R848 1
ppi_s_.R848 1
argsuc_s_.R848 1
h_s_.R848 1
atp_c_.R849 -1
citr-L_c_.R849 -1
asp-L_c_.R849 -1
amp_c_.R849 1
ppi_c_.R849 1
argsuc_c_.R849 1
h_c_.R849 1
cbasp_s_.R850 -1
h_s_.R850 -1
dhor-S_s_.R850 1
h2o_s_.R850 1
6pgl_c_.R851 -1
h2o_c_.R851 -1
6pgc_c_.R851 1
h_c_.R851 1
6pgl_s_.R852 -1
h2o_s_.R852 -1
6pgc_s_.R852 1
h_s_.R852 1
f6p-B_c_.R853 -1
ppi_c_.R853 -1
pi_c_.R853 1
fdp-B_c_.R853 1
h_c_.R853 1
glucan_s_.R854 -2
starch_s_.R854 1
h2o_s_.R854 1
xtsn_c_.R855 -1
pi_c_.R855 -1
xan_c_.R855 1
r1p_c_.R855 1
xtsn_c_.R856 -1
h2o_c_.R856 -1
xan_c_.R856 1
rib-D_c_.R856 1
h2o_c_.R857 -1
gsn_c_.R857 -1
nh4_c_.R857 1
xtsn_c_.R857 1
ficytc_m_.R858 -2
h_m_.R858 -2
q8h2_m_.R858 -1
focytc_m_.R858 2
h_c_.R858 4
q8_m_.R858 1
h_m_.R859 -1
nadh_m_.R859 -1
q8_m_.R859 -1
nad_m_.R859 1
q8h2_m_.R859 1
h_s_.R860 -4
pqh2_u_.R860 -1
o2_s_.R860 -1
h2o_s_.R860 2
pq_u_.R860 1
h_u_.R860 2
h_u_.R861 -1
nadh_s_.R861 -1
pq_u_.R861 -1
nad_s_.R861 1
pqh2_u_.R861 1
q8_m_.R862 -1
succ_m_.R862 -1
q8h2_m_.R862 1
fum_m_.R862 1
3mop_s_.R863 -1
glu-L_s_.R863 -1
ile-L_s_.R863 1
akg_s_.R863 1
3mop_m_.R864 -1
glu-L_m_.R864 -1
ile-L_m_.R864 1
akg_m_.R864 1
atp_m_.R865 -1
dhpt_m_.R865 -1
glu-L_m_.R865 -1
adp_m_.R865 1
pi_m_.R865 1
dhf_m_.R865 1
h_m_.R865 1
acorn_s_.R866 -1
glu-L_s_.R866 -1
orn_s_.R866 1
acglu_s_.R866 1
acg5sa_s_.R867 -1
glu-L_s_.R867 -1
acorn_s_.R867 1
akg_s_.R867 1
acorn_c_.R868 -1
h2o_c_.R868 -1
ac_c_.R868 1
orn_c_.R868 1
cbp_s_.R869 -1
orn_s_.R869 -1
pi_s_.R869 1
citr-L_s_.R869 1
h_s_.R869 1
cbp_c_.R870 -1
orn_c_.R870 -1
pi_c_.R870 1
citr-L_c_.R870 1
h_c_.R870 1
4pasp_s_.R871 -1
nadph_s_.R871 -1
h_s_.R871 -1
aspsa_s_.R871 1
pi_s_.R871 1
nadp_s_.R871 1
aspsa_s_.R872 -1
pyr_s_.R872 -1
23dhdp_s_.R872 1
h2o_s_.R872 1
h_s_.R872 1
3ig3p_s_.R873 -1
indole_s_.R873 1
g3p_s_.R873 1
atp_s_.R874 -1
skm_s_.R874 -1
adp_s_.R874 1
skm5p_s_.R874 1
h_s_.R874 1
3dhsk_s_.R875 -1
nadph_s_.R875 -1
h_s_.R875 -1
skm_s_.R875 1
nadp_s_.R875 1
adpglc_s_.R876 -2
h2o_s_.R876 -1
adp_s_.R876 2
glucan_s_.R876 1
2dhp_m_.R877 -1
h_m_.R877 -1
nadph_m_.R877 -1
nadp_m_.R877 1
pant-R_m_.R877 1
ala-B_c_.R878 -1
atp_c_.R878 -1
pant-R_c_.R878 -1
amp_c_.R878 1
h_c_.R878 1
pnto-R_c_.R878 1
ppi_c_.R878 1
atp_c_.R879 -1
acglu_c_.R879 -1
adp_c_.R879 1
acg5p_c_.R879 1
h2o_m_.R880 -1
prpncoa_m_.R880 -1
3hpcoa_m_.R880 1
xmp_c_.R881 -1
h2o_c_.R881 -1
xtsn_c_.R881 1
pi_c_.R881 1
26dap-LL_s_.R882 -1
26dap-M_s_.R882 1
g6p-B_c_.R883 -1
nadp_c_.R883 -1
6pgl_c_.R883 1
h_c_.R883 1
nadph_c_.R883 1
g6p-B_s_.R884 -1
nadp_s_.R884 -1
6pgl_s_.R884 1
h_s_.R884 1
nadph_s_.R884 1
cellb_c_.R885 -1
h2o_c_.R885 -1
glc-B_c_.R885 2
cellulose_c_.R886 -1
cellb_c_.R886 1
udpg_c_.R887 -2
h2o_c_.R887 -1
cellulose_c_.R887 1
udp_c_.R887 2
histd_s_.R888 -1
nad_s_.R888 -1
histda_s_.R888 1
nadh_s_.R888 1
h_s_.R888 2
histda_s_.R889 -1
nad_s_.R889 -1
h2o_s_.R889 -1
his-L_s_.R889 1
nadh_s_.R889 1
h_s_.R889 2
hisp_s_.R890 -1
h2o_s_.R890 -1
histd_s_.R890 1
pi_s_.R890 1
atp_c_.R891 -1
pnto-R_c_.R891 -1
4ppan_c_.R891 1
adp_c_.R891 1
h_c_.R891 1
atp_c_.R892 -1
h_c_.R892 -1
pan4p_c_.R892 -1
dpcoa_c_.R892 1
ppi_c_.R892 1
alac-S_m_.R893 -1
nadph_m_.R893 -1
h_m_.R893 -1
23dhmb_m_.R893 1
nadp_m_.R893 1
alac-S_s_.R894 -1
nadph_s_.R894 -1
h_s_.R894 -1
23dhmb_s_.R894 1
nadp_s_.R894 1
2ahhmd_m_.R895 -1
4abz_m_.R895 -1
dhpt_m_.R895 1
ppi_m_.R895 1
2dda7p_s_.R896 -1
3dhq_s_.R896 1
pi_s_.R896 1
3dhq_s_.R897 -1
3dhsk_s_.R897 1
h2o_s_.R897 1
3hpcoa_c_.R898 -1
h2o_c_.R898 -1
3hpp_c_.R898 1
coa_c_.R898 1
h_c_.R898 1
hisp_s_.R899 -1
akg_s_.R899 -1
imacp_s_.R899 1
glu-L_s_.R899 1
4ppcys_c_.R900 -1
h_c_.R900 -1
co2_c_.R900 1
pan4p_c_.R900 1
glu5p_c_.R901 -1
nadph_c_.R901 -1
h_c_.R901 -1
glu5sa_c_.R901 1
pi_c_.R901 1
nadp_c_.R901 1
glu5p_s_.R902 -1
nadph_s_.R902 -1
h_s_.R902 -1
glu5sa_s_.R902 1
pi_s_.R902 1
nadp_s_.R902 1
glu5sa_c_.R903 -1
1pyr5c_c_.R903 1
h2o_c_.R903 1
h_c_.R903 1
glu5sa_m_.R904 -1
1pyr5c_m_.R904 1
h2o_m_.R904 1
h_m_.R904 1
glu5sa_s_.R905 -1
1pyr5c_s_.R905 1
h2o_s_.R905 1
h_s_.R905 1
acg5p_c_.R906 -1
nadph_c_.R906 -1
h_c_.R906 -1
acg5sa_c_.R906 1
pi_c_.R906 1
nadp_c_.R906 1
eig3p_s_.R907 -1
imacp_s_.R907 1
h2o_s_.R907 1
pep_s_.R908 -1
skm5p_s_.R908 -1
pi_s_.R908 1
3psme_s_.R908 1
atp_m_.R909 -1
2ahhmp_m_.R909 -1
amp_m_.R909 1
2ahhmd_m_.R909 1
pyam5p_c_.R910 -1
h2o_c_.R910 -1
o2_c_.R910 -1
pydx5p_c_.R910 1
nh4_c_.R910 1
h2o2_c_.R910 1
pdx5p_c_.R911 -1
o2_c_.R911 -1
h2o2_c_.R911 1
pydx5p_c_.R911 1
pydxn_c_.R912 -1
o2_c_.R912 -1
pydx_c_.R912 1
h2o2_c_.R912 1
pydam_c_.R913 -1
h2o_c_.R913 -1
o2_c_.R913 -1
pydx_c_.R913 1
nh4_c_.R913 1
h2o2_c_.R913 1
atp_c_.R914 -1
pydxn_c_.R914 -1
adp_c_.R914 1
pdx5p_c_.R914 1
h_c_.R914 1
atp_c_.R915 -1
pydam_c_.R915 -1
adp_c_.R915 1
pyam5p_c_.R915 1
h_c_.R915 1
atp_c_.R916 -1
pydx_c_.R916 -1
adp_c_.R916 1
pydx5p_c_.R916 1
h_c_.R916 1
pyr_c_.R917 -1
pydam_c_.R917 -1
ala-L_c_.R917 1
pydx_c_.R917 1
gcald_c_.R918 -1
2obut_c_.R918 -1
ala-L_c_.R918 -1
pydxn_c_.R918 1
co2_c_.R918 1
h2o_c_.R918 2
h_c_.R918 2
dhnpt_c_.R919 -1
gcald_c_.R919 1
2ahhmp_c_.R919 1
2cpr5p_s_.R920 -1
h_s_.R920 -1
3ig3p_s_.R920 1
co2_s_.R920 1
h2o_s_.R920 1
pran_s_.R921 -1
2cpr5p_s_.R921 1
3c3hmp_s_.R922 -1
3c2hmp_s_.R922 1
prbatp_s_.R923 -1
h2o_s_.R923 -1
prbamp_s_.R923 1
ppi_s_.R923 1
h_s_.R923 1
prbamp_s_.R924 -1
h2o_s_.R924 -1
prfp_s_.R924 1
atp_s_.R925 -1
pram_s_.R925 -1
gly_s_.R925 -1
adp_s_.R925 1
pi_s_.R925 1
gar_s_.R925 1
h_s_.R925 1
3php_s_.R926 -1
glu-L_s_.R926 -1
pser-L_s_.R926 1
akg_s_.R926 1
23dhdp_s_.R927 -1
nadh_s_.R927 -1
h_s_.R927 -1
thdp_s_.R927 1
nad_s_.R927 1
h2o_s_.R927 1
23dhdp_s_.R928 -1
nadph_s_.R928 -1
h_s_.R928 -1
thdp_s_.R928 1
nadp_s_.R928 1
h2o_s_.R928 1
thmmp_s_.R929 -1
atp_s_.R929 -1
thmpp_s_.R929 1
adp_s_.R929 1
g3p_s_.R930 -1
h_s_.R930 -1
pyr_s_.R930 -1
co2_s_.R930 1
dxyl5p_s_.R930 1
2mahmp_s_.R931 -1
4mpetz_s_.R931 -1
h_s_.R931 -1
ppi_s_.R931 1
thmmp_s_.R931 1
4ahmmp_s_.R932 -1
atp_s_.R932 -1
4ampm_s_.R932 1
adp_s_.R932 1
h_s_.R932 1
atp_s_.R933 -1
thm_s_.R933 -1
adp_s_.R933 1
h_s_.R933 1
thmmp_s_.R933 1
4ampm_s_.R934 -1
atp_s_.R934 -1
2mahmp_s_.R934 1
adp_s_.R934 1
air_s_.R935 -1
h2o_s_.R935 -2
4ahmmp_s_.R935 1
pi_s_.R935 1
co2_s_.R935 2
h_s_.R935 7
atp_s_.R936 -1
dhgly_s_.R936 -1
dxyl5p_s_.R936 -1
h_s_.R936 -1
iscssh_s_.R936 -1
nadph_s_.R936 -1
4mpetz_s_.R936 1
amp_s_.R936 1
co2_s_.R936 1
h2o_s_.R936 2
iscs_s_.R936 1
nadp_s_.R936 1
ppi_s_.R936 1
amet_s_.R937 -1
nadph_s_.R937 -1
tyr-L_s_.R937 -1
4crsol_s_.R937 1
dad-5_s_.R937 1
dhgly_s_.R937 1
h_s_.R937 1
met-L_s_.R937 1
nadp_s_.R937 1
cys-L_s_.R938 -1
iscs_s_.R938 -1
ala-L_s_.R938 1
iscssh_s_.R938 1
h2o_s_.R939 -1
thmmp_s_.R939 -1
pi_s_.R939 1
thm_s_.R939 1
atp_c_.R940 -1
thm_c_.R940 -1
amp_c_.R940 1
thmpp_c_.R940 1
atp_s_.R941 -1
fpram_s_.R941 -1
adp_s_.R941 1
pi_s_.R941 1
air_s_.R941 1
h_s_.R941 1
air_s_.R942 -1
co2_s_.R942 -1
5aizc_s_.R942 1
h_s_.R942 2
4ppan_c_.R943 -1
ctp_c_.R943 -1
cys-L_c_.R943 -1
4ppcys_c_.R943 1
cmp_c_.R943 1
h_c_.R943 1
ppi_c_.R943 1
10fthf_s_.R944 -1
gar_s_.R944 -1
thf_s_.R944 1
fgam_s_.R944 1
h_s_.R944 1
fgam_s_.R945 -1
thf_s_.R945 -1
h_s_.R945 -3
gar_s_.R945 1
methf_s_.R945 1
h2o_s_.R945 1
3c2hmp_s_.R946 -1
nad_s_.R946 -1
3c4mop_s_.R946 1
nadh_s_.R946 1
h_s_.R946 1
4mop_m_.R947 -1
thmpp_m_.R947 -1
h_m_.R947 -1
3mhtpp_m_.R947 1
co2_m_.R947 1
3mhtpp_m_.R948 -1
lpam_m_.R948 -1
3mbdhl_m_.R948 1
thmpp_m_.R948 1
coa_m_.R949 -1
3mbdhl_m_.R949 -1
ivcoa_m_.R949 1
dhlam_m_.R949 1
ivcoa_m_.R950 -1
fad_m_.R950 -1
3mb2coa_m_.R950 1
fadh2_m_.R950 1
atp_m_.R951 -1
3mb2coa_m_.R951 -1
hco3_m_.R951 -1
adp_m_.R951 1
pi_m_.R951 1
3mgcoa_m_.R951 1
h_m_.R951 1
hmgcoa_m_.R952 -1
3mgcoa_m_.R952 1
h2o_m_.R952 1
hmgcoa_m_.R953 -1
accoa_m_.R953 1
acac_m_.R953 1
ppcoa_m_.R954 -1
fad_m_.R954 -1
fadh2_m_.R954 1
prpncoa_m_.R954 1
10fthf_m_.R955 -1
gar_m_.R955 -1
thf_m_.R955 1
fgam_m_.R955 1
h_m_.R955 1
fgam_m_.R956 -1
thf_m_.R956 -1
h_m_.R956 -3
gar_m_.R956 1
methf_m_.R956 1
h2o_m_.R956 1
atp_s_.R957 -1
fgam_s_.R957 -1
gln-L_s_.R957 -1
h2o_s_.R957 -1
adp_s_.R957 1
pi_s_.R957 1
fpram_s_.R957 1
glu-L_s_.R957 1
h_s_.R957 1
prlp_s_.R958 -1
gln-L_s_.R958 -1
eig3p_s_.R958 1
aicar_s_.R958 1
glu-L_s_.R958 1
h_s_.R958 1
25aics_s_.R959 -1
fum_s_.R959 1
aicar_s_.R959 1
10fthf_s_.R960 -1
aicar_s_.R960 -1
thf_s_.R960 1
fprica_s_.R960 1
atp_s_.R961 -1
5aizc_s_.R961 -1
asp-L_s_.R961 -1
adp_s_.R961 1
pi_s_.R961 1
25aics_s_.R961 1
h_s_.R961 1
dhpmp_c_.R962 -1
h2o_c_.R962 -1
dhnpt_c_.R962 1
pi_c_.R962 1
ahdt_c_.R963 -1
h2o_c_.R963 -1
dhpmp_c_.R963 1
ppi_c_.R963 1
prfp_s_.R964 -1
prlp_s_.R964 1
atp_c_.R965 -1
f6p-B_c_.R965 -1
adp_c_.R965 1
fdp-B_c_.R965 1
h_c_.R965 1
atp_s_.R966 -1
f6p-B_s_.R966 -1
adp_s_.R966 1
fdp-B_s_.R966 1
h_s_.R966 1
2ahbut_s_.R967 -1
h_s_.R967 -1
nadph_s_.R967 -1
23dhmp_s_.R967 1
nadp_s_.R967 1
23dhmp_s_.R968 -1
3mop_s_.R968 1
h2o_s_.R968 1
glucan_s_.R969 -1
h2o_s_.R969 -1
glc-A_s_.R969 2
4adcho_s_.R970 -1
4abz_s_.R970 1
pyr_s_.R970 1
h_s_.R970 1
paps_s_.R971 -1
h2o_s_.R971 -1
aps_s_.R971 1
pi_s_.R971 1
pap_s_.R972 -1
h2o_s_.R972 -1
amp_s_.R972 1
pi_s_.R972 1
aps_s_.R973 -1
atp_s_.R973 -1
adp_s_.R973 1
h_s_.R973 1
paps_s_.R973 1
aps_c_.R974 -1
atp_c_.R974 -1
adp_c_.R974 1
h_c_.R974 1
paps_c_.R974 1
paps_s_.R975 -1
trdrd_s_.R975 -1
h_s_.R975 1
pap_s_.R975 1
hso3_s_.R975 1
trdox_s_.R975 1
amp_s_.R976 -1
hso3_s_.R976 -1
gthox_s_.R976 -1
h_s_.R976 -1
aps_s_.R976 1
gthrd_s_.R976 2
starch_s_.R977 -1
h2o_s_.R977 -1
glucan_s_.R977 2
akg_s_.R978 -1
phe-L_s_.R978 -1
glu-L_s_.R978 1
phpyr_s_.R978 1
akg_c_.R979 -1
phe-L_c_.R979 -1
glu-L_c_.R979 1
phpyr_c_.R979 1
h_c_.R980 -1
phpyr_c_.R980 -1
co2_c_.R980 1
pacald_c_.R980 1
h_c_.R981 -1
nadh_c_.R981 -1
pacald_c_.R981 -1
2phetoh_c_.R981 1
nad_c_.R981 1
thdp_s_.R982 -1
glu-L_s_.R982 -1
h2o_s_.R982 -1
h_s_.R982 -1
26dap-LL_s_.R982 1
akg_s_.R982 1
g1p_c_.R983 -1
g6p-A_c_.R983 1
g1p_v_.R984 -1
g6p-A_v_.R984 1
g1p_s_.R985 -1
g6p-A_s_.R985 1
2ahethmpp_s_.R986 -1
2obut_s_.R986 -1
h_s_.R986 -1
2ahbut_s_.R986 1
thmpp_s_.R986 1
3mop_m_.R987 -1
thmpp_m_.R987 -1
h_m_.R987 -1
2mhob_m_.R987 1
co2_m_.R987 1
2mhob_m_.R988 -1
lpam_m_.R988 -1
2mbdhl_m_.R988 1
thmpp_m_.R988 1
coa_m_.R989 -1
2mbdhl_m_.R989 -1
2mbcoa_m_.R989 1
dhlam_m_.R989 1
2mbcoa_m_.R990 -1
fad_m_.R990 -1
2mb2coa_m_.R990 1
fadh2_m_.R990 1
2mb2coa_m_.R991 -1
h2o_m_.R991 -1
3hmbcoa_m_.R991 1
3hmbcoa_m_.R992 -1
nad_m_.R992 -1
2maacoa_m_.R992 1
nadh_m_.R992 1
h_m_.R992 1
coa_m_.R993 -1
2maacoa_m_.R993 -1
ppcoa_m_.R993 1
accoa_m_.R993 1
phom_s_.R994 -1
cys-L_s_.R994 -1
cyst-L_s_.R994 1
pi_s_.R994 1
dhor-S_c_.R995 -1
q8_m_.R995 -1
orot_c_.R995 1
q8h2_m_.R995 1
atp_s_.R996 -1
co2_s_.R996 -1
nh4_s_.R996 -1
adp_s_.R996 1
cbp_s_.R996 1
h_s_.R996 1
atp_s_.R997 -2
co2_s_.R997 -1
nh4_s_.R997 -1
h2o_s_.R997 -1
cbp_s_.R997 1
adp_s_.R997 2
pi_s_.R997 1
h_s_.R998 -1
hco3_s_.R998 -1
co2_s_.R998 1
h2o_s_.R998 1
h_c_.R999 -1
hco3_c_.R999 -1
co2_c_.R999 1
h2o_c_.R999 1
co2_m_.R1000 -1
h2o_m_.R1000 -1
h_m_.R1000 1
hco3_m_.R1000 1
accoa_s_.R1001 -1
atp_s_.R1001 -1
hco3_s_.R1001 -1
adp_s_.R1001 1
h_s_.R1001 1
malcoa_s_.R1001 1
pi_s_.R1001 1
accoa_c_.R1002 -1
atp_c_.R1002 -1
hco3_c_.R1002 -1
adp_c_.R1002 1
h_c_.R1002 1
malcoa_c_.R1002 1
pi_c_.R1002 1
phe-L_c_.R1003 -1
nh4_c_.R1003 1
t-cinn_c_.R1003 1
h_c_.R1003 1
tyr-L_c_.R1004 -1
nh4_c_.R1004 1
coum_c_.R1004 1
h_c_.R1004 1
coumcoa_c_.R1005 -1
nadph_c_.R1005 -1
h_c_.R1005 -1
coumald_c_.R1005 1
nadp_c_.R1005 1
coa_c_.R1005 1
coa_c_.R1006 -1
coum_c_.R1006 -1
atp_c_.R1006 -1
coumcoa_c_.R1006 1
ppi_c_.R1006 1
amp_c_.R1006 1
caffcoa_c_.R1007 -1
amet_c_.R1007 -1
ahcys_c_.R1007 1
fercoa_c_.R1007 1
h_c_.R1007 1
caffqnt_c_.R1008 -1
coa_c_.R1008 -1
caffcoa_c_.R1008 1
qnt_c_.R1008 1
fercoa_c_.R1009 -1
nadph_c_.R1009 -1
h_c_.R1009 -1
conald_c_.R1009 1
nadp_c_.R1009 1
coa_c_.R1009 1
t-cinn_c_.R1010 -1
o2_c_.R1010 -1
nadph_c_.R1010 -1
h_c_.R1010 -1
h2o_c_.R1010 1
nadp_c_.R1010 1
coum_c_.R1010 1
t-cinn_c_.R1011 -1
o2_c_.R1011 -1
nadph_c_.R1011 -1
h_c_.R1011 -1
h2o_c_.R1011 1
nadp_c_.R1011 1
2-coum_c_.R1011 1
coumcoa_c_.R1012 -1
skm_c_.R1012 -1
coumskm_c_.R1012 1
coa_c_.R1012 1
conald_c_.R1013 -1
nadph_c_.R1013 -1
h_c_.R1013 -1
conoh_c_.R1013 1
nadp_c_.R1013 1
sinald_c_.R1014 -1
nadph_c_.R1014 -1
h_c_.R1014 -1
sinoh_c_.R1014 1
nadp_c_.R1014 1
coumqnt_c_.R1015 -1
nadph_c_.R1015 -1
o2_c_.R1015 -1
h_c_.R1015 -1
caffqnt_c_.R1015 1
nadp_c_.R1015 1
h2o_c_.R1015 1
conald_c_.R1016 -1
nadph_c_.R1016 -1
o2_c_.R1016 -1
h_c_.R1016 -1
hconald_c_.R1016 1
nadp_c_.R1016 1
h2o_c_.R1016 1
hconald_c_.R1017 -1
amet_c_.R1017 -1
ahcys_c_.R1017 1
sinald_c_.R1017 1
h_c_.R1017 1
coumskm_c_.R1018 -1
nadph_c_.R1018 -1
o2_c_.R1018 -1
h_c_.R1018 -1
caffskm_c_.R1018 1
nadp_c_.R1018 1
h2o_c_.R1018 1
coumcoa_c_.R1019 -1
qnt_c_.R1019 -1
coumqnt_c_.R1019 1
coa_c_.R1019 1
caffskm_c_.R1020 -1
coa_c_.R1020 -1
caffcoa_c_.R1020 1
skm_c_.R1020 1
coumald_c_.R1021 -1
nadph_c_.R1021 -1
h_c_.R1021 -1
coumoh_c_.R1021 1
nadp_c_.R1021 1
cinncoa_c_.R1022 -1
nadph_c_.R1022 -1
h_c_.R1022 -1
cinnald_c_.R1022 1
nadp_c_.R1022 1
coa_c_.R1022 1
coa_c_.R1023 -1
t-cinn_c_.R1023 -1
atp_c_.R1023 -1
cinncoa_c_.R1023 1
ppi_c_.R1023 1
amp_c_.R1023 1
cinnald_c_.R1024 -1
o2_c_.R1024 -1
h2o_c_.R1024 -1
t-cinn_c_.R1024 1
h2o2_c_.R1024 1
h_c_.R1024 1
nadp_c_.R1025 -1
cinnoh_c_.R1025 -1
nadph_c_.R1025 1
cinnald_c_.R1025 1
h_c_.R1025 1
fer_c_.R1026 -1
coa_c_.R1026 -1
atp_c_.R1026 -1
fercoa_c_.R1026 1
amp_c_.R1026 1
ppi_c_.R1026 1
udpg_c_.R1027 -1
2-coum_c_.R1027 -1
coumghcinn_c_.R1027 1
udp_c_.R1027 1
h_c_.R1027 1
coumghcinn_c_.R1028 -1
coumntg_c_.R1028 1
coumntg_c_.R1029 -1
h2o_c_.R1029 -1
coumnt_c_.R1029 1
glc-B_c_.R1029 1
coumnt_c_.R1030 -1
h_c_.R1030 -1
coumn_c_.R1030 1
h2o_c_.R1030 1
coumcoa_c_.R1031 -1
akg_c_.R1031 -1
o2_c_.R1031 -1
co2_c_.R1031 1
succ_c_.R1031 1
dhcinncoa_c_.R1031 1
dhcinncoa_c_.R1032 -1
coa_c_.R1032 1
umblf_c_.R1032 1
umblf_c_.R1033 -1
dmpp_c_.R1033 -1
dmsbs_c_.R1033 1
ppi_c_.R1033 1
dmsbs_c_.R1034 -1
nadph_c_.R1034 -1
o2_c_.R1034 -1
marm_c_.R1034 1
nadp_c_.R1034 1
h2o_c_.R1034 1
marm_c_.R1035 -1
nadph_c_.R1035 -1
o2_c_.R1035 -1
h_c_.R1035 -1
psor_c_.R1035 1
act_c_.R1035 1
nadp_c_.R1035 1
h2o_c_.R1035 2
psor_c_.R1036 -1
nadph_c_.R1036 -1
o2_c_.R1036 -1
h_c_.R1036 -1
bgptl_c_.R1036 1
nadp_c_.R1036 1
h2o_c_.R1036 1
bgptl_c_.R1037 -1
amet_c_.R1037 -1
bgptn_c_.R1037 1
ahcys_c_.R1037 1
h_c_.R1037 1
pincem_c_.R1038 -1
o2_c_.R1038 -1
akg_c_.R1038 -1
pinban_c_.R1038 1
co2_c_.R1038 1
succ_c_.R1038 1
malcoa_c_.R1039 -3
cinncoa_c_.R1039 -1
h_c_.R1039 -3
pinchal_c_.R1039 1
coa_c_.R1039 4
co2_c_.R1039 3
pinchal_c_.R1040 -1
pincem_c_.R1040 1
h_c_.R1040 1
nrgn_c_.R1041 -1
o2_c_.R1041 -1
akg_c_.R1041 -1
co2_c_.R1041 1
succ_c_.R1041 1
dhk_c_.R1041 1
coumcoa_c_.R1042 -1
malcoa_c_.R1042 -3
nadph_c_.R1042 -1
h_c_.R1042 -4
isoqtgn_c_.R1042 1
coa_c_.R1042 4
co2_c_.R1042 3
nadp_c_.R1042 1
h2o_c_.R1042 1
coumcoa_c_.R1043 -1
malcoa_c_.R1043 -3
h_c_.R1043 -3
nrgchal_c_.R1043 1
co2_c_.R1043 3
coa_c_.R1043 4
nrgchal_c_.R1044 -1
nrgn_c_.R1044 1
h_c_.R1044 1
nrgn_c_.R1045 -1
akg_c_.R1045 -1
o2_c_.R1045 -1
apgn_c_.R1045 1
succ_c_.R1045 1
co2_c_.R1045 1
h2o_c_.R1045 1
nrgn_c_.R1046 -1
h_c_.R1046 -1
nadph_c_.R1046 -1
o2_c_.R1046 -1
apgn_c_.R1046 1
h2o_c_.R1046 2
nadp_c_.R1046 1
apgn_c_.R1047 -1
nadph_c_.R1047 -1
h_c_.R1047 -1
o2_c_.R1047 -1
ltln_c_.R1047 1
nadp_c_.R1047 1
h2o_c_.R1047 1
erdtl_c_.R1048 -1
h_c_.R1048 -1
o2_c_.R1048 -1
nadph_c_.R1048 -1
2herdtl_c_.R1048 1
h2o_c_.R1048 1
nadp_c_.R1048 1
2herdtl_c_.R1049 -1
erdtlt_c_.R1049 1
erdtlt_c_.R1050 -1
udpg_c_.R1050 -1
2herdtl6g_c_.R1050 1
udp_c_.R1050 1
h_c_.R1050 1
2herdtl6g_c_.R1051 -1
iorntn_c_.R1051 1
h_c_.R1051 1
h2o_c_.R1051 1
erdtlt_c_.R1052 -1
udpg_c_.R1052 -1
2herdtl8g_c_.R1052 1
udp_c_.R1052 1
2herdtl8g_c_.R1053 -1
orntn_c_.R1053 1
h2o_c_.R1053 1
nrgn_c_.R1054 -1
h_c_.R1054 -1
o2_c_.R1054 -1
nadph_c_.R1054 -1
2hnrgn_c_.R1054 1
nadp_c_.R1054 1
h2o_c_.R1054 1
2hnrgn_c_.R1055 -1
nrgnt_c_.R1055 1
nrgnt_c_.R1056 -1
udpg_c_.R1056 -1
2hnrgn6g_c_.R1056 1
udp_c_.R1056 1
h_c_.R1056 1
2hnrgn6g_c_.R1057 -1
ivtxn_c_.R1057 1
h2o_c_.R1057 1
nrgnt_c_.R1058 -1
udpg_c_.R1058 -1
2hnrgn8g_c_.R1058 1
udp_c_.R1058 1
h_c_.R1058 2
2hnrgn8g_c_.R1059 -1
vtxn_c_.R1059 1
h2o_c_.R1059 1
udpg_c_.R1060 -1
ivtxn_c_.R1060 -1
ivtxn2g_c_.R1060 1
udp_c_.R1060 1
h_c_.R1060 1
iorntn_c_.R1061 -1
amet_c_.R1061 -1
ahcys_c_.R1061 1
iscprn_c_.R1061 1
h_c_.R1061 1
udpg_c_.R1062 -1
iscprn_c_.R1062 -1
iscprn2g_c_.R1062 1
udp_c_.R1062 1
h_c_.R1062 1
udpg_c_.R1063 -1
iorntn_c_.R1063 -1
iorntn2g_c_.R1063 1
udp_c_.R1063 1
h_c_.R1063 1
udpg_c_.R1064 -1
tricin_c_.R1064 -1
tricing_c_.R1064 1
udp_c_.R1064 1
h_c_.R1064 1
ltln_c_.R1065 -1
nadph_c_.R1065 -1
h_c_.R1065 -1
o2_c_.R1065 -1
trctn_c_.R1065 1
nadp_c_.R1065 1
h2o_c_.R1065 1
amet_c_.R1066 -1
trctn_c_.R1066 -1
ahcys_c_.R1066 1
mtrctn_c_.R1066 1
mtrctn_c_.R1067 -1
amet_c_.R1067 -1
ahcys_c_.R1067 1
tricin_c_.R1067 1
isoqtgn_c_.R1068 -1
lqtgn_c_.R1068 1
lqtgn_c_.R1069 -1
nadph_c_.R1069 -1
o2_c_.R1069 -1
h_c_.R1069 -1
butin_c_.R1069 1
nadp_c_.R1069 1
h2o_c_.R1069 1
nrgn_c_.R1070 -1
nadph_c_.R1070 -1
o2_c_.R1070 -1
h_c_.R1070 -1
erdtl_c_.R1070 1
nadp_c_.R1070 1
h2o_c_.R1070 1
dhk_c_.R1071 -1
akg_c_.R1071 -1
o2_c_.R1071 -1
kmpfl_c_.R1071 1
succ_c_.R1071 1
co2_c_.R1071 1
h2o_c_.R1071 1
dhqrctn_c_.R1072 -1
akg_c_.R1072 -1
o2_c_.R1072 -1
qrctn_c_.R1072 1
succ_c_.R1072 1
co2_c_.R1072 1
h2o_c_.R1072 1
dhk_c_.R1073 -1
nadph_c_.R1073 -1
o2_c_.R1073 -1
h_c_.R1073 -1
dhqrctn_c_.R1073 1
nadp_c_.R1073 1
h2o_c_.R1073 1
kmpfl_c_.R1074 -1
nadph_c_.R1074 -1
o2_c_.R1074 -1
h_c_.R1074 -1
qrctn_c_.R1074 1
nadp_c_.R1074 1
h2o_c_.R1074 1
qrctn_c_.R1075 -1
udpg_c_.R1075 -1
udp_c_.R1075 1
qrctn3g_c_.R1075 1
kmpfl_c_.R1076 -1
udpg_c_.R1076 -1
udp_c_.R1076 1
kmpfl3g_c_.R1076 1
dhk_c_.R1077 -1
nadph_c_.R1077 -1
h_c_.R1077 -2
lplg_c_.R1077 1
nadp_c_.R1077 1
dhqrctn_c_.R1078 -1
nadph_c_.R1078 -1
h_c_.R1078 -2
lcyc_c_.R1078 1
nadp_c_.R1078 1
erdtl_c_.R1079 -1
o2_c_.R1079 -1
akg_c_.R1079 -1
dhqrctn_c_.R1079 1
co2_c_.R1079 1
succ_c_.R1079 1
lplg_c_.R1080 -1
nadph_c_.R1080 -1
h_c_.R1080 -1
afzl_c_.R1080 1
nadp_c_.R1080 1
h2o_c_.R1080 1
lcyc_c_.R1081 -1
nadph_c_.R1081 -1
h_c_.R1081 -1
catcn_c_.R1081 1
nadp_c_.R1081 1
h2o_c_.R1081 1
lplg_c_.R1082 -1
akg_c_.R1082 -1
o2_c_.R1082 -1
h_c_.R1082 -1
plgn_c_.R1082 1
succ_c_.R1082 1
co2_c_.R1082 1
h2o_c_.R1082 2
plgn_c_.R1083 -1
udpg_c_.R1083 -1
udp_c_.R1083 1
plgng_c_.R1083 1
plgn_c_.R1084 -1
nadp_c_.R1084 -2
epflzn_c_.R1084 1
nadph_c_.R1084 2
h_c_.R1084 1
cndn_c_.R1085 -1
nadp_c_.R1085 -2
epctcn_c_.R1085 1
nadph_c_.R1085 2
h_c_.R1085 1
cndn_c_.R1086 -1
udpg_c_.R1086 -1
udp_c_.R1086 1
cndng_c_.R1086 1
cndn_c_.R1087 -1
udpg_c_.R1087 -1
udp_c_.R1087 1
cndn5g_c_.R1087 1
cndn5g_c_.R1088 -1
udpg_c_.R1088 -1
udp_c_.R1088 1
cndn35dg_c_.R1088 1
cndng_c_.R1089 -1
udpg_c_.R1089 -1
udp_c_.R1089 1
cndn35dg_c_.R1089 1
lcyc_c_.R1090 -1
akg_c_.R1090 -1
o2_c_.R1090 -1
h_c_.R1090 -1
cndn_c_.R1090 1
succ_c_.R1090 1
co2_c_.R1090 1
h2o_c_.R1090 2
glutrna_s_.R1091 -1
h_s_.R1091 -1
nadph_s_.R1091 -1
glu1sa_s_.R1091 1
nadp_s_.R1091 1
trnaglu_s_.R1091 1
h2o_s_.R1092 -1
ppbng_s_.R1092 -4
hmbil_s_.R1092 1
nh4_s_.R1092 4
5aop_s_.R1093 -2
h_s_.R1093 1
h2o_s_.R1093 2
ppbng_s_.R1093 1
hmbil_s_.R1094 -1
h2o_s_.R1094 1
uppg3_s_.R1094 1
glu1sa_s_.R1095 -1
5aop_s_.R1095 1
atp_s_.R1096 -1
glu-L_s_.R1096 -1
trnaglu_s_.R1096 -1
amp_s_.R1096 1
glutrna_s_.R1096 1
ppi_s_.R1096 1
amet_s_.R1097 -2
uppg3_s_.R1097 -1
ahcys_s_.R1097 2
dscl_s_.R1097 1
h_s_.R1097 1
dscl_s_.R1098 -1
nadp_s_.R1098 -1
h_s_.R1098 -1
scl_s_.R1098 1
nadph_s_.R1098 1
fe2_s_.R1099 -1
scl_s_.R1099 -1
sheme_s_.R1099 1
mppp9me_s_.R1100 -1
nadph_s_.R1100 -1
h_s_.R1100 -1
o2_s_.R1100 -1
hmppp9me_s_.R1100 1
nadp_s_.R1100 1
h2o_s_.R1100 1
hmppp9me_s_.R1101 -1
nadph_s_.R1101 -1
h_s_.R1101 -2
o2_s_.R1101 -1
omppp9me_s_.R1101 1
nadp_s_.R1101 1
h2o_s_.R1101 2
omppp9me_s_.R1102 -1
nadph_s_.R1102 -1
o2_s_.R1102 -1
dvpchlda_s_.R1102 1
nadp_s_.R1102 1
h2o_s_.R1102 2
pchlda_s_.R1103 -0.26485
nadph_s_.R1103 -0.26485
h_s_.R1103 -0.26485
photon410_u_.R1103 -0.26485
chlda_s_.R1103 0.26485
nadp_s_.R1103 0.26485
pchlda_s_.R1104 -0.56582
nadph_s_.R1104 -0.56582
h_s_.R1104 -0.56582
photon430_u_.R1104 -0.56582
chlda_s_.R1104 0.56582
nadp_s_.R1104 0.56582
pchlda_s_.R1105 -0.8139
nadph_s_.R1105 -0.8139
h_s_.R1105 -0.8139
photon450_u_.R1105 -0.8139
chlda_s_.R1105 0.8139
nadp_s_.R1105 0.8139
pchlda_s_.R1106 -0.4478
nadph_s_.R1106 -0.4478
h_s_.R1106 -0.4478
photon470_u_.R1106 -0.4478
chlda_s_.R1106 0.4478
nadp_s_.R1106 0.4478
pchlda_s_.R1107 -0.184
nadph_s_.R1107 -0.184
h_s_.R1107 -0.184
photon490_u_.R1107 -0.184
chlda_s_.R1107 0.184
nadp_s_.R1107 0.184
pchlda_s_.R1108 -0.1382
nadph_s_.R1108 -0.1382
h_s_.R1108 -0.1382
photon510_u_.R1108 -0.1382
chlda_s_.R1108 0.1382
nadp_s_.R1108 0.1382
pchlda_s_.R1109 -0.208
nadph_s_.R1109 -0.208
h_s_.R1109 -0.208
photon530_u_.R1109 -0.208
chlda_s_.R1109 0.208
nadp_s_.R1109 0.208
pchlda_s_.R1110 -0.24811
nadph_s_.R1110 -0.24811
h_s_.R1110 -0.24811
photon550_u_.R1110 -0.24811
chlda_s_.R1110 0.24811
nadp_s_.R1110 0.24811
pchlda_s_.R1111 -0.3014
nadph_s_.R1111 -0.3014
h_s_.R1111 -0.3014
photon570_u_.R1111 -0.3014
chlda_s_.R1111 0.3014
nadp_s_.R1111 0.3014
pchlda_s_.R1112 -0.3447
nadph_s_.R1112 -0.3447
h_s_.R1112 -0.3447
photon590_u_.R1112 -0.3447
chlda_s_.R1112 0.3447
nadp_s_.R1112 0.3447
pchlda_s_.R1113 -0.5565
nadph_s_.R1113 -0.5565
h_s_.R1113 -0.5565
photon610_u_.R1113 -0.5565
chlda_s_.R1113 0.5565
nadp_s_.R1113 0.5565
pchlda_s_.R1114 -0.8377
nadph_s_.R1114 -0.8377
h_s_.R1114 -0.8377
photon630_u_.R1114 -0.8377
chlda_s_.R1114 0.8377
nadp_s_.R1114 0.8377
pchlda_s_.R1115 -1
nadph_s_.R1115 -1
h_s_.R1115 -1
photon650_u_.R1115 -1
chlda_s_.R1115 1
nadp_s_.R1115 1
pchlda_s_.R1116 -0.4324
nadph_s_.R1116 -0.4324
h_s_.R1116 -0.4324
photon670_u_.R1116 -0.4324
chlda_s_.R1116 0.4324
nadp_s_.R1116 0.4324
pchlda_s_.R1117 -0.1455
nadph_s_.R1117 -0.1455
h_s_.R1117 -0.1455
photon690_u_.R1117 -0.1455
chlda_s_.R1117 0.1455
nadp_s_.R1117 0.1455
dvpchlda_s_.R1118 -0.26485
nadph_s_.R1118 -0.26485
h_s_.R1118 -0.26485
photon410_u_.R1118 -0.26485
chlda_s_.R1118 0.26485
nadp_s_.R1118 0.26485
dvpchlda_s_.R1119 -0.56582
nadph_s_.R1119 -0.56582
h_s_.R1119 -0.56582
photon430_u_.R1119 -0.56582
chlda_s_.R1119 0.56582
nadp_s_.R1119 0.56582
dvpchlda_s_.R1120 -0.8139
nadph_s_.R1120 -0.8139
h_s_.R1120 -0.8139
photon450_u_.R1120 -0.8139
chlda_s_.R1120 0.8139
nadp_s_.R1120 0.8139
dvpchlda_s_.R1121 -0.4478
nadph_s_.R1121 -0.4478
h_s_.R1121 -0.4478
photon470_u_.R1121 -0.4478
chlda_s_.R1121 0.4478
nadp_s_.R1121 0.4478
dvpchlda_s_.R1122 -0.184
nadph_s_.R1122 -0.184
h_s_.R1122 -0.184
photon490_u_.R1122 -0.184
chlda_s_.R1122 0.184
nadp_s_.R1122 0.184
dvpchlda_s_.R1123 -0.1382
nadph_s_.R1123 -0.1382
h_s_.R1123 -0.1382
photon510_u_.R1123 -0.1382
chlda_s_.R1123 0.1382
nadp_s_.R1123 0.1382
dvpchlda_s_.R1124 -0.208
nadph_s_.R1124 -0.208
h_s_.R1124 -0.208
photon530_u_.R1124 -0.208
chlda_s_.R1124 0.208
nadp_s_.R1124 0.208
dvpchlda_s_.R1125 -0.24811
nadph_s_.R1125 -0.24811
h_s_.R1125 -0.24811
photon550_u_.R1125 -0.24811
chlda_s_.R1125 0.24811
nadp_s_.R1125 0.24811
dvpchlda_s_.R1126 -0.3014
nadph_s_.R1126 -0.3014
h_s_.R1126 -0.3014
photon570_u_.R1126 -0.3014
chlda_s_.R1126 0.3014
nadp_s_.R1126 0.3014
dvpchlda_s_.R1127 -0.3447
nadph_s_.R1127 -0.3447
h_s_.R1127 -0.3447
photon590_u_.R1127 -0.3447
chlda_s_.R1127 0.3447
nadp_s_.R1127 0.3447
dvpchlda_s_.R1128 -0.5565
nadph_s_.R1128 -0.5565
h_s_.R1128 -0.5565
photon610_u_.R1128 -0.5565
chlda_s_.R1128 0.5565
nadp_s_.R1128 0.5565
dvpchlda_s_.R1129 -0.8377
nadph_s_.R1129 -0.8377
h_s_.R1129 -0.8377
photon630_u_.R1129 -0.8377
chlda_s_.R1129 0.8377
nadp_s_.R1129 0.8377
dvpchlda_s_.R1130 -1
nadph_s_.R1130 -1
h_s_.R1130 -1
photon650_u_.R1130 -1
chlda_s_.R1130 1
nadp_s_.R1130 1
dvpchlda_s_.R1131 -0.4324
nadph_s_.R1131 -0.4324
h_s_.R1131 -0.4324
photon670_u_.R1131 -0.4324
chlda_s_.R1131 0.4324
nadp_s_.R1131 0.4324
dvpchlda_s_.R1132 -0.1455
nadph_s_.R1132 -0.1455
h_s_.R1132 -0.1455
photon690_u_.R1132 -0.1455
chlda_s_.R1132 0.1455
nadp_s_.R1132 0.1455
cpppg3_s_.R1133 -1
h_s_.R1133 -2
o2_s_.R1133 -1
co2_s_.R1133 2
h2o_s_.R1133 2
pppg9_s_.R1133 1
o2_s_.R1134 -3
pppg9_s_.R1134 -1
h2o2_s_.R1134 3
ppp9_s_.R1134 1
amet_s_.R1135 -1
mppp9_s_.R1135 -1
ahcys_s_.R1135 1
mppp9me_s_.R1135 1
h_s_.R1135 1
uppg1_s_.R1136 -1
nadph_s_.R1136 -1
upp1_s_.R1136 1
nadp_s_.R1136 1
h_s_.R1136 7
hmbil_s_.R1137 -1
uppg1_s_.R1137 1
h2o_s_.R1137 1
h_s_.R1138 -4
uppg3_s_.R1138 -1
co2_s_.R1138 4
cpppg3_s_.R1138 1
uppg1_s_.R1139 -1
h_s_.R1139 -4
cpppg1_s_.R1139 1
co2_s_.R1139 4
cpppg1_s_.R1140 -1
nadp_s_.R1140 -1
cpp1_s_.R1140 1
nadph_s_.R1140 1
h_s_.R1140 5
uppg3_s_.R1141 -1
nadp_s_.R1141 -1
upp3_s_.R1141 1
h_s_.R1141 5
nadph_s_.R1141 1
fe2_s_.R1142 -1
ppp9_s_.R1142 -1
h_s_.R1142 2
pheme_s_.R1142 1
atp_s_.R1143 -1
ppp9_s_.R1143 -1
mg2_s_.R1143 -1
h2o_s_.R1143 -1
adp_s_.R1143 1
pi_s_.R1143 1
mppp9_s_.R1143 1
h_s_.R1143 1
dvchlda_s_.R1144 -1
nadph_s_.R1144 -1
h_s_.R1144 -1
chlda_s_.R1144 1
nadp_s_.R1144 1
dvpchlda_s_.R1145 -1
nadph_s_.R1145 -1
h_s_.R1145 -1
pchlda_s_.R1145 1
nadp_s_.R1145 1
fe2_s_.R1146 -2
nad_s_.R1146 -1
h_s_.R1146 -1
fe3_s_.R1146 2
nadh_s_.R1146 1
frdp_m_.R1147 -1
h2o_m_.R1147 -1
pheme_m_.R1147 -1
hemeO_m_.R1147 1
ppi_m_.R1147 1
apocytc_s_.R1148 -1
pheme_s_.R1148 -1
cytc_s_.R1148 1
apocytc_m_.R1149 -1
pheme_m_.R1149 -1
cytc_m_.R1149 1
h2o_m_.R1150 -1
hemeO_m_.R1150 -1
h_m_.R1150 5
hemeA_m_.R1150 1
h_s_.R1151 -3
nadph_s_.R1151 -3
o2_s_.R1151 -3
pheme_s_.R1151 -1
biliverd_s_.R1151 1
co_s_.R1151 1
fe2_s_.R1151 1
h2o_s_.R1151 3
nadp_s_.R1151 3
chlb_s_.R1152 -1
h2o_s_.R1152 -1
chldb_s_.R1152 1
phytol_s_.R1152 1
chldb_s_.R1153 -1
pdp_s_.R1153 -1
chlb_s_.R1153 1
ppi_s_.R1153 1
h_s_.R1153 1
chlda_s_.R1154 -1
nadph_s_.R1154 -2
o2_s_.R1154 -2
h_s_.R1154 -2
chldb_s_.R1154 1
nadp_s_.R1154 2
h2o_s_.R1154 3
chla_s_.R1155 -1
nadph_s_.R1155 -2
o2_s_.R1155 -2
h_s_.R1155 -2
chlb_s_.R1155 1
nadp_s_.R1155 2
h2o_s_.R1155 3
chla_s_.R1156 -1
h2o_s_.R1156 -1
chlda_s_.R1156 1
phytol_s_.R1156 1
chlda_s_.R1157 -1
pdp_s_.R1157 -1
chla_s_.R1157 1
ppi_s_.R1157 1
h_s_.R1157 1
o2_s_.R1158 -1
fe2_s_.R1158 -4
h_s_.R1158 -4
fe3_s_.R1158 4
h2o_s_.R1158 2
frdp_m_.R1159 -1
ipdp_m_.R1159 -5
octdp_m_.R1159 1
ppi_m_.R1159 5
chor_m_.R1160 -1
pyr_m_.R1160 1
4hbz_m_.R1160 1
4hbz_m_.R1161 -1
octdp_m_.R1161 -1
3ophb_m_.R1161 1
ppi_m_.R1161 1
3ophb_m_.R1162 -1
h_m_.R1162 -1
nadph_m_.R1162 -1
o2_m_.R1162 -1
3opdhb_m_.R1162 1
h2o_m_.R1162 1
nadp_m_.R1162 1
3ophb_m_.R1163 -1
h_m_.R1163 -1
nadh_m_.R1163 -1
o2_m_.R1163 -1
3opdhb_m_.R1163 1
h2o_m_.R1163 1
nad_m_.R1163 1
3opdhb_m_.R1164 -1
amet_m_.R1164 -1
3opdhmb_m_.R1164 1
ahcys_m_.R1164 1
h_m_.R1164 1
3opdhmb_m_.R1165 -1
h_m_.R1165 -1
2omph_m_.R1165 1
co2_m_.R1165 1
2omph_m_.R1166 -1
h_m_.R1166 -1
nadph_m_.R1166 -1
o2_m_.R1166 -1
2ombzl_m_.R1166 1
h2o_m_.R1166 1
nadp_m_.R1166 1
2ombzl_m_.R1167 -1
amet_m_.R1167 -1
2ommbl_m_.R1167 1
ahcys_m_.R1167 1
h_m_.R1167 1
2ommbl_m_.R1168 -1
h_m_.R1168 -1
nadph_m_.R1168 -1
o2_m_.R1168 -1
2omhmbl_m_.R1168 1
h2o_m_.R1168 1
nadp_m_.R1168 1
2omhmbl_m_.R1169 -1
amet_m_.R1169 -1
ahcys_m_.R1169 1
h_m_.R1169 1
q8h2_m_.R1169 1
2sbzcoa_s_.R1170 -1
h2o_s_.R1170 1
dhncoa_s_.R1170 1
dhncoa_s_.R1171 -1
h2o_s_.R1171 -1
dhn_s_.R1171 1
coa_s_.R1171 1
chor_s_.R1172 -1
ichor_s_.R1172 1
atp_s_.R1173 -1
2sbz_s_.R1173 -1
coa_s_.R1173 -1
2sbzcoa_s_.R1173 1
amp_s_.R1173 1
ppi_s_.R1173 1
sephchc_s_.R1174 -1
2sbz_s_.R1174 1
h2o_s_.R1174 1
dhn_s_.R1175 -1
pdp_s_.R1175 -1
pnq_s_.R1175 1
co2_s_.R1175 1
ppi_s_.R1175 1
pnq_s_.R1176 -1
amet_s_.R1176 -1
pqnne_s_.R1176 1
ahcys_s_.R1176 1
dhn_s_.R1177 -1
octdp_s_.R1177 -1
dmq_s_.R1177 1
ppi_s_.R1177 1
co2_s_.R1177 1
dmq_s_.R1178 -1
amet_s_.R1178 -1
mnqnne_s_.R1178 1
ahcys_s_.R1178 1
akg_s_.R1179 -1
ichor_s_.R1179 -1
h_s_.R1179 -1
sephhc_s_.R1179 1
co2_s_.R1179 1
sephhc_s_.R1180 -1
sephchc_s_.R1180 1
pyr_s_.R1180 1
mpq_s_.R1181 -1
amet_s_.R1181 -1
dmpq_s_.R1181 1
ahcys_s_.R1181 1
h_s_.R1181 1
dvite_s_.R1182 -1
amet_s_.R1182 -1
bvite_s_.R1182 1
ahcys_s_.R1182 1
h_s_.R1182 1
bvite_s_.R1183 -1
amet_s_.R1183 -1
avite1_s_.R1183 1
ahcys_s_.R1183 1
h_s_.R1183 1
pdp_s_.R1184 -1
hgentis_s_.R1184 -1
mpq_s_.R1184 1
ppi_s_.R1184 1
co2_s_.R1184 1
frdp_s_.R1185 -1
ipdp_s_.R1185 -5
octdp_s_.R1185 1
ppi_s_.R1185 5
octdp_s_.R1186 -1
ipdp_s_.R1186 -1
npdp_s_.R1186 1
ppi_s_.R1186 1
hgentis_s_.R1187 -1
npdp_s_.R1187 -1
msbq_s_.R1187 1
ppi_s_.R1187 1
co2_s_.R1187 1
msbq_s_.R1188 -1
amet_s_.R1188 -1
plast_s_.R1188 1
ahcys_s_.R1188 1
dmpq_s_.R1189 -1
yvite_s_.R1189 1
mpq_s_.R1190 -1
dvite_s_.R1190 1
coa_c_.R1191 -1
mev-R_c_.R1191 -1
nadp_c_.R1191 -2
h_c_.R1191 2
hmgcoa_c_.R1191 1
nadph_c_.R1191 2
coa_c_.R1192 -1
mev-R_c_.R1192 -1
nad_c_.R1192 -2
h_c_.R1192 2
hmgcoa_c_.R1192 1
nadh_c_.R1192 2
atp_c_.R1193 -1
mev-R_c_.R1193 -1
5pmev_c_.R1193 1
adp_c_.R1193 1
h_c_.R1193 1
5pmev_c_.R1194 -1
atp_c_.R1194 -1
5dpmev_c_.R1194 1
adp_c_.R1194 1
5dpmev_c_.R1195 -1
atp_c_.R1195 -1
adp_c_.R1195 1
co2_c_.R1195 1
ipdp_c_.R1195 1
pi_c_.R1195 1
ipdp_c_.R1196 -1
dmpp_c_.R1196 1
ipdp_m_.R1197 -1
dmpp_m_.R1197 1
ipdp_s_.R1198 -1
dmpp_s_.R1198 1
dxyl5p_s_.R1199 -1
h_s_.R1199 -1
nadph_s_.R1199 -1
2me4p_s_.R1199 1
nadp_s_.R1199 1
h_s_.R1200 -1
h2mb4p_s_.R1200 -1
nadh_s_.R1200 -1
h2o_s_.R1200 1
ipdp_s_.R1200 1
nad_s_.R1200 1
h_s_.R1201 -1
h2mb4p_s_.R1201 -1
nadph_s_.R1201 -1
h2o_s_.R1201 1
ipdp_s_.R1201 1
nadp_s_.R1201 1
h_s_.R1202 -1
h2mb4p_s_.R1202 -1
nadh_s_.R1202 -1
dmpp_s_.R1202 1
h2o_s_.R1202 1
nad_s_.R1202 1
h_s_.R1203 -1
h2mb4p_s_.R1203 -1
nadph_s_.R1203 -1
dmpp_s_.R1203 1
h2o_s_.R1203 1
nadp_s_.R1203 1
2mecdp_s_.R1204 -1
fdxrd_s_.R1204 -2
h_s_.R1204 -1
fdxox_s_.R1204 2
h2mb4p_s_.R1204 1
h2o_s_.R1204 1
4c2me_s_.R1205 -1
atp_s_.R1205 -1
2p4c2me_s_.R1205 1
adp_s_.R1205 1
h_s_.R1205 1
2me4p_s_.R1206 -1
ctp_s_.R1206 -1
h_s_.R1206 -1
4c2me_s_.R1206 1
ppi_s_.R1206 1
2p4c2me_s_.R1207 -1
2mecdp_s_.R1207 1
cmp_s_.R1207 1
dmpp_s_.R1208 -1
ipdp_s_.R1208 -1
grdp_s_.R1208 1
ppi_s_.R1208 1
dmpp_m_.R1209 -1
ipdp_m_.R1209 -1
grdp_m_.R1209 1
ppi_m_.R1209 1
grdp_s_.R1210 -1
ipdp_s_.R1210 -1
frdp_s_.R1210 1
ppi_s_.R1210 1
grdp_m_.R1211 -1
ipdp_m_.R1211 -1
frdp_m_.R1211 1
ppi_m_.R1211 1
frdp_s_.R1212 -1
ipdp_s_.R1212 -1
ggdp_s_.R1212 1
ppi_s_.R1212 1
dmpp_c_.R1213 -1
ipdp_c_.R1213 -1
grdp_c_.R1213 1
ppi_c_.R1213 1
grdp_c_.R1214 -1
ipdp_c_.R1214 -1
frdp_c_.R1214 1
ppi_c_.R1214 1
ggdp_s_.R1215 -1
h_s_.R1215 -3
nadph_s_.R1215 -3
pdp_s_.R1215 1
nadp_s_.R1215 3
grdp_s_.R1216 -1
lim_s_.R1216 1
ppi_s_.R1216 1
frdp_c_.R1217 -2
ppi_c_.R1217 1
psqldp_c_.R1217 1
psqldp_c_.R1218 -1
nadph_c_.R1218 -1
h_c_.R1218 -1
ppi_c_.R1218 1
sql_c_.R1218 1
nadp_c_.R1218 1
sql_c_.R1219 -1
nadph_c_.R1219 -1
o2_c_.R1219 -1
h_c_.R1219 -1
Ssq23epx_c_.R1219 1
nadp_c_.R1219 1
h2o_c_.R1219 1
primard_s_.R1220 -1
nadph_s_.R1220 -3
o2_s_.R1220 -3
h_s_.R1220 -2
primardt_s_.R1220 1
nadp_s_.R1220 3
h2o_s_.R1220 3
ggdp_s_.R1221 -1
scodp_s_.R1221 1
scodp_s_.R1222 -1
primard_s_.R1222 1
ppi_s_.R1222 1
primardt_s_.R1223 -1
nadp_s_.R1223 -1
moma_s_.R1223 1
nadph_s_.R1223 1
h_s_.R1223 1
primardt_s_.R1224 -1
nad_s_.R1224 -1
moma_s_.R1224 1
nadh_s_.R1224 1
h_s_.R1224 1
scodp_s_.R1225 -1
stem_s_.R1225 1
ppi_s_.R1225 1
stem_c_.R1226 -1
o2_c_.R1226 -1
nadph_c_.R1226 -1
h2o_c_.R1226 1
nadp_c_.R1226 1
stemol_c_.R1226 1
stemol_c_.R1227 -1
o2_c_.R1227 -1
nadph_c_.R1227 -1
h2o_c_.R1227 1
nadp_c_.R1227 1
ozln-S_c_.R1227 1
ecdp_s_.R1228 -1
esand_s_.R1228 1
ppi_s_.R1228 1
esand_c_.R1229 -1
o2_c_.R1229 -1
nadph_c_.R1229 -1
h2o_c_.R1229 1
nadp_c_.R1229 1
esandol_c_.R1229 1
esandol_c_.R1230 -1
o2_c_.R1230 -1
nadph_c_.R1230 -1
ozln-D_c_.R1230 1
nadp_c_.R1230 1
h2o_c_.R1230 1
esandol_c_.R1231 -1
o2_c_.R1231 -1
nadph_c_.R1231 -1
ozln-E_c_.R1231 1
nadp_c_.R1231 1
h2o_c_.R1231 1
esandol_c_.R1232 -1
o2_c_.R1232 -1
nadph_c_.R1232 -1
ozln-F_c_.R1232 1
nadp_c_.R1232 1
h2o_c_.R1232 1
ozln-D_c_.R1233 -1
o2_c_.R1233 -1
nadph_c_.R1233 -1
h_c_.R1233 -1
ozln-A_c_.R1233 1
nadp_c_.R1233 1
h2o_c_.R1233 2
ozln-D_c_.R1234 -1
o2_c_.R1234 -1
nadph_c_.R1234 -1
h_c_.R1234 -1
ozln-B_c_.R1234 1
nadp_c_.R1234 1
h2o_c_.R1234 2
ozln-A_c_.R1235 -1
o2_c_.R1235 -1
nadph_c_.R1235 -1
h_c_.R1235 -1
ozln-C_c_.R1235 1
nadp_c_.R1235 1
h2o_c_.R1235 2
ozln-B_c_.R1236 -1
o2_c_.R1236 -1
nadph_c_.R1236 -1
h_c_.R1236 -1
ozln-C_c_.R1236 1
nadp_c_.R1236 1
h2o_c_.R1236 2
ecdp_s_.R1237 -1
primardn_s_.R1237 1
ppi_s_.R1237 1
ecdp_s_.R1238 -1
eikaur_s_.R1238 1
ppi_s_.R1238 1
eikaur_c_.R1239 -1
o2_c_.R1239 -1
nadph_c_.R1239 -1
eihkaur_c_.R1239 1
h2o_c_.R1239 1
nadp_c_.R1239 1
ecdp_s_.R1240 -1
ecasd_s_.R1240 1
ppi_s_.R1240 1
ecasd_c_.R1241 -1
o2_c_.R1241 -1
nadph_c_.R1241 -1
h2o_c_.R1241 1
nadp_c_.R1241 1
ecasdol_c_.R1241 1
ecasdol_c_.R1242 -1
o2_c_.R1242 -1
nadph_c_.R1242 -1
h_c_.R1242 -1
h2o_c_.R1242 2
nadp_c_.R1242 1
ecasdal_c_.R1242 1
ecasdal_c_.R1243 -1
o2_c_.R1243 -1
nadph_c_.R1243 -1
h2o_c_.R1243 1
nadp_c_.R1243 1
ecasdate_c_.R1243 1
ecasdate_c_.R1244 -1
o2_c_.R1244 -1
nadph_c_.R1244 -1
phtc-C_c_.R1244 1
nadp_c_.R1244 1
h2o_c_.R1244 1
phtc-C_c_.R1245 -1
o2_c_.R1245 -1
nadph_c_.R1245 -1
h_c_.R1245 -1
phtc-E_c_.R1245 1
nadp_c_.R1245 1
h2o_c_.R1245 2
phtc-C_c_.R1246 -1
o2_c_.R1246 -1
nadph_c_.R1246 -1
phtc-B_c_.R1246 1
nadp_c_.R1246 1
h2o_c_.R1246 1
ecasdate_c_.R1247 -1
o2_c_.R1247 -1
nadph_c_.R1247 -1
ecasd2ate_c_.R1247 1
nadp_c_.R1247 1
h2o_c_.R1247 1
ecasd2ate_c_.R1248 -1
o2_c_.R1248 -1
nadph_c_.R1248 -1
h_c_.R1248 -1
phtc-D_c_.R1248 1
nadp_c_.R1248 1
h2o_c_.R1248 2
ecasd2ate_c_.R1249 -1
o2_c_.R1249 -1
nadph_c_.R1249 -1
h_c_.R1249 -1
phtc-A_c_.R1249 1
nadp_c_.R1249 1
h2o_c_.R1249 2
ecasd2ate_c_.R1250 -1
o2_c_.R1250 -1
nadph_c_.R1250 -1
phtc-B_c_.R1250 1
nadp_c_.R1250 1
h2o_c_.R1250 1
ecdp_s_.R1251 -1
ppi_s_.R1251 1
ekaur_s_.R1251 1
ggdp_s_.R1252 -1
ecdp_s_.R1252 1
ekaur_c_.R1253 -1
o2_c_.R1253 -1
nadph_c_.R1253 -1
h_c_.R1253 -1
h2o_c_.R1253 1
nadp_c_.R1253 1
ekaurol_c_.R1253 1
ekaurol_c_.R1254 -1
o2_c_.R1254 -1
nadph_c_.R1254 -1
h_c_.R1254 -1
h2o_c_.R1254 2
nadp_c_.R1254 1
ekaural_c_.R1254 1
ekaural_c_.R1255 -1
o2_c_.R1255 -1
nadph_c_.R1255 -1
h2o_c_.R1255 1
nadp_c_.R1255 1
ekaurate_c_.R1255 1
ekaurate_c_.R1256 -1
o2_c_.R1256 -1
nadph_c_.R1256 -1
h_c_.R1256 -1
ehkaurate_c_.R1256 1
nadp_c_.R1256 1
h2o_c_.R1256 1
ehkaurate_c_.R1257 -1
nadph_c_.R1257 -1
h_c_.R1257 -1
o2_c_.R1257 -1
ga12-ald_c_.R1257 1
nadp_c_.R1257 1
h2o_c_.R1257 2
ga12-ald_c_.R1258 -1
nadph_c_.R1258 -1
o2_c_.R1258 -1
ga12_c_.R1258 1
nadp_c_.R1258 1
h2o_c_.R1258 1
ga12_c_.R1259 -1
o2_c_.R1259 -1
akg_c_.R1259 -1
ga53_c_.R1259 1
co2_c_.R1259 1
succ_c_.R1259 1
ga12_c_.R1260 -1
o2_c_.R1260 -1
akg_c_.R1260 -1
ga15_c_.R1260 1
co2_c_.R1260 1
succ_c_.R1260 1
ga15_c_.R1261 -1
o2_c_.R1261 -1
akg_c_.R1261 -1
ga24_c_.R1261 1
co2_c_.R1261 1
succ_c_.R1261 1
h2o_c_.R1261 1
ga24_c_.R1262 -1
o2_c_.R1262 -1
akg_c_.R1262 -1
ga9_c_.R1262 1
co2_c_.R1262 2
succ_c_.R1262 1
h_c_.R1262 1
ga9_c_.R1263 -1
o2_c_.R1263 -1
akg_c_.R1263 -1
ga4_c_.R1263 1
co2_c_.R1263 1
succ_c_.R1263 1
ga4_c_.R1264 -1
o2_c_.R1264 -1
akg_c_.R1264 -1
ga34_c_.R1264 1
co2_c_.R1264 1
succ_c_.R1264 1
h_c_.R1264 1
ga9_c_.R1265 -1
o2_c_.R1265 -1
akg_c_.R1265 -1
ga51_c_.R1265 1
co2_c_.R1265 1
succ_c_.R1265 1
h_c_.R1265 1
ga51_c_.R1266 -1
o2_c_.R1266 -1
akg_c_.R1266 -1
ga51cat_c_.R1266 1
co2_c_.R1266 1
succ_c_.R1266 1
h_c_.R1266 1
ga24_c_.R1267 -1
o2_c_.R1267 -1
akg_c_.R1267 -1
ga25_c_.R1267 1
co2_c_.R1267 1
succ_c_.R1267 1
h_c_.R1267 1
ga24_c_.R1268 -1
o2_c_.R1268 -1
akg_c_.R1268 -1
ga36_c_.R1268 1
co2_c_.R1268 1
succ_c_.R1268 1
ga25_c_.R1269 -1
o2_c_.R1269 -1
akg_c_.R1269 -1
ga13_c_.R1269 1
co2_c_.R1269 1
succ_c_.R1269 1
ga12_c_.R1270 -1
o2_c_.R1270 -1
akg_c_.R1270 -1
ga14_c_.R1270 1
co2_c_.R1270 1
succ_c_.R1270 1
ga14_c_.R1271 -1
o2_c_.R1271 -1
akg_c_.R1271 -1
ga37_c_.R1271 1
co2_c_.R1271 1
succ_c_.R1271 1
ga37_c_.R1272 -1
o2_c_.R1272 -1
akg_c_.R1272 -1
ga36_c_.R1272 1
co2_c_.R1272 1
succ_c_.R1272 1
h2o_c_.R1272 1
ga36_c_.R1273 -1
o2_c_.R1273 -1
akg_c_.R1273 -1
ga4_c_.R1273 1
co2_c_.R1273 2
succ_c_.R1273 1
h_c_.R1273 1
ga53_c_.R1274 -1
o2_c_.R1274 -1
akg_c_.R1274 -1
ga44_c_.R1274 1
succ_c_.R1274 1
co2_c_.R1274 1
ga19_c_.R1275 -1
o2_c_.R1275 -1
akg_c_.R1275 -1
ga20_c_.R1275 1
co2_c_.R1275 2
succ_c_.R1275 1
h_c_.R1275 1
ga19_c_.R1276 -1
o2_c_.R1276 -1
akg_c_.R1276 -1
ga17_c_.R1276 1
co2_c_.R1276 1
succ_c_.R1276 1
h_c_.R1276 1
ga20_c_.R1277 -1
o2_c_.R1277 -1
akg_c_.R1277 -1
ga29_c_.R1277 1
co2_c_.R1277 1
succ_c_.R1277 1
h_c_.R1277 1
ga29_c_.R1278 -1
o2_c_.R1278 -1
akg_c_.R1278 -1
ga29cat_c_.R1278 1
co2_c_.R1278 1
succ_c_.R1278 1
h_c_.R1278 1
ga44_c_.R1279 -1
akg_c_.R1279 -1
o2_c_.R1279 -1
ga19_c_.R1279 1
succ_c_.R1279 1
co2_c_.R1279 1
h2o_c_.R1279 1
ga20_c_.R1280 -1
akg_c_.R1280 -1
o2_c_.R1280 -1
ga1_c_.R1280 1
succ_c_.R1280 1
co2_c_.R1280 1
ga1_c_.R1281 -1
akg_c_.R1281 -1
o2_c_.R1281 -1
ga8_c_.R1281 1
succ_c_.R1281 1
co2_c_.R1281 1
ga8_c_.R1282 -1
akg_c_.R1282 -1
o2_c_.R1282 -1
ga8cat_c_.R1282 1
succ_c_.R1282 1
co2_c_.R1282 1
vlxan_s_.R1283 -1
ascb-L_s_.R1283 -1
h_s_.R1283 -1
anxan_s_.R1283 1
dhdascb_s_.R1283 1
h2o_s_.R1283 1
anxan_s_.R1284 -1
ascb-L_s_.R1284 -1
h_s_.R1284 -1
zxan_s_.R1284 1
dhdascb_s_.R1284 1
h2o_s_.R1284 1
zxan_s_.R1285 -1
nadph_s_.R1285 -1
o2_s_.R1285 -1
h_s_.R1285 -1
anxan_s_.R1285 1
nadp_s_.R1285 1
h2o_s_.R1285 1
zxan_s_.R1286 -1
nadh_s_.R1286 -1
o2_s_.R1286 -1
h_s_.R1286 -1
anxan_s_.R1286 1
nad_s_.R1286 1
h2o_s_.R1286 1
anxan_s_.R1287 -1
nadph_s_.R1287 -1
o2_s_.R1287 -1
h_s_.R1287 -1
vlxan_s_.R1287 1
nadp_s_.R1287 1
h2o_s_.R1287 1
anxan_s_.R1288 -1
nadh_s_.R1288 -1
o2_s_.R1288 -1
h_s_.R1288 -1
vlxan_s_.R1288 1
nad_s_.R1288 1
h2o_s_.R1288 1
a-carot_s_.R1289 -1
nadph_s_.R1289 -1
o2_s_.R1289 -1
h_s_.R1289 -1
znxan_s_.R1289 1
nadp_s_.R1289 1
h2o_s_.R1289 1
a-carot_s_.R1290 -1
nadph_s_.R1290 -1
o2_s_.R1290 -1
h_s_.R1290 -1
a-cptxan_s_.R1290 1
nadp_s_.R1290 1
h2o_s_.R1290 1
a-cptxan_s_.R1291 -1
nadh_s_.R1291 -1
o2_s_.R1291 -1
h_s_.R1291 -1
lutein_s_.R1291 1
nad_s_.R1291 1
h2o_s_.R1291 1
znxan_s_.R1292 -1
nadph_s_.R1292 -1
o2_s_.R1292 -1
h_s_.R1292 -1
lutein_s_.R1292 1
nadp_s_.R1292 1
h2o_s_.R1292 1
phyt_s_.R1293 -1
fad_s_.R1293 -1
phytfl_s_.R1293 1
fadh2_s_.R1293 1
phytfl_s_.R1294 -1
fad_s_.R1294 -1
z-carot_s_.R1294 1
fadh2_s_.R1294 1
b-carot_s_.R1295 -1
nadh_s_.R1295 -1
o2_s_.R1295 -1
h_s_.R1295 -1
b-cptxan_s_.R1295 1
nad_s_.R1295 1
h2o_s_.R1295 1
b-cptxan_s_.R1296 -1
nadh_s_.R1296 -1
o2_s_.R1296 -1
h_s_.R1296 -1
zxan_s_.R1296 1
nad_s_.R1296 1
h2o_s_.R1296 1
nrsprn_s_.R1297 -1
fad_s_.R1297 -1
lycop_s_.R1297 1
fadh2_s_.R1297 1
z-carot_s_.R1298 -1
fad_s_.R1298 -1
nrsprn_s_.R1298 1
fadh2_s_.R1298 1
nrsprn_s_.R1299 -1
b-zcarot_s_.R1299 1
b-zcarot_s_.R1300 -1
dhbzcarot_s_.R1300 1
ggdp_s_.R1301 -2
phdp_s_.R1301 1
ppi_s_.R1301 1
phdp_s_.R1302 -1
phyt_s_.R1302 1
ppi_s_.R1302 1
vlxan_s_.R1303 -1
nxan_s_.R1303 1
lycop_s_.R1304 -1
d-carot_s_.R1304 1
d-carot_s_.R1305 -1
a-carot_s_.R1305 1
lycop_s_.R1306 -1
g-carot_s_.R1306 1
g-carot_s_.R1307 -1
b-carot_s_.R1307 1
nxan_s_.R1308 -1
cnxan_s_.R1308 1
xanxn_s_.R1309 -1
nad_s_.R1309 -1
absald_s_.R1309 1
nadh_s_.R1309 1
h_s_.R1309 1
cnxan_s_.R1310 -1
o2_s_.R1310 -1
xanxn_s_.R1310 1
acrtnl_s_.R1310 1
absald_s_.R1311 -1
h2o_s_.R1311 -1
o2_s_.R1311 -1
abs_s_.R1311 1
h2o2_s_.R1311 1
h_s_.R1311 1
abs_s_.R1312 -1
nadph_s_.R1312 -1
o2_s_.R1312 -1
h_s_.R1312 -1
habs_s_.R1312 1
nadp_s_.R1312 1
h2o_s_.R1312 1
habs_s_.R1313 -1
phas_s_.R1313 1
ee-carotl_s_.R1314 -1
o2_s_.R1314 -1
fad_s_.R1314 -1
lacxan_s_.R1314 1
h2o_s_.R1314 1
fadh2_s_.R1314 1
e-carot_s_.R1315 -1
o2_s_.R1315 -1
fad_s_.R1315 -1
ee-carotl_s_.R1315 1
h2o_s_.R1315 1
fadh2_s_.R1315 1
d-carot_s_.R1316 -1
e-carot_s_.R1316 1
campst43l_c_.R1317 -1
nad_c_.R1317 -1
campst43e_c_.R1317 1
nadh_c_.R1317 1
h_c_.R1317 1
dxcstn_c_.R1318 -1
o2_c_.R1318 -1
h_c_.R1318 -2
dxstn_c_.R1318 1
h2o_c_.R1318 1
dxstn_c_.R1319 -1
dhdxstn_c_.R1319 1
h_c_.R1319 2
dhdxstn_c_.R1320 -1
h_c_.R1320 -2
dxtst_c_.R1320 1
dxtst_c_.R1321 -1
o2_c_.R1321 -1
tpst_c_.R1321 1
h2o_c_.R1321 1
dxstn_c_.R1322 -1
o2_c_.R1322 -1
tstn_c_.R1322 1
h2o_c_.R1322 1
dhdxstn_c_.R1323 -1
o2_c_.R1323 -1
dhtstn_c_.R1323 1
h2o_c_.R1323 1
tstn_c_.R1324 -1
dhtstn_c_.R1324 1
h_c_.R1324 2
dhtstn_c_.R1325 -1
h_c_.R1325 -2
tpst_c_.R1325 1
tpst_c_.R1326 -1
o2_c_.R1326 -1
nadph_c_.R1326 -1
cstn_c_.R1326 1
h2o_c_.R1326 1
nadp_c_.R1326 1
cstn_c_.R1327 -1
o2_c_.R1327 -1
brsnl_c_.R1327 1
h2o_c_.R1327 1
campst_c_.R1328 -1
o2_c_.R1328 -1
nadph_c_.R1328 -1
h_c_.R1328 -1
22hcampst_c_.R1328 1
h2o_c_.R1328 1
nadp_c_.R1328 1
5camp3e_c_.R1329 -1
o2_c_.R1329 -1
nadph_c_.R1329 -1
h_c_.R1329 -1
22h5camp3e_c_.R1329 1
h2o_c_.R1329 1
nadp_c_.R1329 1
campst43e_c_.R1330 -1
o2_c_.R1330 -1
nadph_c_.R1330 -1
h_c_.R1330 -1
22h5camp43e_c_.R1330 1
h2o_c_.R1330 1
nadp_c_.R1330 1
campstl_c_.R1331 -1
o2_c_.R1331 -1
nadph_c_.R1331 -1
h_c_.R1331 -1
dxcstn_c_.R1331 1
h2o_c_.R1331 1
nadp_c_.R1331 1
22h5camp43e_c_.R1332 -1
nadph_c_.R1332 -1
h_c_.R1332 -1
22h5camp3e_c_.R1332 1
nadp_c_.R1332 1
campst43e_c_.R1333 -1
nadph_c_.R1333 -1
h_c_.R1333 -1
5camp3e_c_.R1333 1
nadp_c_.R1333 1
campst_c_.R1334 -1
campst43l_c_.R1334 1
22h5camp3e_c_.R1335 -1
h_c_.R1335 -2
dxcstn_c_.R1335 1
5camp3e_c_.R1336 -1
h_c_.R1336 -2
campstl_c_.R1336 1
obfool_c_.R1337 -1
o2_c_.R1337 -3
nadph_c_.R1337 -3
h_c_.R1337 -2
mergtrol_c_.R1337 1
for_c_.R1337 1
nadp_c_.R1337 3
h2o_c_.R1337 4
mchsterol_c_.R1338 -1
nadph_c_.R1338 -1
h_c_.R1338 -1
campst_c_.R1338 1
nadp_c_.R1338 1
sitst_c_.R1339 -1
o2_c_.R1339 -1
nadph_c_.R1339 -1
h_c_.R1339 -1
stist_c_.R1339 1
h2o_c_.R1339 2
nadp_c_.R1339 1
dhavest_c_.R1340 -1
nadph_c_.R1340 -2
isfst_c_.R1340 1
nadp_c_.R1340 2
dhepist_c_.R1341 -1
nadph_c_.R1341 -2
mchsterol_c_.R1341 1
nadp_c_.R1341 2
mergtrol_c_.R1342 -1
nadph_c_.R1342 -1
h_c_.R1342 -1
mfecostrl_c_.R1342 1
nadp_c_.R1342 1
avest_c_.R1343 -1
dhavest_c_.R1343 1
h_c_.R1343 2
epist_c_.R1344 -1
dhepist_c_.R1344 1
h_c_.R1344 2
menecyart_c_.R1345 -1
nadph_c_.R1345 -1
o2_c_.R1345 -2
h_c_.R1345 -2
cyeuol_c_.R1345 1
for_c_.R1345 1
nadp_c_.R1345 1
h2o_c_.R1345 2
edenelo_c_.R1346 -1
h_c_.R1346 -3
nadph_c_.R1346 -3
o2_c_.R1346 -3
avest_c_.R1346 1
for_c_.R1346 1
h2o_c_.R1346 4
nadp_c_.R1346 3
metphnl_c_.R1347 -1
amet_c_.R1347 -1
edenelo_c_.R1347 1
ahcys_c_.R1347 1
h_c_.R1347 1
cyart_c_.R1348 -1
amet_c_.R1348 -1
menecyart_c_.R1348 1
ahcys_c_.R1348 1
h_c_.R1348 1
mfecostrl_c_.R1349 -1
metphnl_c_.R1349 1
Ssq23epx_c_.R1350 -1
cyart_c_.R1350 1
cyeuol_c_.R1351 -1
obfool_c_.R1351 1
isfst_c_.R1352 -1
nadph_c_.R1352 -1
h_c_.R1352 -1
sitst_c_.R1352 1
nadp_c_.R1352 1
dmpp_s_.R1353 -1
atp_s_.R1353 -1
h_s_.R1353 -1
ipatp_s_.R1353 1
ppi_s_.R1353 1
dmpp_s_.R1354 -1
adp_s_.R1354 -1
ipadp_s_.R1354 1
ppi_s_.R1354 1
dmpp_s_.R1355 -1
amp_s_.R1355 -1
ipamp_s_.R1355 1
ppi_s_.R1355 1
ipatp_s_.R1356 -1
h2o_s_.R1356 -1
nadph_s_.R1356 -1
nadp_s_.R1356 1
t-ztnrtp_s_.R1356 1
t-ztnrtp_s_.R1357 -1
h2o_s_.R1357 -1
t-ztnrdp_s_.R1357 1
pi_s_.R1357 1
h_s_.R1357 2
t-ztnrdp_s_.R1358 -1
h2o_s_.R1358 -1
t-ztnrp_s_.R1358 1
pi_s_.R1358 1
h_s_.R1358 1
ipamp_s_.R1359 -1
h2o_s_.R1359 -1
ipadne_s_.R1359 1
r5p_s_.R1359 1
ipamp_s_.R1360 -1
h2o_s_.R1360 -1
ipadn_s_.R1360 1
pi_s_.R1360 1
ipadne_s_.R1361 -1
h2o_s_.R1361 -1
h_s_.R1361 2
t-ztn_s_.R1361 1
ipadn_s_.R1362 -1
h2o_s_.R1362 -1
h_s_.R1362 2
t-ztnr_s_.R1362 1
t-ztnr_s_.R1363 -1
h2o_s_.R1363 -1
rib-D_s_.R1363 1
t-ztn_s_.R1363 1
ipadp_s_.R1364 -1
nadph_s_.R1364 -1
h2o_s_.R1364 -1
t-ztnrdp_s_.R1364 1
nadp_s_.R1364 1
h_s_.R1364 3
ipamp_s_.R1365 -1
nadph_s_.R1365 -1
h2o_s_.R1365 -1
t-ztnrp_s_.R1365 1
nadp_s_.R1365 1
h_s_.R1365 3
t-ztnrp_s_.R1366 -1
h2o_s_.R1366 -1
t-ztn_s_.R1366 1
r5p_s_.R1366 1
t-ztn_s_.R1367 -1
nadph_s_.R1367 -1
h_s_.R1367 -1
dhz_s_.R1367 1
nadp_s_.R1367 1
t-ztn_c_.R1368 -1
fad_c_.R1368 -1
h2o_c_.R1368 -1
ipadne_c_.R1368 1
fadh2_c_.R1368 1
o2_c_.R1368 1
t-ztn_c_.R1369 -1
h2o_c_.R1369 -1
fad_c_.R1369 -1
h_c_.R1369 -1
ade_c_.R1369 1
fadh2_c_.R1369 1
34hb_c_.R1369 1
ipadn_c_.R1370 -1
h2o_c_.R1370 -1
fad_c_.R1370 -1
h_c_.R1370 -1
adn_c_.R1370 1
fadh2_c_.R1370 1
33dma_c_.R1370 1
ipadne_c_.R1371 -1
h2o_c_.R1371 -1
fad_c_.R1371 -1
h_c_.R1371 -1
ade_c_.R1371 1
fadh2_c_.R1371 1
33dma_c_.R1371 1
dmpp_c_.R1372 -1
trna_c_.R1372 -1
ptrna_c_.R1372 1
ppi_c_.R1372 1
ptrna_c_.R1373 -1
ctrna_c_.R1373 1
ctrna_c_.R1374 -1
c-ztnrp_c_.R1374 1
c-ztnrp_c_.R1375 -1
h2o_c_.R1375 -1
c-ztnr_c_.R1375 1
pi_c_.R1375 1
c-ztnr_c_.R1376 -1
h2o_c_.R1376 -1
c-ztn_c_.R1376 1
rib-D_c_.R1376 1
c-ztn_c_.R1377 -1
udpg_c_.R1377 -1
c-ztn7g_c_.R1377 1
udp_c_.R1377 1
t-ztn_c_.R1378 -1
udpg_c_.R1378 -1
t-ztn7g_c_.R1378 1
udp_c_.R1378 1
dhz_c_.R1379 -1
udpg_c_.R1379 -1
dhz7g_c_.R1379 1
udp_c_.R1379 1
ipadne_c_.R1380 -1
udpg_c_.R1380 -1
ipadne7g_c_.R1380 1
udp_c_.R1380 1
c-ztn_c_.R1381 -1
udpg_c_.R1381 -1
c-ztn9g_c_.R1381 1
udp_c_.R1381 1
t-ztn_c_.R1382 -1
udpg_c_.R1382 -1
t-ztn9g_c_.R1382 1
udp_c_.R1382 1
dhz_c_.R1383 -1
udpg_c_.R1383 -1
dhz9g_c_.R1383 1
udp_c_.R1383 1
ipadne_c_.R1384 -1
udpg_c_.R1384 -1
ipadne9g_c_.R1384 1
udp_c_.R1384 1
t-ztn_c_.R1385 -1
udpg_c_.R1385 -1
t-ztng_c_.R1385 1
udp_c_.R1385 1
c-ztn_c_.R1386 -1
udpg_c_.R1386 -1
c-ztng_c_.R1386 1
udp_c_.R1386 1
dhz_c_.R1387 -1
udpg_c_.R1387 -1
dhzg_c_.R1387 1
udp_c_.R1387 1
nad_c_.R1388 -1
4mzym_int1_c_.R1388 -1
co2_c_.R1388 1
h_c_.R1388 1
nadh_c_.R1388 1
4mzym_int2_c_.R1388 1
nad_c_.R1389 -1
zym_int1_c_.R1389 -1
co2_c_.R1389 1
h_c_.R1389 1
nadh_c_.R1389 1
zym_int2_c_.R1389 1
h_c_.R1390 -1
nadph_c_.R1390 -1
zym_int2_c_.R1390 -1
nadp_c_.R1390 1
zymst_c_.R1390 1
4mzym_int2_c_.R1391 -1
h_c_.R1391 -1
nadph_c_.R1391 -1
4mzym_c_.R1391 1
nadp_c_.R1391 1
h_c_.R1392 -2
lanost_c_.R1392 -1
nadph_c_.R1392 -3
o2_c_.R1392 -3
44mctr_c_.R1392 1
for_c_.R1392 1
h2o_c_.R1392 4
nadp_c_.R1392 3
44mzym_c_.R1393 -1
h_c_.R1393 -3
nadph_c_.R1393 -3
o2_c_.R1393 -3
4mzym_int1_c_.R1393 1
h2o_c_.R1393 4
nadp_c_.R1393 3
4mzym_c_.R1394 -1
h_c_.R1394 -3
nadph_c_.R1394 -3
o2_c_.R1394 -3
zym_int1_c_.R1394 1
h2o_c_.R1394 4
nadp_c_.R1394 3
lthstrl_c_.R1395 -1
nadph_c_.R1395 -1
h_c_.R1395 -1
o2_c_.R1395 -1
7dhchsterol_c_.R1395 1
nadp_c_.R1395 1
h2o_c_.R1395 2
7dhchsterol_c_.R1396 -1
nadph_c_.R1396 -1
h_c_.R1396 -1
chsterol_c_.R1396 1
nadp_c_.R1396 1
44mctr_c_.R1397 -1
h_c_.R1397 -1
nadph_c_.R1397 -1
44mzym_c_.R1397 1
nadp_c_.R1397 1
chlstol_c_.R1398 -1
nadph_c_.R1398 -1
h_c_.R1398 -1
lthstrl_c_.R1398 1
nadp_c_.R1398 1
zymst_c_.R1399 -1
chlstol_c_.R1399 1
zymst_c_.R1400 -1
nadph_c_.R1400 -1
h_c_.R1400 -1
chlestol_c_.R1400 1
nadp_c_.R1400 1
chlestol_c_.R1401 -1
lthstrl_c_.R1401 1
Ssq23epx_c_.R1402 -1
lanost_c_.R1402 1
amet_c_.R1403 -1
zymst_c_.R1403 -1
ahcys_c_.R1403 1
fecost_c_.R1403 1
h_c_.R1403 1
fecost_c_.R1404 -1
epist_c_.R1404 1
epist_c_.R1405 -1
nadp_c_.R1405 -1
ergstt_c_.R1405 1
nadph_c_.R1405 1
h_c_.R1405 1
ergstt_c_.R1406 -1
nadp_c_.R1406 -1
ergsttt_c_.R1406 1
nadph_c_.R1406 1
h_c_.R1406 1
ergsttt_c_.R1407 -1
nadph_c_.R1407 -1
h_c_.R1407 -1
ergtrol_c_.R1407 1
nadp_c_.R1407 1
thglu_v_.R1408 -1
h2o_v_.R1408 -2
glu-L_v_.R1408 2
thf_v_.R1408 1
h_v_.R1408 2
urdglyc_c_.R1409 -1
glx_c_.R1409 1
urea_c_.R1409 1
alltt_c_.R1410 -1
h2o_c_.R1410 -1
urdgly_c_.R1410 1
nh4_c_.R1410 1
co2_c_.R1410 1
urdgly_c_.R1411 -1
h2o_c_.R1411 -1
urdglyc_c_.R1411 1
nh4_c_.R1411 1
h_c_.R1411 1
g3p_c_.R1412 -1
ru5p-D_c_.R1412 -1
gln-L_c_.R1412 -1
pydx5p_c_.R1412 1
glu-L_c_.R1412 1
pi_c_.R1412 1
h2o_c_.R1412 3
h_c_.R1412 1
pyam5p_c_.R1413 -1
h2o_c_.R1413 -1
pydam_c_.R1413 1
pi_c_.R1413 1
pdx5p_c_.R1414 -1
h2o_c_.R1414 -1
pydxn_c_.R1414 1
pi_c_.R1414 1
pydx5p_c_.R1415 -1
h2o_c_.R1415 -1
pydx_c_.R1415 1
pi_c_.R1415 1
ACP_s_.R1416 -1
malcoa_s_.R1416 -1
h_s_.R1416 -1
coa_s_.R1416 1
malACP_s_.R1416 1
accoa_s_.R1417 -1
ACP_s_.R1417 -1
coa_s_.R1417 1
acACP_s_.R1417 1
malACP_s_.R1418 -1
co2_s_.R1418 1
acACP_s_.R1418 1
acACP_s_.R1419 -1
h_s_.R1419 -1
malACP_s_.R1419 -1
ACP_s_.R1419 1
actACP_s_.R1419 1
co2_s_.R1419 1
actACP_s_.R1420 -1
h_s_.R1420 -1
nadph_s_.R1420 -1
3hbutACP_s_.R1420 1
nadp_s_.R1420 1
3hbutACP_s_.R1421 -1
but2eACP_s_.R1421 1
h2o_s_.R1421 1
but2eACP_s_.R1422 -1
h_s_.R1422 -1
nadph_s_.R1422 -1
butACP_s_.R1422 1
nadp_s_.R1422 1
butACP_s_.R1423 -1
h_s_.R1423 -1
malACP_s_.R1423 -1
3ohexACP_s_.R1423 1
ACP_s_.R1423 1
co2_s_.R1423 1
3ohexACP_s_.R1424 -1
h_s_.R1424 -1
nadph_s_.R1424 -1
3hhexACP_s_.R1424 1
nadp_s_.R1424 1
3hhexACP_s_.R1425 -1
thex2eACP_s_.R1425 1
h2o_s_.R1425 1
thex2eACP_s_.R1426 -1
h_s_.R1426 -1
nadph_s_.R1426 -1
hexACP_s_.R1426 1
nadp_s_.R1426 1
h_s_.R1427 -1
hexACP_s_.R1427 -1
malACP_s_.R1427 -1
3ooctACP_s_.R1427 1
ACP_s_.R1427 1
co2_s_.R1427 1
3ooctACP_s_.R1428 -1
h_s_.R1428 -1
nadph_s_.R1428 -1
3hoctACP_s_.R1428 1
nadp_s_.R1428 1
3hoctACP_s_.R1429 -1
toct2eACP_s_.R1429 1
h2o_s_.R1429 1
toct2eACP_s_.R1430 -1
h_s_.R1430 -1
nadph_s_.R1430 -1
nadp_s_.R1430 1
ocACP_s_.R1430 1
h_s_.R1431 -1
malACP_s_.R1431 -1
ocACP_s_.R1431 -1
3odecACP_s_.R1431 1
ACP_s_.R1431 1
co2_s_.R1431 1
3odecACP_s_.R1432 -1
h_s_.R1432 -1
nadph_s_.R1432 -1
3hdecACP_s_.R1432 1
nadp_s_.R1432 1
3hdecACP_s_.R1433 -1
tdec2eACP_s_.R1433 1
h2o_s_.R1433 1
tdec2eACP_s_.R1434 -1
h_s_.R1434 -1
nadph_s_.R1434 -1
dcaACP_s_.R1434 1
nadp_s_.R1434 1
dcaACP_s_.R1435 -1
h_s_.R1435 -1
malACP_s_.R1435 -1
3oddecACP_s_.R1435 1
ACP_s_.R1435 1
co2_s_.R1435 1
3oddecACP_s_.R1436 -1
h_s_.R1436 -1
nadph_s_.R1436 -1
3hddecACP_s_.R1436 1
nadp_s_.R1436 1
3hddecACP_s_.R1437 -1
tddec2eACP_s_.R1437 1
h2o_s_.R1437 1
tddec2eACP_s_.R1438 -1
h_s_.R1438 -1
nadph_s_.R1438 -1
ddcaACP_s_.R1438 1
nadp_s_.R1438 1
ddcaACP_s_.R1439 -1
h_s_.R1439 -1
malACP_s_.R1439 -1
3omrsACP_s_.R1439 1
ACP_s_.R1439 1
co2_s_.R1439 1
3omrsACP_s_.R1440 -1
h_s_.R1440 -1
nadph_s_.R1440 -1
3hmrsACP_s_.R1440 1
nadp_s_.R1440 1
3hmrsACP_s_.R1441 -1
h2o_s_.R1441 1
tmrs2eACP_s_.R1441 1
h_s_.R1442 -1
nadph_s_.R1442 -1
tmrs2eACP_s_.R1442 -1
myrsACP_s_.R1442 1
nadp_s_.R1442 1
h_s_.R1443 -1
malACP_s_.R1443 -1
myrsACP_s_.R1443 -1
3opalmACP_s_.R1443 1
ACP_s_.R1443 1
co2_s_.R1443 1
3opalmACP_s_.R1444 -1
h_s_.R1444 -1
nadph_s_.R1444 -1
3hpalmACP_s_.R1444 1
nadp_s_.R1444 1
3hpalmACP_s_.R1445 -1
h2o_s_.R1445 1
tpalm2eACP_s_.R1445 1
h_s_.R1446 -1
tpalm2eACP_s_.R1446 -1
nadph_s_.R1446 -1
nadp_s_.R1446 1
palmACP_s_.R1446 1
h_s_.R1447 -1
malACP_s_.R1447 -1
palmACP_s_.R1447 -1
3ooctdACP_s_.R1447 1
ACP_s_.R1447 1
co2_s_.R1447 1
3ooctdACP_s_.R1448 -1
h_s_.R1448 -1
nadph_s_.R1448 -1
3hoctaACP_s_.R1448 1
nadp_s_.R1448 1
3hoctaACP_s_.R1449 -1
toctd2eACP_s_.R1449 1
h2o_s_.R1449 1
toctd2eACP_s_.R1450 -1
h_s_.R1450 -1
nadph_s_.R1450 -1
nadp_s_.R1450 1
ocdcaACP_s_.R1450 1
palmACP_s_.R1451 -1
o2_s_.R1451 -1
nadph_s_.R1451 -1
h2o_s_.R1451 2
hdeACP_s_.R1451 1
nadp_s_.R1451 1
ocdcaACP_s_.R1452 -1
o2_s_.R1452 -1
nadph_s_.R1452 -1
h2o_s_.R1452 2
octeACP_s_.R1452 1
nadp_s_.R1452 1
octeACP_s_.R1453 -1
o2_s_.R1453 -1
nadph_s_.R1453 -1
h2o_s_.R1453 2
ocdcyaACP_s_.R1453 1
nadp_s_.R1453 1
ocdcyaACP_s_.R1454 -1
o2_s_.R1454 -1
nadph_s_.R1454 -1
h2o_s_.R1454 2
lnlnlACP_s_.R1454 1
nadp_s_.R1454 1
h2o_s_.R1455 -1
myrsACP_s_.R1455 -1
ACP_s_.R1455 1
h_s_.R1455 1
ttdca_s_.R1455 1
h2o_s_.R1456 -1
palmACP_s_.R1456 -1
ACP_s_.R1456 1
h_s_.R1456 1
hdca_s_.R1456 1
h2o_s_.R1457 -1
hdeACP_s_.R1457 -1
ACP_s_.R1457 1
h_s_.R1457 1
hdcea_s_.R1457 1
h2o_s_.R1458 -1
ocdcaACP_s_.R1458 -1
ACP_s_.R1458 1
h_s_.R1458 1
ocdca_s_.R1458 1
h2o_s_.R1459 -1
octeACP_s_.R1459 -1
ACP_s_.R1459 1
h_s_.R1459 1
ocdcea_s_.R1459 1
h2o_s_.R1460 -1
ocdcyaACP_s_.R1460 -1
ACP_s_.R1460 1
h_s_.R1460 1
ocdcya_s_.R1460 1
h2o_s_.R1461 -1
lnlnlACP_s_.R1461 -1
ACP_s_.R1461 1
h_s_.R1461 1
lnlnl_s_.R1461 1
atp_r_.R1462 -1
coa_r_.R1462 -1
ttdca_r_.R1462 -1
amp_r_.R1462 1
ppi_r_.R1462 1
tdcoa_r_.R1462 1
atp_r_.R1463 -1
coa_r_.R1463 -1
hdca_r_.R1463 -1
amp_r_.R1463 1
ppi_r_.R1463 1
pmtcoa_r_.R1463 1
atp_r_.R1464 -1
coa_r_.R1464 -1
hdcea_r_.R1464 -1
amp_r_.R1464 1
ppi_r_.R1464 1
hdcoa_r_.R1464 1
atp_r_.R1465 -1
coa_r_.R1465 -1
ocdca_r_.R1465 -1
amp_r_.R1465 1
ppi_r_.R1465 1
stcoa_r_.R1465 1
atp_r_.R1466 -1
coa_r_.R1466 -1
ocdcea_r_.R1466 -1
amp_r_.R1466 1
ppi_r_.R1466 1
odecoa_r_.R1466 1
atp_r_.R1467 -1
coa_r_.R1467 -1
ocdcya_r_.R1467 -1
amp_r_.R1467 1
ppi_r_.R1467 1
ocdycacoa_r_.R1467 1
atp_r_.R1468 -1
coa_r_.R1468 -1
lnlnl_r_.R1468 -1
amp_r_.R1468 1
ppi_r_.R1468 1
lnlncoa_r_.R1468 1
h2o_r_.R1469 -1
araccoa_r_.R1469 -1
coa_r_.R1469 1
arac_r_.R1469 1
h2o_r_.R1470 -1
behcoa_r_.R1470 -1
coa_r_.R1470 1
beh_r_.R1470 1
h2o_r_.R1471 -1
lgnccoa_r_.R1471 -1
coa_r_.R1471 1
lgnc_r_.R1471 1
h2o_r_.R1472 -1
cercoa_r_.R1472 -1
coa_r_.R1472 1
cero_r_.R1472 1
h2o_r_.R1473 -1
mntcoa_r_.R1473 -1
coa_r_.R1473 1
mntt_r_.R1473 1
h2o_r_.R1474 -1
mlscoa_r_.R1474 -1
coa_r_.R1474 1
mls_r_.R1474 1
amp_r_.R1475 -1
ppi_r_.R1475 -1
araccoa_r_.R1475 -1
atp_r_.R1475 1
coa_r_.R1475 1
arac_r_.R1475 1
amp_r_.R1476 -1
ppi_r_.R1476 -1
behcoa_r_.R1476 -1
atp_r_.R1476 1
coa_r_.R1476 1
beh_r_.R1476 1
amp_r_.R1477 -1
ppi_r_.R1477 -1
lgnccoa_r_.R1477 -1
atp_r_.R1477 1
coa_r_.R1477 1
lgnc_r_.R1477 1
amp_r_.R1478 -1
ppi_r_.R1478 -1
cercoa_r_.R1478 -1
atp_r_.R1478 1
coa_r_.R1478 1
cero_r_.R1478 1
amp_r_.R1479 -1
ppi_r_.R1479 -1
mntcoa_r_.R1479 -1
atp_r_.R1479 1
coa_r_.R1479 1
mntt_r_.R1479 1
amp_r_.R1480 -1
ppi_r_.R1480 -1
mlscoa_r_.R1480 -1
atp_r_.R1480 1
coa_r_.R1480 1
mls_r_.R1480 1
araccoa_r_.R1481 -1
nadph_r_.R1481 -2
h_c_.R1481 -2
coa_r_.R1481 1
nadp_r_.R1481 2
aracol_r_.R1481 1
behcoa_r_.R1482 -1
nadph_r_.R1482 -2
h_c_.R1482 -2
coa_r_.R1482 1
nadp_r_.R1482 2
behol_r_.R1482 1
lgnccoa_r_.R1483 -1
nadph_r_.R1483 -2
h_c_.R1483 -2
coa_r_.R1483 1
nadp_r_.R1483 2
lgncol_r_.R1483 1
cercoa_r_.R1484 -1
nadph_r_.R1484 -2
h_c_.R1484 -2
coa_r_.R1484 1
nadp_r_.R1484 2
cerool_r_.R1484 1
mntcoa_r_.R1485 -1
nadph_r_.R1485 -2
h_c_.R1485 -2
coa_r_.R1485 1
nadp_r_.R1485 2
mntol_r_.R1485 1
mlscoa_r_.R1486 -1
nadph_r_.R1486 -2
h_c_.R1486 -2
coa_r_.R1486 1
nadp_r_.R1486 2
mlsol_r_.R1486 1
aracol_r_.R1487 -1
hdcoa_r_.R1487 -1
aracpalm_r_.R1487 1
coa_r_.R1487 1
behol_r_.R1488 -1
hdcoa_r_.R1488 -1
behpalm_r_.R1488 1
coa_r_.R1488 1
hdca_r_.R1489 -1
nadph_r_.R1489 -1
o2_r_.R1489 -1
h_r_.R1489 -1
nadp_r_.R1489 1
h2o_r_.R1489 1
hydro16_r_.R1489 1
hydro16_r_.R1490 -1
nadph_r_.R1490 -1
o2_r_.R1490 -1
h_r_.R1490 -1
nadp_r_.R1490 1
h2o_r_.R1490 1
dhydro1016_r_.R1490 1
hydro16_r_.R1491 -1
nadp_r_.R1491 -1
nadph_r_.R1491 1
h_r_.R1491 1
16opalm_r_.R1491 1
16opalm_r_.R1492 -1
h2o_r_.R1492 -1
nadp_r_.R1492 -1
h_r_.R1492 2
nadph_r_.R1492 1
hddt_r_.R1492 1
ocdcea_r_.R1493 -1
nadph_r_.R1493 -2
o2_r_.R1493 -1
nadp_r_.R1493 2
h2o_r_.R1493 1
hydro18_r_.R1493 1
hydro18_r_.R1494 -1
nadp_r_.R1494 -1
nadph_r_.R1494 1
h_r_.R1494 1
18oole_r_.R1494 1
18oole_r_.R1495 -1
h2o_r_.R1495 -1
nadp_r_.R1495 -1
h_r_.R1495 2
nadph_r_.R1495 1
oddt_r_.R1495 1
hydro18_r_.R1496 -1
nadph_r_.R1496 -1
o2_r_.R1496 -1
h_r_.R1496 -1
nadp_r_.R1496 1
h2o_r_.R1496 1
dhydro1018_r_.R1496 1
dhydro1018_r_.R1497 -1
h2o_r_.R1497 -1
thydro91018_r_.R1497 1
hydro16_c_.R1498 -1
hydro18_c_.R1498 -1
dhydro1016_c_.R1498 -1
dhydro1018_c_.R1498 -1
thydro91018_c_.R1498 -1
fercoa_c_.R1498 -5
coa_c_.R1498 5
feralk_c_.R1498 5
arac_r_.R1499 -1
nadph_r_.R1499 -1
o2_r_.R1499 -1
h_r_.R1499 -1
nadp_r_.R1499 1
h2o_r_.R1499 1
hydro20_r_.R1499 1
beh_r_.R1500 -1
nadph_r_.R1500 -1
o2_r_.R1500 -1
h_r_.R1500 -1
nadp_r_.R1500 1
h2o_r_.R1500 1
hydro22_r_.R1500 1
lgnc_r_.R1501 -1
nadph_r_.R1501 -1
o2_r_.R1501 -1
h_r_.R1501 -1
nadp_r_.R1501 1
h2o_r_.R1501 1
hydro24_r_.R1501 1
cero_r_.R1502 -1
nadph_r_.R1502 -1
o2_r_.R1502 -1
h_r_.R1502 -1
nadp_r_.R1502 1
h2o_r_.R1502 1
hydro26_r_.R1502 1
mntt_r_.R1503 -1
nadph_r_.R1503 -1
o2_r_.R1503 -1
h_r_.R1503 -1
nadp_r_.R1503 1
h2o_r_.R1503 1
hydro28_r_.R1503 1
mls_r_.R1504 -1
nadph_r_.R1504 -1
o2_r_.R1504 -1
h_r_.R1504 -1
nadp_r_.R1504 1
h2o_r_.R1504 1
hydro30_r_.R1504 1
hydro20_r_.R1505 -1
nadp_r_.R1505 -1
nadph_r_.R1505 1
h_r_.R1505 1
20oarac_r_.R1505 1
hydro22_r_.R1506 -1
nadp_r_.R1506 -1
nadph_r_.R1506 1
h_r_.R1506 1
22obeh_r_.R1506 1
hydro24_r_.R1507 -1
nadp_r_.R1507 -1
nadph_r_.R1507 1
h_r_.R1507 1
24olgnc_r_.R1507 1
hydro26_r_.R1508 -1
nadp_r_.R1508 -1
nadph_r_.R1508 1
h_r_.R1508 1
26ocero_r_.R1508 1
hydro28_r_.R1509 -1
nadp_r_.R1509 -1
nadph_r_.R1509 1
h_r_.R1509 1
28omntt_r_.R1509 1
hydro30_r_.R1510 -1
nadp_r_.R1510 -1
nadph_r_.R1510 1
h_r_.R1510 1
30omls_r_.R1510 1
20oarac_r_.R1511 -1
h2o_r_.R1511 -1
nadp_r_.R1511 -1
h_r_.R1511 2
nadph_r_.R1511 1
ardt_r_.R1511 1
22obeh_r_.R1512 -1
h2o_r_.R1512 -1
nadp_r_.R1512 -1
h_r_.R1512 2
nadph_r_.R1512 1
behdt_r_.R1512 1
24olgnc_r_.R1513 -1
h2o_r_.R1513 -1
nadp_r_.R1513 -1
h_r_.R1513 2
nadph_r_.R1513 1
lgndt_r_.R1513 1
26ocero_r_.R1514 -1
h2o_r_.R1514 -1
nadp_r_.R1514 -1
h_r_.R1514 2
nadph_r_.R1514 1
cerdt_r_.R1514 1
28omntt_r_.R1515 -1
h2o_r_.R1515 -1
nadp_r_.R1515 -1
h_r_.R1515 2
nadph_r_.R1515 1
mntdt_r_.R1515 1
30omls_r_.R1516 -1
h2o_r_.R1516 -1
nadp_r_.R1516 -1
h_r_.R1516 2
nadph_r_.R1516 1
mlsdt_r_.R1516 1
atp_c_.R1517 -1
coa_c_.R1517 -1
ttdca_c_.R1517 -1
amp_c_.R1517 1
ppi_c_.R1517 1
tdcoa_c_.R1517 1
atp_c_.R1518 -1
coa_c_.R1518 -1
hdca_c_.R1518 -1
amp_c_.R1518 1
ppi_c_.R1518 1
pmtcoa_c_.R1518 1
atp_c_.R1519 -1
coa_c_.R1519 -1
hdcea_c_.R1519 -1
amp_c_.R1519 1
ppi_c_.R1519 1
hdcoa_c_.R1519 1
atp_c_.R1520 -1
coa_c_.R1520 -1
ocdca_c_.R1520 -1
amp_c_.R1520 1
ppi_c_.R1520 1
stcoa_c_.R1520 1
atp_c_.R1521 -1
coa_c_.R1521 -1
ocdcea_c_.R1521 -1
amp_c_.R1521 1
ppi_c_.R1521 1
odecoa_c_.R1521 1
atp_c_.R1522 -1
coa_c_.R1522 -1
ocdcya_c_.R1522 -1
amp_c_.R1522 1
ppi_c_.R1522 1
ocdycacoa_c_.R1522 1
atp_c_.R1523 -1
coa_c_.R1523 -1
lnlnl_c_.R1523 -1
amp_c_.R1523 1
ppi_c_.R1523 1
lnlncoa_c_.R1523 1
pmtcoa_c_.R1524 -1
o2_c_.R1524 -1
nadph_c_.R1524 -1
h2o_c_.R1524 2
hdcoa_c_.R1524 1
nadp_c_.R1524 1
stcoa_c_.R1525 -1
o2_c_.R1525 -1
nadph_c_.R1525 -1
h2o_c_.R1525 2
odecoa_c_.R1525 1
nadp_c_.R1525 1
odecoa_c_.R1526 -1
o2_c_.R1526 -1
nadph_c_.R1526 -1
h2o_c_.R1526 2
ocdycacoa_c_.R1526 1
nadp_c_.R1526 1
ocdycacoa_c_.R1527 -1
o2_c_.R1527 -1
nadph_c_.R1527 -1
h2o_c_.R1527 2
lnlncoa_c_.R1527 1
nadp_c_.R1527 1
h_r_.R1528 -1
malcoa_r_.R1528 -1
stcoa_r_.R1528 -1
3oaraccoa_r_.R1528 1
coa_r_.R1528 1
co2_r_.R1528 1
3oaraccoa_r_.R1529 -1
h_r_.R1529 -1
nadph_r_.R1529 -1
3haraccoa_r_.R1529 1
nadp_r_.R1529 1
3haraccoa_r_.R1530 -1
tarac2ecoa_r_.R1530 1
h2o_r_.R1530 1
tarac2ecoa_r_.R1531 -1
h_r_.R1531 -1
nadph_r_.R1531 -1
nadp_r_.R1531 1
araccoa_r_.R1531 1
h_r_.R1532 -1
malcoa_r_.R1532 -1
araccoa_r_.R1532 -1
3obehcoa_r_.R1532 1
coa_r_.R1532 1
co2_r_.R1532 1
3obehcoa_r_.R1533 -1
h_r_.R1533 -1
nadph_r_.R1533 -1
3hbehcoa_r_.R1533 1
nadp_r_.R1533 1
3hbehcoa_r_.R1534 -1
tbeh2ecoa_r_.R1534 1
h2o_r_.R1534 1
tbeh2ecoa_r_.R1535 -1
h_r_.R1535 -1
nadph_r_.R1535 -1
nadp_r_.R1535 1
behcoa_r_.R1535 1
h_r_.R1536 -1
malcoa_r_.R1536 -1
behcoa_r_.R1536 -1
3olgnccoa_r_.R1536 1
coa_r_.R1536 1
co2_r_.R1536 1
3olgnccoa_r_.R1537 -1
h_r_.R1537 -1
nadph_r_.R1537 -1
3hlgnccoa_r_.R1537 1
nadp_r_.R1537 1
3hlgnccoa_r_.R1538 -1
tlgnc2ecoa_r_.R1538 1
h2o_r_.R1538 1
tlgnc2ecoa_r_.R1539 -1
h_r_.R1539 -1
nadph_r_.R1539 -1
nadp_r_.R1539 1
lgnccoa_r_.R1539 1
h_r_.R1540 -1
malcoa_r_.R1540 -1
lgnccoa_r_.R1540 -1
3ocercoa_r_.R1540 1
coa_r_.R1540 1
co2_r_.R1540 1
3ocercoa_r_.R1541 -1
h_r_.R1541 -1
nadph_r_.R1541 -1
3hcercoa_r_.R1541 1
nadp_r_.R1541 1
3hcercoa_r_.R1542 -1
tcer2ecoa_r_.R1542 1
h2o_r_.R1542 1
tcer2ecoa_r_.R1543 -1
h_r_.R1543 -1
nadph_r_.R1543 -1
nadp_r_.R1543 1
cercoa_r_.R1543 1
h_r_.R1544 -1
malcoa_r_.R1544 -1
cercoa_r_.R1544 -1
3omntcoa_r_.R1544 1
coa_r_.R1544 1
co2_r_.R1544 1
3omntcoa_r_.R1545 -1
h_r_.R1545 -1
nadph_r_.R1545 -1
3hmntcoa_r_.R1545 1
nadp_r_.R1545 1
3hmntcoa_r_.R1546 -1
tmnt2ecoa_r_.R1546 1
h2o_r_.R1546 1
tmnt2ecoa_r_.R1547 -1
h_r_.R1547 -1
nadph_r_.R1547 -1
nadp_r_.R1547 1
mntcoa_r_.R1547 1
h_r_.R1548 -1
malcoa_r_.R1548 -1
mntcoa_r_.R1548 -1
3omlscoa_r_.R1548 1
coa_r_.R1548 1
co2_r_.R1548 1
3omlscoa_r_.R1549 -1
h_r_.R1549 -1
nadph_r_.R1549 -1
3hmlscoa_r_.R1549 1
nadp_r_.R1549 1
3hmlscoa_r_.R1550 -1
tmls2ecoa_r_.R1550 1
h2o_r_.R1550 1
tmls2ecoa_r_.R1551 -1
h_r_.R1551 -1
nadph_r_.R1551 -1
nadp_r_.R1551 1
mlscoa_r_.R1551 1
ACP_s_.R1552 -1
h_s_.R1552 -1
ttdca_s_.R1552 -1
h2o_s_.R1552 1
myrsACP_s_.R1552 1
ACP_s_.R1553 -1
h_s_.R1553 -1
hdca_s_.R1553 -1
h2o_s_.R1553 1
palmACP_s_.R1553 1
ACP_s_.R1554 -1
h_s_.R1554 -1
hdcea_s_.R1554 -1
h2o_s_.R1554 1
hdeACP_s_.R1554 1
ACP_s_.R1555 -1
h_s_.R1555 -1
ocdca_s_.R1555 -1
h2o_s_.R1555 1
ocdcaACP_s_.R1555 1
ACP_s_.R1556 -1
h_s_.R1556 -1
ocdcea_s_.R1556 -1
h2o_s_.R1556 1
octeACP_s_.R1556 1
ACP_s_.R1557 -1
h_s_.R1557 -1
ocdcya_s_.R1557 -1
h2o_s_.R1557 1
ocdcyaACP_s_.R1557 1
ACP_s_.R1558 -1
h_s_.R1558 -1
lnlnl_s_.R1558 -1
h2o_s_.R1558 1
lnlnlACP_s_.R1558 1
atp_x_.R1559 -1
coa_x_.R1559 -1
ttdca_x_.R1559 -1
amp_x_.R1559 1
ppi_x_.R1559 1
tdcoa_x_.R1559 1
atp_x_.R1560 -1
coa_x_.R1560 -1
hdca_x_.R1560 -1
amp_x_.R1560 1
ppi_x_.R1560 1
pmtcoa_x_.R1560 1
atp_x_.R1561 -1
coa_x_.R1561 -1
hdcea_x_.R1561 -1
amp_x_.R1561 1
ppi_x_.R1561 1
hdcoa_x_.R1561 1
atp_x_.R1562 -1
coa_x_.R1562 -1
ocdca_x_.R1562 -1
amp_x_.R1562 1
ppi_x_.R1562 1
stcoa_x_.R1562 1
atp_x_.R1563 -1
coa_x_.R1563 -1
ocdcea_x_.R1563 -1
amp_x_.R1563 1
ppi_x_.R1563 1
odecoa_x_.R1563 1
atp_x_.R1564 -1
coa_x_.R1564 -1
ocdcya_x_.R1564 -1
amp_x_.R1564 1
ppi_x_.R1564 1
ocdycacoa_x_.R1564 1
atp_x_.R1565 -1
coa_x_.R1565 -1
lnlnl_x_.R1565 -1
amp_x_.R1565 1
ppi_x_.R1565 1
lnlncoa_x_.R1565 1
occoa_x_.R1566 -1
fad_x_.R1566 -1
oc2coa_x_.R1566 1
fadh2_x_.R1566 1
oc2coa_x_.R1567 -1
h2o_x_.R1567 -1
3hocoa_x_.R1567 1
3hocoa_x_.R1568 -1
nad_x_.R1568 -1
3oocoa_x_.R1568 1
nadh_x_.R1568 1
h_x_.R1568 1
coa_x_.R1569 -1
3oocoa_x_.R1569 -1
hxcoa_x_.R1569 1
accoa_x_.R1569 1
hxcoa_x_.R1570 -1
fad_x_.R1570 -1
hx2coa_x_.R1570 1
fadh2_x_.R1570 1
hx2coa_x_.R1571 -1
h2o_x_.R1571 -1
3hhcoa_x_.R1571 1
3hhcoa_x_.R1572 -1
nad_x_.R1572 -1
3ohcoa_x_.R1572 1
nadh_x_.R1572 1
h_x_.R1572 1
coa_x_.R1573 -1
3ohcoa_x_.R1573 -1
accoa_x_.R1573 1
btcoa_x_.R1573 1
btcoa_x_.R1574 -1
fad_x_.R1574 -1
fadh2_x_.R1574 1
b2coa_x_.R1574 1
b2coa_x_.R1575 -1
h2o_x_.R1575 -1
3hbcoa_x_.R1575 1
3hbcoa_x_.R1576 -1
nad_x_.R1576 -1
aacoa_x_.R1576 1
nadh_x_.R1576 1
h_x_.R1576 1
dcacoa_x_.R1577 -1
fad_x_.R1577 -1
dc2coa_x_.R1577 1
fadh2_x_.R1577 1
dc2coa_x_.R1578 -1
h2o_x_.R1578 -1
3hdcoa_x_.R1578 1
3hdcoa_x_.R1579 -1
nad_x_.R1579 -1
3odcoa_x_.R1579 1
nadh_x_.R1579 1
h_x_.R1579 1
coa_x_.R1580 -1
3odcoa_x_.R1580 -1
occoa_x_.R1580 1
accoa_x_.R1580 1
ddcacoa_x_.R1581 -1
fad_x_.R1581 -1
dd2coa_x_.R1581 1
fadh2_x_.R1581 1
dd2coa_x_.R1582 -1
h2o_x_.R1582 -1
3hddcoa_x_.R1582 1
3hddcoa_x_.R1583 -1
nad_x_.R1583 -1
3oddcoa_x_.R1583 1
nadh_x_.R1583 1
h_x_.R1583 1
coa_x_.R1584 -1
3oddcoa_x_.R1584 -1
dcacoa_x_.R1584 1
accoa_x_.R1584 1
tdcoa_x_.R1585 -1
fad_x_.R1585 -1
td2coa_x_.R1585 1
fadh2_x_.R1585 1
td2coa_x_.R1586 -1
h2o_x_.R1586 -1
3htdcoa_x_.R1586 1
3htdcoa_x_.R1587 -1
nad_x_.R1587 -1
3otdcoa_x_.R1587 1
nadh_x_.R1587 1
h_x_.R1587 1
coa_x_.R1588 -1
3otdcoa_x_.R1588 -1
ddcacoa_x_.R1588 1
accoa_x_.R1588 1
pmtcoa_x_.R1589 -1
fad_x_.R1589 -1
hdd2coa_x_.R1589 1
fadh2_x_.R1589 1
hdd2coa_x_.R1590 -1
h2o_x_.R1590 -1
3hhdcoa_x_.R1590 1
3hhdcoa_x_.R1591 -1
nad_x_.R1591 -1
3ohdcoa_x_.R1591 1
nadh_x_.R1591 1
h_x_.R1591 1
coa_x_.R1592 -1
3ohdcoa_x_.R1592 -1
tdcoa_x_.R1592 1
accoa_x_.R1592 1
stcoa_x_.R1593 -1
fad_x_.R1593 -1
toctd2ecoa_x_.R1593 1
fadh2_x_.R1593 1
toctd2ecoa_x_.R1594 -1
h2o_x_.R1594 -1
3hoctacoa_x_.R1594 1
3hoctacoa_x_.R1595 -1
nad_x_.R1595 -1
3ooctdcoa_x_.R1595 1
nadh_x_.R1595 1
h_x_.R1595 1
coa_x_.R1596 -1
3ooctdcoa_x_.R1596 -1
pmtcoa_x_.R1596 1
accoa_x_.R1596 1
lnlncoa_x_.R1597 -1
nadph_x_.R1597 -1
h_x_.R1597 -1
ocdycacoa_x_.R1597 1
nadp_x_.R1597 1
ocdycacoa_x_.R1598 -1
nadph_x_.R1598 -1
h_x_.R1598 -1
odecoa_x_.R1598 1
nadp_x_.R1598 1
odecoa_x_.R1599 -1
nadph_x_.R1599 -1
h_x_.R1599 -1
stcoa_x_.R1599 1
nadp_x_.R1599 1
hdcoa_x_.R1600 -1
nadph_x_.R1600 -1
h_x_.R1600 -1
pmtcoa_x_.R1600 1
nadp_x_.R1600 1
lnlncoa_x_.R1601 -1
h2o2_x_.R1601 -1
ocdycacoa_x_.R1601 1
o2_x_.R1601 1
ocdycacoa_x_.R1602 -1
h2o2_x_.R1602 -1
odecoa_x_.R1602 1
o2_x_.R1602 1
odecoa_x_.R1603 -1
h2o2_x_.R1603 -1
stcoa_x_.R1603 1
o2_x_.R1603 1
hdcoa_x_.R1604 -1
h2o2_x_.R1604 -1
pmtcoa_x_.R1604 1
o2_x_.R1604 1
coa_m_.R1605 -1
3ohcoa_m_.R1605 -1
accoa_m_.R1605 1
btcoa_m_.R1605 1
3hhcoa_m_.R1606 -1
nad_m_.R1606 -1
3ohcoa_m_.R1606 1
nadh_m_.R1606 1
h_m_.R1606 1
hx2coa_m_.R1607 -1
h2o_m_.R1607 -1
3hhcoa_m_.R1607 1
hx2coa_m_.R1608 -1
nadph_m_.R1608 -1
h_m_.R1608 -1
hxcoa_m_.R1608 1
nadp_m_.R1608 1
coa_m_.R1609 -1
3oocoa_m_.R1609 -1
hxcoa_m_.R1609 1
accoa_m_.R1609 1
3hocoa_m_.R1610 -1
nad_m_.R1610 -1
3oocoa_m_.R1610 1
nadh_m_.R1610 1
h_m_.R1610 1
oc2coa_m_.R1611 -1
h2o_m_.R1611 -1
3hocoa_m_.R1611 1
oc2coa_m_.R1612 -1
nadph_m_.R1612 -1
h_m_.R1612 -1
occoa_m_.R1612 1
nadp_m_.R1612 1
coa_m_.R1613 -1
3odcoa_m_.R1613 -1
occoa_m_.R1613 1
accoa_m_.R1613 1
3hdcoa_m_.R1614 -1
nad_m_.R1614 -1
3odcoa_m_.R1614 1
nadh_m_.R1614 1
h_m_.R1614 1
dc2coa_m_.R1615 -1
h2o_m_.R1615 -1
3hdcoa_m_.R1615 1
dc2coa_m_.R1616 -1
nadph_m_.R1616 -1
h_m_.R1616 -1
dcacoa_m_.R1616 1
nadp_m_.R1616 1
coa_m_.R1617 -1
3oddcoa_m_.R1617 -1
dcacoa_m_.R1617 1
accoa_m_.R1617 1
3hddcoa_m_.R1618 -1
nad_m_.R1618 -1
3oddcoa_m_.R1618 1
nadh_m_.R1618 1
h_m_.R1618 1
dd2coa_m_.R1619 -1
h2o_m_.R1619 -1
3hddcoa_m_.R1619 1
dd2coa_m_.R1620 -1
nadph_m_.R1620 -1
h_m_.R1620 -1
ddcacoa_m_.R1620 1
nadp_m_.R1620 1
coa_m_.R1621 -1
3otdcoa_m_.R1621 -1
ddcacoa_m_.R1621 1
accoa_m_.R1621 1
3htdcoa_m_.R1622 -1
nad_m_.R1622 -1
3otdcoa_m_.R1622 1
nadh_m_.R1622 1
h_m_.R1622 1
td2coa_m_.R1623 -1
h2o_m_.R1623 -1
3htdcoa_m_.R1623 1
td2coa_m_.R1624 -1
nadph_m_.R1624 -1
h_m_.R1624 -1
tdcoa_m_.R1624 1
nadp_m_.R1624 1
coa_m_.R1625 -1
3ohdcoa_m_.R1625 -1
tdcoa_m_.R1625 1
accoa_m_.R1625 1
3hhdcoa_m_.R1626 -1
nad_m_.R1626 -1
3ohdcoa_m_.R1626 1
nadh_m_.R1626 1
h_m_.R1626 1
hdd2coa_m_.R1627 -1
h2o_m_.R1627 -1
3hhdcoa_m_.R1627 1
hdd2coa_m_.R1628 -1
nadph_m_.R1628 -1
h_m_.R1628 -1
pmtcoa_m_.R1628 1
nadp_m_.R1628 1
h2o_m_.R1629 -1
pmtcoa_m_.R1629 -1
coa_m_.R1629 1
h_m_.R1629 1
hdca_m_.R1629 1
ACP_c_.R1630 -1
malcoa_c_.R1630 -1
h_c_.R1630 -1
coa_c_.R1630 1
malACP_c_.R1630 1
ACP_m_.R1631 -1
malcoa_m_.R1631 -1
h_m_.R1631 -1
coa_m_.R1631 1
malACP_m_.R1631 1
accoa_m_.R1632 -1
ACP_m_.R1632 -1
coa_m_.R1632 1
acACP_m_.R1632 1
malACP_m_.R1633 -2
co2_m_.R1633 2
actACP_m_.R1633 1
ACP_m_.R1633 1
actACP_m_.R1634 -1
h_m_.R1634 -1
nadph_m_.R1634 -1
3hbutACP_m_.R1634 1
nadp_m_.R1634 1
3hbutACP_m_.R1635 -1
but2eACP_m_.R1635 1
h2o_m_.R1635 1
but2eACP_m_.R1636 -1
h_m_.R1636 -1
nadph_m_.R1636 -1
butACP_m_.R1636 1
nadp_m_.R1636 1
butACP_m_.R1637 -1
h_m_.R1637 -1
malACP_m_.R1637 -1
3ohexACP_m_.R1637 1
ACP_m_.R1637 1
co2_m_.R1637 1
3ohexACP_m_.R1638 -1
h_m_.R1638 -1
nadph_m_.R1638 -1
3hhexACP_m_.R1638 1
nadp_m_.R1638 1
3hhexACP_m_.R1639 -1
thex2eACP_m_.R1639 1
h2o_m_.R1639 1
thex2eACP_m_.R1640 -1
h_m_.R1640 -1
nadph_m_.R1640 -1
hexACP_m_.R1640 1
nadp_m_.R1640 1
h_m_.R1641 -1
hexACP_m_.R1641 -1
malACP_m_.R1641 -1
3ooctACP_m_.R1641 1
ACP_m_.R1641 1
co2_m_.R1641 1
3ooctACP_m_.R1642 -1
h_m_.R1642 -1
nadph_m_.R1642 -1
3hoctACP_m_.R1642 1
nadp_m_.R1642 1
3hoctACP_m_.R1643 -1
toct2eACP_m_.R1643 1
h2o_m_.R1643 1
toct2eACP_m_.R1644 -1
h_m_.R1644 -1
nadph_m_.R1644 -1
nadp_m_.R1644 1
ocACP_m_.R1644 1
h_m_.R1645 -1
malACP_m_.R1645 -1
ocACP_m_.R1645 -1
3odecACP_m_.R1645 1
ACP_m_.R1645 1
co2_m_.R1645 1
3odecACP_m_.R1646 -1
h_m_.R1646 -1
nadph_m_.R1646 -1
3hdecACP_m_.R1646 1
nadp_m_.R1646 1
3hdecACP_m_.R1647 -1
tdec2eACP_m_.R1647 1
h2o_m_.R1647 1
tdec2eACP_m_.R1648 -1
h_m_.R1648 -1
nadph_m_.R1648 -1
dcaACP_m_.R1648 1
nadp_m_.R1648 1
dcaACP_m_.R1649 -1
h_m_.R1649 -1
malACP_m_.R1649 -1
3oddecACP_m_.R1649 1
ACP_m_.R1649 1
co2_m_.R1649 1
3oddecACP_m_.R1650 -1
h_m_.R1650 -1
nadph_m_.R1650 -1
3hddecACP_m_.R1650 1
nadp_m_.R1650 1
3hddecACP_m_.R1651 -1
tddec2eACP_m_.R1651 1
h2o_m_.R1651 1
tddec2eACP_m_.R1652 -1
h_m_.R1652 -1
nadph_m_.R1652 -1
ddcaACP_m_.R1652 1
nadp_m_.R1652 1
ddcaACP_m_.R1653 -1
h_m_.R1653 -1
malACP_m_.R1653 -1
3omrsACP_m_.R1653 1
ACP_m_.R1653 1
co2_m_.R1653 1
3omrsACP_m_.R1654 -1
h_m_.R1654 -1
nadph_m_.R1654 -1
3hmrsACP_m_.R1654 1
nadp_m_.R1654 1
3hmrsACP_m_.R1655 -1
h2o_m_.R1655 1
tmrs2eACP_m_.R1655 1
h_m_.R1656 -1
nadph_m_.R1656 -1
tmrs2eACP_m_.R1656 -1
myrsACP_m_.R1656 1
nadp_m_.R1656 1
h_m_.R1657 -1
malACP_m_.R1657 -1
myrsACP_m_.R1657 -1
3opalmACP_m_.R1657 1
ACP_m_.R1657 1
co2_m_.R1657 1
3opalmACP_m_.R1658 -1
h_m_.R1658 -1
nadph_m_.R1658 -1
3hpalmACP_m_.R1658 1
nadp_m_.R1658 1
3hpalmACP_m_.R1659 -1
h2o_m_.R1659 1
tpalm2eACP_m_.R1659 1
h_m_.R1660 -1
tpalm2eACP_m_.R1660 -1
nadph_m_.R1660 -1
nadp_m_.R1660 1
palmACP_m_.R1660 1
h_m_.R1661 -1
malACP_m_.R1661 -1
palmACP_m_.R1661 -1
3ooctdACP_m_.R1661 1
ACP_m_.R1661 1
co2_m_.R1661 1
3ooctdACP_m_.R1662 -1
h_m_.R1662 -1
nadph_m_.R1662 -1
3hoctaACP_m_.R1662 1
nadp_m_.R1662 1
3hoctaACP_m_.R1663 -1
toctd2eACP_m_.R1663 1
h2o_m_.R1663 1
toctd2eACP_m_.R1664 -1
h_m_.R1664 -1
nadph_m_.R1664 -1
nadp_m_.R1664 1
ocdcaACP_m_.R1664 1
palmACP_m_.R1665 -1
o2_m_.R1665 -1
nadph_m_.R1665 -1
h2o_m_.R1665 2
hdeACP_m_.R1665 1
nadp_m_.R1665 1
ocdcaACP_m_.R1666 -1
o2_m_.R1666 -1
nadph_m_.R1666 -1
h2o_m_.R1666 2
octeACP_m_.R1666 1
nadp_m_.R1666 1
octeACP_m_.R1667 -1
o2_m_.R1667 -1
nadph_m_.R1667 -1
h2o_m_.R1667 2
ocdcyaACP_m_.R1667 1
nadp_m_.R1667 1
ocdcyaACP_m_.R1668 -1
o2_m_.R1668 -1
nadph_m_.R1668 -1
h2o_m_.R1668 2
lnlnlACP_m_.R1668 1
nadp_m_.R1668 1
glyc3p_m_.R1669 -1
q8_m_.R1669 -1
dhap_m_.R1669 1
q8h2_m_.R1669 1
atp_c_.R1670 -1
glyc_c_.R1670 -1
adp_c_.R1670 1
glyc3p_c_.R1670 1
h_c_.R1670 1
atp_s_.R1671 -1
glyc_s_.R1671 -1
adp_s_.R1671 1
glyc3p_s_.R1671 1
h_s_.R1671 1
atp_m_.R1672 -1
glyc_m_.R1672 -1
adp_m_.R1672 1
glyc3p_m_.R1672 1
h_m_.R1672 1
glyc3p_c_.R1673 -1
nad_c_.R1673 -1
dhap_c_.R1673 1
nadh_c_.R1673 1
h_c_.R1673 1
acylcoa_os_r_.R1674 -1
glyc3p_r_.R1674 -1
1ag3p_os_r_.R1674 1
coa_r_.R1674 1
ACP_os_s_.R1675 -1
glyc3p_s_.R1675 -1
1ag3p_os_s_.R1675 1
ACP_s_.R1675 1
ACP_os_m_.R1676 -1
glyc3p_m_.R1676 -1
1ag3p_os_m_.R1676 1
ACP_m_.R1676 1
acylcoa_os_r_.R1677 -1
1ag3p_os_r_.R1677 -1
pa_os_r_.R1677 1
coa_r_.R1677 1
ACP_os_s_.R1678 -1
1ag3p_os_s_.R1678 -1
pa_os_s_.R1678 1
ACP_s_.R1678 1
ACP_os_m_.R1679 -1
1ag3p_os_m_.R1679 -1
pa_os_m_.R1679 1
ACP_m_.R1679 1
pa_os_r_.R1680 -1
h2o_r_.R1680 -1
12dgr_os_r_.R1680 1
pi_r_.R1680 1
pa_os_s_.R1681 -1
h2o_s_.R1681 -1
12dgr_os_s_.R1681 1
pi_s_.R1681 1
pa_os_m_.R1682 -1
h2o_m_.R1682 -1
12dgr_os_m_.R1682 1
pi_m_.R1682 1
atp_m_.R1683 -1
12dgr_os_m_.R1683 -1
adp_m_.R1683 1
pa_os_m_.R1683 1
h_m_.R1683 1
acylcoa_os_r_.R1684 -1
12dgr_os_r_.R1684 -1
triglyc_os_r_.R1684 1
coa_r_.R1684 1
triglyc_os_c_.R1685 -1
h2o_c_.R1685 -1
fa_os_c_.R1685 1
12dgr_os_c_.R1685 1
h_c_.R1685 1
12dgr_os_c_.R1686 -1
h2o_c_.R1686 -1
fa_os_c_.R1686 1
mgr_os_c_.R1686 1
h_c_.R1686 1
mgr_os_c_.R1687 -1
h2o_c_.R1687 -1
fa_os_c_.R1687 1
glyc_c_.R1687 1
h_c_.R1687 1
ctp_r_.R1688 -1
h_r_.R1688 -1
pa_os_r_.R1688 -1
cdpdag_os_r_.R1688 1
ppi_r_.R1688 1
ctp_m_.R1689 -1
h_m_.R1689 -1
pa_os_m_.R1689 -1
cdpdag_os_m_.R1689 1
ppi_m_.R1689 1
cdpdag_os_r_.R1690 -1
inost_r_.R1690 -1
cmp_r_.R1690 1
ptd1ino_os_r_.R1690 1
h_r_.R1690 1
cdpdag_os_r_.R1691 -1
glyc3p_r_.R1691 -1
cmp_r_.R1691 1
pgp_os_r_.R1691 1
h_r_.R1691 1
cdpdag_os_m_.R1692 -1
glyc3p_m_.R1692 -1
cmp_m_.R1692 1
pgp_os_m_.R1692 1
h_m_.R1692 1
h2o_m_.R1693 -1
pgp_os_m_.R1693 -1
pg_os_m_.R1693 1
pi_m_.R1693 1
cdpdag_os_m_.R1694 -1
pg_os_m_.R1694 -1
clpn_os_m_.R1694 1
cmp_m_.R1694 1
h_m_.R1694 1
cdpdag_os_r_.R1695 -1
ser-L_r_.R1695 -1
cmp_r_.R1695 1
h_r_.R1695 1
ps_os_r_.R1695 1
cdpdag_os_m_.R1696 -1
ser-L_m_.R1696 -1
cmp_m_.R1696 1
h_m_.R1696 1
ps_os_m_.R1696 1
h_r_.R1697 -1
ps_os_r_.R1697 -1
co2_r_.R1697 1
pe_os_r_.R1697 1
h_m_.R1698 -1
ps_os_m_.R1698 -1
co2_m_.R1698 1
pe_os_m_.R1698 1
12dgr_os_r_.R1699 -1
cdpea_r_.R1699 -1
cmp_r_.R1699 1
h_r_.R1699 1
pe_os_r_.R1699 1
ctp_r_.R1700 -1
ethamp_r_.R1700 -1
h_r_.R1700 -1
cdpea_r_.R1700 1
ppi_r_.R1700 1
atp_r_.R1701 -1
etha_r_.R1701 -1
adp_r_.R1701 1
ethamp_r_.R1701 1
h_r_.R1701 1
atp_s_.R1702 -1
etha_s_.R1702 -1
adp_s_.R1702 1
ethamp_s_.R1702 1
h_s_.R1702 1
ser-L_r_.R1703 -1
h_r_.R1703 -1
etha_r_.R1703 1
co2_r_.R1703 1
ser-L_s_.R1704 -1
h_s_.R1704 -1
etha_s_.R1704 1
co2_s_.R1704 1
ethamp_r_.R1705 -1
amet_r_.R1705 -3
ahcys_r_.R1705 3
h_r_.R1705 3
cholp_r_.R1705 1
ethamp_s_.R1706 -1
amet_s_.R1706 -3
ahcys_s_.R1706 3
h_s_.R1706 3
cholp_s_.R1706 1
chol_r_.R1707 -1
atp_r_.R1707 -1
cholp_r_.R1707 1
adp_r_.R1707 1
h_r_.R1707 1
chol_s_.R1708 -1
atp_s_.R1708 -1
cholp_s_.R1708 1
adp_s_.R1708 1
h_s_.R1708 1
cholp_r_.R1709 -1
h2o_r_.R1709 -1
chol_r_.R1709 1
pi_r_.R1709 1
cholp_s_.R1710 -1
h2o_s_.R1710 -1
chol_s_.R1710 1
pi_s_.R1710 1
cholp_r_.R1711 -1
ctp_r_.R1711 -1
h_r_.R1711 -1
cdpchol_r_.R1711 1
ppi_r_.R1711 1
cholp_s_.R1712 -1
ctp_s_.R1712 -1
h_s_.R1712 -1
cdpchol_s_.R1712 1
ppi_s_.R1712 1
12dgr_os_r_.R1713 -1
cdpchol_r_.R1713 -1
cmp_r_.R1713 1
h_r_.R1713 1
pc_os_r_.R1713 1
12dgr_os_s_.R1714 -1
cdpchol_s_.R1714 -1
cmp_s_.R1714 1
h_s_.R1714 1
pc_os_s_.R1714 1
pc_os_r_.R1715 -1
h2o_r_.R1715 -1
chol_r_.R1715 1
12dgr_os_r_.R1715 1
h_r_.R1715 1
pc_os_r_.R1716 -1
h2o_r_.R1716 -1
1agpc_os_r_.R1716 1
fa_os_r_.R1716 1
h_r_.R1716 1
1agpc_os_r_.R1717 -1
h2o_r_.R1717 -1
g3pc_r_.R1717 1
fa_os_r_.R1717 1
h_r_.R1717 1
g3pc_r_.R1718 -1
h2o_r_.R1718 -1
chol_r_.R1718 1
glyc3p_r_.R1718 1
h_r_.R1718 1
udpgal_s_.R1719 -1
12dgr_os_s_.R1719 -1
udp_s_.R1719 1
mgdg_os_s_.R1719 1
udpgal_s_.R1720 -1
mgdg_os_s_.R1720 -1
dgdg_os_s_.R1720 1
udp_s_.R1720 1
udpsq_s_.R1721 -1
12dgr_os_s_.R1721 -1
udp_s_.R1721 1
sq12dgr_os_s_.R1721 1
udpg_s_.R1722 -1
hso3_s_.R1722 -1
udpsq_s_.R1722 1
h2o_s_.R1722 1
o2_s_.R1723 -1
lnlnl_s_.R1723 -1
9-hpot_s_.R1723 1
o2_s_.R1724 -1
ocdcya_s_.R1724 -1
9-hpod_s_.R1724 1
o2_s_.R1725 -1
lnlnl_s_.R1725 -1
13-hpot_s_.R1725 1
o2_s_.R1726 -1
ocdcya_s_.R1726 -1
13-hpod_s_.R1726 1
9-hpot_s_.R1727 -1
3-non_s_.R1727 1
9-nonan_s_.R1727 1
9-hpod_s_.R1728 -1
3-nond_s_.R1728 1
9-nonan_s_.R1728 1
13-hpot_s_.R1729 -1
hxnl_s_.R1729 1
12o9dd_s_.R1729 1
13-hpod_s_.R1730 -1
hxndl_s_.R1730 1
12o9dd_s_.R1730 1
13-hpot_s_.R1731 -1
h2o_s_.R1731 1
1213s-epoxlin_s_.R1731 1
1213s-epoxlin_s_.R1732 -1
12oxophyt_s_.R1732 1
nadph_x_.R1733 -1
12oxophyt_x_.R1733 -1
h_x_.R1733 -1
nadp_x_.R1733 1
3o2c2poct_x_.R1733 1
3o2c2poct_x_.R1734 -1
atp_x_.R1734 -1
coa_x_.R1734 -1
opc8coa_x_.R1734 1
amp_x_.R1734 1
ppi_x_.R1734 1
opc8coa_x_.R1735 -1
o2_x_.R1735 -1
ocp8t2ecoa_x_.R1735 1
h2o2_x_.R1735 1
ocp8t2ecoa_x_.R1736 -1
h2o_x_.R1736 -1
opc8hacoa_x_.R1736 1
opc8hacoa_x_.R1737 -1
nad_x_.R1737 -1
oopc8coa_x_.R1737 1
nadh_x_.R1737 1
h_x_.R1737 1
oopc8coa_x_.R1738 -1
coa_x_.R1738 -1
accoa_x_.R1738 1
opc6coa_x_.R1738 1
opc6coa_x_.R1739 -1
o2_x_.R1739 -1
ocp6t2ecoa_x_.R1739 1
h2o2_x_.R1739 1
ocp6t2ecoa_x_.R1740 -1
h2o_x_.R1740 -1
opc6hacoa_x_.R1740 1
opc6hacoa_x_.R1741 -1
nad_x_.R1741 -1
oopc6coa_x_.R1741 1
nadh_x_.R1741 1
h_x_.R1741 1
oopc6coa_x_.R1742 -1
coa_x_.R1742 -1
accoa_x_.R1742 1
opc4coa_x_.R1742 1
opc4coa_x_.R1743 -1
o2_x_.R1743 -1
ocp4t2ecoa_x_.R1743 1
h2o2_x_.R1743 1
ocp4t2ecoa_x_.R1744 -1
h2o_x_.R1744 -1
opc4hacoa_x_.R1744 1
opc4hacoa_x_.R1745 -1
nad_x_.R1745 -1
oopc4coa_x_.R1745 1
nadh_x_.R1745 1
h_x_.R1745 1
oopc4coa_x_.R1746 -1
coa_x_.R1746 -1
accoa_x_.R1746 1
jascoa_x_.R1746 1
jascoa_x_.R1747 -1
h2o_x_.R1747 -1
coa_x_.R1747 1
h_x_.R1747 1
7ijas_x_.R1747 1
7ijas_x_.R1748 -1
jas_x_.R1748 1
jas_c_.R1749 -1
amet_c_.R1749 -1
ahcys_c_.R1749 1
metjas_c_.R1749 1
jas_c_.R1750 -1
val-L_c_.R1750 -1
atp_c_.R1750 -1
jasval_c_.R1750 1
amp_c_.R1750 1
ppi_c_.R1750 1
jas_c_.R1751 -1
ile-L_c_.R1751 -1
atp_c_.R1751 -1
jasile_c_.R1751 1
amp_c_.R1751 1
ppi_c_.R1751 1
jas_c_.R1752 -1
leu-L_c_.R1752 -1
atp_c_.R1752 -1
jasleu_c_.R1752 1
amp_c_.R1752 1
ppi_c_.R1752 1
pmtcoa_r_.R1753 -1
ser-L_r_.R1753 -1
h_r_.R1753 -1
3dsphgn_r_.R1753 1
coa_r_.R1753 1
co2_r_.R1753 1
3dsphgn_r_.R1754 -1
nadph_r_.R1754 -1
h_r_.R1754 -1
sphgn_r_.R1754 1
nadp_r_.R1754 1
atp_r_.R1755 -1
sphgn_r_.R1755 -1
adp_r_.R1755 1
sph1p_r_.R1755 1
h_r_.R1755 1
sph1p_r_.R1756 -1
ethamp_r_.R1756 1
hxdcal_r_.R1756 1
sphs1p_r_.R1757 -1
ethamp_r_.R1757 1
hxdceal_r_.R1757 1
atp_r_.R1758 -1
sphings_r_.R1758 -1
adp_r_.R1758 1
sphs1p_r_.R1758 1
h_r_.R1758 1
cer1_os_r_.R1759 -1
h2o_r_.R1759 -1
sphgn_r_.R1759 1
fa_os_r_.R1759 1
cer2_os_r_.R1760 -1
h2o_r_.R1760 -1
psphings_r_.R1760 1
fa_os_r_.R1760 1
cer3_os_r_.R1761 -1
h2o_r_.R1761 -1
sphings_r_.R1761 1
fa_os_r_.R1761 1
h_r_.R1762 -1
nadph_r_.R1762 -1
o2_r_.R1762 -1
sphgn_r_.R1762 -1
h2o_r_.R1762 1
nadp_r_.R1762 1
psphings_r_.R1762 1
h_r_.R1763 -1
nadph_r_.R1763 -1
o2_r_.R1763 -1
sphgn_r_.R1763 -1
h2o_r_.R1763 2
nadp_r_.R1763 1
sphings_r_.R1763 1
cer1_os_r_.R1764 -1
fadh2_r_.R1764 -1
o2_r_.R1764 -1
cer3_os_r_.R1764 1
fad_r_.R1764 1
h2o_r_.R1764 2
acylcoa_os_r_.R1765 -1
sphgn_r_.R1765 -1
cer1_os_r_.R1765 1
coa_r_.R1765 1
h_r_.R1765 1
acylcoa_os_r_.R1766 -1
sphings_r_.R1766 -1
cer3_os_r_.R1766 1
coa_r_.R1766 1
h_r_.R1766 1
acylcoa_os_r_.R1767 -1
psphings_r_.R1767 -1
cer2_os_r_.R1767 1
coa_r_.R1767 1
h_r_.R1767 1
cer3_os_r_.R1768 -1
udpg_r_.R1768 -1
gluside_r_.R1768 1
h_r_.R1768 1
udp_r_.R1768 1
gluside_c_.R1769 -1
udpgal_c_.R1769 -1
galgluside_c_.R1769 1
h_c_.R1769 1
udp_c_.R1769 1
galgluside_c_.R1770 -1
h2o_c_.R1770 -1
gal_c_.R1770 1
gluside_c_.R1770 1
oclysLCP_m_.R1771 -1
amet_m_.R1771 -2
lipACP_m_.R1771 1
met-L_m_.R1771 2
dad-5_m_.R1771 2
ocACP_m_.R1772 -1
lipro_m_.R1772 -1
oclysLCP_m_.R1772 1
ACP_m_.R1772 1
malACP_c_.R1773 -1
amet_c_.R1773 -1
ahcys_c_.R1773 1
malACPme_c_.R1773 1
malACPme_c_.R1774 -1
malACP_c_.R1774 -1
akgACPme_c_.R1774 1
co2_c_.R1774 1
ACP_c_.R1774 1
akgACPme_c_.R1775 -1
nadph_c_.R1775 -1
h_c_.R1775 -1
hakgACPme_c_.R1775 1
nadp_c_.R1775 1
hakgACPme_c_.R1776 -1
egluACPme_c_.R1776 1
h2o_c_.R1776 1
egluACPme_c_.R1777 -1
nadh_c_.R1777 -1
h_c_.R1777 -1
gluACPme_c_.R1777 1
nadp_c_.R1777 1
gluACPme_c_.R1778 -1
malACP_c_.R1778 -1
kpimACPme_c_.R1778 1
co2_c_.R1778 1
ACP_c_.R1778 1
kpimACPme_c_.R1779 -1
nadph_c_.R1779 -1
h_c_.R1779 -1
hpimACPme_c_.R1779 1
nadp_c_.R1779 1
hpimACPme_c_.R1780 -1
epimACPme_c_.R1780 1
h2o_c_.R1780 1
epimACPme_c_.R1781 -1
nadph_c_.R1781 -1
h_c_.R1781 -1
pimACPme_c_.R1781 1
nadp_c_.R1781 1
pimACPme_c_.R1782 -1
h2o_c_.R1782 -1
pimACP_c_.R1782 1
h_c_.R1782 1
meoh_c_.R1782 1
pimACP_c_.R1783 -1
ala-L_c_.R1783 -1
h_c_.R1783 -1
8aonn_c_.R1783 1
co2_c_.R1783 1
ACP_c_.R1783 1
8aonn_c_.R1784 -1
amet_c_.R1784 -1
amob_c_.R1784 1
dann_c_.R1784 1
atp_c_.R1785 -1
co2_c_.R1785 -1
dann_c_.R1785 -1
adp_c_.R1785 1
dtbt_c_.R1785 1
h_c_.R1785 3
pi_c_.R1785 1
dtbt_c_.R1786 -1
amet_c_.R1786 -2
btn_c_.R1786 1
met-L_c_.R1786 2
dad-5_c_.R1786 2
h_c_.R1786 1
frdp_c_.R1787 -1
cys-prot_c_.R1787 -1
frprot_c_.R1787 1
ppi_c_.R1787 1
frprot_c_.R1788 -1
h2o_c_.R1788 -1
frcysprot_c_.R1788 1
amet_c_.R1789 -1
frcysprot_c_.R1789 -1
ahcys_c_.R1789 1
frcysmpest_c_.R1789 1
frcysmpest_c_.R1790 -1
o2_c_.R1790 -1
h2o_c_.R1790 -1
frnsl_c_.R1790 1
cys-L_c_.R1790 1
h2o2_c_.R1790 1
frnsl_c_.R1791 -1
frnsol_c_.R1791 1
frnsol_c_.R1792 -1
nadp_c_.R1792 -1
frnsl_c_.R1792 1
nadph_c_.R1792 1
h_c_.R1792 1
ctp_c_.R1793 -1
frnsol_c_.R1793 -1
frp_c_.R1793 1
cdp_c_.R1793 1
ctp_c_.R1794 -1
frp_c_.R1794 -1
frdp_c_.R1794 1
cdp_c_.R1794 1
frdp_c_.R1795 -1
ipdp_c_.R1795 -8
dedoldp_c_.R1795 1
ppi_c_.R1795 8
dedoldp_c_.R1796 -1
nadh_c_.R1796 -2
doldp_c_.R1796 1
nad_c_.R1796 2
doldp_c_.R1797 -1
h2o_c_.R1797 -1
dolp_c_.R1797 1
pi_c_.R1797 1
h_c_.R1797 1
dolichol_c_.R1798 -1
ctp_c_.R1798 -1
cdp_c_.R1798 1
dolp_c_.R1798 1
uacgam_c_.R1799 -1
dolp_c_.R1799 -1
h_c_.R1799 -2
ump_c_.R1799 1
G00001_c_.R1799 1
uacgam_c_.R1800 -1
G00001_c_.R1800 -1
udp_c_.R1800 1
G00002_c_.R1800 1
h_c_.R1800 1
gdpmann_c_.R1801 -1
G00002_c_.R1801 -1
gdp_c_.R1801 1
G00003_c_.R1801 1
h_c_.R1801 1
gdpmann_c_.R1802 -1
dolp_c_.R1802 -1
gdp_c_.R1802 1
dolmanp_c_.R1802 1
gdpmann_c_.R1803 -1
G00003_c_.R1803 -1
gdp_c_.R1803 1
G00004_c_.R1803 1
h_c_.R1803 1
gdpmann_c_.R1804 -1
G00004_c_.R1804 -1
gdp_c_.R1804 1
G00005_c_.R1804 1
h_c_.R1804 1
G00005_c_.R1805 -1
gdpmann_c_.R1805 -1
G10526_c_.R1805 1
gdp_c_.R1805 1
h_c_.R1805 1
G10526_c_.R1806 -1
gdpmann_c_.R1806 -1
G00006_c_.R1806 1
gdp_c_.R1806 1
h_c_.R1806 1
dolmanp_c_.R1807 -1
G00006_c_.R1807 -1
dolp_c_.R1807 1
G10595_c_.R1807 1
h_c_.R1807 1
dolmanp_c_.R1808 -1
G10595_c_.R1808 -1
dolp_c_.R1808 1
G10596_c_.R1808 1
h_c_.R1808 1
dolmanp_c_.R1809 -1
G10596_c_.R1809 -1
dolp_c_.R1809 1
G10597_c_.R1809 1
h_c_.R1809 1
dolmanp_c_.R1810 -1
G10597_c_.R1810 -1
dolp_c_.R1810 1
G00007_c_.R1810 1
h_c_.R1810 1
udpg_c_.R1811 -1
dolp_c_.R1811 -1
udp_c_.R1811 1
dolpglc_c_.R1811 1
dolpglc_c_.R1812 -1
G00007_c_.R1812 -1
dolp_c_.R1812 1
G10598_c_.R1812 1
h_c_.R1812 1
dolpglc_c_.R1813 -1
G10598_c_.R1813 -1
dolp_c_.R1813 1
G10599_c_.R1813 1
h_c_.R1813 1
dolpglc_c_.R1814 -1
G10599_c_.R1814 -1
dolp_c_.R1814 1
G00008_c_.R1814 1
h_c_.R1814 1
Asn-X-Ser-FSLASH-Thr_c_.R1815 -1
G00008_c_.R1815 -1
doldp_c_.R1815 1
G00009_c_.R1815 1
h_c_.R1815 3
h2o_c_.R1816 -1
G00009_c_.R1816 -1
glc-A_c_.R1816 1
G00171_c_.R1816 1
h2o_c_.R1817 -1
G00009_c_.R1817 -1
glc-B_c_.R1817 1
G00171_c_.R1817 1
h2o_c_.R1818 -1
G00171_c_.R1818 -1
glc-A_c_.R1818 1
G00010_c_.R1818 1
h2o_c_.R1819 -1
G00171_c_.R1819 -1
glc-B_c_.R1819 1
G00010_c_.R1819 1
h2o_c_.R1820 -1
G00010_c_.R1820 -1
glc-A_c_.R1820 1
G00011_c_.R1820 1
h2o_c_.R1821 -1
G00010_c_.R1821 -1
glc-B_c_.R1821 1
G00011_c_.R1821 1
G00011_c_.R1822 -1
h2o_c_.R1822 -4
G00012_c_.R1822 1
man_c_.R1822 4
uacgam_c_.R1823 -1
G00012_c_.R1823 -1
udp_c_.R1823 1
G00013_c_.R1823 1
G00013_c_.R1824 -1
h2o_c_.R1824 -2
G00014_c_.R1824 1
man_c_.R1824 2
uacgam_c_.R1825 -1
G00014_c_.R1825 -1
udp_c_.R1825 1
G00015_c_.R1825 1
uacgam_c_.R1826 -1
G00015_c_.R1826 -1
udp_c_.R1826 1
G00019_c_.R1826 1
udpxyl_c_.R1827 -1
G00015_c_.R1827 -1
udp_c_.R1827 1
G00179_c_.R1827 1
gdpfuc_c_.R1828 -1
G00179_c_.R1828 -1
gdp_c_.R1828 1
G13056_c_.R1828 1
ptd1ino_os_c_.R1829 -1
uacgam_c_.R1829 -1
G00143_c_.R1829 1
udp_c_.R1829 1
G00143_c_.R1830 -1
h2o_c_.R1830 -1
ac_c_.R1830 1
G00144_c_.R1830 1
G00144_c_.R1831 -1
pmtcoa_c_.R1831 -1
coa_c_.R1831 1
G00145_c_.R1831 1
dolmanp_c_.R1832 -1
G00145_c_.R1832 -1
dolp_c_.R1832 1
h_c_.R1832 1
G00146_c_.R1832 1
G00146_c_.R1833 -1
pe_os_c_.R1833 -1
12dgr_os_c_.R1833 1
G00147_c_.R1833 1
dolmanp_c_.R1834 -1
G00147_c_.R1834 -1
dolp_c_.R1834 1
h_c_.R1834 1
G00148_c_.R1834 1
dolmanp_c_.R1835 -1
G00148_c_.R1835 -1
dolp_c_.R1835 1
h_c_.R1835 1
G00149_c_.R1835 1
G00149_c_.R1836 -1
pe_os_c_.R1836 -1
12dgr_os_c_.R1836 1
G13044_c_.R1836 1
dolmanp_c_.R1837 -1
G13044_c_.R1837 -1
dolp_c_.R1837 1
h_c_.R1837 1
G13045_c_.R1837 1
galgluside_c_.R1838 -1
udpgal_c_.R1838 -1
h_c_.R1838 1
thcrm_c_.R1838 1
udp_c_.R1838 1
thcrm_c_.R1839 -1
udpacgal_c_.R1839 -1
gbside_c_.R1839 1
h_c_.R1839 1
udp_c_.R1839 1
thcrm_c_.R1840 -1
h2o_c_.R1840 -1
gal_c_.R1840 1
galgluside_c_.R1840 1
gbside_c_.R1841 -1
h2o_c_.R1841 -1
thcrm_c_.R1841 1
galgluside_c_.R1841 1
cmpacna_c_.R1842 -1
galgluside_c_.R1842 -1
cmp_c_.R1842 1
gm3_c_.R1842 1
h_c_.R1842 1
udpacgal_c_.R1843 -1
gm3_c_.R1843 -1
udp_c_.R1843 1
gm2_c_.R1843 1
h_c_.R1843 1
udpgal_c_.R1844 -1
gm2_c_.R1844 -1
udp_c_.R1844 1
gm1_c_.R1844 1
h_c_.R1844 1
gm2_c_.R1845 -1
h2o_c_.R1845 -1
gm3_c_.R1845 1
acgal_c_.R1845 1
gm1_c_.R1846 -1
h2o_c_.R1846 -1
gal_c_.R1846 1
gm2_c_.R1846 1
udpacgal_c_.R1847 -1
uacgam_c_.R1847 1
atp_c_.R1848 -1
ala-L_c_.R1848 -1
trnaala_c_.R1848 -1
amp_c_.R1848 1
ppi_c_.R1848 1
alatrna_c_.R1848 1
atp_s_.R1849 -1
ala-L_s_.R1849 -1
trnaala_s_.R1849 -1
amp_s_.R1849 1
ppi_s_.R1849 1
alatrna_s_.R1849 1
atp_m_.R1850 -1
ala-L_m_.R1850 -1
trnaala_m_.R1850 -1
amp_m_.R1850 1
ppi_m_.R1850 1
alatrna_m_.R1850 1
atp_c_.R1851 -1
arg-L_c_.R1851 -1
trnaarg_c_.R1851 -1
amp_c_.R1851 1
ppi_c_.R1851 1
argtrna_c_.R1851 1
atp_s_.R1852 -1
arg-L_s_.R1852 -1
trnaarg_s_.R1852 -1
amp_s_.R1852 1
ppi_s_.R1852 1
argtrna_s_.R1852 1
atp_c_.R1853 -1
cys-L_c_.R1853 -1
trnacys_c_.R1853 -1
amp_c_.R1853 1
ppi_c_.R1853 1
cystrna_c_.R1853 1
atp_s_.R1854 -1
cys-L_s_.R1854 -1
trnacys_s_.R1854 -1
amp_s_.R1854 1
ppi_s_.R1854 1
cystrna_s_.R1854 1
atp_m_.R1855 -1
cys-L_m_.R1855 -1
trnacys_m_.R1855 -1
amp_m_.R1855 1
ppi_m_.R1855 1
cystrna_m_.R1855 1
atp_c_.R1856 -1
gln-L_c_.R1856 -1
trnagln_c_.R1856 -1
amp_c_.R1856 1
ppi_c_.R1856 1
glntrna_c_.R1856 1
atp_c_.R1857 -1
glu-L_c_.R1857 -1
trnaglu_c_.R1857 -1
amp_c_.R1857 1
ppi_c_.R1857 1
glutrna_c_.R1857 1
atp_c_.R1858 -1
leu-L_c_.R1858 -1
trnaleu_c_.R1858 -1
amp_c_.R1858 1
ppi_c_.R1858 1
leutrna_c_.R1858 1
atp_c_.R1859 -1
gly_c_.R1859 -1
trnagly_c_.R1859 -1
amp_c_.R1859 1
ppi_c_.R1859 1
glytrna_c_.R1859 1
atp_m_.R1860 -1
gly_m_.R1860 -1
trnagly_m_.R1860 -1
amp_m_.R1860 1
ppi_m_.R1860 1
glytrna_m_.R1860 1
atp_s_.R1861 -1
gly_s_.R1861 -1
trnagly_s_.R1861 -1
amp_s_.R1861 1
ppi_s_.R1861 1
glytrna_s_.R1861 1
atp_c_.R1862 -1
ser-L_c_.R1862 -1
trnaser_c_.R1862 -1
amp_c_.R1862 1
ppi_c_.R1862 1
sertrna_c_.R1862 1
atp_s_.R1863 -1
ser-L_s_.R1863 -1
trnaser_s_.R1863 -1
amp_s_.R1863 1
ppi_s_.R1863 1
sertrna_s_.R1863 1
atp_m_.R1864 -1
ser-L_m_.R1864 -1
trnaser_m_.R1864 -1
amp_m_.R1864 1
ppi_m_.R1864 1
sertrna_m_.R1864 1
atp_c_.R1865 -1
thr-L_c_.R1865 -1
trnathr_c_.R1865 -1
amp_c_.R1865 1
ppi_c_.R1865 1
thrtrna_c_.R1865 1
atp_m_.R1866 -1
thr-L_m_.R1866 -1
trnathr_m_.R1866 -1
amp_m_.R1866 1
ppi_m_.R1866 1
thrtrna_m_.R1866 1
atp_m_.R1867 -1
lys-L_m_.R1867 -1
trnalys_m_.R1867 -1
amp_m_.R1867 1
ppi_m_.R1867 1
lystrna_m_.R1867 1
atp_s_.R1868 -1
lys-L_s_.R1868 -1
trnalys_s_.R1868 -1
amp_s_.R1868 1
ppi_s_.R1868 1
lystrna_s_.R1868 1
atp_c_.R1869 -1
lys-L_c_.R1869 -1
trnalys_c_.R1869 -1
amp_c_.R1869 1
ppi_c_.R1869 1
lystrna_c_.R1869 1
atp_c_.R1870 -1
met-L_c_.R1870 -1
trnamet_c_.R1870 -1
amp_c_.R1870 1
ppi_c_.R1870 1
mettrna_c_.R1870 1
atp_m_.R1871 -1
met-L_m_.R1871 -1
trnamet_m_.R1871 -1
amp_m_.R1871 1
ppi_m_.R1871 1
mettrna_m_.R1871 1
atp_s_.R1872 -1
met-L_s_.R1872 -1
trnamet_s_.R1872 -1
amp_s_.R1872 1
ppi_s_.R1872 1
mettrna_s_.R1872 1
atp_c_.R1873 -1
phe-L_c_.R1873 -1
trnaphe_c_.R1873 -1
amp_c_.R1873 1
ppi_c_.R1873 1
phetrna_c_.R1873 1
atp_s_.R1874 -1
phe-L_s_.R1874 -1
trnaphe_s_.R1874 -1
amp_s_.R1874 1
ppi_s_.R1874 1
phetrna_s_.R1874 1
atp_m_.R1875 -1
phe-L_m_.R1875 -1
trnaphe_m_.R1875 -1
amp_m_.R1875 1
ppi_m_.R1875 1
phetrna_m_.R1875 1
atp_c_.R1876 -1
asn-L_c_.R1876 -1
trnaasn_c_.R1876 -1
amp_c_.R1876 1
ppi_c_.R1876 1
asntrna_c_.R1876 1
atp_s_.R1877 -1
asn-L_s_.R1877 -1
trnaasn_s_.R1877 -1
amp_s_.R1877 1
ppi_s_.R1877 1
asntrna_s_.R1877 1
atp_m_.R1878 -1
asn-L_m_.R1878 -1
trnaasn_m_.R1878 -1
amp_m_.R1878 1
ppi_m_.R1878 1
asntrna_m_.R1878 1
atp_c_.R1879 -1
ile-L_c_.R1879 -1
trnaile_c_.R1879 -1
amp_c_.R1879 1
ppi_c_.R1879 1
iletrna_c_.R1879 1
atp_s_.R1880 -1
ile-L_s_.R1880 -1
trnaile_s_.R1880 -1
amp_s_.R1880 1
ppi_s_.R1880 1
iletrna_s_.R1880 1
atp_m_.R1881 -1
ile-L_m_.R1881 -1
trnaile_m_.R1881 -1
amp_m_.R1881 1
ppi_m_.R1881 1
iletrna_m_.R1881 1
atp_s_.R1882 -1
val-L_s_.R1882 -1
trnaval_s_.R1882 -1
amp_s_.R1882 1
ppi_s_.R1882 1
valtrna_s_.R1882 1
atp_m_.R1883 -1
val-L_m_.R1883 -1
trnaval_m_.R1883 -1
amp_m_.R1883 1
ppi_m_.R1883 1
valtrna_m_.R1883 1
atp_c_.R1884 -1
asp-L_c_.R1884 -1
trnaasp_c_.R1884 -1
amp_c_.R1884 1
ppi_c_.R1884 1
asptrna_c_.R1884 1
atp_s_.R1885 -1
asp-L_s_.R1885 -1
trnaasp_s_.R1885 -1
amp_s_.R1885 1
ppi_s_.R1885 1
asptrna_s_.R1885 1
atp_m_.R1886 -1
asp-L_m_.R1886 -1
trnaasp_m_.R1886 -1
amp_m_.R1886 1
ppi_m_.R1886 1
asptrna_m_.R1886 1
atp_c_.R1887 -1
tyr-L_c_.R1887 -1
trnatyr_c_.R1887 -1
amp_c_.R1887 1
ppi_c_.R1887 1
tyrtrna_c_.R1887 1
atp_s_.R1888 -1
tyr-L_s_.R1888 -1
trnatyr_s_.R1888 -1
amp_s_.R1888 1
ppi_s_.R1888 1
tyrtrna_s_.R1888 1
atp_m_.R1889 -1
tyr-L_m_.R1889 -1
trnatyr_m_.R1889 -1
amp_m_.R1889 1
ppi_m_.R1889 1
tyrtrna_m_.R1889 1
atp_c_.R1890 -1
trp-L_c_.R1890 -1
trnatrp_c_.R1890 -1
amp_c_.R1890 1
ppi_c_.R1890 1
trptrna_c_.R1890 1
atp_s_.R1891 -1
trp-L_s_.R1891 -1
trnatrp_s_.R1891 -1
amp_s_.R1891 1
ppi_s_.R1891 1
trptrna_s_.R1891 1
atp_m_.R1892 -1
trp-L_m_.R1892 -1
trnatrp_m_.R1892 -1
amp_m_.R1892 1
ppi_m_.R1892 1
trptrna_m_.R1892 1
atp_c_.R1893 -1
pro-L_c_.R1893 -1
trnapro_c_.R1893 -1
amp_c_.R1893 1
ppi_c_.R1893 1
protrna_c_.R1893 1
atp_s_.R1894 -1
pro-L_s_.R1894 -1
trnapro_s_.R1894 -1
amp_s_.R1894 1
ppi_s_.R1894 1
protrna_s_.R1894 1
atp_m_.R1895 -1
pro-L_m_.R1895 -1
trnapro_m_.R1895 -1
amp_m_.R1895 1
ppi_m_.R1895 1
protrna_m_.R1895 1
atp_c_.R1896 -1
his-L_c_.R1896 -1
trnahis_c_.R1896 -1
amp_c_.R1896 1
ppi_c_.R1896 1
histrna_c_.R1896 1
atp_s_.R1897 -1
his-L_s_.R1897 -1
trnahis_s_.R1897 -1
amp_s_.R1897 1
ppi_s_.R1897 1
histrna_s_.R1897 1
atp_m_.R1898 -1
his-L_m_.R1898 -1
trnahis_m_.R1898 -1
amp_m_.R1898 1
ppi_m_.R1898 1
histrna_m_.R1898 1
ala-B_c_.R1899 -1
amet_c_.R1899 -1
ahcys_c_.R1899 1
ala-B-bet_c_.R1899 1
h_c_.R1899 1
betaldh_s_.R1900 -1
betald_s_.R1900 1
h2o_s_.R1900 1
chol_s_.R1901 -1
o2_s_.R1901 -1
fdxrd_s_.R1901 -2
betaldh_s_.R1901 1
h2o_s_.R1901 1
fdxox_s_.R1901 2
betald_s_.R1902 -1
h2o_s_.R1902 -1
nad_s_.R1902 -1
nadh_s_.R1902 1
glybet_s_.R1902 1
ichor_s_.R1903 -1
h2o_s_.R1903 -1
23ddhb_s_.R1903 1
pyr_s_.R1903 1
23ddhb_s_.R1904 -1
nad_s_.R1904 -1
23dhb_s_.R1904 1
nadh_s_.R1904 1
h_s_.R1904 1
atp_s_.R1905 -6
ser-L_s_.R1905 -3
23dhb_s_.R1905 -3
entb_s_.R1905 1
ppi_s_.R1905 6
amp_s_.R1905 6
g1p_c_.R1906 -1
dttp_c_.R1906 -1
dtdpglu_c_.R1906 1
ppi_c_.R1906 1
dtdpglu_c_.R1907 -1
dtdp4d6dg_c_.R1907 1
h2o_c_.R1907 1
dtdp4d6dg_c_.R1908 -1
dtdp4d6dm_c_.R1908 1
dtdp4d6dm_c_.R1909 -1
nadph_c_.R1909 -1
h_c_.R1909 -1
dtdprmn_c_.R1909 1
nadp_c_.R1909 1
r5p_c_.R1910 -1
ara5p_c_.R1910 1
pep_c_.R1911 -1
ara5p_c_.R1911 -1
h2o_c_.R1911 -1
pi_c_.R1911 1
kdo8p_c_.R1911 1
kdo8p_c_.R1912 -1
h2o_c_.R1912 -1
kdo_c_.R1912 1
pi_c_.R1912 1
ctp_c_.R1913 -1
kdo_c_.R1913 -1
ppi_c_.R1913 1
ckdo_c_.R1913 1
3hmrsACP_m_.R1914 -1
uacgam_m_.R1914 -1
ACP_m_.R1914 1
u3aga_m_.R1914 1
h2o_m_.R1915 -1
u3aga_m_.R1915 -1
ac_m_.R1915 1
u3hga_m_.R1915 1
3hmrsACP_m_.R1916 -1
u3hga_m_.R1916 -1
ACP_m_.R1916 1
h_m_.R1916 1
u23ga_m_.R1916 1
h2o_m_.R1917 -1
u23ga_m_.R1917 -1
h_m_.R1917 2
lipidX_m_.R1917 1
ump_m_.R1917 1
lipidX_m_.R1918 -1
u23ga_m_.R1918 -1
h_m_.R1918 1
lipidAds_m_.R1918 1
udp_m_.R1918 1
atp_m_.R1919 -1
lipidAds_m_.R1919 -1
adp_m_.R1919 1
h_m_.R1919 1
lipidA_m_.R1919 1
ckdo_m_.R1920 -1
lipidA_m_.R1920 -1
cmp_m_.R1920 1
h_m_.R1920 1
kdolipid4_m_.R1920 1
ckdo_m_.R1921 -1
kdolipid4_m_.R1921 -1
cmp_m_.R1921 1
h_m_.R1921 1
kdo2lipid4_m_.R1921 1
pep_c_.R1922 -1
uacgam_c_.R1922 -1
uaccg_c_.R1922 1
pi_c_.R1922 1
uaccg_c_.R1923 -1
nadph_c_.R1923 -1
h_c_.R1923 -1
uamr_c_.R1923 1
nadp_c_.R1923 1
uamr_c_.R1924 -1
atp_c_.R1924 -1
ala-L_c_.R1924 -1
adp_c_.R1924 1
pi_c_.R1924 1
uama_c_.R1924 1
glu-D_c_.R1925 -1
glu-L_c_.R1925 1
atp_c_.R1926 -1
glu-D_c_.R1926 -1
uama_c_.R1926 -1
adp_c_.R1926 1
h_c_.R1926 1
pi_c_.R1926 1
uamag_c_.R1926 1
26dap-M_c_.R1927 -1
atp_c_.R1927 -1
uamag_c_.R1927 -1
adp_c_.R1927 1
h_c_.R1927 1
pi_c_.R1927 1
ugmd_c_.R1927 1
ala-L_c_.R1928 -1
ala-D_c_.R1928 1
ala-D_c_.R1929 -2
atp_c_.R1929 -1
adp_c_.R1929 1
alaala_c_.R1929 1
h_c_.R1929 1
pi_c_.R1929 1
alaala_c_.R1930 -1
atp_c_.R1930 -1
ugmd_c_.R1930 -1
adp_c_.R1930 1
h_c_.R1930 1
pi_c_.R1930 1
ugmda_c_.R1930 1
udcpp_c_.R1931 -1
ugmda_c_.R1931 -1
uagmda_c_.R1931 1
ump_c_.R1931 1
uacgam_c_.R1932 -1
uagmda_c_.R1932 -1
h_c_.R1932 1
uaagmda_c_.R1932 1
udp_c_.R1932 1
tryptamine_c_.R1933 -1
sclgn_c_.R1933 -1
stcsd_c_.R1933 1
h2o_c_.R1933 1
pstrp_c_.R1934 -1
nadp_c_.R1934 -1
trpn_c_.R1934 1
nadph_c_.R1934 1
h_c_.R1934 1
hom-L_s_.R1935 -1
nh4_s_.R1935 -1
cnln-L_s_.R1935 1
h_s_.R1935 2
cnln-L_s_.R1936 -1
cbp_s_.R1936 -1
pi_s_.R1936 1
uhom-L_s_.R1936 1
uhom-L_s_.R1937 -1
atp_s_.R1937 -1
asp-L_s_.R1937 -1
ppi_s_.R1937 1
amp_s_.R1937 1
cavsucc_s_.R1937 1
cavsucc_s_.R1938 -1
fum_s_.R1938 1
cav_s_.R1938 1
cav_s_.R1939 -1
h2o_s_.R1939 -1
cnln-L_s_.R1939 1
urea_s_.R1939 1
h_s_.R1939 1
coum_c_.R1940 -1
nadph_c_.R1940 -1
o2_c_.R1940 -1
caff_c_.R1940 1
nadp_c_.R1940 1
h2o_c_.R1940 1
amet_c_.R1941 -1
caff_c_.R1941 -1
ahcys_c_.R1941 1
fer_c_.R1941 1
fer_c_.R1942 -1
nadph_c_.R1942 -1
o2_c_.R1942 -1
hfer_c_.R1942 1
nadp_c_.R1942 1
h2o_c_.R1942 1
amet_c_.R1943 -1
hfer_c_.R1943 -1
ahcys_c_.R1943 1
sin_c_.R1943 1
dhqrctn_c_.R1944 -1
nadph_c_.R1944 -1
lcdpn_c_.R1944 1
nadp_c_.R1944 1
lcdpn_c_.R1945 -1
akg_c_.R1945 -1
o2_c_.R1945 -1
dlpdn_c_.R1945 1
succ_c_.R1945 1
co2_c_.R1945 1
h2o_c_.R1945 2
udpg_c_.R1946 -1
dlpdn_c_.R1946 -1
udp_c_.R1946 1
dldpng_c_.R1946 1
dldpng_c_.R1947 -1
udpg_c_.R1947 -1
udp_c_.R1947 1
dldpndg_c_.R1947 1
dldpndg_c_.R1948 -1
caffcoa_c_.R1948 -1
dldpngcaff_c_.R1948 1
coa_c_.R1948 1
dldpngcaff_c_.R1949 -1
udpg_c_.R1949 -1
udp_c_.R1949 1
dlgcgg_c_.R1949 1
dldpndg_c_.R1950 -1
udpg_c_.R1950 -1
dldpntg_c_.R1950 1
udp_c_.R1950 1
dldpntg_c_.R1951 -1
caffcoa_c_.R1951 -1
dlgcgg_c_.R1951 1
coa_c_.R1951 1
dlgcgg_c_.R1952 -1
caffcoa_c_.R1952 -1
gentdp_c_.R1952 1
coa_c_.R1952 1
iorntn2g_c_.R1953 -1
coumcoa_c_.R1953 -1
iorntn2gcoum_c_.R1953 1
coa_c_.R1953 1
iscprn2g_c_.R1954 -1
coumcoa_c_.R1954 -1
iscprn2gcoum_c_.R1954 1
coa_c_.R1954 1
iscprn2g_c_.R1955 -1
fercoa_c_.R1955 -1
iscprn2gfer_c_.R1955 1
coa_c_.R1955 1
ivtxn2g_c_.R1956 -1
fercoa_c_.R1956 -1
ivtxn2gfer_c_.R1956 1
coa_c_.R1956 1
malcoa_m_.R1957 -3
ivcoa_m_.R1957 -1
coa_m_.R1957 4
co2_m_.R1957 3
plivlpn_m_.R1957 1
plivlpn_c_.R1958 -1
dmpp_c_.R1958 -1
pplivlpn_c_.R1958 1
ppi_c_.R1958 1
pplivlpn_c_.R1959 -1
dmpp_c_.R1959 -1
dpplivlpn_c_.R1959 1
ppi_c_.R1959 1
dpplivlpn_c_.R1960 -1
o2_c_.R1960 -1
humu_c_.R1960 1
h2o_c_.R1960 1
malcoa_m_.R1961 -3
ibcoa_m_.R1961 -1
coa_m_.R1961 4
co2_m_.R1961 3
plibtn_m_.R1961 1
plibtn_c_.R1962 -1
dmpp_c_.R1962 -1
pplibtn_c_.R1962 1
ppi_c_.R1962 1
pplibtn_c_.R1963 -1
dmpp_c_.R1963 -1
dpplibtn_c_.R1963 1
ppi_c_.R1963 1
dpplibtn_c_.R1964 -1
o2_c_.R1964 -1
chumu_c_.R1964 1
h2o_c_.R1964 1
gthrd_c_.R1965 -1
mthgxl_c_.R1965 -1
lgt-S_c_.R1965 1
h2o_c_.R1966 -1
lgt-S_c_.R1966 -1
gthrd_c_.R1966 1
h_c_.R1966 1
lac-D_c_.R1966 1
lac-D_c_.R1967 -1
lac-L_c_.R1967 1
fald_s_.R1968 -1
gthrd_s_.R1968 -1
hmglut-S_s_.R1968 1
hmglut-S_s_.R1969 -1
nadp_s_.R1969 -1
fglut-S_s_.R1969 1
h_s_.R1969 1
nadph_s_.R1969 1
fglut-S_s_.R1970 -1
h2o_s_.R1970 -1
for_s_.R1970 1
gthrd_s_.R1970 1
h_s_.R1970 1
h_s_.R1971 -1
nadph_s_.R1971 -1
pq_u_.R1971 -1
nadp_s_.R1971 1
pqh2_u_.R1971 1
h_u_.R1971 1
suo2_s_.R1972 -2
h_s_.R1972 -2
h2o2_s_.R1972 1
o2_s_.R1972 1
fdxrd_u_.R1973 -1
o2_s_.R1973 -2
suo2_s_.R1973 2
fdxox_u_.R1973 1
h_s_.R1974 -2
pccu2p_u_.R1974 -2
pqh2_u_.R1974 -1
h_u_.R1974 4
pccu1p_u_.R1974 2
pq_u_.R1974 1
fdxrd_u_.R1975 -2
pq_u_.R1975 -1
h_s_.R1975 -2
fdxox_u_.R1975 2
pqh2_u_.R1975 1
h_u_.R1975 2
fdxrd_u_.R1976 -2
nadp_s_.R1976 -1
h_s_.R1976 -1
fdxox_u_.R1976 2
nadph_s_.R1976 1
fdxox_u_.R1977 -2
pccu1p_u_.R1977 -2
photonPSI_u_.R1977 -2
h_u_.R1977 -2
fdxrd_u_.R1977 2
pccu2p_u_.R1977 2
h2o_u_.R1978 -1
photonPSII_u_.R1978 -2
pq_u_.R1978 -1
h_s_.R1978 -2
o2_u_.R1978 0.5
pqh2_u_.R1978 1
h_u_.R1978 2
achms_c_.R1979 -1
selcys_c_.R1979 -1
selcyst_c_.R1979 1
ac_c_.R1979 1
achms_s_.R1980 -1
selcys_s_.R1980 -1
selcyst_s_.R1980 1
ac_s_.R1980 1
acser_c_.R1981 -1
seln_c_.R1981 -1
selcys_c_.R1981 1
ac_c_.R1981 1
h_c_.R1981 2
acser_s_.R1982 -1
seln_s_.R1982 -1
selcys_s_.R1982 1
ac_s_.R1982 1
h_s_.R1982 2
phom_c_.R1983 -1
selcys_c_.R1983 -1
h_c_.R1983 -1
selcyst_c_.R1983 1
pi_c_.R1983 1
phom_s_.R1984 -1
selcys_s_.R1984 -1
h_s_.R1984 -1
selcyst_s_.R1984 1
pi_s_.R1984 1
seahcys_c_.R1985 -1
h2o_c_.R1985 -1
adn_c_.R1985 1
selhcys_c_.R1985 1
h_c_.R1985 1
selcys_c_.R1986 -1
pdx5p_c_.R1986 -1
h_c_.R1986 -1
seln_c_.R1986 1
ala-L_c_.R1986 1
pydx5p_c_.R1986 1
selcyst_c_.R1987 -1
h2o_c_.R1987 -1
selhcys_c_.R1987 1
nh4_c_.R1987 1
pyr_c_.R1987 1
h_c_.R1987 1
selcyst_s_.R1988 -1
h2o_s_.R1988 -1
selhcys_s_.R1988 1
nh4_s_.R1988 1
pyr_s_.R1988 1
h_s_.R1988 1
selt_c_.R1989 -1
fdxrd_c_.R1989 -6
seln_c_.R1989 1
fdxox_c_.R1989 6
h2o_c_.R1989 3
h_c_.R1989 6
suchms_c_.R1990 -1
selcys_c_.R1990 -1
selcyst_c_.R1990 1
succ_c_.R1990 1
atp_c_.R1991 -1
ser-L_c_.R1991 -1
trnasecys_c_.R1991 -1
amp_c_.R1991 1
ppi_c_.R1991 1
sertrnasec_c_.R1991 1
atp_c_.R1992 -1
selmet_c_.R1992 -1
trnasemet_c_.R1992 -1
amp_c_.R1992 1
ppi_c_.R1992 1
sertrnamet_c_.R1992 1
selmet_c_.R1993 -1
amet_c_.R1993 -1
semetselmet_c_.R1993 1
achms_c_.R1993 1
selmet_c_.R1994 -1
h2o_c_.R1994 -1
metsel_c_.R1994 1
nh4_c_.R1994 1
2obut_c_.R1994 1
seln_c_.R1995 -1
atp_c_.R1995 -1
h2o_c_.R1995 -1
selnp_c_.R1995 1
amp_c_.R1995 1
pi_c_.R1995 1
menecyart_c_.R1996 -1
fercoa_c_.R1996 -1
mcfer_c_.R1996 1
coa_c_.R1996 1
cyart_c_.R1997 -1
fercoa_c_.R1997 -1
cyartfer_c_.R1997 1
coa_c_.R1997 1
campst_c_.R1998 -1
fercoa_c_.R1998 -1
campstfer_c_.R1998 1
coa_c_.R1998 1
sitst_c_.R1999 -1
fercoa_c_.R1999 -1
sitstfer_c_.R1999 1
coa_c_.R1999 1
1-kesttr_c_.R2000 -1
sucr_c_.R2000 -1
16-kesttt_c_.R2000 1
glc-B_c_.R2000 1
sucr_c_.R2001 -2
1-kesttr_c_.R2001 1
glc-B_c_.R2001 1
1-kesttr_c_.R2002 -2
11-kesttt_c_.R2002 1
sucr_c_.R2002 1
sucr_c_.R2003 -2
6-kesttr_c_.R2003 1
glc-B_c_.R2003 1
1-kesttr_c_.R2004 -1
h2o_c_.R2004 -1
fru-B_c_.R2004 1
sucr_c_.R2004 1
gtp_c_.R2005 -1
gmp_c_.R2005 -1
h2o_c_.R2005 1
gppppg_c_.R2005 1
1acpc_c_.R2006 -1
h2o_c_.R2006 -1
nh4_c_.R2006 1
2obut_c_.R2006 1
ahcys_c_.R2007 -1
h2o_c_.R2007 -1
ade_c_.R2007 1
rhcys-L_c_.R2007 1
atp_c_.R2008 -1
camp_c_.R2008 1
ppi_c_.R2008 1
tyr-L_c_.R2009 -1
thbpt_c_.R2009 -1
o2_c_.R2009 -1
dopa-L_c_.R2009 1
4hthbpt_c_.R2009 1
4hthbpt_c_.R2010 -1
dhbpt_c_.R2010 1
h2o_c_.R2010 1
dhbpt_c_.R2011 -1
nadh_c_.R2011 -1
h_c_.R2011 -1
thbpt_c_.R2011 1
nad_c_.R2011 1
2dr1p_c_.R2012 -1
2dr5p_c_.R2012 1
2dr5p_c_.R2013 -1
acald_c_.R2013 1
g3p_c_.R2013 1
udpgal_c_.R2014 -1
udpgalfur_c_.R2014 1
nadh_m_.R2015 -1
nadp_m_.R2015 -1
h_c_.R2015 -2
nadph_m_.R2015 1
nad_m_.R2015 1
h_m_.R2015 2
malttt_s_.R2016 -1
pi_s_.R2016 -1
maltt_s_.R2016 1
g1p_s_.R2016 1
maltt_s_.R2017 -1
h2o_s_.R2017 -1
malt_s_.R2017 1
glc-A_s_.R2017 1
nrgn_c_.R2018 -1
amet_c_.R2018 -1
sakur_c_.R2018 1
ahcys_c_.R2018 1
ltln_c_.R2019 -1
udpg_c_.R2019 -1
ltlng_c_.R2019 1
udp_c_.R2019 1
ltlng_c_.R2020 -1
udprmn_c_.R2020 -1
ltlnnp_c_.R2020 1
udp_c_.R2020 1
h_c_.R2020 1
apgn_c_.R2021 -1
udpg_c_.R2021 -1
apgng_c_.R2021 1
udp_c_.R2021 1
apgng_c_.R2022 -1
udprmn_c_.R2022 -1
apgnnp_c_.R2022 1
udp_c_.R2022 1
h_c_.R2022 1
frdp_c_.R2023 -1
crpe_c_.R2023 1
ppi_c_.R2023 1
frdp_c_.R2024 -1
huml_c_.R2024 1
ppi_c_.R2024 1
frdp_c_.R2025 -1
elm_c_.R2025 1
ppi_c_.R2025 1
ga44_c_.R2026 -1
o2_c_.R2026 -1
akg_c_.R2026 -1
h_c_.R2026 -2
ga98_c_.R2026 1
co2_c_.R2026 1
succ_c_.R2026 1
nad_c_.R2027 -1
nad_m_.R2027 1
uacgam_c_.R2028 -1
uacgam_m_.R2028 1
ckdo_c_.R2029 -1
ckdo_m_.R2029 1
thf_m_.R2030 -1
thf_c_.R2030 1
for_m_.R2031 -1
h_m_.R2031 -1
for_c_.R2031 1
h_c_.R2031 1
amp_m_.R2032 -1
atp_c_.R2032 -1
h_c_.R2032 -2
amp_c_.R2032 1
atp_m_.R2032 1
h_m_.R2032 2
pyr_c_.R2033 -1
h_c_.R2033 -1
pyr_m_.R2033 1
h_m_.R2033 1
asp-L_m_.R2034 -1
h_m_.R2034 -1
asp-L_c_.R2034 1
h_c_.R2034 1
cys-L_m_.R2035 -1
h_m_.R2035 -1
cys-L_c_.R2035 1
h_c_.R2035 1
thr-L_m_.R2036 -1
h_m_.R2036 -1
thr-L_c_.R2036 1
h_c_.R2036 1
lys-L_m_.R2037 -1
h_m_.R2037 -1
lys-L_c_.R2037 1
h_c_.R2037 1
met-L_m_.R2038 -1
h_m_.R2038 -1
met-L_c_.R2038 1
h_c_.R2038 1
phe-L_m_.R2039 -1
h_m_.R2039 -1
phe-L_c_.R2039 1
h_c_.R2039 1
ile-L_m_.R2040 -1
h_m_.R2040 -1
ile-L_c_.R2040 1
h_c_.R2040 1
val-L_m_.R2041 -1
h_m_.R2041 -1
val-L_c_.R2041 1
h_c_.R2041 1
tyr-L_m_.R2042 -1
h_m_.R2042 -1
tyr-L_c_.R2042 1
h_c_.R2042 1
pro-L_m_.R2043 -1
h_m_.R2043 -1
pro-L_c_.R2043 1
h_c_.R2043 1
his-L_m_.R2044 -1
h_m_.R2044 -1
his-L_c_.R2044 1
h_c_.R2044 1
leu-L_m_.R2045 -1
h_m_.R2045 -1
leu-L_c_.R2045 1
h_c_.R2045 1
trp-L_m_.R2046 -1
h_m_.R2046 -1
trp-L_c_.R2046 1
h_c_.R2046 1
asp-L_m_.R2047 -1
glu-L_c_.R2047 -1
asp-L_c_.R2047 1
glu-L_m_.R2047 1
ala-L_m_.R2048 -1
h_m_.R2048 -1
ala-L_c_.R2048 1
h_c_.R2048 1
h2o_c_.R2049 -1
h2o_m_.R2049 1
co2_c_.R2050 -1
co2_m_.R2050 1
nh4_c_.R2051 -1
nh4_m_.R2051 1
o2_c_.R2052 -1
o2_m_.R2052 1
fadh2_c_.R2053 -1
fadh2_m_.R2053 1
fad_c_.R2054 -1
fad_m_.R2054 1
pi_c_.R2055 -1
h_c_.R2055 -1
pi_m_.R2055 1
h_m_.R2055 1
h2o2_c_.R2056 -1
h2o2_m_.R2056 1
atp_m_.R2057 -1
adp_c_.R2057 -1
h_c_.R2057 -1
atp_c_.R2057 1
adp_m_.R2057 1
h_m_.R2057 1
4abut_c_.R2058 -1
h_m_.R2058 -1
4abut_m_.R2058 1
h_c_.R2058 1
succ_m_.R2059 -1
fum_c_.R2059 -1
fum_m_.R2059 1
succ_c_.R2059 1
gly_m_.R2060 -1
h_m_.R2060 -1
gly_c_.R2060 1
h_c_.R2060 1
ser-L_m_.R2061 -1
h_m_.R2061 -1
ser-L_c_.R2061 1
h_c_.R2061 1
succ_c_.R2062 -1
mal-L_m_.R2062 -1
succ_m_.R2062 1
mal-L_c_.R2062 1
cit_m_.R2063 -1
mal-L_c_.R2063 -1
cit_c_.R2063 1
mal-L_m_.R2063 1
mal-L_c_.R2064 -1
akg_m_.R2064 -1
mal-L_m_.R2064 1
akg_c_.R2064 1
so4_m_.R2065 -1
akg_c_.R2065 -1
so4_c_.R2065 1
akg_m_.R2065 1
akg_c_.R2066 -1
cit_m_.R2066 -1
akg_m_.R2066 1
cit_c_.R2066 1
akg_c_.R2067 -1
icit_m_.R2067 -1
akg_m_.R2067 1
icit_c_.R2067 1
mal-L_c_.R2068 -1
icit_m_.R2068 -1
mal-L_m_.R2068 1
icit_c_.R2068 1
mal-L_m_.R2069 -1
oaa_c_.R2069 -1
mal-L_c_.R2069 1
oaa_m_.R2069 1
oaa_c_.R2070 -1
akg_m_.R2070 -1
oaa_m_.R2070 1
akg_c_.R2070 1
oaa_c_.R2071 -1
cit_m_.R2071 -1
oaa_m_.R2071 1
cit_c_.R2071 1
oaa_c_.R2072 -1
icit_m_.R2072 -1
oaa_m_.R2072 1
icit_c_.R2072 1
asn-L_c_.R2073 -1
h_c_.R2073 -1
asn-L_m_.R2073 1
h_m_.R2073 1
acac_c_.R2074 -1
acac_m_.R2074 1
orn_c_.R2075 -1
arg-L_m_.R2075 -1
orn_m_.R2075 1
arg-L_c_.R2075 1
citr-L_c_.R2076 -1
arg-L_m_.R2076 -1
citr-L_m_.R2076 1
arg-L_c_.R2076 1
ac_c_.R2077 -1
ac_m_.R2077 1
coa_c_.R2078 -1
coa_m_.R2078 1
accoa_c_.R2079 -1
coa_m_.R2079 -1
accoa_m_.R2079 1
coa_c_.R2079 1
ahcys_c_.R2080 -1
amet_m_.R2080 -1
ahcys_m_.R2080 1
amet_c_.R2080 1
ipdp_c_.R2081 -1
ipdp_m_.R2081 1
h_c_.R2082 -1
hco3_c_.R2082 -1
h_m_.R2082 1
hco3_m_.R2082 1
gcoa_c_.R2083 -1
gcoa_m_.R2083 1
glx_c_.R2084 -1
glx_m_.R2084 1
3hpcoa_m_.R2085 -1
3hpcoa_c_.R2085 1
cmp_m_.R2086 -1
ctp_c_.R2086 -1
h_c_.R2086 -2
cmp_c_.R2086 1
ctp_m_.R2086 1
h_m_.R2086 2
2ahhmp_c_.R2087 -1
2ahhmp_m_.R2087 1
4abz_c_.R2088 -1
4abz_m_.R2088 1
thmpp_c_.R2089 -1
thmpp_m_.R2089 1
fmn_c_.R2090 -1
fmn_m_.R2090 1
pant-R_c_.R2091 -1
pant-R_m_.R2091 1
2oxoadp_c_.R2092 -1
akg_m_.R2092 -1
2oxoadp_m_.R2092 1
akg_c_.R2092 1
tsul_c_.R2093 -1
atp_c_.R2093 -1
h2o_c_.R2093 -1
tsul_m_.R2093 1
adp_c_.R2093 1
pi_c_.R2093 1
h_c_.R2093 1
5fthf_c_.R2094 -1
h_c_.R2094 -1
5fthf_m_.R2094 1
h_m_.R2094 1
mlthf_c_.R2095 -1
h_c_.R2095 -1
mlthf_m_.R2095 1
h_m_.R2095 1
acser_m_.R2096 -1
acser_c_.R2096 1
na1_m_.R2097 -1
atp_m_.R2097 -1
h2o_m_.R2097 -1
na1_c_.R2097 1
adp_m_.R2097 1
pi_m_.R2097 1
h_m_.R2097 1
h_m_.R2098 -1
na1_c_.R2098 -1
h_c_.R2098 1
na1_m_.R2098 1
pi_c_.R2099 -1
na1_c_.R2099 -1
pi_m_.R2099 1
na1_m_.R2099 1
pheme_m_.R2100 -1
pheme_c_.R2100 1
btcoa_c_.R2101 -1
btcoa_m_.R2101 1
msa_c_.R2102 -1
msa_m_.R2102 1
mhdascb_c_.R2103 -1
mhdascb_m_.R2103 1
pi_m_.R2104 -1
na1_m_.R2104 -1
pi_c_.R2104 1
na1_c_.R2104 1
chor_m_.R2105 -1
chor_c_.R2105 1
hso3_c_.R2106 -1
hso3_m_.R2106 1
glyc_c_.R2107 -1
glyc_m_.R2107 1
cdpdag_os_c_.R2108 -1
cdpdag_os_m_.R2108 1
ptd1ino_os_c_.R2109 -1
ptd1ino_os_m_.R2109 1
pe_os_c_.R2110 -1
pe_os_m_.R2110 1
ps_os_c_.R2111 -1
ps_os_m_.R2111 1
pgp_os_c_.R2112 -1
pgp_os_m_.R2112 1
pc_os_c_.R2113 -1
pc_os_m_.R2113 1
acald_c_.R2114 -1
acald_m_.R2114 1
h2s_c_.R2115 -1
h2s_m_.R2115 1
plivlpn_c_.R2116 -1
plivlpn_m_.R2116 1
plibtn_c_.R2117 -1
plibtn_m_.R2117 1
ac_c_.R2118 -1
ac_s_.R2118 1
nad_c_.R2119 -1
nad_s_.R2119 1
5fthf_c_.R2120 -1
h_c_.R2120 -1
5fthf_s_.R2120 1
h_s_.R2120 1
5mthf_c_.R2121 -1
h_c_.R2121 -1
5mthf_s_.R2121 1
h_s_.R2121 1
mhdascb_c_.R2122 -1
mhdascb_s_.R2122 1
dhor-S_c_.R2123 -1
dhor-S_s_.R2123 1
h_s_.R2123 1
orot_c_.R2124 -1
orot_s_.R2124 1
accoa_c_.R2125 -1
coa_s_.R2125 -1
accoa_s_.R2125 1
coa_c_.R2125 1
succoa_c_.R2126 -1
succoa_s_.R2126 1
tsul_c_.R2127 -1
atp_c_.R2127 -1
h2o_c_.R2127 -1
tsul_s_.R2127 1
adp_c_.R2127 1
pi_c_.R2127 1
h_c_.R2127 1
asp-L_c_.R2128 -1
h_c_.R2128 -1
asp-L_s_.R2128 1
h_s_.R2128 1
cys-L_c_.R2129 -1
cys-L_s_.R2129 1
gly_c_.R2130 -1
h_c_.R2130 -1
gly_s_.R2130 1
h_s_.R2130 1
his-L_c_.R2131 -1
h_c_.R2131 -1
his-L_s_.R2131 1
h_s_.R2131 1
ile-L_c_.R2132 -1
h_c_.R2132 -1
ile-L_s_.R2132 1
h_s_.R2132 1
leu-L_c_.R2133 -1
h_c_.R2133 -1
leu-L_s_.R2133 1
h_s_.R2133 1
lys-L_s_.R2134 -1
h_s_.R2134 -1
lys-L_c_.R2134 1
h_c_.R2134 1
met-L_s_.R2135 -1
h_s_.R2135 -1
met-L_c_.R2135 1
h_c_.R2135 1
phe-L_c_.R2136 -1
phe-L_s_.R2136 1
pro-L_s_.R2137 -1
h_s_.R2137 -1
pro-L_c_.R2137 1
h_c_.R2137 1
ser-L_c_.R2138 -1
h_c_.R2138 -1
ser-L_s_.R2138 1
h_s_.R2138 1
thr-L_c_.R2139 -1
h_c_.R2139 -1
thr-L_s_.R2139 1
h_s_.R2139 1
trp-L_c_.R2140 -1
h_c_.R2140 -1
trp-L_s_.R2140 1
h_s_.R2140 1
tyr-L_c_.R2141 -1
h_c_.R2141 -1
tyr-L_s_.R2141 1
h_s_.R2141 1
val-L_c_.R2142 -1
h_c_.R2142 -1
val-L_s_.R2142 1
h_s_.R2142 1
arg-L_c_.R2143 -1
h_c_.R2143 -1
arg-L_s_.R2143 1
h_s_.R2143 1
thf_s_.R2144 -1
thf_c_.R2144 1
for_s_.R2145 -1
h_s_.R2145 -1
for_c_.R2145 1
h_c_.R2145 1
g1p_c_.R2146 -1
pi_s_.R2146 -1
g1p_s_.R2146 1
pi_c_.R2146 1
g3p_c_.R2147 -1
pi_s_.R2147 -1
g3p_s_.R2147 1
pi_c_.R2147 1
g6p-A_c_.R2148 -1
pi_s_.R2148 -1
g6p-A_s_.R2148 1
pi_c_.R2148 1
g6p-B_c_.R2149 -1
pi_s_.R2149 -1
g6p-B_s_.R2149 1
pi_c_.R2149 1
dhap_c_.R2150 -1
pi_s_.R2150 -1
dhap_s_.R2150 1
pi_c_.R2150 1
3pg_c_.R2151 -1
pi_s_.R2151 -1
3pg_s_.R2151 1
pi_c_.R2151 1
pep_c_.R2152 -1
pi_s_.R2152 -1
pep_s_.R2152 1
pi_c_.R2152 1
amp_c_.R2153 -1
amp_s_.R2153 1
fmn_c_.R2154 -1
fmn_s_.R2154 1
4abz_c_.R2155 -1
4abz_s_.R2155 1
nicrnt_s_.R2156 -1
nicrnt_c_.R2156 1
thm_c_.R2157 -1
thm_s_.R2157 1
thmpp_c_.R2158 -1
thmpp_s_.R2158 1
h2o_c_.R2159 -1
h2o_s_.R2159 1
co2_c_.R2160 -1
co2_s_.R2160 1
h2s_c_.R2161 -1
h2s_s_.R2161 1
gln-L_s_.R2162 -1
glu-L_c_.R2162 -1
glu-L_s_.R2162 1
gln-L_c_.R2162 1
nh4_c_.R2163 -1
nh4_s_.R2163 1
o2_c_.R2164 -1
o2_s_.R2164 1
pi_c_.R2165 -1
h_c_.R2165 -1
pi_s_.R2165 1
h_s_.R2165 1
so4_c_.R2166 -1
so4_s_.R2166 1
no2_c_.R2167 -1
no2_s_.R2167 1
hcys-L_s_.R2168 -1
hcys-L_c_.R2168 1
adp_c_.R2169 -1
atp_s_.R2169 -1
h_c_.R2169 -1
adp_s_.R2169 1
atp_c_.R2169 1
h_s_.R2169 1
glyclt_s_.R2170 -2
glyc-R_c_.R2170 -1
glyclt_c_.R2170 2
glyc-R_s_.R2170 1
mal-L_s_.R2171 -1
fum_c_.R2171 -1
fum_s_.R2171 1
mal-L_c_.R2171 1
mal-L_s_.R2172 -1
oaa_c_.R2172 -1
oaa_s_.R2172 1
mal-L_c_.R2172 1
mal-L_s_.R2173 -1
akg_c_.R2173 -1
akg_s_.R2173 1
mal-L_c_.R2173 1
mal-L_c_.R2174 -1
glu-L_s_.R2174 -1
glu-L_c_.R2174 1
mal-L_s_.R2174 1
fum_s_.R2175 -1
succ_c_.R2175 -1
fum_c_.R2175 1
succ_s_.R2175 1
udpgal_c_.R2176 -1
ump_s_.R2176 -1
udpgal_s_.R2176 1
ump_c_.R2176 1
udpg_c_.R2177 -1
udp_s_.R2177 -1
udpg_s_.R2177 1
udp_c_.R2177 1
ribflv_c_.R2178 -1
ribflv_s_.R2178 1
ipdp_c_.R2179 -1
ipdp_s_.R2179 1
ekaur_s_.R2180 -1
ekaur_c_.R2180 1
ump_s_.R2181 -1
ump_c_.R2181 1
pphn_c_.R2182 -1
pphn_s_.R2182 1
chol_c_.R2183 -1
chol_s_.R2183 1
pc_os_c_.R2184 -1
pc_os_s_.R2184 1
4abut_c_.R2185 -1
h_c_.R2185 -1
4abut_s_.R2185 1
h_s_.R2185 1
4abut_c_.R2186 -1
glu-L_s_.R2186 -1
4abut_s_.R2186 1
glu-L_c_.R2186 1
glyc3p_s_.R2187 -1
glyc3p_c_.R2187 1
glyc_c_.R2188 -1
h_c_.R2188 -1
glyc_s_.R2188 1
h_s_.R2188 1
cdp_c_.R2189 -1
ctp_s_.R2189 -1
h_c_.R2189 -1
cdp_s_.R2189 1
ctp_c_.R2189 1
h_s_.R2189 1
udp_c_.R2190 -1
utp_s_.R2190 -1
h_c_.R2190 -1
udp_s_.R2190 1
utp_c_.R2190 1
h_s_.R2190 1
fe2_c_.R2191 -1
fe2_s_.R2191 1
fe3_c_.R2192 -1
atp_c_.R2192 -1
h2o_c_.R2192 -1
fe3_s_.R2192 1
adp_c_.R2192 1
pi_c_.R2192 1
h_c_.R2192 1
h_c_.R2193 -1
hco3_c_.R2193 -1
h_s_.R2193 1
hco3_s_.R2193 1
hgentis_c_.R2194 -1
hgentis_s_.R2194 1
pheme_s_.R2195 -1
pheme_c_.R2195 1
pi_s_.R2196 -1
na1_s_.R2196 -1
pi_c_.R2196 1
na1_c_.R2196 1
mg2_c_.R2197 -1
mg2_s_.R2197 1
methf_c_.R2198 -1
h_c_.R2198 -1
methf_s_.R2198 1
h_s_.R2198 1
na1_s_.R2199 -1
atp_s_.R2199 -1
h2o_s_.R2199 -1
na1_c_.R2199 1
adp_s_.R2199 1
pi_s_.R2199 1
h_s_.R2199 1
pyr_c_.R2200 -1
pyr_s_.R2200 1
h_s_.R2201 -1
na1_c_.R2201 -1
h_c_.R2201 1
na1_s_.R2201 1
hso3_c_.R2202 -1
hso3_s_.R2202 1
ttdca_s_.R2203 -1
ttdca_c_.R2203 1
hdca_s_.R2204 -1
hdca_c_.R2204 1
hdcea_s_.R2205 -1
hdcea_c_.R2205 1
ocdca_s_.R2206 -1
ocdca_c_.R2206 1
ocdcea_s_.R2207 -1
ocdcea_c_.R2207 1
ocdcya_s_.R2208 -1
ocdcya_c_.R2208 1
lnlnl_s_.R2209 -1
lnlnl_c_.R2209 1
argsuc_s_.R2210 -1
argsuc_c_.R2210 1
acglu_s_.R2211 -1
acglu_c_.R2211 1
glybet_c_.R2212 -1
glybet_s_.R2212 1
ahcys_c_.R2213 -1
amet_s_.R2213 -1
ahcys_s_.R2213 1
amet_c_.R2213 1
acg5sa_c_.R2214 -1
acg5sa_s_.R2214 1
acorn_c_.R2215 -1
acorn_s_.R2215 1
chor_c_.R2216 -1
chor_s_.R2216 1
26dap-M_c_.R2217 -1
26dap-M_s_.R2217 1
stem_c_.R2218 -1
stem_s_.R2218 1
eikaur_c_.R2219 -1
eikaur_s_.R2219 1
ecasd_c_.R2220 -1
ecasd_s_.R2220 1
esand_c_.R2221 -1
esand_s_.R2221 1
dhz_c_.R2222 -1
dhz_s_.R2222 1
ipadne_c_.R2223 -1
ipadne_s_.R2223 1
t-ztnr_c_.R2224 -1
t-ztnr_s_.R2224 1
t-ztn_c_.R2225 -1
t-ztn_s_.R2225 1
ipadn_c_.R2226 -1
ipadn_s_.R2226 1
coa_c_.R2227 -1
h_c_.R2227 -1
coa_s_.R2227 1
h_s_.R2227 1
12oxophyt_c_.R2228 -1
12oxophyt_s_.R2228 1
pyr_c_.R2229 -1
pyr_v_.R2229 1
sucr_c_.R2230 -1
h_c_.R2230 -1
sucr_v_.R2230 1
h_v_.R2230 1
fru-B_v_.R2231 -1
h_v_.R2231 -1
fru-B_c_.R2231 1
h_c_.R2231 1
glc-A_v_.R2232 -1
h_v_.R2232 -1
glc-A_c_.R2232 1
h_c_.R2232 1
glc-B_v_.R2233 -1
h_v_.R2233 -1
glc-B_c_.R2233 1
h_c_.R2233 1
gly_c_.R2234 -1
h_c_.R2234 -1
gly_v_.R2234 1
h_v_.R2234 1
cys-L_c_.R2235 -1
cys-L_v_.R2235 1
h2o_c_.R2236 -1
h2o_v_.R2236 1
atp_v_.R2237 -1
gthrd_c_.R2237 -1
h2o_v_.R2237 -1
adp_v_.R2237 1
gthrd_v_.R2237 1
h_v_.R2237 1
pi_v_.R2237 1
thf_v_.R2238 -1
thf_c_.R2238 1
thglu_c_.R2239 -1
thglu_v_.R2239 1
no2_c_.R2240 -1
no2_v_.R2240 1
no3_c_.R2241 -1
no3_v_.R2241 1
o2_c_.R2242 -1
o2_v_.R2242 1
h2o2_c_.R2243 -1
h2o2_v_.R2243 1
pyr_c_.R2244 -1
h_c_.R2244 -1
pyr_v_.R2244 1
h_v_.R2244 1
atp_x_.R2245 -1
h2o_x_.R2245 -1
tdcoa_c_.R2245 -1
adp_x_.R2245 1
h_x_.R2245 1
ttdca_x_.R2245 1
pi_x_.R2245 1
coa_c_.R2245 1
atp_x_.R2246 -1
h2o_x_.R2246 -1
pmtcoa_c_.R2246 -1
adp_x_.R2246 1
h_x_.R2246 1
hdca_x_.R2246 1
pi_x_.R2246 1
coa_c_.R2246 1
atp_x_.R2247 -1
h2o_x_.R2247 -1
hdcoa_c_.R2247 -1
adp_x_.R2247 1
h_x_.R2247 1
hdcea_x_.R2247 1
pi_x_.R2247 1
coa_c_.R2247 1
atp_x_.R2248 -1
h2o_x_.R2248 -1
stcoa_c_.R2248 -1
adp_x_.R2248 1
h_x_.R2248 1
ocdca_x_.R2248 1
pi_x_.R2248 1
coa_c_.R2248 1
atp_x_.R2249 -1
h2o_x_.R2249 -1
odecoa_c_.R2249 -1
adp_x_.R2249 1
h_x_.R2249 1
ocdcea_x_.R2249 1
pi_x_.R2249 1
coa_c_.R2249 1
atp_x_.R2250 -1
h2o_x_.R2250 -1
ocdycacoa_c_.R2250 -1
adp_x_.R2250 1
h_x_.R2250 1
ocdcya_x_.R2250 1
pi_x_.R2250 1
coa_c_.R2250 1
atp_x_.R2251 -1
h2o_x_.R2251 -1
lnlncoa_c_.R2251 -1
adp_x_.R2251 1
h_x_.R2251 1
lnlnl_x_.R2251 1
pi_x_.R2251 1
coa_c_.R2251 1
amp_x_.R2252 -1
atp_c_.R2252 -1
h_x_.R2252 -1
amp_c_.R2252 1
atp_x_.R2252 1
h_c_.R2252 1
adp_x_.R2253 -1
atp_c_.R2253 -1
h_x_.R2253 -1
adp_c_.R2253 1
atp_x_.R2253 1
h_c_.R2253 1
gly_c_.R2254 -1
h_c_.R2254 -1
gly_x_.R2254 1
h_x_.R2254 1
ser-L_c_.R2255 -1
h_c_.R2255 -1
ser-L_x_.R2255 1
h_x_.R2255 1
glyclt_c_.R2256 -1
glyclt_x_.R2256 1
mal-L_x_.R2257 -1
oaa_c_.R2257 -1
mal-L_c_.R2257 1
oaa_x_.R2257 1
h2o_c_.R2258 -1
h2o_x_.R2258 1
cit_c_.R2259 -1
cit_x_.R2259 1
co2_c_.R2260 -1
co2_x_.R2260 1
o2_c_.R2261 -1
o2_x_.R2261 1
h_c_.R2262 -1
pi_c_.R2262 -1
h_x_.R2262 1
pi_x_.R2262 1
cit_x_.R2263 -1
icit_c_.R2263 -1
cit_c_.R2263 1
icit_x_.R2263 1
ac_c_.R2264 -1
ac_x_.R2264 1
ala-L_c_.R2265 -1
h_c_.R2265 -1
ala-L_x_.R2265 1
h_x_.R2265 1
pyr_c_.R2266 -1
h_c_.R2266 -1
pyr_x_.R2266 1
h_x_.R2266 1
succ_c_.R2267 -1
succ_x_.R2267 1
nh4_c_.R2268 -1
nh4_x_.R2268 1
thr-L_c_.R2269 -1
h_c_.R2269 -1
thr-L_x_.R2269 1
h_x_.R2269 1
accoa_c_.R2270 -1
coa_x_.R2270 -1
accoa_x_.R2270 1
coa_c_.R2270 1
coa_c_.R2271 -1
h_c_.R2271 -1
coa_x_.R2271 1
h_x_.R2271 1
glx_c_.R2272 -1
glx_x_.R2272 1
glu-L_c_.R2273 -1
glu-L_x_.R2273 1
akg_c_.R2274 -1
akg_x_.R2274 1
gcoa_c_.R2275 -1
gcoa_x_.R2275 1
glyc-R_x_.R2276 -1
glyc-R_c_.R2276 1
fadh2_c_.R2277 -1
fadh2_x_.R2277 1
fad_c_.R2278 -1
fad_x_.R2278 1
nadph_c_.R2279 -1
nadph_x_.R2279 1
nadp_c_.R2280 -1
nadp_x_.R2280 1
mthgxl_c_.R2281 -1
mthgxl_x_.R2281 1
b2coa_x_.R2282 -1
b2coa_c_.R2282 1
btcoa_c_.R2283 -1
btcoa_x_.R2283 1
jas_c_.R2284 -1
jas_x_.R2284 1
12oxophyt_c_.R2285 -1
12oxophyt_x_.R2285 1
so4_x_.R2286 -1
so4_c_.R2286 1
tdcoa_r_.R2287 -1
tdcoa_c_.R2287 1
pmtcoa_r_.R2288 -1
pmtcoa_c_.R2288 1
hdcoa_r_.R2289 -1
hdcoa_c_.R2289 1
stcoa_r_.R2290 -1
stcoa_c_.R2290 1
odecoa_r_.R2291 -1
odecoa_c_.R2291 1
ocdycacoa_r_.R2292 -1
ocdycacoa_c_.R2292 1
lnlncoa_r_.R2293 -1
lnlncoa_c_.R2293 1
ttdca_r_.R2294 -1
ttdca_c_.R2294 1
hdca_r_.R2295 -1
hdca_c_.R2295 1
hdcea_r_.R2296 -1
hdcea_c_.R2296 1
ocdca_r_.R2297 -1
ocdca_c_.R2297 1
ocdcea_r_.R2298 -1
ocdcea_c_.R2298 1
ocdcya_r_.R2299 -1
ocdcya_c_.R2299 1
lnlnl_r_.R2300 -1
lnlnl_c_.R2300 1
nadph_c_.R2301 -1
nadph_r_.R2301 1
nadp_c_.R2302 -1
nadp_r_.R2302 1
udpg_c_.R2303 -1
udpg_r_.R2303 1
gluside_c_.R2304 -1
gluside_r_.R2304 1
hydro16_c_.R2305 -1
hydro16_r_.R2305 1
hydro18_c_.R2306 -1
hydro18_r_.R2306 1
dhydro1016_c_.R2307 -1
dhydro1016_r_.R2307 1
dhydro1018_c_.R2308 -1
dhydro1018_r_.R2308 1
thydro91018_c_.R2309 -1
thydro91018_r_.R2309 1
ahcys_c_.R2310 -1
amet_r_.R2310 -1
ahcys_r_.R2310 1
amet_c_.R2310 1
adp_r_.R2311 -1
atp_c_.R2311 -1
h_r_.R2311 -1
adp_c_.R2311 1
atp_r_.R2311 1
h_c_.R2311 1
amp_r_.R2312 -1
atp_c_.R2312 -1
h_r_.R2312 -1
amp_c_.R2312 1
atp_r_.R2312 1
h_c_.R2312 1
h2o_c_.R2313 -1
h2o_r_.R2313 1
co2_c_.R2314 -1
co2_r_.R2314 1
o2_c_.R2315 -1
o2_r_.R2315 1
malcoa_r_.R2316 -1
malcoa_c_.R2316 1
h_c_.R2317 -1
pi_c_.R2317 -1
h_r_.R2317 1
pi_r_.R2317 1
ser-L_c_.R2318 -1
h_c_.R2318 -1
ser-L_r_.R2318 1
h_r_.R2318 1
coa_c_.R2319 -1
h_c_.R2319 -1
coa_r_.R2319 1
h_r_.R2319 1
glyc3p_r_.R2320 -1
glyc3p_c_.R2320 1
triglyc_os_c_.R2321 -1
triglyc_os_r_.R2321 1
ctp_c_.R2322 -1
ctp_r_.R2322 1
cmp_c_.R2323 -1
cmp_r_.R2323 1
cdpdag_os_c_.R2324 -1
cdpdag_os_r_.R2324 1
ptd1ino_os_c_.R2325 -1
ptd1ino_os_r_.R2325 1
pe_os_c_.R2326 -1
pe_os_r_.R2326 1
ps_os_c_.R2327 -1
ps_os_r_.R2327 1
pgp_os_c_.R2328 -1
pgp_os_r_.R2328 1
pc_os_c_.R2329 -1
pc_os_r_.R2329 1
chol_c_.R2330 -1
chol_r_.R2330 1
inost_c_.R2331 -1
inost_r_.R2331 1
fadh2_c_.R2332 -1
fadh2_r_.R2332 1
fad_c_.R2333 -1
fad_r_.R2333 1
o2_u_.R2334 -1
o2_s_.R2334 1
h2o_u_.R2335 -1
h2o_s_.R2335 1
12o9dd_s_.R2336 -1
3-non_s_.R2337 -1
3-nond_s_.R2338 -1
9-nonan_s_.R2339 -1
acrtnl_s_.R2340 -1
act_c_.R2341 -1
ade_s_.R2342 -1
afzl_c_.R2343 -1
amob_c_.R2344 -1
amygd_c_.R2345 -1
apgnnp_c_.R2346 -1
avite1_s_.R2347 -1
bgptn_c_.R2348 -1
biliverd_s_.R2349 -1
brsnl_c_.R2350 -1
btn_c_.R2351 -1
butin_c_.R2352 -1
cadaverine_s_.R2353 -1
camp_c_.R2354 -1
campstfer_c_.R2355 -1
catcn_c_.R2356 -1
cerdt_r_.R2357 -1
cerool_r_.R2358 -1
chsterol_c_.R2359 -1
chumu_c_.R2360 -1
cndn35dg_c_.R2361 -1
coa_c_.R2362 -1
coumn_c_.R2363 -1
coumoh_c_.R2364 -1
cpp1_s_.R2365 -1
crpe_c_.R2366 -1
cyartfer_c_.R2367 -1
cytc_m_.R2368 -1
cytc_s_.R2369 -1
c-ztn7g_c_.R2370 -1
c-ztn9g_c_.R2371 -1
c-ztng_c_.R2372 -1
dhbzcarot_s_.R2373 -1
dhz7g_c_.R2374 -1
dhz9g_c_.R2375 -1
dhzg_c_.R2376 -1
dvchlda_s_.R2377 -1
eihkaur_c_.R2378 -1
elm_c_.R2379 -1
entb_s_.R2380 -1
epctcn_c_.R2381 -1
epflzn_c_.R2382 -1
ergtrol_c_.R2383 -1
ethylene_c_.R2384 -1
ga13_c_.R2385 -1
ga17_c_.R2386 -1
ga29cat_c_.R2387 -1
ga34_c_.R2388 -1
ga51cat_c_.R2389 -1
ga8cat_c_.R2390 -1
ga98_c_.R2391 -1
gentdp_c_.R2392 -1
huml_c_.R2393 -1
humu_c_.R2394 -1
iorntn2gcoum_c_.R2395 -1
ipadne7g_c_.R2396 -1
ipadne9g_c_.R2397 -1
iscprn2gcoum_c_.R2398 -1
iscprn2gfer_c_.R2399 -1
ivtxn2gfer_c_.R2400 -1
jasile_c_.R2401 -1
jasleu_c_.R2402 -1
jasval_c_.R2403 -1
kmpfl3g_c_.R2404 -1
lacxan_s_.R2405 -1
lgncol_r_.R2406 -1
lgndt_r_.R2407 -1
lim_s_.R2408 -1
ltlnnp_c_.R2409 -1
lutein_s_.R2410 -1
mnqnne_s_.R2411 -1
moma_s_.R2412 -1
orntn_c_.R2413 -1
ozln-C_c_.R2414 -1
ozln-E_c_.R2415 -1
ozln-F_c_.R2416 -1
ozln-S_c_.R2417 -1
phas_s_.R2418 -1
phom_c_.R2419 -1
photonDrain_u_.R2420 -1
phtc-A_c_.R2421 -1
phtc-B_c_.R2422 -1
phtc-D_c_.R2423 -1
phtc-E_c_.R2424 -1
pinban_c_.R2425 -1
plast_s_.R2426 -1
plgng_c_.R2427 -1
pqnne_s_.R2428 -1
primardn_s_.R2429 -1
qrctn3g_c_.R2430 -1
sclgn_c_.R2431 -1
sq12dgr_os_s_.R2432 -1
srntn_c_.R2433 -1
stcsd_c_.R2434 -1
tricin_c_.R2435 -1
trpn_c_.R2436 -1
t-ztn7g_c_.R2437 -1
t-ztn9g_c_.R2438 -1
t-ztng_c_.R2439 -1
t-ztnr_c_.R2440 -1
vtxn_c_.R2441 -1
yvite_s_.R2442 -1
photonPSI_u_.R2443 -1
photonPSII_u_.R2444 -1
/

lb(n) Lower bound de Rxs
/
R1 0
R2 0
R3 -1000
R4 -1000
R5 -1000
R6 -1000
R7 -1000
R8 -1000
R9 -1000
R10 -1000
R11 -1000
R12 -1000
R13 -1000
R14 -1000
R15 -1000
R16 -1000
R17 -1000
R18 -1000
R19 -1000
R20 -1000
R21 -1000
R22 -1000
R23 -1000
R24 -1000
R25 -1000
R26 -1000
R27 -1000
R28 -1000
R29 -1000
R30 -1000
R31 -1000
R32 -1000
R33 -1000
R34 -1000
R35 -1000
R36 -1000
R37 -1000
R38 -1000
R39 -1000
R40 -1000
R41 -1000
R42 -1000
R43 -1000
R44 -1000
R45 -1000
R46 -1000
R47 -1000
R48 -1000
R49 -1000
R50 -1000
R51 0
R52 0
R53 0
R54 0
R55 0
R56 0
R57 0
R58 0
R59 0
R60 0
R61 0
R62 0
R63 0
R64 0
R65 0
R66 0
R67 0
R68 0
R69 0
R70 0
R71 0
R72 0
R73 0
R74 0
R75 0
R76 0
R77 0
R78 0
R79 0
R80 0
R81 0
R82 0
R83 0
R84 0
R85 0
R86 -1000
R87 -1000
R88 -1000
R89 -1000
R90 -1000
R91 -1000
R92 -1000
R93 -1000
R94 -1000
R95 -1000
R96 -1000
R97 -1000
R98 -1000
R99 -1000
R100 -1000
R101 -1000
R102 0
R103 0
R104 0
R105 -1000
R106 -1000
R107 -1000
R108 -1000
R109 -1000
R110 -1000
R111 -1000
R112 -1000
R113 -1000
R114 -1000
R115 -1000
R116 -1000
R117 -1000
R118 -1000
R119 -1000
R120 -1000
R121 -1000
R122 -1000
R123 -1000
R124 -1000
R125 -1000
R126 -1000
R127 0
R128 0
R129 0
R130 0
R131 0
R132 0
R133 0
R134 0
R135 0
R136 0
R137 0
R138 0
R139 0
R140 0
R141 0
R142 0
R143 0
R144 0
R145 0
R146 0
R147 0
R148 0
R149 0
R150 0
R151 0
R152 0
R153 0
R154 0
R155 0
R156 0
R157 0
R158 0
R159 0
R160 0
R161 0
R162 0
R163 0
R164 0
R165 0
R166 0
R167 -1000
R168 0
R169 -1000
R170 -1000
R171 0
R172 -1000
R173 -1000
R174 0
R175 0
R176 0
R177 0
R178 0
R179 0
R180 -1000
R181 -1000
R182 -1000
R183 -1000
R184 0
R185 0
R186 0
R187 0
R188 0
R189 0
R190 0
R191 0
R192 0
R193 0
R194 0
R195 0
R196 0
R197 0
R198 0
R199 0
R200 0
R201 0
R202 0
R203 -1000
R204 -1000
R205 -1000
R206 0
R207 0
R208 0
R209 -1000
R210 0
R211 -1000
R212 0
R213 0
R214 -1000
R215 -1000
R216 0
R217 0
R218 0
R219 0
R220 0
R221 0
R222 0
R223 0
R224 -1000
R225 -1000
R226 -1000
R227 0
R228 0
R229 0
R230 0
R231 0
R232 0
R233 0
R234 0
R235 0
R236 0
R237 0
R238 0
R239 0
R240 0
R241 -1000
R242 -1000
R243 0
R244 0
R245 0
R246 0
R247 0
R248 0
R249 0
R250 -1000
R251 -1000
R252 -1000
R253 -1000
R254 -1000
R255 -1000
R256 0
R257 0
R258 0
R259 0
R260 -1000
R261 -1000
R262 -1000
R263 0
R264 0
R265 0
R266 0
R267 -1000
R268 -1000
R269 0
R270 0
R271 0
R272 0
R273 -1000
R274 -1000
R275 -1000
R276 -1000
R277 0
R278 0
R279 0
R280 0
R281 0
R282 0
R283 0
R284 0
R285 0
R286 0
R287 0
R288 -1000
R289 0
R290 0
R291 0
R292 0
R293 0
R294 0
R295 0
R296 0
R297 0
R298 -1000
R299 -1000
R300 -1000
R301 -1000
R302 -1000
R303 -1000
R304 -1000
R305 0
R306 -1000
R307 -1000
R308 0
R309 0
R310 0
R311 0
R312 -1000
R313 0
R314 0
R315 0
R316 0
R317 0
R318 0
R319 -1000
R320 0
R321 0
R322 0
R323 0
R324 0
R325 0
R326 0
R327 0
R328 0
R329 -1000
R330 -1000
R331 -1000
R332 0
R333 -1000
R334 -1000
R335 0
R336 -1000
R337 -1000
R338 -1000
R339 -1000
R340 -1000
R341 0
R342 0
R343 -1000
R344 -1000
R345 0
R346 0
R347 -1000
R348 -1000
R349 0
R350 0
R351 -1000
R352 0
R353 -1000
R354 0
R355 0
R356 0
R357 0
R358 0
R359 0
R360 0
R361 0
R362 -1000
R363 0
R364 0
R365 0
R366 0
R367 0
R368 0
R369 0
R370 0
R371 0
R372 0
R373 0
R374 -1000
R375 0
R376 0
R377 0
R378 0
R379 0
R380 0
R381 0
R382 0
R383 0
R384 0
R385 0
R386 0
R387 0
R388 0
R389 0
R390 0
R391 0
R392 0
R393 0
R394 0
R395 0
R396 0
R397 -1000
R398 -1000
R399 0
R400 0
R401 -1000
R402 0
R403 0
R404 0
R405 0
R406 0
R407 -1000
R408 -1000
R409 0
R410 0
R411 0
R412 -1000
R413 0
R414 0
R415 0
R416 0
R417 0
R418 0
R419 -1000
R420 0
R421 -1000
R422 -1000
R423 -1000
R424 -1000
R425 0
R426 0
R427 0
R428 -1000
R429 0
R430 -1000
R431 0
R432 0
R433 0
R434 0
R435 0
R436 0
R437 0
R438 0
R439 0
R440 0
R441 0
R442 0
R443 0
R444 0
R445 0
R446 0
R447 0
R448 0
R449 0
R450 0
R451 0
R452 0
R453 0
R454 0
R455 0
R456 0
R457 0
R458 0
R459 0
R460 -1000
R461 0
R462 0
R463 0
R464 0
R465 0
R466 0
R467 -1000
R468 0
R469 0
R470 0
R471 0
R472 0
R473 -1000
R474 -1000
R475 0
R476 0
R477 0
R478 0
R479 0
R480 0
R481 -1000
R482 -1000
R483 -1000
R484 0
R485 -1000
R486 -1000
R487 -1000
R488 0
R489 0
R490 0
R491 0
R492 0
R493 0
R494 0
R495 0
R496 0
R497 0
R498 0
R499 0
R500 -1000
R501 0
R502 0
R503 0
R504 0
R505 0
R506 0
R507 0
R508 0
R509 0
R510 0
R511 -1000
R512 0
R513 0
R514 -1000
R515 -1000
R516 0
R517 0
R518 0
R519 -1000
R520 0
R521 0
R522 0
R523 -1000
R524 -1000
R525 0
R526 0
R527 0
R528 0
R529 -1000
R530 -1000
R531 -1000
R532 -1000
R533 0
R534 0
R535 0
R536 0
R537 0
R538 0
R539 0
R540 0
R541 0
R542 0
R543 0
R544 -1000
R545 -1000
R546 0
R547 0
R548 -1000
R549 -1000
R550 0
R551 0
R552 -1000
R553 0
R554 -1000
R555 -1000
R556 -1000
R557 0
R558 0
R559 -1000
R560 0
R561 -1000
R562 0
R563 0
R564 0
R565 0
R566 -1000
R567 0
R568 -1000
R569 -1000
R570 0
R571 0
R572 -1000
R573 -1000
R574 0
R575 0
R576 0
R577 0
R578 0
R579 0
R580 0
R581 0
R582 -1000
R583 -1000
R584 0
R585 -1000
R586 -1000
R587 -1000
R588 -1000
R589 -1000
R590 -1000
R591 -1000
R592 -1000
R593 -1000
R594 0
R595 0
R596 0
R597 0
R598 -1000
R599 -1000
R600 -1000
R601 -1000
R602 -1000
R603 -1000
R604 -1000
R605 -1000
R606 0
R607 0
R608 0
R609 0
R610 0
R611 -1000
R612 -1000
R613 0
R614 0
R615 -1000
R616 -1000
R617 0
R618 0
R619 0
R620 0
R621 0
R622 0
R623 0
R624 0
R625 0
R626 0
R627 0
R628 0
R629 0
R630 -1000
R631 -1000
R632 0
R633 0
R634 0
R635 -1000
R636 -1000
R637 0
R638 -1000
R639 0
R640 0
R641 -1000
R642 -1000
R643 -1000
R644 -1000
R645 -1000
R646 0
R647 0
R648 0
R649 -1000
R650 0
R651 0
R652 -1000
R653 -1000
R654 -1000
R655 -1000
R656 -1000
R657 -1000
R658 0
R659 0
R660 -1000
R661 -1000
R662 0
R663 0
R664 0
R665 0
R666 0
R667 0
R668 0
R669 0
R670 0
R671 0
R672 0
R673 0
R674 0
R675 0
R676 -1000
R677 -1000
R678 -1000
R679 0
R680 0
R681 0
R682 0
R683 0
R684 0
R685 0
R686 0
R687 0
R688 0
R689 -1000
R690 -1000
R691 -1000
R692 0
R693 0
R694 0
R695 0
R696 0
R697 0
R698 0
R699 0
R700 0
R701 0
R702 -1000
R703 0
R704 0
R705 0
R706 0
R707 0
R708 0
R709 0
R710 -1000
R711 -1000
R712 -1000
R713 -1000
R714 0
R715 -1000
R716 0
R717 0
R718 0
R719 0
R720 0
R721 0
R722 0
R723 0
R724 -1000
R725 -1000
R726 -1000
R727 -1000
R728 -1000
R729 -1000
R730 -1000
R731 -1000
R732 -1000
R733 -1000
R734 -1000
R735 0
R736 0
R737 0
R738 0
R739 0
R740 -1000
R741 0
R742 -1000
R743 -1000
R744 -1000
R745 -1000
R746 0
R747 -1000
R748 0
R749 0
R750 0
R751 0
R752 0
R753 0
R754 0
R755 0
R756 0
R757 0
R758 0
R759 0
R760 -1000
R761 -1000
R762 0
R763 -1000
R764 -1000
R765 0
R766 0
R767 0
R768 0
R769 0
R770 0
R771 0
R772 0
R773 0
R774 0
R775 0
R776 0
R777 -1000
R778 0
R779 -1000
R780 -1000
R781 0
R782 -1000
R783 -1000
R784 -1000
R785 -1000
R786 -1000
R787 -1000
R788 0
R789 0
R790 0
R791 0
R792 0
R793 -1000
R794 0
R795 -1000
R796 -1000
R797 -1000
R798 -1000
R799 0
R800 0
R801 0
R802 -1000
R803 -1000
R804 -1000
R805 0
R806 0
R807 0
R808 0
R809 0
R810 0
R811 -1000
R812 0
R813 0
R814 0
R815 0
R816 0
R817 0
R818 0
R819 0
R820 0
R821 0
R822 -1000
R823 0
R824 0
R825 0
R826 0
R827 0
R828 0
R829 -1000
R830 -1000
R831 0
R832 0
R833 0
R834 0
R835 0
R836 0
R837 0
R838 -1000
R839 0
R840 -1000
R841 0
R842 0
R843 -1000
R844 -1000
R845 -1000
R846 -1000
R847 -1000
R848 0
R849 0
R850 -1000
R851 0
R852 0
R853 0
R854 0
R855 -1000
R856 0
R857 0
R858 0
R859 0
R860 0
R861 0
R862 0
R863 -1000
R864 -1000
R865 0
R866 -1000
R867 -1000
R868 0
R869 -1000
R870 -1000
R871 0
R872 0
R873 0
R874 0
R875 0
R876 0
R877 0
R878 0
R879 0
R880 0
R881 0
R882 0
R883 0
R884 0
R885 0
R886 0
R887 0
R888 0
R889 0
R890 0
R891 0
R892 0
R893 0
R894 0
R895 0
R896 0
R897 0
R898 0
R899 -1000
R900 0
R901 0
R902 0
R903 -1000
R904 -1000
R905 -1000
R906 0
R907 0
R908 0
R909 0
R910 0
R911 0
R912 0
R913 0
R914 0
R915 0
R916 0
R917 -1000
R918 0
R919 0
R920 0
R921 0
R922 -1000
R923 0
R924 0
R925 0
R926 0
R927 0
R928 0
R929 0
R930 0
R931 0
R932 0
R933 0
R934 0
R935 0
R936 0
R937 0
R938 0
R939 0
R940 0
R941 0
R942 -1000
R943 0
R944 -1000
R945 0
R946 0
R947 0
R948 0
R949 0
R950 0
R951 0
R952 -1000
R953 0
R954 0
R955 -1000
R956 0
R957 0
R958 0
R959 -1000
R960 -1000
R961 0
R962 0
R963 0
R964 0
R965 0
R966 0
R967 0
R968 0
R969 0
R970 0
R971 0
R972 0
R973 -1000
R974 -1000
R975 -1000
R976 -1000
R977 0
R978 -1000
R979 -1000
R980 0
R981 0
R982 -1000
R983 -1000
R984 -1000
R985 -1000
R986 0
R987 0
R988 0
R989 0
R990 0
R991 0
R992 -1000
R993 0
R994 0
R995 0
R996 -1000
R997 0
R998 0
R999 -1000
R1000 -1000
R1001 0
R1002 0
R1003 -1000
R1004 -1000
R1005 0
R1006 0
R1007 0
R1008 0
R1009 0
R1010 0
R1011 0
R1012 0
R1013 0
R1014 0
R1015 0
R1016 0
R1017 0
R1018 0
R1019 0
R1020 0
R1021 0
R1022 0
R1023 0
R1024 -1000
R1025 -1000
R1026 0
R1027 -1000
R1028 -1000
R1029 -1000
R1030 0
R1031 0
R1032 0
R1033 -1000
R1034 0
R1035 0
R1036 0
R1037 0
R1038 0
R1039 0
R1040 0
R1041 0
R1042 0
R1043 0
R1044 0
R1045 0
R1046 0
R1047 0
R1048 0
R1049 -1000
R1050 0
R1051 -1000
R1052 0
R1053 0
R1054 0
R1055 -1000
R1056 0
R1057 -1000
R1058 0
R1059 0
R1060 0
R1061 0
R1062 0
R1063 0
R1064 0
R1065 0
R1066 0
R1067 0
R1068 0
R1069 0
R1070 0
R1071 0
R1072 0
R1073 0
R1074 0
R1075 0
R1076 0
R1077 0
R1078 0
R1079 0
R1080 0
R1081 0
R1082 0
R1083 0
R1084 0
R1085 0
R1086 0
R1087 0
R1088 0
R1089 0
R1090 0
R1091 0
R1092 0
R1093 0
R1094 0
R1095 -1000
R1096 0
R1097 0
R1098 -1000
R1099 0
R1100 0
R1101 0
R1102 0
R1103 0
R1104 0
R1105 0
R1106 0
R1107 0
R1108 0
R1109 0
R1110 0
R1111 0
R1112 0
R1113 0
R1114 0
R1115 0
R1116 0
R1117 0
R1118 0
R1119 0
R1120 0
R1121 0
R1122 0
R1123 0
R1124 0
R1125 0
R1126 0
R1127 0
R1128 0
R1129 0
R1130 0
R1131 0
R1132 0
R1133 0
R1134 0
R1135 -1000
R1136 -1000
R1137 0
R1138 0
R1139 0
R1140 -1000
R1141 -1000
R1142 0
R1143 0
R1144 -1000
R1145 -1000
R1146 -1000
R1147 0
R1148 -1000
R1149 -1000
R1150 0
R1151 -1000
R1152 0
R1153 0
R1154 -1000
R1155 -1000
R1156 -1000
R1157 0
R1158 0
R1159 0
R1160 0
R1161 0
R1162 0
R1163 0
R1164 0
R1165 0
R1166 0
R1167 0
R1168 0
R1169 0
R1170 0
R1171 0
R1172 -1000
R1173 0
R1174 0
R1175 0
R1176 0
R1177 0
R1178 0
R1179 0
R1180 0
R1181 0
R1182 0
R1183 0
R1184 0
R1185 0
R1186 0
R1187 0
R1188 0
R1189 0
R1190 0
R1191 -1000
R1192 -1000
R1193 0
R1194 0
R1195 0
R1196 -1000
R1197 -1000
R1198 -1000
R1199 0
R1200 0
R1201 0
R1202 0
R1203 0
R1204 0
R1205 0
R1206 0
R1207 0
R1208 0
R1209 0
R1210 0
R1211 0
R1212 0
R1213 0
R1214 0
R1215 -1000
R1216 0
R1217 0
R1218 0
R1219 -1000
R1220 0
R1221 0
R1222 0
R1223 0
R1224 0
R1225 0
R1226 0
R1227 0
R1228 0
R1229 0
R1230 0
R1231 0
R1232 0
R1233 0
R1234 0
R1235 0
R1236 0
R1237 0
R1238 0
R1239 0
R1240 0
R1241 0
R1242 0
R1243 0
R1244 0
R1245 0
R1246 0
R1247 0
R1248 0
R1249 0
R1250 0
R1251 0
R1252 0
R1253 0
R1254 0
R1255 0
R1256 0
R1257 0
R1258 0
R1259 0
R1260 0
R1261 0
R1262 0
R1263 0
R1264 0
R1265 0
R1266 0
R1267 0
R1268 0
R1269 0
R1270 0
R1271 0
R1272 0
R1273 0
R1274 0
R1275 0
R1276 0
R1277 0
R1278 0
R1279 0
R1280 0
R1281 0
R1282 0
R1283 0
R1284 0
R1285 0
R1286 0
R1287 0
R1288 0
R1289 0
R1290 0
R1291 0
R1292 0
R1293 -1000
R1294 -1000
R1295 0
R1296 0
R1297 -1000
R1298 -1000
R1299 -1000
R1300 -1000
R1301 0
R1302 0
R1303 0
R1304 0
R1305 0
R1306 0
R1307 0
R1308 0
R1309 0
R1310 0
R1311 0
R1312 0
R1313 0
R1314 -1000
R1315 -1000
R1316 0
R1317 0
R1318 0
R1319 0
R1320 0
R1321 0
R1322 0
R1323 0
R1324 0
R1325 0
R1326 0
R1327 0
R1328 0
R1329 0
R1330 0
R1331 0
R1332 0
R1333 0
R1334 0
R1335 0
R1336 0
R1337 0
R1338 0
R1339 0
R1340 0
R1341 0
R1342 0
R1343 0
R1344 0
R1345 -1000
R1346 -1000
R1347 0
R1348 -1000
R1349 0
R1350 0
R1351 -1000
R1352 0
R1353 0
R1354 0
R1355 0
R1356 0
R1357 0
R1358 0
R1359 0
R1360 0
R1361 0
R1362 0
R1363 0
R1364 0
R1365 0
R1366 0
R1367 -1000
R1368 -1000
R1369 0
R1370 0
R1371 0
R1372 0
R1373 -1000
R1374 -1000
R1375 0
R1376 0
R1377 0
R1378 0
R1379 0
R1380 0
R1381 0
R1382 0
R1383 0
R1384 0
R1385 0
R1386 0
R1387 0
R1388 0
R1389 0
R1390 0
R1391 0
R1392 0
R1393 0
R1394 0
R1395 0
R1396 0
R1397 0
R1398 0
R1399 0
R1400 0
R1401 0
R1402 0
R1403 0
R1404 0
R1405 -1000
R1406 -1000
R1407 -1000
R1408 0
R1409 0
R1410 0
R1411 -1000
R1412 0
R1413 0
R1414 0
R1415 0
R1416 -1000
R1417 0
R1418 0
R1419 0
R1420 0
R1421 0
R1422 0
R1423 0
R1424 0
R1425 0
R1426 0
R1427 0
R1428 0
R1429 0
R1430 0
R1431 0
R1432 0
R1433 0
R1434 0
R1435 0
R1436 0
R1437 0
R1438 0
R1439 0
R1440 0
R1441 0
R1442 0
R1443 0
R1444 0
R1445 0
R1446 0
R1447 0
R1448 0
R1449 0
R1450 0
R1451 0
R1452 0
R1453 0
R1454 0
R1455 0
R1456 0
R1457 0
R1458 0
R1459 0
R1460 0
R1461 0
R1462 -1000
R1463 -1000
R1464 -1000
R1465 -1000
R1466 -1000
R1467 -1000
R1468 -1000
R1469 0
R1470 0
R1471 0
R1472 0
R1473 0
R1474 0
R1475 -1000
R1476 -1000
R1477 -1000
R1478 -1000
R1479 -1000
R1480 -1000
R1481 -1000
R1482 -1000
R1483 -1000
R1484 -1000
R1485 -1000
R1486 -1000
R1487 -1000
R1488 -1000
R1489 0
R1490 0
R1491 0
R1492 0
R1493 0
R1494 0
R1495 0
R1496 0
R1497 0
R1498 -1000
R1499 0
R1500 0
R1501 0
R1502 0
R1503 0
R1504 0
R1505 0
R1506 0
R1507 0
R1508 0
R1509 0
R1510 0
R1511 0
R1512 0
R1513 0
R1514 0
R1515 0
R1516 0
R1517 -1000
R1518 -1000
R1519 -1000
R1520 -1000
R1521 -1000
R1522 -1000
R1523 -1000
R1524 0
R1525 0
R1526 0
R1527 0
R1528 0
R1529 0
R1530 0
R1531 0
R1532 0
R1533 0
R1534 0
R1535 0
R1536 0
R1537 0
R1538 0
R1539 0
R1540 0
R1541 0
R1542 0
R1543 0
R1544 0
R1545 0
R1546 0
R1547 0
R1548 0
R1549 0
R1550 0
R1551 0
R1552 0
R1553 0
R1554 0
R1555 0
R1556 0
R1557 0
R1558 0
R1559 -1000
R1560 -1000
R1561 -1000
R1562 -1000
R1563 -1000
R1564 -1000
R1565 -1000
R1566 0
R1567 -1000
R1568 -1000
R1569 -1000
R1570 0
R1571 -1000
R1572 -1000
R1573 -1000
R1574 0
R1575 -1000
R1576 -1000
R1577 0
R1578 -1000
R1579 -1000
R1580 -1000
R1581 0
R1582 -1000
R1583 -1000
R1584 -1000
R1585 0
R1586 -1000
R1587 -1000
R1588 -1000
R1589 0
R1590 -1000
R1591 -1000
R1592 -1000
R1593 0
R1594 -1000
R1595 -1000
R1596 -1000
R1597 0
R1598 0
R1599 0
R1600 0
R1601 0
R1602 0
R1603 0
R1604 0
R1605 -1000
R1606 -1000
R1607 -1000
R1608 0
R1609 -1000
R1610 -1000
R1611 -1000
R1612 0
R1613 -1000
R1614 -1000
R1615 -1000
R1616 0
R1617 -1000
R1618 -1000
R1619 -1000
R1620 0
R1621 -1000
R1622 -1000
R1623 -1000
R1624 0
R1625 -1000
R1626 -1000
R1627 -1000
R1628 0
R1629 0
R1630 -1000
R1631 -1000
R1632 0
R1633 0
R1634 0
R1635 0
R1636 0
R1637 0
R1638 0
R1639 0
R1640 0
R1641 0
R1642 0
R1643 0
R1644 0
R1645 0
R1646 0
R1647 0
R1648 0
R1649 0
R1650 0
R1651 0
R1652 0
R1653 0
R1654 0
R1655 0
R1656 0
R1657 0
R1658 0
R1659 0
R1660 0
R1661 0
R1662 0
R1663 0
R1664 0
R1665 0
R1666 0
R1667 0
R1668 0
R1669 -1000
R1670 0
R1671 0
R1672 0
R1673 -1000
R1674 0
R1675 0
R1676 0
R1677 0
R1678 0
R1679 0
R1680 0
R1681 0
R1682 0
R1683 0
R1684 0
R1685 0
R1686 0
R1687 0
R1688 -1000
R1689 -1000
R1690 0
R1691 0
R1692 0
R1693 0
R1694 0
R1695 -1000
R1696 -1000
R1697 0
R1698 0
R1699 -1000
R1700 0
R1701 0
R1702 0
R1703 -1000
R1704 -1000
R1705 0
R1706 0
R1707 0
R1708 0
R1709 0
R1710 0
R1711 0
R1712 0
R1713 0
R1714 0
R1715 0
R1716 0
R1717 0
R1718 0
R1719 0
R1720 0
R1721 0
R1722 0
R1723 0
R1724 0
R1725 0
R1726 0
R1727 0
R1728 0
R1729 0
R1730 0
R1731 0
R1732 0
R1733 0
R1734 0
R1735 0
R1736 -1000
R1737 0
R1738 0
R1739 0
R1740 -1000
R1741 0
R1742 0
R1743 0
R1744 -1000
R1745 0
R1746 0
R1747 0
R1748 -1000
R1749 0
R1750 0
R1751 0
R1752 0
R1753 0
R1754 0
R1755 0
R1756 0
R1757 0
R1758 0
R1759 0
R1760 0
R1761 0
R1762 0
R1763 0
R1764 -1000
R1765 0
R1766 0
R1767 0
R1768 0
R1769 0
R1770 0
R1771 0
R1772 0
R1773 0
R1774 0
R1775 0
R1776 -1000
R1777 0
R1778 0
R1779 0
R1780 -1000
R1781 0
R1782 0
R1783 0
R1784 0
R1785 -1000
R1786 0
R1787 0
R1788 0
R1789 0
R1790 0
R1791 -1000
R1792 0
R1793 0
R1794 0
R1795 0
R1796 0
R1797 0
R1798 -1000
R1799 0
R1800 0
R1801 0
R1802 0
R1803 0
R1804 0
R1805 0
R1806 0
R1807 0
R1808 0
R1809 0
R1810 0
R1811 0
R1812 0
R1813 0
R1814 0
R1815 0
R1816 0
R1817 0
R1818 0
R1819 0
R1820 0
R1821 0
R1822 0
R1823 0
R1824 0
R1825 0
R1826 0
R1827 0
R1828 0
R1829 0
R1830 0
R1831 0
R1832 0
R1833 0
R1834 0
R1835 0
R1836 0
R1837 0
R1838 0
R1839 0
R1840 0
R1841 0
R1842 0
R1843 0
R1844 0
R1845 0
R1846 0
R1847 -1000
R1848 0
R1849 0
R1850 0
R1851 0
R1852 0
R1853 0
R1854 0
R1855 0
R1856 0
R1857 0
R1858 0
R1859 0
R1860 0
R1861 0
R1862 0
R1863 0
R1864 0
R1865 0
R1866 0
R1867 0
R1868 0
R1869 0
R1870 0
R1871 0
R1872 0
R1873 0
R1874 0
R1875 0
R1876 0
R1877 0
R1878 0
R1879 0
R1880 0
R1881 0
R1882 0
R1883 0
R1884 0
R1885 0
R1886 0
R1887 0
R1888 0
R1889 0
R1890 0
R1891 0
R1892 0
R1893 0
R1894 0
R1895 0
R1896 0
R1897 0
R1898 0
R1899 0
R1900 0
R1901 0
R1902 0
R1903 0
R1904 0
R1905 0
R1906 0
R1907 0
R1908 -1000
R1909 0
R1910 -1000
R1911 0
R1912 0
R1913 0
R1914 -1000
R1915 0
R1916 0
R1917 0
R1918 0
R1919 0
R1920 0
R1921 0
R1922 0
R1923 0
R1924 0
R1925 -1000
R1926 0
R1927 0
R1928 -1000
R1929 -1000
R1930 0
R1931 0
R1932 0
R1933 0
R1934 0
R1935 0
R1936 0
R1937 0
R1938 0
R1939 0
R1940 0
R1941 0
R1942 0
R1943 0
R1944 0
R1945 0
R1946 0
R1947 0
R1948 0
R1949 0
R1950 0
R1951 0
R1952 0
R1953 0
R1954 0
R1955 0
R1956 0
R1957 0
R1958 0
R1959 0
R1960 0
R1961 0
R1962 0
R1963 0
R1964 0
R1965 0
R1966 0
R1967 -1000
R1968 -1000
R1969 0
R1970 0
R1971 0
R1972 0
R1973 0
R1974 0
R1975 0
R1976 0
R1977 0
R1978 0
R1979 0
R1980 0
R1981 -1000
R1982 -1000
R1983 0
R1984 0
R1985 -1000
R1986 0
R1987 0
R1988 0
R1989 0
R1990 0
R1991 0
R1992 0
R1993 -1000
R1994 -1000
R1995 -1000
R1996 0
R1997 0
R1998 0
R1999 0
R2000 0
R2001 0
R2002 0
R2003 0
R2004 0
R2005 -1000
R2006 -1000
R2007 -1000
R2008 -1000
R2009 0
R2010 -1000
R2011 -1000
R2012 -1000
R2013 0
R2014 -1000
R2015 0
R2016 -1000
R2017 -1000
R2018 0
R2019 0
R2020 0
R2021 0
R2022 0
R2023 0
R2024 0
R2025 0
R2026 0
R2027 -1000
R2028 -1000
R2029 -1000
R2030 -1000
R2031 0
R2032 0
R2033 -1000
R2034 -1000
R2035 -1000
R2036 -1000
R2037 -1000
R2038 -1000
R2039 -1000
R2040 -1000
R2041 -1000
R2042 -1000
R2043 -1000
R2044 -1000
R2045 -1000
R2046 -1000
R2047 -1000
R2048 -1000
R2049 -1000
R2050 -1000
R2051 -1000
R2052 -1000
R2053 -1000
R2054 -1000
R2055 -1000
R2056 -1000
R2057 0
R2058 -1000
R2059 -1000
R2060 -1000
R2061 -1000
R2062 0
R2063 0
R2064 0
R2065 0
R2066 -1000
R2067 -1000
R2068 -1000
R2069 -1000
R2070 -1000
R2071 -1000
R2072 -1000
R2073 -1000
R2074 -1000
R2075 -1000
R2076 -1000
R2077 -1000
R2078 0
R2079 -1000
R2080 -1000
R2081 -1000
R2082 0
R2083 -1000
R2084 -1000
R2085 0
R2086 -1000
R2087 0
R2088 -1000
R2089 -1000
R2090 0
R2091 -1000
R2092 -1000
R2093 0
R2094 -1000
R2095 -1000
R2096 0
R2097 0
R2098 -1000
R2099 -1000
R2100 -1000
R2101 -1000
R2102 0
R2103 0
R2104 0
R2105 -1000
R2106 -1000
R2107 -1000
R2108 -1000
R2109 -1000
R2110 -1000
R2111 -1000
R2112 -1000
R2113 -1000
R2114 -1000
R2115 -1000
R2116 -1000
R2117 -1000
R2118 -1000
R2119 -1000
R2120 -1000
R2121 -1000
R2122 0
R2123 -1000
R2124 -1000
R2125 -1000
R2126 -1000
R2127 0
R2128 -1000
R2129 -1000
R2130 -1000
R2131 -1000
R2132 -1000
R2133 -1000
R2134 -1000
R2135 -1000
R2136 -1000
R2137 -1000
R2138 -1000
R2139 -1000
R2140 -1000
R2141 -1000
R2142 -1000
R2143 -1000
R2144 -1000
R2145 0
R2146 -1000
R2147 -1000
R2148 -1000
R2149 -1000
R2150 -1000
R2151 -1000
R2152 0
R2153 -1000
R2154 0
R2155 -1000
R2156 0
R2157 -1000
R2158 -1000
R2159 -1000
R2160 -1000
R2161 -1000
R2162 0
R2163 -1000
R2164 -1000
R2165 -1000
R2166 0
R2167 0
R2168 -1000
R2169 0
R2170 -1000
R2171 -1000
R2172 0
R2173 0
R2174 0
R2175 -1000
R2176 -1000
R2177 -1000
R2178 -1000
R2179 -1000
R2180 0
R2181 -1000
R2182 -1000
R2183 0
R2184 -1000
R2185 -1000
R2186 0
R2187 -1000
R2188 -1000
R2189 -1000
R2190 -1000
R2191 0
R2192 0
R2193 0
R2194 -1000
R2195 -1000
R2196 0
R2197 -1000
R2198 -1000
R2199 0
R2200 -1000
R2201 -1000
R2202 -1000
R2203 -1000
R2204 -1000
R2205 -1000
R2206 -1000
R2207 -1000
R2208 -1000
R2209 -1000
R2210 -1000
R2211 -1000
R2212 -1000
R2213 -1000
R2214 -1000
R2215 -1000
R2216 -1000
R2217 -1000
R2218 -1000
R2219 -1000
R2220 -1000
R2221 -1000
R2222 -1000
R2223 -1000
R2224 -1000
R2225 -1000
R2226 -1000
R2227 -1000
R2228 -1000
R2229 -1000
R2230 0
R2231 0
R2232 0
R2233 0
R2234 -1000
R2235 -1000
R2236 -1000
R2237 0
R2238 -1000
R2239 0
R2240 -1000
R2241 -1000
R2242 -1000
R2243 -1000
R2244 -1000
R2245 0
R2246 0
R2247 0
R2248 0
R2249 0
R2250 0
R2251 0
R2252 0
R2253 0
R2254 -1000
R2255 -1000
R2256 -1000
R2257 -1000
R2258 -1000
R2259 -1000
R2260 -1000
R2261 -1000
R2262 -1000
R2263 -1000
R2264 -1000
R2265 -1000
R2266 -1000
R2267 -1000
R2268 -1000
R2269 -1000
R2270 -1000
R2271 -1000
R2272 -1000
R2273 -1000
R2274 -1000
R2275 -1000
R2276 -1000
R2277 -1000
R2278 -1000
R2279 -1000
R2280 -1000
R2281 -1000
R2282 -1000
R2283 -1000
R2284 -1000
R2285 -1000
R2286 0
R2287 -1000
R2288 -1000
R2289 -1000
R2290 -1000
R2291 -1000
R2292 -1000
R2293 -1000
R2294 -1000
R2295 -1000
R2296 -1000
R2297 -1000
R2298 -1000
R2299 -1000
R2300 -1000
R2301 -1000
R2302 -1000
R2303 -1000
R2304 -1000
R2305 -1000
R2306 -1000
R2307 -1000
R2308 -1000
R2309 -1000
R2310 -1000
R2311 -1000
R2312 -1000
R2313 -1000
R2314 -1000
R2315 -1000
R2316 -1000
R2317 -1000
R2318 -1000
R2319 -1000
R2320 -1000
R2321 -1000
R2322 -1000
R2323 -1000
R2324 -1000
R2325 -1000
R2326 -1000
R2327 -1000
R2328 -1000
R2329 -1000
R2330 -1000
R2331 -1000
R2332 -1000
R2333 -1000
R2334 0
R2335 -1000
R2336 0
R2337 0
R2338 0
R2339 0
R2340 0
R2341 0
R2342 0
R2343 0
R2344 0
R2345 0
R2346 0
R2347 0
R2348 0
R2349 0
R2350 0
R2351 0
R2352 0
R2353 0
R2354 0
R2355 0
R2356 0
R2357 0
R2358 0
R2359 0
R2360 0
R2361 0
R2362 0
R2363 0
R2364 0
R2365 0
R2366 0
R2367 0
R2368 0
R2369 0
R2370 0
R2371 0
R2372 0
R2373 0
R2374 0
R2375 0
R2376 0
R2377 0
R2378 0
R2379 0
R2380 0
R2381 0
R2382 0
R2383 0
R2384 0
R2385 0
R2386 0
R2387 0
R2388 0
R2389 0
R2390 0
R2391 0
R2392 0
R2393 0
R2394 0
R2395 0
R2396 0
R2397 0
R2398 0
R2399 0
R2400 0
R2401 0
R2402 0
R2403 0
R2404 0
R2405 0
R2406 0
R2407 0
R2408 0
R2409 0
R2410 0
R2411 0
R2412 0
R2413 0
R2414 0
R2415 0
R2416 0
R2417 0
R2418 0
R2419 0
R2420 0
R2421 0
R2422 0
R2423 0
R2424 0
R2425 0
R2426 0
R2427 0
R2428 0
R2429 0
R2430 0
R2431 0
R2432 0
R2433 0
R2434 0
R2435 0
R2436 0
R2437 0
R2438 0
R2439 0
R2440 0
R2441 0
R2442 0
R2443 0
R2444 0
/

ub(n) Upper bound de Rxs
/
R1 1000
R2 0
R3 1000
R4 1000
R5 1000
R6 1000
R7 1000
R8 1000
R9 1000
R10 1000
R11 1000
R12 1000
R13 1000
R14 1000
R15 1000
R16 1000
R17 1000
R18 1000
R19 1000
R20 1000
R21 1000
R22 1000
R23 1000
R24 1000
R25 1000
R26 1000
R27 1000
R28 1000
R29 1000
R30 1000
R31 1000
R32 1000
R33 1000
R34 1000
R35 1000
R36 1000
R37 1000
R38 1000
R39 1000
R40 1000
R41 1000
R42 1000
R43 1000
R44 1000
R45 1000
R46 1000
R47 1000
R48 1000
R49 1000
R50 1000
R51 0
R52 0
R53 0
R54 0
R55 0
R56 0
R57 0
R58 0
R59 0
R60 0
R61 0
R62 0
R63 0
R64 0
R65 0
R66 0
R67 0
R68 0
R69 0
R70 0
R71 0
R72 0
R73 0
R74 0
R75 0
R76 0
R77 0
R78 0
R79 0
R80 0
R81 0
R82 0
R83 0
R84 0
R85 0
R86 1000
R87 1000
R88 1000
R89 1000
R90 1000
R91 1000
R92 1000
R93 1000
R94 1000
R95 1000
R96 1000
R97 1000
R98 1000
R99 1000
R100 1000
R101 1000
R102 1000
R103 1000
R104 1000
R105 1000
R106 1000
R107 1000
R108 1000
R109 1000
R110 1000
R111 1000
R112 1000
R113 1000
R114 1000
R115 1000
R116 1000
R117 1000
R118 1000
R119 1000
R120 1000
R121 1000
R122 1000
R123 1000
R124 1000
R125 1000
R126 1000
R127 1000
R128 1000
R129 1000
R130 1000
R131 1000
R132 1000
R133 1000
R134 1000
R135 1000
R136 0
R137 1000
R138 1000
R139 1000
R140 0
R141 0
R142 0
R143 1000
R144 1000
R145 1000
R146 1000
R147 0
R148 0
R149 0
R150 1000
R151 1000
R152 1000
R153 1000
R154 1000
R155 1000
R156 1000
R157 1000
R158 1000
R159 1000
R160 1000
R161 1000
R162 1000
R163 1000
R164 1000
R165 1000
R166 1000
R167 1000
R168 1000
R169 1000
R170 1000
R171 1000
R172 1000
R173 1000
R174 1000
R175 1000
R176 1000
R177 1000
R178 1000
R179 1000
R180 1000
R181 1000
R182 1000
R183 1000
R184 1000
R185 1000
R186 1000
R187 1000
R188 1000
R189 1000
R190 1000
R191 1000
R192 1000
R193 1000
R194 1000
R195 1000
R196 1000
R197 1000
R198 1000
R199 1000
R200 1000
R201 1000
R202 1000
R203 1000
R204 1000
R205 1000
R206 1000
R207 1000
R208 1000
R209 1000
R210 1000
R211 1000
R212 1000
R213 1000
R214 1000
R215 1000
R216 1000
R217 1000
R218 1000
R219 1000
R220 1000
R221 1000
R222 1000
R223 1000
R224 1000
R225 1000
R226 1000
R227 1000
R228 1000
R229 1000
R230 1000
R231 1000
R232 0
R233 0
R234 1000
R235 1000
R236 1000
R237 1000
R238 1000
R239 1000
R240 1000
R241 1000
R242 0
R243 1000
R244 1000
R245 1000
R246 1000
R247 1000
R248 1000
R249 1000
R250 1000
R251 1000
R252 1000
R253 1000
R254 1000
R255 0
R256 1000
R257 1000
R258 1000
R259 1000
R260 1000
R261 1000
R262 1000
R263 1000
R264 1000
R265 1000
R266 1000
R267 1000
R268 1000
R269 1000
R270 1000
R271 1000
R272 1000
R273 0
R274 1000
R275 0
R276 1000
R277 1000
R278 1000
R279 1000
R280 1000
R281 1000
R282 1000
R283 1000
R284 1000
R285 1000
R286 1000
R287 1000
R288 1000
R289 1000
R290 1000
R291 1000
R292 1000
R293 1000
R294 1000
R295 1000
R296 1000
R297 1000
R298 1000
R299 0
R300 1000
R301 1000
R302 1000
R303 1000
R304 1000
R305 1000
R306 1000
R307 1000
R308 1000
R309 1000
R310 1000
R311 1000
R312 1000
R313 1000
R314 1000
R315 1000
R316 1000
R317 1000
R318 1000
R319 1000
R320 1000
R321 1000
R322 1000
R323 1000
R324 1000
R325 1000
R326 1000
R327 1000
R328 1000
R329 1000
R330 1000
R331 1000
R332 0
R333 1000
R334 1000
R335 1000
R336 1000
R337 1000
R338 1000
R339 1000
R340 1000
R341 1000
R342 1000
R343 1000
R344 1000
R345 1000
R346 1000
R347 1000
R348 1000
R349 1000
R350 1000
R351 1000
R352 1000
R353 1000
R354 1000
R355 1000
R356 1000
R357 0
R358 1000
R359 1000
R360 1000
R361 1000
R362 1000
R363 1000
R364 1000
R365 1000
R366 1000
R367 1000
R368 1000
R369 1000
R370 1000
R371 1000
R372 1000
R373 1000
R374 1000
R375 1000
R376 1000
R377 1000
R378 1000
R379 1000
R380 1000
R381 1000
R382 1000
R383 1000
R384 1000
R385 1000
R386 1000
R387 1000
R388 1000
R389 1000
R390 1000
R391 1000
R392 1000
R393 1000
R394 1000
R395 1000
R396 1000
R397 0
R398 0
R399 1000
R400 1000
R401 1000
R402 1000
R403 1000
R404 1000
R405 1000
R406 1000
R407 1000
R408 1000
R409 1000
R410 1000
R411 1000
R412 1000
R413 1000
R414 1000
R415 1000
R416 1000
R417 1000
R418 1000
R419 1000
R420 1000
R421 1000
R422 1000
R423 1000
R424 1000
R425 1000
R426 1000
R427 1000
R428 1000
R429 1000
R430 1000
R431 1000
R432 1000
R433 1000
R434 1000
R435 1000
R436 1000
R437 1000
R438 1000
R439 1000
R440 1000
R441 1000
R442 1000
R443 1000
R444 1000
R445 1000
R446 1000
R447 1000
R448 1000
R449 1000
R450 1000
R451 1000
R452 1000
R453 1000
R454 1000
R455 1000
R456 1000
R457 1000
R458 1000
R459 1000
R460 1000
R461 0
R462 1000
R463 1000
R464 1000
R465 1000
R466 1000
R467 1000
R468 1000
R469 1000
R470 1000
R471 1000
R472 1000
R473 1000
R474 1000
R475 1000
R476 1000
R477 1000
R478 1000
R479 1000
R480 1000
R481 1000
R482 1000
R483 1000
R484 1000
R485 1000
R486 1000
R487 1000
R488 1000
R489 1000
R490 1000
R491 1000
R492 1000
R493 1000
R494 1000
R495 1000
R496 1000
R497 1000
R498 1000
R499 1000
R500 1000
R501 1000
R502 1000
R503 1000
R504 1000
R505 1000
R506 1000
R507 1000
R508 1000
R509 1000
R510 1000
R511 1000
R512 1000
R513 1000
R514 1000
R515 1000
R516 1000
R517 1000
R518 1000
R519 1000
R520 1000
R521 1000
R522 1000
R523 1000
R524 1000
R525 1000
R526 1000
R527 1000
R528 1000
R529 0
R530 1000
R531 1000
R532 0
R533 1000
R534 1000
R535 1000
R536 1000
R537 1000
R538 1000
R539 1000
R540 1000
R541 1000
R542 1000
R543 1000
R544 1000
R545 1000
R546 1000
R547 1000
R548 1000
R549 1000
R550 1000
R551 1000
R552 1000
R553 1000
R554 0
R555 1000
R556 1000
R557 1000
R558 1000
R559 1000
R560 1000
R561 1000
R562 1000
R563 1000
R564 1000
R565 1000
R566 1000
R567 1000
R568 1000
R569 1000
R570 1000
R571 1000
R572 1000
R573 1000
R574 1000
R575 1000
R576 1000
R577 1000
R578 1000
R579 1000
R580 1000
R581 1000
R582 1000
R583 1000
R584 1000
R585 0
R586 1000
R587 1000
R588 1000
R589 1000
R590 1000
R591 1000
R592 1000
R593 1000
R594 1000
R595 1000
R596 1000
R597 1000
R598 0
R599 0
R600 1000
R601 0
R602 0
R603 1000
R604 1000
R605 1000
R606 1000
R607 1000
R608 1000
R609 1000
R610 1000
R611 1000
R612 1000
R613 1000
R614 1000
R615 1000
R616 1000
R617 1000
R618 1000
R619 1000
R620 1000
R621 1000
R622 1000
R623 1000
R624 1000
R625 1000
R626 1000
R627 1000
R628 1000
R629 1000
R630 1000
R631 1000
R632 0
R633 1000
R634 1000
R635 1000
R636 1000
R637 1000
R638 1000
R639 1000
R640 1000
R641 1000
R642 1000
R643 1000
R644 1000
R645 1000
R646 1000
R647 1000
R648 1000
R649 1000
R650 1000
R651 1000
R652 1000
R653 1000
R654 1000
R655 1000
R656 1000
R657 1000
R658 1000
R659 1000
R660 1000
R661 1000
R662 1000
R663 1000
R664 1000
R665 1000
R666 1000
R667 1000
R668 1000
R669 1000
R670 1000
R671 1000
R672 1000
R673 1000
R674 1000
R675 1000
R676 1000
R677 1000
R678 1000
R679 1000
R680 1000
R681 1000
R682 1000
R683 1000
R684 1000
R685 1000
R686 1000
R687 1000
R688 1000
R689 1000
R690 1000
R691 1000
R692 1000
R693 1000
R694 1000
R695 1000
R696 1000
R697 1000
R698 1000
R699 1000
R700 1000
R701 1000
R702 1000
R703 1000
R704 1000
R705 1000
R706 1000
R707 1000
R708 1000
R709 1000
R710 1000
R711 1000
R712 1000
R713 1000
R714 1000
R715 1000
R716 1000
R717 1000
R718 1000
R719 1000
R720 1000
R721 1000
R722 1000
R723 1000
R724 1000
R725 1000
R726 0
R727 1000
R728 0
R729 0
R730 1000
R731 1000
R732 0
R733 0
R734 1000
R735 1000
R736 1000
R737 1000
R738 1000
R739 1000
R740 1000
R741 1000
R742 1000
R743 1000
R744 1000
R745 1000
R746 1000
R747 1000
R748 1000
R749 1000
R750 1000
R751 1000
R752 1000
R753 1000
R754 1000
R755 1000
R756 1000
R757 1000
R758 1000
R759 1000
R760 1000
R761 1000
R762 1000
R763 1000
R764 1000
R765 1000
R766 0
R767 0
R768 0
R769 0
R770 1000
R771 1000
R772 1000
R773 1000
R774 1000
R775 1000
R776 1000
R777 1000
R778 1000
R779 1000
R780 1000
R781 1000
R782 0
R783 0
R784 1000
R785 1000
R786 1000
R787 0
R788 0
R789 1000
R790 1000
R791 1000
R792 1000
R793 1000
R794 1000
R795 1000
R796 1000
R797 1000
R798 1000
R799 1000
R800 1000
R801 1000
R802 1000
R803 1000
R804 1000
R805 1000
R806 1000
R807 1000
R808 1000
R809 1000
R810 1000
R811 1000
R812 1000
R813 1000
R814 1000
R815 1000
R816 1000
R817 1000
R818 1000
R819 1000
R820 1000
R821 1000
R822 0
R823 1000
R824 1000
R825 1000
R826 1000
R827 1000
R828 1000
R829 1000
R830 1000
R831 1000
R832 1000
R833 1000
R834 1000
R835 1000
R836 0
R837 1000
R838 1000
R839 0
R840 1000
R841 0
R842 1000
R843 1000
R844 1000
R845 1000
R846 1000
R847 1000
R848 1000
R849 1000
R850 1000
R851 1000
R852 1000
R853 1000
R854 1000
R855 1000
R856 1000
R857 1000
R858 1000
R859 1000
R860 1000
R861 1000
R862 1000
R863 1000
R864 1000
R865 1000
R866 1000
R867 1000
R868 1000
R869 1000
R870 1000
R871 1000
R872 1000
R873 1000
R874 1000
R875 1000
R876 1000
R877 1000
R878 1000
R879 1000
R880 1000
R881 1000
R882 1000
R883 1000
R884 1000
R885 1000
R886 1000
R887 1000
R888 1000
R889 1000
R890 1000
R891 1000
R892 1000
R893 1000
R894 1000
R895 1000
R896 1000
R897 1000
R898 1000
R899 1000
R900 1000
R901 1000
R902 1000
R903 1000
R904 1000
R905 1000
R906 1000
R907 1000
R908 1000
R909 1000
R910 1000
R911 1000
R912 1000
R913 1000
R914 1000
R915 1000
R916 1000
R917 1000
R918 1000
R919 1000
R920 1000
R921 1000
R922 1000
R923 1000
R924 1000
R925 1000
R926 1000
R927 1000
R928 1000
R929 1000
R930 1000
R931 1000
R932 1000
R933 1000
R934 1000
R935 1000
R936 1000
R937 1000
R938 1000
R939 1000
R940 1000
R941 1000
R942 1000
R943 1000
R944 1000
R945 1000
R946 1000
R947 1000
R948 1000
R949 1000
R950 1000
R951 1000
R952 1000
R953 1000
R954 1000
R955 1000
R956 1000
R957 1000
R958 1000
R959 1000
R960 1000
R961 1000
R962 1000
R963 1000
R964 1000
R965 1000
R966 1000
R967 1000
R968 1000
R969 1000
R970 1000
R971 1000
R972 1000
R973 1000
R974 1000
R975 1000
R976 1000
R977 0
R978 1000
R979 1000
R980 1000
R981 1000
R982 1000
R983 1000
R984 1000
R985 1000
R986 1000
R987 1000
R988 1000
R989 1000
R990 1000
R991 1000
R992 1000
R993 1000
R994 1000
R995 1000
R996 1000
R997 1000
R998 0
R999 1000
R1000 1000
R1001 1000
R1002 1000
R1003 1000
R1004 1000
R1005 1000
R1006 1000
R1007 1000
R1008 1000
R1009 1000
R1010 1000
R1011 1000
R1012 1000
R1013 1000
R1014 1000
R1015 1000
R1016 1000
R1017 1000
R1018 1000
R1019 1000
R1020 1000
R1021 1000
R1022 1000
R1023 1000
R1024 1000
R1025 1000
R1026 1000
R1027 1000
R1028 1000
R1029 1000
R1030 1000
R1031 1000
R1032 1000
R1033 1000
R1034 1000
R1035 1000
R1036 1000
R1037 1000
R1038 1000
R1039 1000
R1040 1000
R1041 1000
R1042 1000
R1043 1000
R1044 1000
R1045 1000
R1046 1000
R1047 1000
R1048 1000
R1049 1000
R1050 1000
R1051 1000
R1052 1000
R1053 1000
R1054 1000
R1055 1000
R1056 1000
R1057 1000
R1058 1000
R1059 1000
R1060 1000
R1061 1000
R1062 1000
R1063 1000
R1064 1000
R1065 1000
R1066 1000
R1067 1000
R1068 1000
R1069 1000
R1070 1000
R1071 1000
R1072 1000
R1073 1000
R1074 1000
R1075 1000
R1076 1000
R1077 1000
R1078 1000
R1079 1000
R1080 1000
R1081 1000
R1082 1000
R1083 1000
R1084 1000
R1085 1000
R1086 1000
R1087 1000
R1088 1000
R1089 1000
R1090 1000
R1091 1000
R1092 1000
R1093 1000
R1094 1000
R1095 1000
R1096 1000
R1097 1000
R1098 1000
R1099 1000
R1100 1000
R1101 1000
R1102 1000
R1103 1000
R1104 1000
R1105 1000
R1106 1000
R1107 1000
R1108 1000
R1109 1000
R1110 1000
R1111 1000
R1112 1000
R1113 1000
R1114 1000
R1115 1000
R1116 1000
R1117 1000
R1118 1000
R1119 1000
R1120 1000
R1121 1000
R1122 1000
R1123 1000
R1124 1000
R1125 1000
R1126 1000
R1127 1000
R1128 1000
R1129 1000
R1130 1000
R1131 1000
R1132 1000
R1133 1000
R1134 1000
R1135 1000
R1136 1000
R1137 1000
R1138 1000
R1139 1000
R1140 1000
R1141 1000
R1142 1000
R1143 1000
R1144 1000
R1145 1000
R1146 1000
R1147 1000
R1148 1000
R1149 1000
R1150 1000
R1151 1000
R1152 1000
R1153 1000
R1154 1000
R1155 1000
R1156 1000
R1157 1000
R1158 1000
R1159 1000
R1160 1000
R1161 1000
R1162 1000
R1163 1000
R1164 1000
R1165 1000
R1166 1000
R1167 1000
R1168 1000
R1169 1000
R1170 1000
R1171 1000
R1172 1000
R1173 1000
R1174 1000
R1175 1000
R1176 1000
R1177 1000
R1178 1000
R1179 1000
R1180 1000
R1181 1000
R1182 1000
R1183 1000
R1184 1000
R1185 1000
R1186 1000
R1187 1000
R1188 1000
R1189 1000
R1190 1000
R1191 1000
R1192 1000
R1193 1000
R1194 1000
R1195 1000
R1196 1000
R1197 1000
R1198 1000
R1199 1000
R1200 1000
R1201 1000
R1202 1000
R1203 1000
R1204 1000
R1205 1000
R1206 1000
R1207 1000
R1208 1000
R1209 1000
R1210 1000
R1211 1000
R1212 1000
R1213 1000
R1214 1000
R1215 1000
R1216 1000
R1217 1000
R1218 1000
R1219 1000
R1220 1000
R1221 1000
R1222 1000
R1223 1000
R1224 1000
R1225 1000
R1226 1000
R1227 1000
R1228 1000
R1229 1000
R1230 1000
R1231 1000
R1232 1000
R1233 1000
R1234 1000
R1235 1000
R1236 1000
R1237 1000
R1238 1000
R1239 1000
R1240 1000
R1241 1000
R1242 1000
R1243 1000
R1244 1000
R1245 1000
R1246 1000
R1247 1000
R1248 1000
R1249 1000
R1250 1000
R1251 1000
R1252 1000
R1253 1000
R1254 1000
R1255 1000
R1256 1000
R1257 1000
R1258 1000
R1259 1000
R1260 1000
R1261 1000
R1262 1000
R1263 1000
R1264 1000
R1265 1000
R1266 1000
R1267 1000
R1268 1000
R1269 1000
R1270 1000
R1271 1000
R1272 1000
R1273 1000
R1274 1000
R1275 1000
R1276 1000
R1277 1000
R1278 1000
R1279 1000
R1280 1000
R1281 1000
R1282 1000
R1283 1000
R1284 1000
R1285 1000
R1286 1000
R1287 1000
R1288 1000
R1289 1000
R1290 1000
R1291 1000
R1292 1000
R1293 1000
R1294 1000
R1295 1000
R1296 1000
R1297 1000
R1298 1000
R1299 1000
R1300 1000
R1301 1000
R1302 1000
R1303 1000
R1304 1000
R1305 1000
R1306 1000
R1307 1000
R1308 1000
R1309 1000
R1310 1000
R1311 1000
R1312 1000
R1313 1000
R1314 1000
R1315 1000
R1316 1000
R1317 1000
R1318 1000
R1319 1000
R1320 1000
R1321 1000
R1322 1000
R1323 1000
R1324 1000
R1325 1000
R1326 1000
R1327 1000
R1328 1000
R1329 1000
R1330 1000
R1331 1000
R1332 1000
R1333 1000
R1334 1000
R1335 1000
R1336 1000
R1337 1000
R1338 1000
R1339 1000
R1340 1000
R1341 1000
R1342 1000
R1343 1000
R1344 1000
R1345 1000
R1346 1000
R1347 1000
R1348 1000
R1349 1000
R1350 1000
R1351 1000
R1352 1000
R1353 1000
R1354 1000
R1355 1000
R1356 1000
R1357 1000
R1358 1000
R1359 1000
R1360 1000
R1361 1000
R1362 1000
R1363 1000
R1364 1000
R1365 1000
R1366 1000
R1367 1000
R1368 1000
R1369 1000
R1370 1000
R1371 1000
R1372 1000
R1373 1000
R1374 1000
R1375 1000
R1376 1000
R1377 1000
R1378 1000
R1379 1000
R1380 1000
R1381 1000
R1382 1000
R1383 1000
R1384 1000
R1385 1000
R1386 1000
R1387 1000
R1388 1000
R1389 1000
R1390 1000
R1391 1000
R1392 1000
R1393 1000
R1394 1000
R1395 1000
R1396 1000
R1397 1000
R1398 1000
R1399 1000
R1400 1000
R1401 1000
R1402 1000
R1403 1000
R1404 1000
R1405 1000
R1406 1000
R1407 1000
R1408 1000
R1409 1000
R1410 1000
R1411 1000
R1412 1000
R1413 1000
R1414 1000
R1415 1000
R1416 1000
R1417 1000
R1418 1000
R1419 1000
R1420 1000
R1421 1000
R1422 1000
R1423 1000
R1424 1000
R1425 1000
R1426 1000
R1427 1000
R1428 1000
R1429 1000
R1430 1000
R1431 1000
R1432 1000
R1433 1000
R1434 1000
R1435 1000
R1436 1000
R1437 1000
R1438 1000
R1439 1000
R1440 1000
R1441 1000
R1442 1000
R1443 1000
R1444 1000
R1445 1000
R1446 1000
R1447 1000
R1448 1000
R1449 1000
R1450 1000
R1451 1000
R1452 1000
R1453 1000
R1454 1000
R1455 1000
R1456 1000
R1457 1000
R1458 1000
R1459 1000
R1460 1000
R1461 1000
R1462 1000
R1463 1000
R1464 1000
R1465 1000
R1466 1000
R1467 1000
R1468 1000
R1469 1000
R1470 1000
R1471 1000
R1472 1000
R1473 1000
R1474 1000
R1475 1000
R1476 1000
R1477 1000
R1478 1000
R1479 1000
R1480 1000
R1481 1000
R1482 1000
R1483 1000
R1484 1000
R1485 1000
R1486 1000
R1487 1000
R1488 1000
R1489 1000
R1490 1000
R1491 1000
R1492 1000
R1493 1000
R1494 1000
R1495 1000
R1496 1000
R1497 1000
R1498 1000
R1499 1000
R1500 1000
R1501 1000
R1502 1000
R1503 1000
R1504 1000
R1505 1000
R1506 1000
R1507 1000
R1508 1000
R1509 1000
R1510 1000
R1511 1000
R1512 1000
R1513 1000
R1514 1000
R1515 1000
R1516 1000
R1517 1000
R1518 1000
R1519 1000
R1520 1000
R1521 1000
R1522 1000
R1523 1000
R1524 1000
R1525 1000
R1526 1000
R1527 1000
R1528 1000
R1529 1000
R1530 1000
R1531 1000
R1532 1000
R1533 1000
R1534 1000
R1535 1000
R1536 1000
R1537 1000
R1538 1000
R1539 1000
R1540 1000
R1541 1000
R1542 1000
R1543 1000
R1544 1000
R1545 1000
R1546 1000
R1547 1000
R1548 1000
R1549 1000
R1550 1000
R1551 1000
R1552 1000
R1553 1000
R1554 1000
R1555 1000
R1556 1000
R1557 1000
R1558 1000
R1559 1000
R1560 1000
R1561 1000
R1562 1000
R1563 1000
R1564 1000
R1565 1000
R1566 1000
R1567 1000
R1568 1000
R1569 1000
R1570 1000
R1571 1000
R1572 1000
R1573 1000
R1574 1000
R1575 1000
R1576 1000
R1577 1000
R1578 1000
R1579 1000
R1580 1000
R1581 1000
R1582 1000
R1583 1000
R1584 1000
R1585 1000
R1586 1000
R1587 1000
R1588 1000
R1589 1000
R1590 1000
R1591 1000
R1592 1000
R1593 1000
R1594 1000
R1595 1000
R1596 1000
R1597 1000
R1598 1000
R1599 1000
R1600 1000
R1601 1000
R1602 1000
R1603 1000
R1604 1000
R1605 1000
R1606 1000
R1607 1000
R1608 1000
R1609 1000
R1610 1000
R1611 1000
R1612 1000
R1613 1000
R1614 1000
R1615 1000
R1616 1000
R1617 1000
R1618 1000
R1619 1000
R1620 1000
R1621 1000
R1622 1000
R1623 1000
R1624 1000
R1625 1000
R1626 1000
R1627 1000
R1628 1000
R1629 1000
R1630 1000
R1631 1000
R1632 1000
R1633 1000
R1634 1000
R1635 1000
R1636 1000
R1637 1000
R1638 1000
R1639 1000
R1640 1000
R1641 1000
R1642 1000
R1643 1000
R1644 1000
R1645 1000
R1646 1000
R1647 1000
R1648 1000
R1649 1000
R1650 1000
R1651 1000
R1652 1000
R1653 1000
R1654 1000
R1655 1000
R1656 1000
R1657 1000
R1658 1000
R1659 1000
R1660 1000
R1661 1000
R1662 1000
R1663 1000
R1664 1000
R1665 1000
R1666 1000
R1667 1000
R1668 1000
R1669 1000
R1670 1000
R1671 1000
R1672 1000
R1673 1000
R1674 1000
R1675 1000
R1676 1000
R1677 1000
R1678 1000
R1679 1000
R1680 1000
R1681 1000
R1682 1000
R1683 1000
R1684 1000
R1685 1000
R1686 1000
R1687 1000
R1688 1000
R1689 1000
R1690 1000
R1691 1000
R1692 1000
R1693 1000
R1694 1000
R1695 1000
R1696 1000
R1697 1000
R1698 1000
R1699 1000
R1700 1000
R1701 1000
R1702 1000
R1703 1000
R1704 1000
R1705 1000
R1706 1000
R1707 1000
R1708 1000
R1709 1000
R1710 1000
R1711 1000
R1712 1000
R1713 1000
R1714 1000
R1715 1000
R1716 1000
R1717 1000
R1718 1000
R1719 1000
R1720 1000
R1721 1000
R1722 1000
R1723 1000
R1724 1000
R1725 1000
R1726 1000
R1727 1000
R1728 1000
R1729 1000
R1730 1000
R1731 1000
R1732 1000
R1733 1000
R1734 1000
R1735 1000
R1736 1000
R1737 1000
R1738 1000
R1739 1000
R1740 1000
R1741 1000
R1742 1000
R1743 1000
R1744 1000
R1745 1000
R1746 1000
R1747 1000
R1748 1000
R1749 1000
R1750 1000
R1751 1000
R1752 1000
R1753 1000
R1754 1000
R1755 1000
R1756 1000
R1757 1000
R1758 1000
R1759 1000
R1760 1000
R1761 1000
R1762 1000
R1763 1000
R1764 1000
R1765 1000
R1766 1000
R1767 1000
R1768 1000
R1769 1000
R1770 1000
R1771 1000
R1772 1000
R1773 1000
R1774 1000
R1775 1000
R1776 1000
R1777 1000
R1778 1000
R1779 1000
R1780 1000
R1781 1000
R1782 1000
R1783 1000
R1784 1000
R1785 1000
R1786 1000
R1787 1000
R1788 1000
R1789 1000
R1790 1000
R1791 1000
R1792 1000
R1793 1000
R1794 1000
R1795 1000
R1796 1000
R1797 1000
R1798 1000
R1799 1000
R1800 1000
R1801 1000
R1802 1000
R1803 1000
R1804 1000
R1805 1000
R1806 1000
R1807 1000
R1808 1000
R1809 1000
R1810 1000
R1811 1000
R1812 1000
R1813 1000
R1814 1000
R1815 1000
R1816 1000
R1817 1000
R1818 1000
R1819 1000
R1820 1000
R1821 1000
R1822 1000
R1823 1000
R1824 1000
R1825 1000
R1826 1000
R1827 1000
R1828 1000
R1829 1000
R1830 1000
R1831 1000
R1832 1000
R1833 1000
R1834 1000
R1835 1000
R1836 1000
R1837 1000
R1838 1000
R1839 1000
R1840 1000
R1841 1000
R1842 1000
R1843 1000
R1844 1000
R1845 1000
R1846 1000
R1847 1000
R1848 1000
R1849 1000
R1850 1000
R1851 1000
R1852 1000
R1853 1000
R1854 1000
R1855 1000
R1856 1000
R1857 1000
R1858 1000
R1859 1000
R1860 1000
R1861 1000
R1862 1000
R1863 1000
R1864 1000
R1865 1000
R1866 1000
R1867 1000
R1868 1000
R1869 1000
R1870 1000
R1871 1000
R1872 1000
R1873 1000
R1874 1000
R1875 1000
R1876 1000
R1877 1000
R1878 1000
R1879 1000
R1880 1000
R1881 1000
R1882 1000
R1883 1000
R1884 1000
R1885 1000
R1886 1000
R1887 1000
R1888 1000
R1889 1000
R1890 1000
R1891 1000
R1892 1000
R1893 1000
R1894 1000
R1895 1000
R1896 1000
R1897 1000
R1898 1000
R1899 1000
R1900 1000
R1901 1000
R1902 1000
R1903 1000
R1904 1000
R1905 1000
R1906 1000
R1907 1000
R1908 1000
R1909 1000
R1910 1000
R1911 1000
R1912 1000
R1913 1000
R1914 1000
R1915 1000
R1916 1000
R1917 1000
R1918 1000
R1919 1000
R1920 1000
R1921 1000
R1922 1000
R1923 1000
R1924 1000
R1925 1000
R1926 1000
R1927 1000
R1928 1000
R1929 1000
R1930 1000
R1931 1000
R1932 1000
R1933 1000
R1934 1000
R1935 1000
R1936 1000
R1937 1000
R1938 1000
R1939 1000
R1940 1000
R1941 1000
R1942 1000
R1943 1000
R1944 1000
R1945 1000
R1946 1000
R1947 1000
R1948 1000
R1949 1000
R1950 1000
R1951 1000
R1952 1000
R1953 1000
R1954 1000
R1955 1000
R1956 1000
R1957 1000
R1958 1000
R1959 1000
R1960 1000
R1961 1000
R1962 1000
R1963 1000
R1964 1000
R1965 1000
R1966 1000
R1967 1000
R1968 1000
R1969 1000
R1970 1000
R1971 1000
R1972 1000
R1973 1000
R1974 1000
R1975 1000
R1976 1000
R1977 1000
R1978 1000
R1979 1000
R1980 1000
R1981 1000
R1982 1000
R1983 1000
R1984 1000
R1985 1000
R1986 1000
R1987 1000
R1988 1000
R1989 1000
R1990 1000
R1991 1000
R1992 1000
R1993 1000
R1994 1000
R1995 1000
R1996 1000
R1997 1000
R1998 1000
R1999 1000
R2000 1000
R2001 1000
R2002 1000
R2003 1000
R2004 1000
R2005 1000
R2006 1000
R2007 1000
R2008 1000
R2009 1000
R2010 1000
R2011 1000
R2012 1000
R2013 1000
R2014 1000
R2015 1000
R2016 1000
R2017 1000
R2018 1000
R2019 1000
R2020 1000
R2021 1000
R2022 1000
R2023 1000
R2024 1000
R2025 1000
R2026 1000
R2027 1000
R2028 1000
R2029 1000
R2030 1000
R2031 1000
R2032 1000
R2033 1000
R2034 1000
R2035 1000
R2036 1000
R2037 1000
R2038 1000
R2039 1000
R2040 1000
R2041 1000
R2042 1000
R2043 1000
R2044 1000
R2045 1000
R2046 1000
R2047 1000
R2048 1000
R2049 1000
R2050 1000
R2051 1000
R2052 1000
R2053 1000
R2054 1000
R2055 1000
R2056 1000
R2057 1000
R2058 1000
R2059 1000
R2060 1000
R2061 1000
R2062 1000
R2063 1000
R2064 1000
R2065 1000
R2066 0
R2067 0
R2068 0
R2069 0
R2070 0
R2071 0
R2072 0
R2073 1000
R2074 1000
R2075 1000
R2076 1000
R2077 1000
R2078 1000
R2079 1000
R2080 1000
R2081 1000
R2082 1000
R2083 1000
R2084 1000
R2085 1000
R2086 1000
R2087 1000
R2088 1000
R2089 1000
R2090 1000
R2091 1000
R2092 1000
R2093 1000
R2094 1000
R2095 1000
R2096 1000
R2097 1000
R2098 0
R2099 0
R2100 1000
R2101 1000
R2102 1000
R2103 1000
R2104 1000
R2105 1000
R2106 1000
R2107 1000
R2108 1000
R2109 1000
R2110 1000
R2111 1000
R2112 1000
R2113 1000
R2114 1000
R2115 1000
R2116 1000
R2117 1000
R2118 1000
R2119 1000
R2120 1000
R2121 1000
R2122 1000
R2123 1000
R2124 1000
R2125 1000
R2126 1000
R2127 1000
R2128 1000
R2129 1000
R2130 1000
R2131 1000
R2132 1000
R2133 1000
R2134 1000
R2135 1000
R2136 1000
R2137 1000
R2138 1000
R2139 1000
R2140 1000
R2141 1000
R2142 1000
R2143 1000
R2144 1000
R2145 1000
R2146 1000
R2147 0
R2148 0
R2149 0
R2150 1000
R2151 1000
R2152 1000
R2153 1000
R2154 1000
R2155 1000
R2156 1000
R2157 1000
R2158 1000
R2159 1000
R2160 1000
R2161 1000
R2162 1000
R2163 1000
R2164 1000
R2165 1000
R2166 1000
R2167 1000
R2168 1000
R2169 1000
R2170 1000
R2171 1000
R2172 1000
R2173 1000
R2174 1000
R2175 1000
R2176 1000
R2177 1000
R2178 1000
R2179 1000
R2180 1000
R2181 1000
R2182 1000
R2183 1000
R2184 1000
R2185 1000
R2186 1000
R2187 1000
R2188 1000
R2189 1000
R2190 1000
R2191 1000
R2192 1000
R2193 1000
R2194 1000
R2195 1000
R2196 1000
R2197 1000
R2198 1000
R2199 1000
R2200 1000
R2201 1000
R2202 1000
R2203 1000
R2204 1000
R2205 1000
R2206 1000
R2207 1000
R2208 1000
R2209 1000
R2210 1000
R2211 1000
R2212 1000
R2213 1000
R2214 1000
R2215 1000
R2216 1000
R2217 1000
R2218 1000
R2219 1000
R2220 1000
R2221 1000
R2222 1000
R2223 1000
R2224 1000
R2225 1000
R2226 1000
R2227 1000
R2228 1000
R2229 1000
R2230 1000
R2231 1000
R2232 1000
R2233 1000
R2234 1000
R2235 1000
R2236 1000
R2237 1000
R2238 1000
R2239 1000
R2240 1000
R2241 1000
R2242 1000
R2243 1000
R2244 1000
R2245 1000
R2246 1000
R2247 1000
R2248 1000
R2249 1000
R2250 1000
R2251 1000
R2252 1000
R2253 1000
R2254 1000
R2255 1000
R2256 1000
R2257 1000
R2258 1000
R2259 1000
R2260 1000
R2261 1000
R2262 1000
R2263 1000
R2264 1000
R2265 1000
R2266 1000
R2267 1000
R2268 1000
R2269 1000
R2270 1000
R2271 1000
R2272 1000
R2273 1000
R2274 1000
R2275 1000
R2276 1000
R2277 1000
R2278 1000
R2279 1000
R2280 1000
R2281 1000
R2282 1000
R2283 1000
R2284 1000
R2285 1000
R2286 1000
R2287 0
R2288 0
R2289 0
R2290 1000
R2291 0
R2292 0
R2293   0
R2294 1000
R2295 1000
R2296 1000
R2297 1000
R2298 1000
R2299 1000
R2300 1000
R2301 1000
R2302 1000
R2303 1000
R2304 1000
R2305 1000
R2306 1000
R2307 1000
R2308 1000
R2309 1000
R2310 1000
R2311 1000
R2312 1000
R2313 1000
R2314 1000
R2315 1000
R2316 1000
R2317 1000
R2318 1000
R2319 1000
R2320 1000
R2321 1000
R2322 1000
R2323 1000
R2324 1000
R2325 1000
R2326 1000
R2327 1000
R2328 1000
R2329 1000
R2330 1000
R2331 1000
R2332 1000
R2333 1000
R2334 1000
R2335 1000
R2336 1000
R2337 1000
R2338 1000
R2339 1000
R2340 1000
R2341 1000
R2342 1000
R2343 1000
R2344 1000
R2345 1000
R2346 1000
R2347 1000
R2348 1000
R2349 1000
R2350 1000
R2351 1000
R2352 1000
R2353 1000
R2354 1000
R2355 1000
R2356 1000
R2357 1000
R2358 1000
R2359 1000
R2360 1000
R2361 1000
R2362 1000
R2363 1000
R2364 1000
R2365 1000
R2366 1000
R2367 1000
R2368 1000
R2369 1000
R2370 1000
R2371 1000
R2372 1000
R2373 1000
R2374 1000
R2375 1000
R2376 1000
R2377 1000
R2378 1000
R2379 1000
R2380 1000
R2381 1000
R2382 1000
R2383 1000
R2384 1000
R2385 1000
R2386 1000
R2387 1000
R2388 1000
R2389 1000
R2390 1000
R2391 1000
R2392 1000
R2393 1000
R2394 1000
R2395 1000
R2396 1000
R2397 1000
R2398 1000
R2399 1000
R2400 1000
R2401 1000
R2402 1000
R2403 1000
R2404 1000
R2405 1000
R2406 1000
R2407 1000
R2408 1000
R2409 1000
R2410 1000
R2411 1000
R2412 1000
R2413 1000
R2414 1000
R2415 1000
R2416 1000
R2417 1000
R2418 1000
R2419 1000
R2420 1000
R2421 1000
R2422 1000
R2423 1000
R2424 1000
R2425 1000
R2426 1000
R2427 1000
R2428 1000
R2429 1000
R2430 1000
R2431 1000
R2432 1000
R2433 1000
R2434 1000
R2435 1000
R2436 1000
R2437 1000
R2438 1000
R2439 1000
R2440 1000
R2441 1000
R2442 1000
R2443 1000
R2444 1000
/

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

file results /FIRST_ATTEMPT.csv/;

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