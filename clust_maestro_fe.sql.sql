/*************************** FE SEGMENTOS ***************************************
  
Portafolio recomendado por segmento

***********************************************************************************/
create or replace view sandbox_jarevalo.clust_maestro_fe as
with 
  maestro_fe as (
    select 
      articulokey
      ,articuloid
      ,nombrearticulo 
      ,formatomkt
      ,marcamkt
      ,sabor
      ,endulzante
      ,familia
      ,categoriamkt
      ,case 
      --SSD
      	when formatomkt like 'RGB 350%' and marcamkt like '010-COCA%' then 'CC_rgb350'
      	when formatomkt like 'RGB 350%' and marcamkt like '020-COCA%' then 'CCL_rgb350'
      	when formatomkt like 'RGB 350%' and marcamkt like '040-COCA%' then 'CCSA_rgb350'
      	when formatomkt like 'RGB 350%' and marcamkt like '070-FANTA%' and endulzante like '010-CON%' then 'FA_rgb350' 
      	when formatomkt like 'RGB 350%' and marcamkt like '070-FANTA%' and endulzante like '020-BAJO%' then 'FABA_rgb350' 
      	when formatomkt like 'RGB 350%' and marcamkt like '110-SPRITE%' and endulzante like '010-CON%' then 'SP_rgb350'
      	when formatomkt like 'RGB 350%' and marcamkt like '110-SPRITE%' and endulzante like '020-BAJO%' then 'SPBA_rgb350'
      	when formatomkt like 'RGB 350%' and marcamkt like '120-SPRITE%' then 'SPZ_rgb350'
      	when formatomkt like 'RGB 350%' and marcamkt like '190-NORDIC%' and sabor like '140-GINGER%' then 'ND_rgb350' 
      	when formatomkt like 'RGB 350%' and marcamkt like '190-NORDIC%' and sabor like '150-TONICA%' then 'NDT_rgb350'  
      	
      	when formatomkt like 'RP 1500%' and marcamkt like '010-COCA%' then 'CC_rp1500'
      	when formatomkt like 'RP 1500%' and marcamkt like '040-COCA%' then 'CCSA_rp1500'
      	when formatomkt like 'RP 1500%' and marcamkt like '070-FANTA%' then 'FA_rp1500'
      	when formatomkt like 'RP 1500%' and marcamkt like '110-SPRITE%' then 'SP_rp1500'
      	
      	when formatomkt like 'RGB 1000%' and marcamkt like '010-COCA%' then 'CC_rgb1000'
      	when formatomkt like 'RGB 1000%' and marcamkt like '040-COCA%' then 'CCSA_rgb1000'
      	when formatomkt like 'RGB 1000%' and marcamkt like '070-FANTA%' then 'FA_rgb1000'
      	when formatomkt like 'RGB 1000%' and marcamkt like '110-SPRITE%' then 'SP_rgb1000'
      	
      	when formatomkt like 'LATA 350%' and marcamkt like '010-COCA%' then 'CC_l350'
      	when formatomkt like 'LATA 350%' and marcamkt like '020-COCA%' then 'CCL_l350'
      	when formatomkt like 'LATA 350%' and marcamkt like '040-COCA%' then 'CCSA_l350'
      	when formatomkt like 'LATA 350%' and marcamkt like '%FANTA%' and endulzante like '030-SIN%' then 'FASA_l350' 
      	when formatomkt like 'LATA 350%' and marcamkt like '%FANTA%' and endulzante like '010-CON%' then 'FA_l350' 
      	when formatomkt like 'LATA 350%' and marcamkt like '190-NORDIC%' and sabor like '140-GINGER%'  then 'ND_l350' 
      	when formatomkt like 'LATA 350%' and marcamkt like '190-NORDIC%' and sabor like '%ZERO%' then 'NDZ_l350' 
      	when formatomkt like 'LATA 350%' and marcamkt like '120-SPRITE ZERO%' then 'SPZ_l350' 
      	
      	when formatomkt like 'LATA 220%' and marcamkt like '190-NORDIC%' then 'ND_l220'
		when formatomkt like 'LATA 220%' and marcamkt like '020-COCA%' then 'CCL_l220'
		when formatomkt like 'LATA 220%' and marcamkt like '460-COCA%' then 'CCENERGY_l220'
   	 	when formatomkt like 'LATA 220%' and marcamkt like '010-COCA%' then 'CC_l220'
    	when formatomkt like 'LATA 220%' and marcamkt like '110-SPRITE%' then 'SP_l220'
    	when formatomkt like 'LATA 220%' and marcamkt like '080-FANTA%' then 'FAZ_l220'
    	when formatomkt like 'LATA 220%' and marcamkt like '040-COCA%' then 'CCSA_l220'
    	when formatomkt like 'LATA 220%' and marcamkt like '120-SPRITE%' then 'SPZ_l220'
    	when formatomkt like 'LATA 220%' and marcamkt like '070-FANTA%' then 'FA_l220'
    	
    	when formatomkt like 'PET 591%' and marcamkt like '010-COCA%' then 'CC_pet591'
    	when formatomkt like 'PET 591%' and marcamkt like '020-COCA%' then 'CCL_pet591'
    	when formatomkt like 'PET 591%' and marcamkt like '040-COCA%' then 'CCSA_pet591'
    	when formatomkt like 'PET 591%' and marcamkt like '070-FANTA%' then 'FA_pet591'
    	when formatomkt like 'PET 591%' and marcamkt like '080-FANTA%' then 'FAZ_pet591'
    	when formatomkt like 'PET 591%' and marcamkt like '110-SPRITE%' then 'SP_pet591'
    	when formatomkt like 'PET 591%' and marcamkt like '120-SPRITE%' then 'SPZ_pet591'
    	
    	when formatomkt like 'PET 500%' and marcamkt like '190-NORDIC%' and endulzante like '010%' then 'ND_pet500'
    	when formatomkt like 'PET 500%' and marcamkt like '190-NORDIC%' and endulzante like '030%' then 'NDZ_pet500'
    	
    	when categoriamkt like '100-SSD%' and marcamkt like '%ICE%' then 'RTD_ICE'
    	    	
      --AGUAS 
      	when formatomkt like '%VNR 330%' and marcamkt like '230-VITAL%' and sabor like '170%' then 'VIT_SG_330'
      	when formatomkt like '%VNR 330%' and marcamkt like '230-VITAL%' and sabor like '160%' then 'VIT_CG_330'
      	when formatomkt like '%PET 600%' and marcamkt like '230-VITAL%' then 'VIT_pet600'
      	when formatomkt like '%PET 600%' and marcamkt like '230-VITAL%' and sabor like '%S/G%' then 'VIT_pet600_SG'
      	when formatomkt like '%PET 600%' and marcamkt like '230-VITAL%' and sabor like '%C/G%' then 'VIT_pet600_CG'
      	when formatomkt like '%PET 500%' and marcamkt like '300-BENED%' and sabor like '170%' then 'BEN_SG_500'
      	when formatomkt like '%PET 500%' and marcamkt like '300-BENED%' and sabor like '160%' then 'BEN_CG_500'
      	when formatomkt like '%PET 500%' and marcamkt like '460-SMART%' and sabor like '%S/G%' then 'SM_SG_500'
      	when formatomkt like '%PET 500%' and marcamkt like '460-SMART%' and sabor like '%C/G%' then 'SM_CG_500'
      	when formatomkt like '%PET 500%' and marcamkt like '295-AQUAR%' then 'AQUA_500'
      	when formatomkt like '%PET 500%' and marcamkt like '460-BENED%' then 'BEN_SAB_500'
      	
      --ISOTONICAS
      	when marcamkt like '%POWERADE%' then 'POWERADE'
      	when marcamkt like '%VITAMIN%' then 'VITAMIN'
      	
      --NECTAR
        when marcamkt like '460-ANDINA%' and sabor like '210-DUR%' and formatomkt like 'RGB 350%' then 'ADV_DUR_rgb350'	
      	when marcamkt like '460-ANDINA%' and sabor like '020-NAR%' and formatomkt like 'PET 1500%' then 'ADV_NAR_pet1500'
      	when marcamkt like '460-ANDINA%' and formatomkt like 'VNR 300%' and nombrearticulo like '%VBA%' then 'ADV_VBA_300'
      	when marcamkt like '%GUALLA%' and formatomkt like 'VNR 250%' then 'JUG_GUALL'
      	
      --ENERGETICA
      	when marcamkt like '460-MONSTER%' and formatomkt like 'LATA 310%' then 'MONSTER_l310'
      	
      --GUALLARAUCO	
      	when familia like 'GUALLARAUCO%' and categoriamkt like '300-CONGELADOS%' then 'FC' 
        
      --DIAGEO
      	when familia like 'DIAGEO%'	and marcamkt like '460-JW RED%' then 'JWR' 
      	when familia like 'DIAGEO%'	and marcamkt like '310-JW BLACK%' then 'JWB' 
      	when familia like 'DIAGEO%'	and marcamkt like '460-TANQUERAY%' then 'TQ' 
      	when familia like 'DIAGEO%'	and marcamkt like '460-BAILEYS%' then 'BAILEYS' 
      	when familia like 'DIAGEO%'	and marcamkt like '460-VAT69%' then 'VAT69'
      	when familia like 'DIAGEO%'	and marcamkt like '460-SMIR%' then 'SMIR'
      	when familia like 'DIAGEO%'	and marcamkt like '460-SANDY%' then 'SANDY'
      	when familia like 'DIAGEO%'	and marcamkt like '%JW%' and formatomkt like 'VNR 200%' then 'JW_mini'
      	when familia like 'DIAGEO%'	and marcamkt like '%TANQUE%' and formatomkt like 'VNR 275%' then 'TQ_mini'
      	
      --RON
      	when marcamkt like '460-MADDERO%' then 'MADDERO'	
      	
      --COCTEL
      	when familiamkt like 'COCTEL%' and subcategoriamkt like '202-ICE%' then 'COCTEL_ICE'	
      	when familiamkt like '%ESPUMANTE%' then 'ESPUMANTE'
      	when familiamkt like '%ESPUMANTE%' and marcamkt like '460-SENSUS%' then 'SENSUS'
      	when familiamkt like '%ESPUMANTE%' and marcamkt like '460-VFA%' then 'VFA'
      	
      --PISCOS
      	when familiamkt like 'PISCO%' and marcamkt like '460-ALTO DEL CARMEN 35%' then 'ADC_35'
      	when familiamkt like 'PISCO%' and nombrearticulo like 'ADC TRAN%' then 'ADC_TRAN'
      	when familiamkt like 'PISCO%' and nombrearticulo like 'ADC RES%'  then 'ADC_RES'
      	when familiamkt like 'PISCO%' and nombrearticulo like 'ADC ENV%'  then 'ADC_ENV'
      	when familiamkt like 'PISCO%' and nombrearticulo like 'BRUJA%' then 'BRUJAS'
      	when familiamkt like 'PISCO%' and marcamkt  like '460-HAC%' then 'HACIENDA'
      	when familiamkt like 'PISCO%' and marcamkt  like '460-MONTE%' then 'MONTEFRAILE'
      	when familiamkt like 'PISCO%' and nombrearticulo  like 'ADC%' and subcategoriamkt like '%PREMIUM%' then 'ADC_PREMIUM'
      	when familiamkt like 'PISCO%' and nombrearticulo like 'ADC%' and formatomkt like 'VNR 50 %' then 'ADC_mini'
      	when marcamkt like '460-CAPEL%' then 'CAPEL'
      	when marcamkt like '460-CAPEL%'	and formatomkt like 'VNR 50 %' then 'CAPEL_mini'
      	when marcamkt like '460-ARTESANOS%' then 'ARTESANOS'
      	
      	
      --CAFE
      	when marcamkt like '%BLAK%' and tipo_articulo like 'LIQ%' then 'BLAK'	
      	
      	else null end articulo_fe
    from
      embonor_aa_curated.dim_articulo 
    where 
    	date_partition = (select max(date_partition) from embonor_aa_curated.dim_articulo)    	
    )
select 
  *
from 
  maestro_fe
where articulo_fe is not null;



