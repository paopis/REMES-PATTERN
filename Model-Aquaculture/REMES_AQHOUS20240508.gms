* #############################################################
*
* Copyright 2025 Norwegian University of Science and Technology
*                and SINTEF
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* #############################################################

$Ontext
PATTERN model version of REMES-Norway.
$Offtext

$ontext
Baseline assumption
1 - Extraction of oil decrease by 1.9% per year after 2021 (4th period). Gas extraction stays at 2007
2 - GDP/pers 2018 -> 250  GDP/pers 2050 ->400 (100 in 1970) (yearly growth = 1.48%)
3 - Population growth from 5.368 (2020) to 6.074 (2060) --> 0.31% yearly
 --> total GDP growth is (1.0148*1.0031)^(2050-2018)= 1.77;
     yearly GDP growth is 1.79%.
TARGET in baseline "relgdp" (the last display of the program) should be 1.77
4 - Power consumption increase is 0.54% per year (https://www.nve.no/energy-consumption-and-efficiency/energy-consumption-in-norway/electricity-consumption-in-norway-towards-2030/gross-electricity-consumption/)
TARGET is "power" should be 1.19 (the last display of the program)

5 - hydrogen exports push speed in baseline - 0; in counterfacutal 0.015
-- Perspektivmeldingen 2021 Eng
Emissions from 50 (2020) to 40 (2030).                 Figure 1.7
*oil extraction from 250 (2020) to 150 (2030) depleted PM09           Figure 3.8
oil extraction from 225 (2024) to 200 (2030)           PM21           Figure 3.8  --> 1,94% yearly decrease from 2024



800TWh is the max Gas extraction per year.

Assumptions
--
Emissions from 50 (2020) to 40 (2030).  2,2% yearly decrease - 50% cut in 2050
Perspektivmeldingen 2021 Eng Figure 1.7


GDP per capita
Perspektivmelding 2021                     Figure 1.2
Energy transition norway 2020 (DNV)        Page 12



Population growth from 5.368 (2020) to 6.074 (2060) --> 0,31% yearly (Main Alternative)
https://www.ssb.no/en/befolkning/befolkningsframskrivinger/statistikk/nasjonale-befolkningsframskrivinger

Population growth from 5.368 (2020) to 5.163 (2060) --> 0,0% yearly (Low Alternative)

Population growth from 5.368 (2020) to 7.081 (2060) --> 0,69% yearly (High Alternative)



Total Factor Productivity
1.6% per year                OECD Going for growth Norway 2017 (Table A.Growth).
The frontier productivity is decreased by a different percentage in every sector
The differentiation is according to --> The Norwegian productivity puzzle � not so puzzling after all?


Energy Consumption growth from 210 (2000) to 225 (2014)
https://www.nve.no/energy-consumption-and-efficiency/energy-consumption-in-norway/
0.49% growth per year
Electricity Consumption growth from 130 (2012) to 143 (2030)
https://www.nve.no/energy-consumption-and-efficiency/energy-consumption-in-norway/electricity-consumption-in-norway-towards-2030/gross-electricity-consumption/
0.54% growth per year
1.19 Target on "power"

Energy intensity
(1+Energy Consumption Growth)/(1+GDP growth)
(1+0.0049)/(1+0.0179)=0.9872
         --> -1.28% per year

0.86% per year                openENTRANCE calculations TNO


Pipelines and Gases
Pipelines Should be connected to H2 as much as they are connected to Natural Gas
the ratio of pipelines over gas for exports ranges between 2% and 5%. I will use 3% for pipelines/H2.


Mton CO2 in 2030 according to TIMES --> 15

Total Agriculture Value Added 128583
composed of: Crop and animal production, hunting and related service activities; Forestry and logging; FISing and aquaculture; Manufacture of food products, beverages and tobacco products; Manufacture of textiles, wearing apparel and leather products; Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials; Manufacture of paper and paper products
FISing and Aquaculture VA     45280
look at "sut_1600_2018.xlsx" from SSB


TRANSFERS FROM ABROAD TO THE GOVERNMENT
42% of these transfers can be linked to the Governmental Pension Fund
I assume that this 42% does not grow anymore after 2030 due to the lack of capital increase linked to the oil and gas phaseout.


WARNINGS!
too heavy on energy intensity -> fuel intensive sector activity level skyrockets
too low on energy intensity -> very high increase in usage of electricity. (124% increase in 2050 in Reference)
--> Possible Solution: lower Elasticity for Energy nest. IT WORKS!
-   In Reference Scenario: the extraction limits pushes up the mining activity level.
    This happens because iMIN should be extracting other minerals, but if we look at the data the largest output is oil and gas.
    If we reduce the extractions from iCOIL we need to prevent iMIN to cover for the loss in production from these sectors.
--> Possible Solution. Include a 0.025 decrease in oil and gas exports (gdr) also in the Reference scenario.

CaseStudy
* 0 - Test
* 1 - Reference
* 2 - H2 development in green transition
* 3 - H2 development in green transition + Effects of V2G
* 4 - Incremental Innovation Pathway
* 5 - Technological Change Pathway      H2
* 6 - Social Change Pathway
* 7 - Radical Transformative Pathway    H2 (only electrolysis)
* 8 - ZEROTLS
* 9 - REFERENCE (the one with TLS)
* 10 - MAXTLS
* 11 - MINTLS
* 12 - REDDED (Reduced deadliness for fish in aquaculture)



recalibrations

1 - in this version I have calibrated CaseStudy 1 to get the normal sales growth of fish of 0.097 per year
2 - as a second step, I have calibrated the growth of sales to the yearly rate after TLS is introduced (2017), with a value of 0.037
3 - In the working case for TLS we assume that the standard growth takes over after 2024
4 - In the Reference TLS we keep having the growth compatible with todays trend 0.037
5 - As a third step the sales growth is calibrated with the yearly rate between 2010 and 2017 (when the sea lice problem has appeared) - value 0.028
These values are calculated in the Excel File Productivity calculations and new cases.xlsx
6 - in the no TLS case Case Study 1 I have recalibrated the growth of sales to the growth with lice, but without TLS

new CaseStudy naming
1 - noTLS
9 - REFTLS
10 - WTLS (as for Working TLS) - in this case after 2024 the sector picks back the old growth of sales from before 2010


BRIDGING
For noTLS (1) modify the productivity for the entire horizon
For REFTLS(9) modify the productivity for the entire horizon

$offtext



*Switches
$set GOV 2
$set LMKT 1

*for local (1) for national (2)

*Chose the numeraire for the model
scalar num /1/;
scalar CCS_S /100/;

* Define the  case study to run
$set CaseStudy 9



* this works well...
$ifthen %CaseStudy%==0
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /0/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /0/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0/;
scalar idr investment in fuels decrease rate /0/;
scalar odc oil extraction decrease /0/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /0/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /0/;
scalar TFP total factor productivity /0/;
*scalar TFP total factor productivity /0.0075/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

* REFerence scenario
$ifthen %CaseStudy%==1
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /1/;
* the next line is used to calibrate the standard growth to be picked up by the TLS in the working case
* scalar growGG growth in productivity in aquaculture /0.06/;
* the next line is calibrated to obtain the growth with lice but without TLS
*scalar growGG growth in productivity in aquaculture /0.003/;
*scalar growGG growth in productivity in aquaculture /0.023225586/;
*scalar growGG growth in productivity in aquaculture /0.022641/;
*scalar growGG growth in productivity in aquaculture /0.02322/;
scalar growGG growth in productivity in aquaculture /0.023217/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /0/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /1/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.045/;
scalar TFP total factor productivity /0.0096/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif


$ifthen %CaseStudy%==2
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.1/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /1/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /1/;
scalar LDD light duty vehicles development /1/;
scalar HDD heavy duty vehicles development /1/;
scalar RTD railway transport development /1/;
scalar MTD maritime transport fleet development /1/;
scalar TR  transport demand reduction /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.2/;
scalar idr investment in fuels decrease rate /0.2/;
scalar odc oil extraction decrease /0.04/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /-0.0128/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.04/;
scalar TFP total factor productivity /0.0086/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

$ifthen %CaseStudy%==3
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.1/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /1/;
scalar STD service technical development /1/;
scalar PTD power sector technical development /1/;
scalar LDD light duty vehicles development /1/;
scalar HDD heavy duty vehicles development /1/;
scalar RTD railway transport development /1/;
scalar MTD maritime transport fleet development /1/;
scalar TR  transport demand reduction /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.2/;
scalar idr investment in fuels decrease rate /0.2/;
scalar odc oil extraction decrease /0.04/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /-0.0128/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.04/;
scalar TFP total factor productivity /0.0086/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /1/;
scalar CCSi CCS in industry /0/;
$endif

* INCremental Innovation Pathway
$ifthen %CaseStudy%==4
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.1/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /1/;
scalar STD service technical development /1/;
scalar PTD power sector technical development /1/;
scalar LDD light duty vehicles development /1/;
scalar HDD heavy duty vehicles development /1/;
scalar RTD railway transport development /1/;
scalar MTD maritime transport fleet development /1/;
scalar ATD air transport fleet development /1/;
scalar TR  transport demand reduction /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar ubpp upper bound on power capacity /0/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
* rerun with gdr=0.025 as for the reference. IN INC O&G are still global
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /-0.0128/;
scalar BosE Boost energy intensity after 2021 /1/;
scalar elint yearly electricity requirement change /-0.04/;
scalar TFP total factor productivity /0.0086/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /1/;
$endif

* TEChnological Change Pathway
$ifthen %CaseStudy%==5
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.1/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /1/;
scalar STD service technical development /1/;
scalar PTD power sector technical development /1/;
scalar LDD light duty vehicles development /1/;
scalar HDD heavy duty vehicles development /1/;
scalar RTD railway transport development /1/;
scalar MTD maritime transport fleet development /1/;
scalar ATD air transport fleet development /1/;
scalar TR  transport demand reduction /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar ubpp upper bound on power capacity /0/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.1/;
scalar idr investment in fuels decrease rate /0.25/;
scalar odc oil extraction decrease /0.1/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /-0.0128/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.04/;
scalar TFP total factor productivity /0.0086/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /1/;
$endif

* SOCial Change Pathway
$ifthen %CaseStudy%==6
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.1/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /2/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /1/;
scalar STD service technical development /1/;
scalar PTD power sector technical development /1/;
scalar LDD light duty vehicles development /1/;
scalar HDD heavy duty vehicles development /1/;
scalar RTD railway transport development /1/;
scalar MTD maritime transport fleet development /1/;
scalar ATD air transport fleet development /1/;
scalar TR  transport demand reduction /1/;
scalar CE  Circular Economy (servitization) /1/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.1/;
scalar idr investment in fuels decrease rate /0.25/;
scalar odc oil extraction decrease /0.25/;
scalar ndc naturgas extraction decrease /0.25/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /-0.0128/;
scalar BosE Boost energy intensity after 2021 /1/;
scalar elint yearly electricity requirement change /-0.04/;
scalar TFP total factor productivity /0.0086/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0.01/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

* RADical Transformative Pathway
$ifthen %CaseStudy%==7
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.1/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /2/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /1/;
scalar STD service technical development /1/;
scalar PTD power sector technical development /1/;
scalar LDD light duty vehicles development /1/;
scalar HDD heavy duty vehicles development /1/;
scalar RTD railway transport development /1/;
scalar MTD maritime transport fleet development /1/;
scalar ATD air transport fleet development /1/;
scalar TR  transport demand reduction /1/;
scalar CE  Circular Economy (servitization) /1/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /0/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /2/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.1/;
scalar idr investment in fuels decrease rate /0.25/;
scalar odc oil extraction decrease /0.25/;
scalar ndc naturgas extraction decrease /0.25/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /-0.0128/;
scalar BosE Boost energy intensity after 2021 /1/;
scalar elint yearly electricity requirement change /-0.04/;
scalar TFP total factor productivity /0.0086/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0.01/;
scalar I50 Industry 5.0 extra productivity /1/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /1/;
$endif

* ZEROTLSscenario
$ifthen %CaseStudy%==8
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /1/;
scalar GRW growth in productivity (0 if no growth) /1/;
scalar growGG growth in productivity in aquaculture /0/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0.0105/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /1/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.045/;
scalar TFP total factor productivity /0.0096/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

* MIDTLSscenario
$ifthen %CaseStudy%==9
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /1/;
scalar GRW growth in productivity (0 if no growth) /1/;
*scalar growGG growth in productivity in aquaculture /1.012/;
*scalar growGG growth in productivity in aquaculture /-0.0010875/;
*scalar growGG growth in productivity in aquaculture /-0.001220312/;
*scalar growGG growth in productivity in aquaculture /-0.001089/;
scalar growGG growth in productivity in aquaculture /-0.00108784/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /1/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.045/;
scalar TFP total factor productivity /0.0096/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

* MAXTLSscenario
$ifthen %CaseStudy%==10
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /1/;
scalar GRW growth in productivity (0 if no growth) /1/;
scalar growGG growth in productivity in aquaculture /0.012/;
scalar GAQ growth due to reduced mortality in aquaculture /1/;
* the value for growAQ is taken from CaseStudy 1 where it was calibrated to the max growth of sales without sea lice
scalar growAQ growth in procutivity aquaculture /0.06/;
*scalar growAQ growth in procutivity aquaculture /-0.0195/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /1/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.045/;
scalar TFP total factor productivity /0.0096/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

* MINTLSscenario
$ifthen %CaseStudy%==11
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /1/;
scalar GRW growth in productivity (0 if no growth) /1/;
scalar growGG growth in productivity in aquaculture /0.005/;
scalar GAQ growth due to reduced mortality in aquaculture /0/;
scalar growAQ growth in procutivity aquaculture /0/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /1/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.045/;
scalar TFP total factor productivity /0.0096/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif


* MINTLSscenario
$ifthen %CaseStudy%==12
scalar ctarget carbon target 50% baseline - 10% decarbonization /0.5/;
scalar CB co2 budget constraint (1 if active) /1/;
scalar GR growth of the economy (1 if we consider growth) /1/;
scalar RM recoursive model (1 if model is recoursive dynamic) /1/;
scalar PG population grows same as the economy if 0 at average rate if 1 no increase if 2 /1/;
scalar EL resource extraction limit (0 if no limit) /1/;
scalar TLS traffic light system (0 if no regulation) /0/;
scalar GRW growth in productivity (0 if no growth) /0/;
scalar growGG growth in productivity in aquaculture /-0.04/;
scalar GAQ growth due to reduced mortality in aquaculture /1/;
scalar growAQ growth in procutivity aquaculture /0.0005/;
scalar ITD industry technical development /0/;
scalar STD service technical development /0/;
scalar PTD power sector technical development /0/;
scalar LDD light duty vehicles development /0/;
scalar HDD heavy duty vehicles development /0/;
scalar RTD railway transport development /0/;
scalar MTD maritime transport fleet development /0/;
scalar ATD air transport fleet development /0/;
scalar CE  Circular Economy (servitization) /0/;
scalar TR  transport demand reduction /0/;
scalar ubpp upper bound on power capacity /1/;
scalar H2e  exports of H2 /0/;
scalar H2m  imports of H2 /1/;
scalar HTC Hydrogen technology (1 Steam Reform 2 Electrolysis 3 Both) /3/;
scalar psp yearly growth of H2 exports  /0/;
scalar esp yearly increase of electricity exports  /0.05/;
scalar cshp continental shelf power capacity /1.3/;
scalar gdr oil&gas export decrease rate /0.025/;
scalar idr investment in fuels decrease rate /0.025/;
scalar odc oil extraction decrease /0.019/;
scalar ndc naturgas extraction decrease /0/;
scalar tint yearly transport requirement change /-0.01/;
scalar enint yearly energy requirement change /0/;
scalar BosE Boost energy intensity after 2021 /0/;
scalar elint yearly electricity requirement change /-0.045/;
scalar TFP total factor productivity /0.0096/;
scalar PKK productivity of capital /0/;
scalar PLL productivity of labour /0/;
scalar I50 Industry 5.0 extra productivity /0/;
scalar BE bypass elasticities (all elasticities=1) /0/;
scalar Tinc tax increase on fuels after 2030  /0.04/;
scalar V2G consideration of Vehicle2Grid /0/;
scalar CCSi CCS in industry /0/;
$endif

*yearly energy requirement change
* taken from the evolution of demand in EJ/yr
* for Final Energy for Norway from Genesys-Mod


*scalar GDPcal calibration factor for GDP /1.35/;
*scalar GDPcal calibration factor for GDP /2.1/;
scalar DEcal depreciation calibration /1/;
Parameter TechCh technical change;
TechCh=ITD+STD+LDD+HDD+RTD+MTD+ATD;

*===========================================================
*================== Model Starts ===========================
*===========================================================



set
samr(*)  rows and columns of sam (dynamic)
/
H1
H2
H3
H4
H5
GOVT
INV
STOCKS
Capital
tax_com
tax_sec
tdirect
tmarg
Trade
/

samd(*)  rows and columns of sam (dynamic)
/
H1
H2
H3
H4
H5
GOVT
INV
STOCKS
Capital
tax_com
tax_sec
tdirect
tmarg
Trade
/

*set of types of labour
labours /L1, L2, L3, L4, L5/
*set of households
hh /H1, H2, H3, H4, H5/


cnt(*) regions in the model
com0(*) commodities and services
sec0(*) industries or sectors
com(*) renamed commodities and services
sec(*) renamed industries or sectors;

alias (hh,hous);

$ifthen %GOV%==1
set i set of end users equipped with utility function /H1,H2,H3,H4,H5,GOVT,INV/;
parameter SW_GOVT /1/
$endif
$ifthen %GOV%==2
set i set of end users equipped with utility function /H1,H2,H3,H4,H5,INV/;
parameter SW_GOVT /2/
$endif

$ifthen %LMKT%==1
parameter SW_LMKT /1/;
$endif
$ifthen %LMKT%==2
parameter SW_LMKT /2/;
$endif

display labours, hh, i;
* ========== load the file to read ==========

*$gdxin CREASAMR5
*$gdxin NEWSSBSAM19
$gdxin SAM19HOUS
*$gdxin HOUSSAM
*$gdxin SSBSAM18
*$gdxin CREAPaolo3x3x3

* ========== Load the indices for the main sets ==========
$load cnt
$load com0=com
$load sec0=sec

alias(cnt,r), (sec,s,ss), (com,g);
alias(cnt,cntt);
* ========== add the goods and indices to the samr matrix ==========
samr(com0)=yes;
samr(sec0)=yes;
samr(labours)=yes;
samd(labours)=yes;
samr(hh)=yes;
samr(hh)=yes;


Alias
(samr,samrr)
(s,sc)
(r,rt,rtt)
(g,gm)
;


*read the three main data tables
Parameter
SAMt(cnt,*,*)
SAMtR1(*,*)
SAMtR2(*,*)
SAMtR3(*,*)
SAMtR4(*,*)
SAMtR5(*,*)
TradeDatat(com0,*,*)
TradeMarginst(com0,*,*)
distrgood_share_public(*,*)
;

*FOR GDX INPUT
*$load SAMt = mSAM
$load SAMtR1=R1
$load SAMtR2=R2
$load SAMtR3=R3
$load SAMtR4=R4
$load SAMtR5=R5
$load TradeDatat = mTradeData
$load TradeMarginst = mTrademargins

display SAMtR1;
*$exit

*SAMt("R1",*,*)=SAMtR1
*SAMt("R2",*,*)=SAMtR2
*SAMt("R3",*,*)=SAMtR3
*SAMt("R4",*,*)=SAMtR4
*SAMt("R5",*,*)=SAMtR5



*Uncomment ONE of the folowing lines (is there is a distrgood_share_public element in the GDX?)
*distrgood_share_public(cnt, com) = 0;
*display distrgood_share_public;

*############# HERE I REALLOCATE THE PRODUCTION OF OIL ######################
*############# AND GAS TO THE RIGHT SECTORS            ######################
*############# IN THE SAM THE GAS SECTOR WAS PRODUCING ######################
*############# MOST OF THE OIL!!!                      ######################
*redefine oil and gas production to the right sectors

*SAMt('R1','i-COIL','c-COIL')=6532.86135;
*SAMt('R1','i-GASE','c-COIL')=430.11814;
*SAMt('R1','i-COIL','c-GASE')=0;
*SAMt('R1','i-GASE','c-GASE')=14569.23147;

*SAMt('R2','i-COIL','c-COIL')=22353.64188;
*SAMt('R2','i-GASE','c-COIL')=1471.74513;
*SAMt('R2','i-COIL','c-GASE')=0;
*SAMt('R2','i-GASE','c-GASE')=49851.87432;

*SAMt('R3','i-COIL','c-COIL')=2817.59158;
*SAMt('R3','i-GASE','c-COIL')=185.50788;
*SAMt('R3','i-COIL','c-GASE')=0;
*SAMt('R3','i-GASE','c-GASE')=6283.63924;

*SAMt('R4','i-COIL','c-COIL')=2523.81063;
*SAMt('R4','i-GASE','c-COIL')=166.16559;
*SAMt('R4','i-COIL','c-GASE')=0;
*SAMt('R4','i-GASE','c-GASE')=5628.46497;

*SAMt('R5','i-COIL','c-COIL')=148279.7449;
*SAMt('R5','i-GASE','c-COIL')=9762.614687;
*SAMt('R5','i-COIL','c-GASE')=0;
*SAMt('R5','i-GASE','c-GASE')=330685.4089;


parameter yS0(cnt,sec0,com0) detailed sectoral outputs;
parameter XD0(cnt,sec0) sectoral output;
parameter PD0(cnt,com0) good output;
*yS0(cnt,sec0,com0)=SAMt(cnt,sec0,com0)   ;
ys0('R1',sec0,com0)=SAMtR1(sec0,com0);
ys0('R2',sec0,com0)=SAMtR2(sec0,com0);
ys0('R3',sec0,com0)=SAMtR3(sec0,com0);
ys0('R4',sec0,com0)=SAMtR4(sec0,com0);
ys0('R5',sec0,com0)=SAMtR5(sec0,com0);

XD0(cnt,sec0)         = sum(com0,yS0(cnt,sec0,com0)) ;
PD0(cnt,com0)         = sum(sec0,yS0(cnt,sec0,com0)) ;

parameter IOZ0(cnt,com0,sec0),CZ0(cnt,com0),CGZ0(cnt,com0),IZ0(cnt,com0);

*IOZ0(cnt,com0,sec0)     = SAMt(cnt, com0, sec0) ;
IOZ0('R1',com0,sec0)     = SAMtR1(com0, sec0) ;
IOZ0('R2',com0,sec0)     = SAMtR2(com0, sec0) ;
IOZ0('R3',com0,sec0)     = SAMtR3(com0, sec0) ;
IOZ0('R4',com0,sec0)     = SAMtR4(com0, sec0) ;
IOZ0('R5',com0,sec0)     = SAMtR5(com0, sec0) ;

*CZ0(cnt, com0)             =  sum(hh,SAMt(cnt, com0, hh));
CZ0('R1',com0)             = sum(hh,SAMtR1(com0,hh));
CZ0('R2',com0)             = sum(hh,SAMtR2(com0,hh));
CZ0('R3',com0)             = sum(hh,SAMtR3(com0,hh));
CZ0('R4',com0)             = sum(hh,SAMtR4(com0,hh));
CZ0('R5',com0)             = sum(hh,SAMtR5(com0,hh));

*CGZ0(cnt, com0)            = SAMt(cnt, com0, "GOVT");
CGZ0('R1', com0)            = SAMtR1(com0, "GOVT");
CGZ0('R2', com0)            = SAMtR2(com0, "GOVT");
CGZ0('R3', com0)            = SAMtR3(com0, "GOVT");
CGZ0('R4', com0)            = SAMtR4(com0, "GOVT");
CGZ0('R5', com0)            = SAMtR5(com0, "GOVT");



*IZ0(cnt, com0)             = SAMt(cnt, com0, "INV");
IZ0('R1', com0)             = SAMtR1(com0, "INV");
IZ0('R2', com0)             = SAMtR2(com0, "INV");
IZ0('R3', com0)             = SAMtR3(com0, "INV");
IZ0('R4', com0)             = SAMtR4(com0, "INV");
IZ0('R5', com0)             = SAMtR5(com0, "INV");

* ===== Calculate initial levels of variables for calibration ==================
Parameter
XDZ(r,s)      sectoral outputs
y0(r,s,g) detailed sectoral outputs
IOZ(r,g,s)  intermediate inputs
ls0(labours,r,s)       labour inputs
ks0(r,s)       capital inputs
ls1(labours,r,s)       save parameter for labour inputs (for benchmark test)
ks1(r,s)       save parameter for capital inputs (for benchmark test)

CZ(hh,r,g)       households consumption
CGZ(r,g)      governmental consumption
CGLZ(r, g)     local governemnt consumption
IC(*,r,g)    initial consumption

IZ(r,g)       investments
SVZ(r,g)      changes in stocks

EROWZ(r,g)    exports
MROWZ(r,g)    imports
x0(g,r,rt) trade flows
TMCRZ(g,r,rt)  trade and transportmargins
EZ(r,g)       total exports

TMCZ(r,g)     transport and trade margins
TMXZ(r,g)     production of transport and trade margins

TTYZ(r,hh)         inge taxes
TRANSFZ(r,hh)      government to households transfers
TRANSFGZ(r)     national to local government transfers

SHZ(r,hh)          households savings
SGZ(r)         local governmental savings

CBUDGLZ(r)       local governmental consumption budget
CBUDGNZ          national governmental consumption budget

SROWZ(r)        savings from RoW
INVZ(r,s)     sectoral investments

TRROWZ(r)       net transfers to government (closing trade balance)
TRHROWZ(r,hh)      net transfers to households (closing trade balance)

TAXCZ(r,g)    net taxes on products
TAXPZ(r,s)    net taxes on production

LSZ(hh,labours,r)          initial labour endowment
KSZ(hh,r)          initial capital endowment
KSZ0(hh,r)         save data for capital

CBUDZ(hh,r)        households consumption budget
CBUDGZ(r)       governmental consumption budget

XZ(r,g)       total sales
XXDZ(r,g)     domestic products supply to domestic market

ITZ(r)          total investments
u0(*,r)     budgets (hous govt and inv - besides national govt)
ugn0         national government budget;


parameter AOGR(hh,r), AOGRm(hh,r), ACR(r),ANGR(hh,r),ANGL(r), ALND(hh,r) available resources (oil and gas coil natural gas);
parameter OGR(r), OGRm(r), CR(r),NGR(r), NGL(r), LND(r) available resources (oil and gas coil natural gas);


* ========== Redefinition of the SAM, trade and trade margin matrices ==========

set sec /
iAGR    agriculture
iFIS    aquaculture
iCOI    crude oil
iNG     natural gas
iMIN    mining
iRES    rest of industry
iREF    refineries
iCHA    chemicals
iMEA    metals
iOTH    other services
*iMVT    production and retail of motor vehicles
iWSR    retail?
iPOW    power generation
iPTD    power transmission and distribution
iLTH    low temperature heating
iCON    constructions
iTRW    transport by railways
iTLL    transport light duty land
iTPI    pipelines
iTLH    heavy duty tranport by land
*reduce all of these to iTSE (collect all sea transport)
iTSS    sea transport
*iTSG
*iTSPG
*iTSPR
*iTSPH
*iTSPC
*iTSI
* stop here
*iTAI
iOFF
iHOT
iHEA
* new sectors
iH2E     Hydrogen by electrolysis
iH2S     Hydrogen by steam reformation
iH2C     Hydrogen by steam reformation with CCS
iV2G     Vehicles2Grid
/

set com /
pAGR
pFIS
pOIL
pNG
pMIN
pRES
pFUL
pCHA
pBIO
pMEA
*pMVT
pWSR
pPOW
pPTD
pLTH
pCON
pTRW
pTPI
pTLL
pTLH
pTSE
pTAI
pOFF
pHOT
pOTH
pHEA
* new commodities
pH2      hydrogen
/;


set newsec(sec) /
iH2E
iH2S
iH2C
iV2G
/;

set newcom(com) /
pH2
/;

* mapping original sectors and selected aggregations
set maps(sec0,sec)/
i-AAGR        .        iAGR
i-FISH        .        iFIS
i-COIL        .        iCOI
i-GASE        .        iNG
i-IMIN        .        iMIN
i-IRES        .        iRES
i-REFP        .        iREF
i-REFG        .        iREF
i-ICHA        .        iCHA
i-IMEA        .        iMEA
i-COMT        .        iOTH
i-MVT         .        iRES
i-CWSR        .        iWSR
i-POWF        .        iPOW
i-POWR        .        iPOW
i-POWT        .        iPTD
i-NG          .        iWSR  this is connected to iWSR because its only output is c-CWSR
i-LTH         .        iLTH
i-CCON        .        iCON
i-TRAI        .        iTRW
i-TLNL        .        iTLL
i-TPIP        .        iTPI
i-TLNH        .        iTLH
i-TSEA_S      .        iTSS
*i-TSEA_G      .        iTSG
*i-TSEA_P_G    .        iTSPG
*i-TSEA_P_RO   .        iTSPR
*i-TSEA_P_HI   .        iTSPH
*i-TSEA_P_CO   .        iTSPC
*i-TSEA_I      .        iTSI
i-TAIR        .        iTSS
i-COFF        .        iOFF
i-CENT        .        iHOT
i-FIN         .        iOTH
i-CHEA        .        iHEA
/;


* mapping original commodities and selected aggregations
set mapc(com0,com)/
c-AAGR        .        pAGR
c-FISH        .        pFIS
c-COIL        .        pOIL
c-GASE        .        pNG
c-IMIN        .        pMIN
c-IRES        .        pRES
c-REFP        .        pFUL
c-REFG        .        pFUL
c-ICHA        .        pCHA
c-BIO         .        pBIO
c-IMEA        .        pMEA
c-COMT        .        pRES
c-MVT         .        pRES
c-CWSR        .        pWSR
c-POWF        .        pPOW
c-POWR        .        pPOW
c-POWT        .        pPTD
c-NG          .        pNG
c-LTH         .        pLTH
c-CCON        .        pCON
c-TRAI        .        pTRW
c-TPIP        .        pTPI
c-TLNL        .        pTLL
c-TLNH        .        pTLH
c-TSEA        .        pTSE
c-TAIR        .        pTAI
c-COFF        .        pOFF
c-CENT        .        pHOT
c-FIN         .        pOTH
c-CHEA        .        pHEA
/;


* check the SAM is balanced
Parameter SAM_balance(r,*) ;
*SAM_balance(r,samr) =  sum(samrr,SAMt(r,samr,samrr))
*       -  sum(samrr,SAMt(r,samrr,samr)) ;
SAM_balance('R1',samr) =  sum(samrr,SAMtR1(samr,samrr))
       -  sum(samrr,SAMtR1(samrr,samr)) ;
SAM_balance('R2',samr) =  sum(samrr,SAMtR2(samr,samrr))
       -  sum(samrr,SAMtR2(samrr,samr)) ;
SAM_balance('R3',samr) =  sum(samrr,SAMtR3(samr,samrr))
       -  sum(samrr,SAMtR3(samrr,samr)) ;
SAM_balance('R4',samr) =  sum(samrr,SAMtR4(samr,samrr))
       -  sum(samrr,SAMtR4(samrr,samr)) ;
SAM_balance('R5',samr) =  sum(samrr,SAMtR5(samr,samrr))
       -  sum(samrr,SAMtR5(samrr,samr)) ;

display SAM_balance;

*elasticities parameters
parameter
elas_KL(*)
elas_KLE(*)
elas_KLEM(*)
;

Parameter
elas_pst(com0)
elas_psx(com0)
elas_ps(com0)
elas_ps1(com0)
;

*$load elas_pst, elas_psx, elas_ps, elas_ps1
$gdxin


* include updated elasticities from Koesler Schymura (2014)
$gdxin TestElasNo
Parameter ELAS(sec0,*),ELASp(com0,*);
$load ELAS
$load ELASp

elas_KL(sec0)=ELAS(sec0,'KL');
elas_KLE(sec0)=ELAS(sec0,'KLE');
elas_KLEM(sec0)=ELAS(sec0,'KLEM');

* fix some wrong or odd elasticities 20/09/2023
elas_KL('i-TLNH')=0.14;
elas_KLE('i-TLNH')=0.42;
elas_KLEM('i-TLNH')=0.22;
elas_KLEM('i-TAIR')=0.22;
elas_KL('i-TSEA_S')=1;
*elas_KL('i-TSEA_G')=1;
*elas_KL('i-TSEA_P_G')=1;
*elas_KL('i-TSEA_P_RO')=1;
*elas_KL('i-TSEA_P_HI')=1;
*elas_KL('i-TSEA_P_CO ')=1;
*elas_KL('i-TSEA_I')=1;
elas_KL('i-POWF')=1;
elas_KL('i-POWR')=1;
elas_KL('i-POWT')=1;
elas_KL('i-GASE')=1;
elas_KL('i-REFP')=1;
elas_KL('i-REFG')=1;
elas_KL('i-NG')=1;
elas_KL('i-LTH')=1;


set seasec(sec0) /
*i-TLNH   why is this in sea sectors?
i-TSEA_S
*i-TSEA_G
*i-TSEA_P_G
*i-TSEA_P_RO
*i-TSEA_P_HI
*i-TSEA_P_CO
*i-TSEA_I
/;

* PP review elasticities for sea transport.
*elas_KL(seasec)=ELAS('i-TAIR','KL');
*elas_KLE(seasec)=ELAS('i-TAIR','KLE');
*elas_KLEM(seasec)=ELAS('i-TAIR','KLEM');


elas_pst(com0)=ELASp(com0,'pst');
elas_psx(com0)=ELASp(com0,'psx');
elas_ps(com0)=ELASp(com0,'ps');
elas_ps1(com0)=ELASp(com0,'ps1');
$gdxin

elas_pst("c-LTH")=0;
elas_psx("c-LTH")=0.1;
elas_pst("c-TAIR")=1;
elas_psx("c-TAIR")=1;
*elas_pst("c-IMEA")=1;
*elas_psx("c-IMEA")=1;
elas_pst("c-ICHA")=1;
elas_psx("c-ICHA")=1;
elas_pst("c-TSEA")=0;
elas_psx("c-TSEA")=0.1;
elas_pst("c-TLNH")=0;
elas_psx("c-TLNH")=0.1;

*elas_pst("c-REFP")=1;
*elas_psx("c-REFP")=1;
*elas_pst("c-REFG")=1;
*elas_psx("c-REFG")=1;

* The Norwegian productivity puzzle � not so puzzling after all?
* https://www.ssb.no/en/forskning/discussion-papers/_attachment/216926
parameter SFac(sec) sharing of Total Factor Productivity loss per sector /
iAGR   0.51
iFIS   0.51
iCOI   0.47
iNG    0.47
iMIN   0.47
iRES   0.47
iREF   0.47
iCHA   0.47
iMEA   0.47
iOTH   0.7
*iMVT   0.95
iWSR   0.95
iPOW   0.7
iPTD   0.7
iLTH   0.7
iCON   0.79
iTRW   0.52
iTLL   0.52
iTPI   0.52
iTLH   0.52
iTSS   0.2
*iTSG   0.2
*iTSPG  0.2
*iTSPR  0.2
*iTSPH  0.2
*iTSPC  0.2
*iTSI   0.2
*iTAI   0.52
iOFF   0.61
iHOT   0.95
iHEA   0.7
* new sectors
iH2E   0.7
iH2S   0.7
iH2C   0.7
iV2G   0.7
/;


Display elas_pst, elas_psx, elas_ps, elas_ps1;


display elas_KL, elas_KLE, elas_KLEM;


Alias(samd,samdd);

*d.        Reaggregation of commodities and sectors.
parameter SAM1(cnt,*,*),SAM(cnt,*,*);
* Populating the SAM only using the initial elements (no sectors, no commodities)
*SAM1(cnt,samdd,samr)=SAMt(cnt,samdd,samr);
SAM1('R1',samdd,samr)=SAMtR1(samdd,samr);
SAM1('R2',samdd,samr)=SAMtR2(samdd,samr);
SAM1('R3',samdd,samr)=SAMtR3(samdd,samr);
SAM1('R4',samdd,samr)=SAMtR4(samdd,samr);
SAM1('R5',samdd,samr)=SAMtR5(samdd,samr);
SAM(cnt,samdd,samd)=SAM1(cnt,samdd,samd);
* including commodities and sectors in the index
samd(com)=yes;
samd(sec)=yes;

display SAM1;
*$exit


alias
(cnt,r)
(sec,s)
(com,g);

display samd,samr;


* Create aggregated SAM, trade data and trade margins data
*SAM1(cnt,sec,samr)=sum(sec0$maps(sec0,sec),SAMt(cnt,sec0,samr));
SAM1('R1',sec,samr)=sum(sec0$maps(sec0,sec),SAMtR1(sec0,samr));
SAM1('R2',sec,samr)=sum(sec0$maps(sec0,sec),SAMtR2(sec0,samr));
SAM1('R3',sec,samr)=sum(sec0$maps(sec0,sec),SAMtR3(sec0,samr));
SAM1('R4',sec,samr)=sum(sec0$maps(sec0,sec),SAMtR4(sec0,samr));
SAM1('R5',sec,samr)=sum(sec0$maps(sec0,sec),SAMtR5(sec0,samr));
*SAM1(cnt,com,samr)=sum(com0$mapc(com0,com),SAMt(cnt,com0,samr));
SAM1('R1',com,samr)=sum(com0$mapc(com0,com),SAMtR1(com0,samr));
SAM1('R2',com,samr)=sum(com0$mapc(com0,com),SAMtR2(com0,samr));
SAM1('R3',com,samr)=sum(com0$mapc(com0,com),SAMtR3(com0,samr));
SAM1('R4',com,samr)=sum(com0$mapc(com0,com),SAMtR4(com0,samr));
SAM1('R5',com,samr)=sum(com0$mapc(com0,com),SAMtR5(com0,samr));

SAM(cnt,samd,samdd)=SAM1(cnt,samd,samdd);
SAM(cnt,samd,sec)=sum(sec0$maps(sec0,sec),SAM1(cnt,samd,sec0));
SAM(cnt,samd,com)=sum(com0$mapc(com0,com),SAM1(cnt,samd,com0));

parameter tradeData(com,*,*);
tradeData(com,cnt,cntt)=sum(com0$mapc(com0,com),tradeDatat(com0,cnt,cntt));
tradeData(com,cnt,"ROW")=sum(com0$mapc(com0,com),tradeDatat(com0,cnt,"ROW"));
tradeData(com,"ROW",cntt)=sum(com0$mapc(com0,com),tradeDatat(com0,"ROW",cntt));

parameter TradeMargins(com,cnt,cntt);
TradeMargins(com,cnt,cntt)=sum(com0$mapc(com0,com),TradeMarginst(com0,cnt,cntt));


* ===================== check if SAM is balanced ===============================
Parameter SAM_balance(cnt,*) ;
SAM_balance(cnt,samd) =  sum(samdd,SAM(cnt,samd,samdd))
       -  sum(samdd,SAM(cnt,samdd,samd)) ;
display SAM_balance;


*Assign symbols out of the SAM
y0(r,s,g)    = SAM(r,s,g)   ;
XDZ(r,s)         = sum(g,y0(r,s,g)) ;
IOZ(r,g,s)     = SAM(r, g, s) ;
CZ(hh,r, g)             =  SAM(r, g, hh);
CGZ(r, g)            = SAM(r, g, "GOVT");
IZ(r, g)             = SAM(r, g, "INV");
ls0(labours,r,s)          = SAM(r,labours,s)                     ;
ks0(r,s)          = SAM(r,'Capital',s)                    ;
IC(hh,r,g)=CZ(hh,r,g);
IC("GOVT",r,g)=CGZ(r,g);
IC("INV",r,g)=IZ(r,g);



* PP split the capital remuneration of oil and gas from the general capital


OGR(r)           = 0.5*ks0(r,"iCOI");
ks0(r,"iCOI")    = 0.5*ks0(r,"iCOI");
OGRm(r)          = 0.5*ks0(r,"iMIN");
ks0(r,"iMIN")    = 0.5*ks0(r,"iMIN");
NGR(r)           = 0.5*ks0(r,"iNG");
ks0(r,"iNG")     = 0.5*ks0(r,"iNG");
LND(r)           = 0.5*ks0(r,"iFIS");
ks0(r,"iFIS")   = 0.5*ks0(r,"iFIS");




* PP initialize the available resources with the values featured in the sectors (resources used = resources available)
AOGR(hh,r)=SAM(r,hh,'Capital')/sum(hous,SAM(r,hous,'Capital'))*OGR(r);
AOGRm(hh,r)=SAM(r,hh,'Capital')/sum(hous,SAM(r,hous,'Capital'))*OGRm(r);
*ACR(r)=CR(r);
ANGR(hh,r)=SAM(r,hh,'Capital')/sum(hous,SAM(r,hous,'Capital'))*NGR(r);
*ANGL(r)=NGL(r);
ALND(hh,r)= SAM(r,hh,'Capital')/sum(hous,SAM(r,hous,'Capital'))*LND(r);




* Identify sectors with negative capital returns
Parameter negcap(r,s) ;
negcap(r,s)$(ks0(r,s) lt 0) = 1 ;

* Generate positive returns to capital
Parameter KZ_old(r,s) ;
KZ_old(r,s) = ks0(r,s) ;
ks0(r,s)$negcap(r,s) = sum(sc$(ks0(r,sc) gt 0),ks0(r,sc) )
                     /sum(sc$(ks0(r,sc) gt 0),XDZ(r,sc) )
                     *XDZ(r,s) ;

SVZ(r,g)         = SAM(r,g,'STOCKS') ;


*Read initial consumtion figures
ITZ(r)             = sum(g, SAM(r,g, "INV"));
CBUDZ(hh,r)           = sum(g, SAM(r,g, hh));
CBUDGLZ(r)$(SW_GOVT eq 1)  = sum(g, SAM(r,g, "GOVT"));
CBUDGNZ$(SW_GOVT eq 2)  = sum((r,g), SAM(r,g, "GOVT"));


*Define the local governments budget
CBUDGLZ(r)$(SW_GOVT eq 1)  = sum(g, SAM(r,g, "GOVT"));
CBUDGNZ$(SW_GOVT eq 2)  = sum((r,g), SAM(r,g, "GOVT"));
u0(hh,r)= CBUDZ(hh,r);
u0("GOVT",r)= CBUDGLZ(r);
ugn0=CBUDGNZ;
u0("INV",r)= ITZ(r);

*Define Local Government Consumption
CGLZ(r, g) = IC("GOVT",r,g);


EROWZ(r,g)       = TradeData(g,r,'ROW') ;
MROWZ(r,g)       = TradeData(g,'ROW',r) ;

x0(g,r,rt) = TradeData(g,r,rt) ;
TMCRZ(g,r,rt)  = TradeMargins(g,r,rt) ;

XXDZ(r,g)        = x0(g, r, r);
*note that TRADEZ(g, r, rt) == sum(sec,XDDZ(r,sec,g))- EROWZ(r,g) - sum(rt,TRADEZ(g,r,rt));

loop ((g,r), x0(g, r, r) = 0);

TMCZ(r,g)        = SAM(r,'tmarg',g) ;
TMXZ(r,g)        = SAM(r,g,'tmarg') ;

TTYZ(r,hh)            = SAM(r,'tdirect',hh) ;
TRANSFZ(r,hh)         = SAM(r,hh,'GOVT') ;
* when it is computed like this it means that it is an "auxiliary parameter" to close a balance.
TRROWZ(r)          = SAM(r,'GOVT','Trade') - SAM(r,'Trade','GOVT') ;
TRHROWZ(r,hh)         = SAM(r,hh,'Trade') - SAM(r,'Trade',hh) ;

SHZ(r,hh)             = SAM(r,'INV',hh) ;
SGZ(r)             = SAM(r,'INV','GOVT') ;

SROWZ(r)           = SAM(r,'INV','Trade') - SAM(r,'Trade','INV') ;

TAXCZ(r,g)       = SAM(r,'tax_com',g) ;
TAXPZ(r,s)       = SAM(r,'tax_sec',s) ;

INVZ(r,s)        = SAM(r,'INV',s) ;

LSZ(hh,labours,r)             = SAM(r,hh,labours) ;
KSZ(hh,r)             = SAM(r,hh,"Capital")/sum(hous,SAM(r,hous,"Capital"))*sum(s,ks0(r,s));
KSZ0(hh,r)          = KSZ(hh,r);
display IOZ, INVZ, CZ;

parameter shKZ(r,hh) share of capital held by each household in each region;
shKZ(r,hh)=KSZ0(hh,r)/sum(hous,KSZ0(hous,r));

*Define the Fix for potential Trade Margins' Imbalance in the SAM
Parameter
TMFIX(r)
TMFIXC(r, g);

TMFIX(r) = -sum(g, TMCZ(r, g)) + sum(g, TMXZ(r, g));
TMFIXC(r, g)$(sum(s,IOZ(r,g,s))
                  +  sum(hh,IC(hh,r,g)) +  IC("GOVT",r,g) +  IC("INV",r,g)) =
                         TMFIX(r)*(sum(s,IOZ(r,g,s))+  sum(hh,IC(hh,r,g)) +  IC("GOVT",r,g) +
                                                 IC("INV",r,g))/
                                 sum(gm, sum(s,IOZ(r,gm,s))+  sum(hh,IC(hh,r,gm)) +  IC("GOVT",r,gm) +
                                                                 IC("INV",r,g)) ;


*Adjust consumption figures for taxes and trade margins
Parameters
TOTALCONSZ(r,g)   total taxed consumption
TAXTOTALZ(r,g)    sum of taxes and margins
;

TOTALCONSZ(r,g)   = sum(s,IOZ(r,g,s)) +  sum(hh,IC(hh,r,g)) +  IC("GOVT",r,g) + IC("INV",r,g) ;

TAXTOTALZ(r,g)    = TMCZ(r,g) + TAXCZ(r,g) ;


IOZ(r,g,s)$TOTALCONSZ(r,g)
                                 = IOZ(r,g,s) - TAXTOTALZ(r,g)*IOZ(r,g,s)/TOTALCONSZ(r,g) ;
IC(hh,r,g)$TOTALCONSZ(r,g)
                                 = IC(hh,r,g) - TAXTOTALZ(r,g)*IC(hh,r,g)/TOTALCONSZ(r,g) ;
CGZ(r,g)$TOTALCONSZ(r,g)
                                 = CGZ(r,g) - TAXTOTALZ(r,g)*CGZ(r,g)/TOTALCONSZ(r,g) ;
IC("INV",r,g)$TOTALCONSZ(r,g)
                                 = IC("INV",r,g) - TAXTOTALZ(r,g)*IC("INV",r,g)/TOTALCONSZ(r,g) ;

IC("GOVT",r,g)$(TOTALCONSZ(r,g) and  IC("GOVT",r,g))
                                 = IC("GOVT",r,g) - TAXTOTALZ(r,g)*IC("GOVT",r,g)/TOTALCONSZ(r,g) ;


* check there there are no negative values
loop ((r,g,hh),
   if ((IC(hh,r,g) lt 0) and (abs(IC(hh,r,g)) gt 1e-6) ,
          abort "check CZ(r,g) "
   );
   if ((IC("GOVT",r,g) lt 0) and (abs(IC("GOVT",r,g)) gt 1e-6) ,
          abort "CGZ(r,g) "
   );
   if ((IC("INV",r,g) lt 0) and (abs(IC("INV",r,g)) gt 1e-6) ,
          abort "IZ(r,g) "
   );
loop (s,
   if ((IOZ(r,g,s) lt 0) and (abs(IOZ(r,g,s)) gt 1e-6) ,
          abort "check IOZ(r,g,s)"
   );
);
);


* =========== Calculate transport and trade margins ============================
Parameter
trmz(r,g) initial transport and trade margins
trm(r,g) transport and trade margins
;

trmz(r,g)$(sum(s,IOZ(r,g,s))
                  +  sum(hh,IC(hh,r,g)) +  CGZ(r,g)
                                  +  IC("INV",r,g)) =
                  (TMCZ(r,g))/(sum(s,IOZ(r,g,s))
                  +  sum(hh,IC(hh,r,g)) +  CGZ(r,g)
                                  +  IC("INV",r,g)) ;

trm(r,g) = trmz(r,g) ;


* ========== Check trade flows balance =========================================
XZ(r,g) =  sum(s,IOZ(r,g,s)) + sum(hh,IC(hh,r,g)) +  CGZ(r,g)
               + TMXZ(r,g) + IC("INV",r,g) + SVZ(r,g) ;

Parameter
check_tradebal(r,g) sales equal domestic supply plus imports
check_tradebal_2(r,g) outputs equal domestic products supply + Export and Export other regions
;

check_tradebal(r,g) = XZ(r,g) - ( XXDZ(r,g) + MROWZ(r,g)
   + sum(rt, x0(g,rt,r)) ) ;

Execute_unload "sjekk_tradebal" XZ,XXDZ,MROWZ,x0,check_tradebal;


check_tradebal_2(r,g) = sum(s,y0(r,s,g))- XXDZ(r,g)- EROWZ(r,g) -
               sum(rt, x0(g,r,rt)) ;


EZ(r,g) =  EROWZ(r,g) + sum(rt,x0(g,r,rt)) ;
display check_tradebal, check_tradebal_2;

* ====== Calculate the levels of  taxes ========================================
Parameter
taxcz(r,g) initial taxes on products
taxpz(r,s) initial taxes on production

taxc(r,g) taxes on products
taxp(r,s) taxes on production

tyz(r,hh)      initial tax on income
ty(r,hh)       tax on income
;

taxcz(r,g)$(sum(s,IOZ(r,g,s))
                  +  sum(hh,IC(hh,r,g)) +  CGZ(r,g) +  IC("INV",r,g)) =
                  TAXCZ(r,g)/( (sum(s,IOZ(r,g,s))
                  +  sum(hh,IC(hh,r,g)) +  CGZ(r,g)
                  +  IC("INV",r,g))*(1 + trmz(r,g)) ) ;
taxpz(r,s)$XDZ(r,s) =   TAXPZ(r,s)/XDZ(r,s) ;


taxc(r,g) = taxcz(r,g) ;
taxp(r,s) = taxpz(r,s) ;

tyz(r,hh)$(sum(labours,(LSZ(hh,labours,r)) + KSZ(hh,r)) ne 0) =  TTYZ(r,hh)/(sum(labours,LSZ(hh,labours,r)) + KSZ(hh,r)) ;
ty(r,hh)  =  tyz(r,hh) ;


Parameter
trade_bal_global(r) global trade balance
trade_bal_global_nat national trade balance
;

trade_bal_global(r) =
* Incoming monetary flows - exports
*Exports
  sum(g,EROWZ(r,g))
         + sum((g,rt),x0(g,r,rt))
         +  TRROWZ(r)
         +  sum(hh,TRHROWZ(r,hh))
         +  SROWZ(r)
* Outgong monetary flows - imports
         - ( sum(g,MROWZ(r,g))
         + sum((g,rt),x0(g,rt,r)) ) ;

trade_bal_global_nat = sum(r,trade_bal_global(r));



Parameter
investment_bal(r) balance of savings and investments
investment_bal_nat
;

investment_bal(r) =  + sum(s,INVZ(r,s))
  + sum(hh,SHZ(r,hh)) + SGZ(r) + SROWZ(r) - u0("INV",r)
  - sum(g, SVZ(r,g))  ;

investment_bal_nat = sum(r, investment_bal(r));


* Contribution of positively and negatively imbalanced regions
parameter
OutRegVol(r)
InRegVol(r)
;

OutRegVol(r) = TMFIX(r)$(TMFIX(r)>0);
InRegVol(r) = -TMFIX(r)$(TMFIX(r)<0);

*Calculation of taxed trade margins amount for inter-regional TTM
parameter
TaxedTradeMargins(r, g)
;

TaxedTradeMargins(r, g) = (sum(hh,IC(hh,r,g))+IC("INV",r,g)
         +CGZ(r, g)+sum(s,IOZ(r, g, s)))*trmz(r, g);

display trade_bal_global, trade_bal_global_nat, TMFIX;
display ty, tyz, taxc, taxcz, taxp, taxpz;

* ======================= Aggregate ELASTICITIES =================================
Parameter sigma_prod(*, sec) Production Elasticities
elas_ps1a(com)
elas_psa(com)
elas_psta(com)
elas_psxa(com);


* ==== NEW! ======
*Special Elesticities in the model

Parameter
*Government Elasticity
Govt_Dem_Elas Elasticity of Government Demand /0/
;

*give default values
sigma_prod("KL", sec) = 1;
sigma_prod("KLE", sec) = 1;
sigma_prod("KLEM", sec) = 0;

*other elasticities
sigma_prod("KI", sec) = 1;
sigma_prod("M", sec) = 0;
* lower it down from 5 to 0.5 so that there is NOT such a high increase in use of power!
sigma_prod("E", sec) = 0.7;
*5


parameter detect(sec);
detect(sec)=0;
detect(sec)$(not newsec(sec) and sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0)) eq 0) =1;


*If new values are to be read, do so in the space that follows:
*aggregate elasticities for old sectors
sigma_prod("KL",sec)$(not newsec(sec))   = sum((r,sec0)$maps(sec0,sec),elas_KL(sec0)*XD0(r,sec0))/sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0));
sigma_prod("KLE",sec)$(not newsec(sec))  = sum((r,sec0)$maps(sec0,sec),elas_KLE(sec0)*XD0(r,sec0))/sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0));
sigma_prod("KLEM",sec)$(not newsec(sec)) = sum((r,sec0)$maps(sec0,sec),elas_KLEM(sec0)*XD0(r,sec0))/sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0));



elas_ps1a(com)$(not newcom(com))= sum((r,com0)$mapc(com0,com),elas_ps1(com0)*XZ(r,com))/sum((cnt,com0)$mapc(com0,com),XZ(cnt,com));
elas_psa(com)$(not newcom(com))= sum((r,com0)$mapc(com0,com),elas_ps(com0)*XZ(r,com))/sum((cnt,com0)$mapc(com0,com),XZ(cnt,com));

elas_psta(com)$(not newcom(com))= sum((r,com0)$mapc(com0,com),elas_pst(com0)*EZ(r,com))/sum((cnt,com0)$mapc(com0,com),EZ(cnt,com));
elas_psxa(com)$(not newcom(com))= sum((r,com0)$mapc(com0,com),elas_psx(com0)*EZ(r,com))/sum((cnt,com0)$mapc(com0,com),EZ(cnt,com));


* ########### Fishing Elasticities ##########################
sigma_prod("KL",'iFIS')=sigma_prod("KL",'iAGR');
sigma_prod("KLE",'iFIS')=sigma_prod("KLE",'iAGR');
sigma_prod("KLEM",'iFIS')=sigma_prod("KLEM",'iAGR');

elas_ps1a('pFIS')= elas_ps1a('pAGR');
elas_psa('pFIS')= elas_psa('pAGR');

elas_psta('pFIS')= elas_psta('pAGR');
elas_psxa('pFIS')= elas_psxa('pAGR');
* ###########################################################



display elas_KL,elas_KLE,elas_KLEM,sigma_prod,elas_ps1,elas_ps1a,elas_ps,elas_psa,elas_pst,elas_psta,elas_psx,elas_psxa,detect;



parameter NG_Chem(sec);
NG_chem(sec) = 0;

*identify the Tranport and the Electricity Commodities !!!Warning, they must exists in the SAM in use!!!
set shelfreg(r)
/
R5
/;



* energy commodities besides gas
set encom(com)
/
pFUL
pOIL
pBIO
*pH2
/;

* gas commodities
set gascom(com)
/
pNG
pTPI
/;

set h2com(com)
/
pH2
pTPI
/;

* extracted commodities
set extcom(com)
/
*pCOA
pOIL
pNG
/;

* transport commodities
set trs(com) /
pTAI     air tranport
pTLL     light duty land transport
pTLH     heavy duty land transport
pTRW     railway transport
pTSE     sea transport
/;

* services
set srv(com) /
pHEA     health services
pHOT     hotels and restaurant
pOFF     administration
pOTH     other services
pWSR     retail
/;

* extraction sectors
set extsecs(sec)
/
*iCOA
iCOI
iNG
iMIN
*iAGR
/;

* refinery sectors
set refsecs(sec)/
* HERE I NEED TO PUT iREF
iREF
/;

* gas sectors
set gassecs(sec)/
iNG
/;

* energy intensive industries
set eiisecs(*) /
iMEA
iCHA
/;

* ordinary industries
set oisecs(sec) /
iAGR
iFIS
iRES
/;

* power sectors
set powsecs(sec)/
iPOW
iPTD
/;

* service commodities
set sicom(g) /
pCON
pHEA
pHOT
pOTH
pOFF
pWSR
*pMVT
/;

* in Qprod need to have pBIO        pCOA        pNG        pFUL        pPOW
set indsecs(sec) /
iRES
iMEA
iCHA
iCON
/;

* service sectors
* in Qprod need to have pBIO, pFUL and pPOW
set sisecs(sec) /
iOTH
iWSR
iHOT
iOFF
iHEA
*iMVT
/;

* transport sectors
*need to have pFUL, pPOW in Qprod at the beginning
set tisecs(sec) /
iTRW
iTLH
iTLL
iTSS
*iTSG
*iTSPG
*iTSPR
*iTSPH
*iTSPC
*iTSI
*iTAI
/;

* light duty transport sectors
set ldtsecs(sec) /
iTLL
/;

* light duty transport sectors
set hdtsecs(sec) /
iTLH
/;

* railway transport sectors
set railsecs(sec) /
iTRW
/;


set seasecs(sec) /
iTSS
*iTSG
*iTSPG
*iTSPR
*iTSPH
*iTSPC
*iTSI
/;

* air transport sectors
set airsecs(sec) /
*iTAI
/;


set CCSsecs(sec) sectors with CCS /
iH2C
/;

* power services
set powcom(com) /
pPOW
pPTD
/;

* fossil fuels
set fosfuels(com) /
pFUL
pOIL
pNG
/;


* sets for KLEM analysis
* energy nest
set eng(com) /
pBIO     biofuels
pOIL     petroleoum
pNG      natural gas
pFUL     fuel
pPOW     electricity
pPTD     electricity transmission
pH2      hydrogen
/;

* material nest
set mtl(com) /
pAGR     agriculture products
pFIS    aquaculture products
pTAI     air tranport
pTLL     light duty land transport
pTLH     heavy duty land transport
pTPI     pipelines transmission
pTRW     railway transport
pTSE     sea transport
pCON     constructions
pHEA     health services
pHOT     hotels and restaurant
pOFF     administration
pOTH     other services
pWSR     retail
pMEA     metals
pCHA     chemicals
pMIN     mining
pRES     manufactory
pLTH     low temperature heating
*pMVT     wholesale and repair of vehicles
/;


set spc(sec) sectors with specific capital/
iV2G
/;

alias(srv,srvv);

parameter FF(com);
FF(com)=0;
FF(fosfuels)=1;

scalar nwel new elasticity /0.1/;
scalar trel transport elasticity /0.2/;
*0.7

* update elasticities if we use external shares
sigma_prod("E", indsecs)$(ITD eq 1) = 0.7;
sigma_prod("E", sisecs)$(STD eq 1) = 0.7;
sigma_prod("E", powsecs)$(PTD eq 1) = nwel;
sigma_prod("E", hdtsecs)$(HDD eq 1) = trel;
sigma_prod("E", ldtsecs)$(LDD eq 1) = trel;
sigma_prod("E", railsecs)$(RTD eq 1) = trel;
sigma_prod("E", seasecs)$(MTD eq 1) = trel;
sigma_prod("E", airsecs)$(ATD eq 1) = trel;
sigma_prod("E", sec)$(BE eq 1) = 1;
**sigma_prod("E", sec)$(TD eq 1 and TTD eq 1 and tisecs(sec) ) = 0.05;


parameter SAMEM(r,g,*);
SAMEM(r,g,s)$fosfuels(g)=IOZ(r,g,s);
SAMEM(r,g,hh)$fosfuels(g)=IC(hh,r,g);
SAMEM(r,g,"INV")$fosfuels(g)=IC("INV",r,g);
SAMEM(r,g,"GOVT")$fosfuels(g)=IC("GOVT",r,g);


set matcom(com) ;

matcom(com) = YES;
matcom(encom) = NO;
matcom(powcom) = NO;
matcom(gascom) = NO;
matcom(trs) = NO;

Parameter R_S(cnt) Staus 0 is normal - 1 is special;
R_S(cnt) = 1;



*PAOLO===========================11)=======================
* ============                             ===================
* ============      CAPITAL ACCUMULATION   ===================
* ============                             ===================
*Parameters only active if the model has been chosen to be dynamic-recursive

parameter Kap(r) total capital in the economy
depr(r)
ror(r);
scalar GtK GDP to Capital multiplier (Capital output ratio AMECO)/2.8/;
parameter CaDe(r) capital decrease from phase off sectors;

* productivity goes for 4 periods of 14 years each 2007-2021-2036-2050
scalar prd productivity /0/;
scalar prdIND productivity industry /0/;

* data from "Long-term Perspectives on the Norwegian Economy 2021"

* yearly GDP -->  0.018
* yearly population growth -> 0.0031

parameter
pop      population growth (year)  /0.0031/
grow     economic growth          /0.018/;

parameter Hpop(hous)/
H1  -0.00259
H2  -0.000504
H3   0.00108
H4   0.013732
H5   0.002476
/;


Set year /2018*2050/;

parameter
growF(year,r)  /
2018 . R1   0.03
2018 . R2   0
2018 . R3   0
2018 . R4   0.03
2018 . R5   -0.03

2019 . R1   0.03
2019 . R2   0
2019 . R3   0
2019 . R4   0.03
2019 . R5   -0.03

2020 . R1   0.03
2020 . R2   0.03
2020 . R3   -0.03
2020 . R4   0.03
2020 . R5   0

2021 . R1   0.03
2021 . R2   0.03
2021 . R3   -0.03
2021 . R4   0.03
2021 . R5   0

2022 . R1   0.03
2022 . R2   0
2022 . R3   0
2022 . R4   0.03
2022 . R5   -0.03

2023 . R1   0.03
2023 . R2   0
2023 . R3   0
2023 . R4   0.03
2023 . R5   -0.03

2024 . R1   0.03
2024 . R2   0
2024 . R3   0
2024 . R4   0.03
2024 . R5   -0.03

2025 . R1   0.03
2025 . R2   0
2025 . R3   0
2025 . R4   0.03
2025 . R5   -0.03

2026 . R1   0.03
2026 . R2   -0.03
2026 . R3   -0.03
2026 . R4   0
2026 . R5   0

2027 . R1   0.03
2027 . R2   -0.03
2027 . R3   -0.03
2027 . R4   0
2027 . R5   0

2028 . R1   0.03
2028 . R2   0
2028 . R3   -0.03
2028 . R4   0.03
2028 . R5   -0.03

2029 . R1   0.03
2029 . R2   0
2029 . R3   -0.03
2029 . R4   0.03
2029 . R5   -0.03

2030 . R1   0
2030 . R2   0.03
2030 . R3   0
2030 . R4   0.03
2030 . R5   0

2031 . R1   0
2031 . R2   0
2031 . R3   0
2031 . R4   0
2031 . R5   0

2032 . R1   0
2032 . R2   0
2032 . R3   0
2032 . R4   0
2032 . R5   0

2033 . R1   0
2033 . R2   0
2033 . R3   0
2033 . R4   0
2033 . R5   0

2034 . R1   0
2034 . R2   0
2034 . R3   0
2034 . R4   0
2034 . R5   0

2035 . R1   0
2035 . R2   0
2035 . R3   0
2035 . R4   0
2035 . R5   0

2036 . R1   0
2036 . R2   0
2036 . R3   0
2036 . R4   0
2036 . R5   0

2037 . R1   0
2037 . R2   0
2037 . R3   0
2037 . R4   0
2037 . R5   0

2038 . R1   0
2038 . R2   0
2038 . R3   0
2038 . R4   0
2038 . R5   0

2039 . R1   0
2039 . R2   0
2039 . R3   0
2039 . R4   0
2039 . R5   0

2040 . R1   0
2040 . R2   0
2040 . R3   0
2040 . R4   0
2040 . R5   0

2041 . R1   0
2041 . R2   0
2041 . R3   0
2041 . R4   0
2041 . R5   0

2042 . R1   0
2042 . R2   0
2042 . R3   0
2042 . R4   0
2042 . R5   0

2043 . R1   0
2043 . R2   0
2043 . R3   0
2043 . R4   0
2043 . R5   0

2044 . R1   0
2044 . R2   0
2044 . R3   0
2044 . R4   0
2044 . R5   0

2045 . R1   0
2045 . R2   0
2045 . R3   0
2045 . R4   0
2045 . R5   0

2046 . R1   0
2046 . R2   0
2046 . R3   0
2046 . R4   0
2046 . R5   0

2047 . R1   0
2047 . R2   0
2047 . R3   0
2047 . R4   0
2047 . R5   0

2048 . R1   0
2048 . R2   0
2048 . R3   0
2048 . R4   0
2048 . R5   0

2049 . R1   0
2049 . R2   0
2049 . R3   0
2049 . R4   0
2049 . R5   0

2050 . R1   0
2050 . R2   0
2050 . R3   0
2050 . R4   0
2050 . R5   0
/;


parameter ElasA(r);
ElasA(r)=0.1;

*Change the positive ones to 1 and zero and negative to 0
parameter
FA(year,r)  /
2018 . R1   1
2018 . R2   0
2018 . R3   0
2018 . R4   1
2018 . R5   0

2019 . R1   1
2019 . R2   0
2019 . R3   0
2019 . R4   1
2019 . R5   0

2020 . R1   1
2020 . R2   1
2020 . R3   0
2020 . R4   1
2020 . R5   0

2021 . R1   1
2021 . R2   1
2021 . R3   0
2021 . R4   1
2021 . R5   0

2022 . R1   1
2022 . R2   0
2022 . R3   0
2022 . R4   1
2022 . R5   0

2023 . R1   1
2023 . R2   0
2023 . R3   0
2023 . R4   1
2023 . R5   0

2024 . R1   1
2024 . R2   0
2024 . R3   0
2024 . R4   1
2024 . R5   0

2025 . R1   1
2025 . R2   0
2025 . R3   0
2025 . R4   1
2025 . R5   0

2026 . R1   1
2026 . R2   0
2026 . R3   0
2026 . R4   0
2026 . R5   0

2027 . R1   1
2027 . R2   0
2027 . R3   0
2027 . R4   0
2027 . R5   0

2028 . R1   1
2028 . R2   0
2028 . R3   0
2028 . R4   1
2028 . R5   0

2029 . R1   1
2029 . R2   0
2029 . R3   0
2029 . R4   1
2029 . R5   0

2030 . R1   0
2030 . R2   1
2030 . R3   0
2030 . R4   1
2030 . R5   0

2031 . R1   0
2031 . R2   0
2031 . R3   0
2031 . R4   0
2031 . R5   0

2032 . R1   0
2032 . R2   0
2032 . R3   0
2032 . R4   0
2032 . R5   0

2033 . R1   0
2033 . R2   0
2033 . R3   0
2033 . R4   0
2033 . R5   0

2034 . R1   0
2034 . R2   0
2034 . R3   0
2034 . R4   0
2034 . R5   0

2035 . R1   0
2035 . R2   0
2035 . R3   0
2035 . R4   0
2035 . R5   0

2036 . R1   0
2036 . R2   0
2036 . R3   0
2036 . R4   0
2036 . R5   0

2037 . R1   0
2037 . R2   0
2037 . R3   0
2037 . R4   0
2037 . R5   0

2038 . R1   0
2038 . R2   0
2038 . R3   0
2038 . R4   0
2038 . R5   0

2039 . R1   0
2039 . R2   0
2039 . R3   0
2039 . R4   0
2039 . R5   0

2040 . R1   0
2040 . R2   0
2040 . R3   0
2040 . R4   0
2040 . R5   0

2041 . R1   0
2041 . R2   0
2041 . R3   0
2041 . R4   0
2041 . R5   0

2042 . R1   0
2042 . R2   0
2042 . R3   0
2042 . R4   0
2042 . R5   0

2043 . R1   0
2043 . R2   0
2043 . R3   0
2043 . R4   0
2043 . R5   0

2044 . R1   0
2044 . R2   0
2044 . R3   0
2044 . R4   0
2044 . R5   0

2045 . R1   0
2045 . R2   0
2045 . R3   0
2045 . R4   0
2045 . R5   0

2046 . R1   0
2046 . R2   0
2046 . R3   0
2046 . R4   0
2046 . R5   0

2047 . R1   0
2047 . R2   0
2047 . R3   0
2047 . R4   0
2047 . R5   0

2048 . R1   0
2048 . R2   0
2048 . R3   0
2048 . R4   0
2048 . R5   0

2049 . R1   0
2049 . R2   0
2049 . R3   0
2049 . R4   0
2049 . R5   0

2050 . R1   0
2050 . R2   0
2050 . R3   0
2050 . R4   0
2050 . R5   0
/;


*        Define the reference price and quantity indices:
*grow=(1+grow*GR)*GDPcal-1;
* long formula to relate GDPcal which is on the whole period, with grow, that is only for one year.
* GR sets grow to zero if we do not consider growth
*grow=(((1+grow)**(2050-2018)*GDPcal)**(1/(2050-2018))-1)*GR;

* activate/deactivate if we are using growth.
grow=grow*GR;
*update the population growth as well
*pop=(((1+pop)**(2050-2018)*GDPcal)**(1/(2050-2018))-1);
pop=(((1+pop)**(2050-2018))**(1/(2050-2018))-1);

* definition of capital
* GDP*GtK
Kap(r)=(sum((hh,labours),LSZ(hh,labours,r))+sum(hh,KSZ(hh,r))+sum(s,TAXPZ(r,s)))*GtK;
ror(r)=sum(hh,KSZ(hh,r))/Kap(r);
* K(1-depr)+I=K(1+grow)
depr(r)=ITZ(r)/Kap(r)-grow;

depr(r)=depr(r)*DEcal;
display pop,grow,Kap,ror,KSZ,depr,ITZ,GtK;
parameter goodshare(g);
goodshare(g)=1/ord(g);

parameter phase_out(r, g);
phase_out(r, g) = 0;

parameter Qprod(r,g,s);
Qprod(r,g,s)=IOZ(r,g,s)+IOZ(r,g,s)*trmz(r,g);

set worldcom(g) /
pOIL
pNG
/;

* ############### MODIFY LIMITS ON POWER PRODUCTION ###############

* ################################################################

parameter CCS_IOZ(g) /
pCHA          0.095
pOTH          0.167
pRES          0.018
pOFF          0.019
pLTH          0.466
pPOW          0.155
/;




* define consumption clusters
* Travel
* Objects (clothes, electronics etc...)
* Services
* Energy

set Travel(g) fuels and transport services/
pTRW
pTPI
pTLL
pTLH
pTSE
pTAI
/;

set Objects(g) /
pCON
pMEA
pCHA
pMIN
pRES
pLTH
*pMVT
/;


set Services(g)/
pHOT
pHEA
pOFF
pOTH
pWSR
/;

set Energy(g) /
pNG
pOIL
pBIO
pFUL
pH2
/;


set Electricity(g) /
pPOW
pPTD
/;

* ==================== EMISSIONS =========================

Parameter
*CO2 allowances create unbalancement in the output SAM. Needs to be analysed.
CO2B                    co2 budget
CO2r(cnt,com,*)         emission factors
EmissionTest(cnt,com,*);
CO2r(cnt,com,sec)=0;
* source: co2 factors for norway (EmissionsByFuelAndSector sheet 2007)
* gFUL mapped into KER, JET and LD using proportion of IOZ from SAM.
* the total emissions for each pollutant have been distributed by region based on the SAM
Table CO2Fuel(com,cnt)
                  R1                R2                 R3                 R4                 R5
pOIL        3.919780405        0.706460214        0.468465921        0.320172585        5.666851175
pNG         0.332022935        0.091608446        0.05113285         0.033254481        0.563362277
pFUL        16.18591161        6.865528394        7.321606147        11.47808886        0.512442995
;

CO2B=0;

* Emissions in 2007: 55 Million tonnes CO2 equivalent
* Estimate for 2030: 41 Million tonnes
* Estimate for 2050: 26 Million tonnes (47%)


* distribute the impact of each fuel per sector based on its usage
CO2r(cnt,com,sec)$(fosfuels(com) and not (sameas(sec,'iCHA') and sameas(com,'pNG')))=CO2Fuel(com,cnt)/(sum(s$(not (sameas(s,'iCHA') and sameas(com,'pNG'))),IOZ(cnt,com,s)+IOZ(cnt,com,s)*trmz(cnt,com))+(sum(hh,IC(hh,cnt,com))+sum(hh,IC(hh,cnt,com))*trmz(cnt,com))+TMXZ(cnt,com));
CO2r(cnt,com,hh)$(CZ(hh,cnt,com) and fosfuels(com))=CO2Fuel(com,cnt)/(sum(s$(not (sameas(s,'iCHA') and sameas(com,'pNG'))),IOZ(cnt,com,s)+IOZ(cnt,com,s)*trmz(cnt,com))+sum(hous,IC(hous,cnt,com))+sum(hous,(IC(hous,cnt,com))*trmz(cnt,com))+TMXZ(cnt,com));
*CO2r(cnt,com,"INV")$(SAM(cnt,com,"INV") and fosfuels(com))=CO2Fuel(com,cnt)/(sum(s,SAM(cnt,com,s))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
*CO2r(cnt,com,"GOVT")$(SAM(cnt,com,"GOVT") and fosfuels(com))=CO2Fuel(com,cnt)/(sum(s,SAM(cnt,com,s))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
CO2r(cnt,com,"tmarg")$(TMXZ(cnt,com) and fosfuels(com))=CO2Fuel(com,cnt)/(sum(s$(not (sameas(s,'iCHA') and sameas(com,'pNG'))),IOZ(cnt,com,s)+IOZ(cnt,com,s)*trmz(cnt,com))+(sum(hh,IC(hh,cnt,com))+sum(hh,IC(hh,cnt,com))*trmz(cnt,com))+TMXZ(cnt,com));
* reduce emissions from sectors with CCS.


EmissionTest(cnt,com,sec)$(fosfuels(com))=CO2r(cnt,com,sec)*(IOZ(cnt,com,sec)+IOZ(cnt,com,sec)*trmz(cnt,com));
EmissionTest(cnt,com,hh)$(fosfuels(com))=CO2r(cnt,com,hh)*(IC(hh,cnt,com)+IC(hh,cnt,com)*trmz(cnt,com));
*EmissionTest(cnt,com,"INV")$(fosfuels(com))=CO2r(cnt,com,"INV")*SAM(cnt,com,"INV");
*EmissionTest(cnt,com,"GOVT")$(fosfuels(com))=CO2r(cnt,com,"GOVT")*SAM(cnt,com,"GOVT");
EmissionTest(cnt,com,"tmarg")$(fosfuels(com))=CO2r(cnt,com,"tmarg")*TMXZ(cnt,com);



* =================== New sectors ========================

* input materials
parameter InputM(sec,com) Hydrogen Materials input
/
iH2S.pOFF   0.2
iH2S.pRES   0.58
iH2C.pOFF   0.2
iH2C.pRES   0.58
iH2E.pOFF   0.1
iH2E.pRES   0.02
/;

* input energy
parameter InputE(sec,com) Hydrogen Energy input
/
iH2S.pNG    0.76
iH2C.pNG    0.76
iH2E.pPOW   3.46
/;

* input capital and labour
parameter InputK(sec),H2LabShares(labours), InputL(labours,sec) Hydrogen KL input;
*H2 production labour shares are same as in manufacturing, which are similar to electricity gen (H2E)
H2LabShares("L1")=0.13;
H2LabShares("L2")=0.16;
H2LabShares("L3")=0.18;
H2LabShares("L4")=0.21;
H2LabShares("L5")=0.33;
InputL(labours,"iH2S")= H2LabShares(labours)*0.21;
InputK("iH2S")= 1.34;
InputL(labours,"iH2E")= H2LabShares(labours)*0.1;
InputK("iH2E")= 0.53;
InputL(labours,"iH2C")= H2LabShares(labours)*0.21;
InputK("iH2C")= 1.34*1.05;
InputK("iV2G")= 1;


parameter specificK(r,s) specific capital;
specificK(r,"iV2G")=0.01


* output new sectors energy
parameter Output(sec,com) Hydrogen output
/
iH2S.pH2    3
iH2C.pH2    3
iH2E.pH2    3
iV2G.pPOW   1
/;


parameter open(sec);
open(sec)=0;
open("iH2E")$(HTC eq 2 or HTC eq 3)=1;
open("iH2C")$(HTC eq 1 or HTC eq 3)=1;
open("iH2S")$(HTC eq 1 or HTC eq 3)=1;
*open("iV2G")=0;


parameter newelas(sec,*);
newelas("iH2S",'KL')= elas_KL('iNG');
newelas("iH2S",'KLE')= elas_KLE('iNG');
newelas("iH2S",'KLEM')= elas_KLEM('iNG');
newelas("iH2C",'KL')= elas_KL('iNG');
newelas("iH2C",'KLE')= elas_KLE('iNG');
newelas("iH2C",'KLEM')= elas_KLEM('iNG');
newelas("iH2E",'KL')= elas_KL('iNG');
newelas("iH2E",'KLE')= elas_KLE('iNG');
newelas("iH2E",'KLEM')= elas_KLEM('iNG');

* =================== New commodities ========================

parameter elas_psn(g),elas_ps1n(g);
elas_psn('pH2')=elas_psa('pNG');
elas_ps1n('pH2')=elas_ps1a('pNG');

parameter elas_pstn(g),elas_psxn(g);
elas_pstn('pH2')=elas_psta('pNG');
elas_psxn('pH2')=elas_psxa('pNG');


* structure of the armington sector for the new commodity
parameter Aout(r,g),XXDN(r,g),tmn(g,rt,r),MROWN(r,g),x0n(g,rt,r);
Aout(r,'pH2')$(H2m eq 1)=XZ(r,'pNG')+TaxedTradeMargins(r,'pNG');
Aout(r,'pH2')$(H2m eq 0)=XZ(r,'pNG')+TaxedTradeMargins(r,'pNG')-MROWZ(r,'pNG');
XXDN(r,'pH2')=XXDZ(r,'pNG');
tmn('pH2',rt,r)=trademargins('pNG', rt, r);
MROWN(r,'pH2')$(H2m eq 1)=MROWZ(r,'pNG');
MROWN(r,'pH2')$(H2m eq 0)=0;
x0n('pH2',rt,r)=x0('pNG',rt,r);
tmn('pH2',r,rt)=trademargins('pNG', r, rt);

* Normalize Armington Structure to unit to avoid numerical issues.
XXDN(r,'pH2')=XXDN(r,'pH2')/Aout(r,'pH2');
tmn('pH2',rt,r)=tmn('pH2',rt,r)/Aout(r,'pH2');
MROWN(r,'pH2')=MROWN(r,'pH2')/Aout(r,'pH2');
x0n('pH2',rt,r)=x0n('pH2',rt,r)/Aout(r,'pH2');
Aout(r,'pH2')=Aout(r,'pH2')/Aout(r,'pH2');



* Exports of H2
parameter XXDM(r,g),EROWM(r,g),x0m(g,rt,r),y0m(r,s,g);
XXDM(r,'pH2')$(H2e eq 1)=XXDZ(r,'pNG')/sum(s,y0(r,s,'pNG'));
x0m('pH2',r,rt)$(H2e eq 1)=x0('pNG',r,rt)/sum(s,y0(r,s,'pNG'));
EROWM(r,'pH2')$(H2e eq 1)=EROWZ(r,'pNG')/sum(s,y0(r,s,'pNG'));

*EROWZ(r,'pNG')*XXDZ(r,'pNG')/(XXDZ(r,'pNG')+sum(rt,x0('pNG',r,rt)))

XXDM(r,'pH2')$(H2e eq 0)=(XXDZ(r,'pNG')+EROWZ(r,'pNG')*XXDZ(r,'pNG')/(XXDZ(r,'pNG')+sum(rt,x0('pNG',r,rt))) )/sum(s,y0(r,s,'pNG'));
x0m('pH2',r,rt)$(H2e eq 0)=(x0('pNG',r,rt)+EROWZ(r,'pNG')*x0('pNG',r,rt)/(XXDZ(r,'pNG')+sum(rtt,x0('pNG',r,rtt))) )/sum(s,y0(r,s,'pNG'));
EROWM(r,'pH2')$(H2e eq 0)=0;



y0m(r,'iH2E','pH2')$(HTC eq 3)=0.33;
y0m(r,'iH2S','pH2')$(HTC eq 3)=0.34;
y0m(r,'iH2C','pH2')$(HTC eq 3)=0.33;
y0m(r,'iH2E','pH2')$(HTC eq 2)=1;
y0m(r,'iH2S','pH2')$(HTC eq 1)=0.5;
y0m(r,'iH2C','pH2')$(HTC eq 1)=0.5;


* =================== New CCS capabilities ========================
parameters CCSind(r,s) emission reduction parameter (start from 1 and go to 0.2),
CCSup(r,s) increase in capital costs (start from 1 and go to 1.08);

*initialize at 1
CCSind(r,s)=1;
CCSup(r,s)=1;

set H2A(sec) Hard-to-abate sectors /
iCHA
iMEA
iMIN
/;


scalar push /0.1/;
scalar gdwn gas down /1/;
scalar idwn invest in fossils down /1/;
scalar pup  power up for exports /1/;

execute_unload  'textExport.gdx', Aout,XXDN,tmn,MROWN,x0n,XXDM,EROWM,x0m,y0m;

*$exit
* ================ Technological Change ====================
*j.        Read input from openENTRANCE platform

* openENTRANCE
* REMOVE blanks before reading the file "the netherlands" --> "thenetherlands"
* ====== Include IAMC input file ============0
*=== Import from Excel using GDX utilities

*Set year /2018*2050/;
set prds /2020,2025,2030,2035,2040,2045,2050/;

parameter prdE, prdL, prdK, prdEle, prdT, GG(sec) energy intensity. labour and capital productivity and cumulated sectoral total factor productivity. prdT models the decrease in use of transport;
prdE=1;
prdL=1;
prdK=1;
prdT=1;
GG(sec)=1;
prdEle=1;

parameter lastp;
set
        TFIRST(year),
        TLAST(year);
lastp=card(year);
TFIRST(year) = YES$(ORD(year) EQ 1);
TLAST(year) =  YES$(ORD(year) EQ CARD(year));

* primary energy from GENeSYS-MOD
set source
/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'
'SecondaryEnergy|Electricity|Coal|w/oCCS'
'SecondaryEnergy|Electricity|Gas|w/oCCS'
'SecondaryEnergy|Electricity|Geothermal'
'SecondaryEnergy|Electricity|Hydro'
'SecondaryEnergy|Electricity|Nuclear'
'SecondaryEnergy|Electricity|Oil|w/oCCS'
'SecondaryEnergy|Electricity|Solar|PV'
'SecondaryEnergy|Electricity|Wind|Onshore'
'SecondaryEnergy|Electricity|Wind|Offshore'
'FinalEnergy|Industry|Electricity'
'FinalEnergy|Industry|Gases'
'FinalEnergy|Industry|Hydrogen'
'FinalEnergy|Industry|Liquids|Oil'
'FinalEnergy|Industry|Solids|Biomass'
'FinalEnergy|Industry|Solids|Coal'
'FinalEnergy|ResidentialandCommercial|Electricity'
'FinalEnergy|ResidentialandCommercial|Gases'
'FinalEnergy|ResidentialandCommercial|Hydrogen'
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'
'FinalEnergy|LightTransportation|Electricity'
'FinalEnergy|LightTransportation|Liquids|Biomass'
'FinalEnergy|LightTransportation|Liquids|Oil'
'FinalEnergy|LightTransportation|Hydrogen'
'FinalEnergy|HeavyTransportation|Electricity'
'FinalEnergy|HeavyTransportation|Liquids|Biomass'
'FinalEnergy|HeavyTransportation|Hydrogen'
'FinalEnergy|HeavyTransportation|Liquids|Oil'
'FinalEnergy|SeaTransportation|Electricity'
'FinalEnergy|SeaTransportation|Liquids|Biomass'
'FinalEnergy|SeaTransportation|Hydrogen'
'FinalEnergy|SeaTransportation|Liquids|Oil'
'FinalEnergy|RailTransportation|Electricity'
'FinalEnergy|RailTransportation|Liquids|Biomass'
'FinalEnergy|RailTransportation|Liquids|Oil'
'FinalEnergy|AirTransportation|Electricity'
'FinalEnergy|AirTransportation|Hydrogen'
'FinalEnergy|AirTransportation|Liquids|Biomass'
'FinalEnergy|AirTransportation|Liquids|Oil'
/;

* Technology change for energy nest
*tech for power sector
set source1(source)
/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'
'SecondaryEnergy|Electricity|Coal|w/oCCS'
'SecondaryEnergy|Electricity|Gas|w/oCCS'
'SecondaryEnergy|Electricity|Geothermal'
'SecondaryEnergy|Electricity|Hydro'
'SecondaryEnergy|Electricity|Nuclear'
'SecondaryEnergy|Electricity|Oil|w/oCCS'
'SecondaryEnergy|Electricity|Solar|PV'
'SecondaryEnergy|Electricity|Wind|Onshore'
'SecondaryEnergy|Electricity|Wind|Offshore'
/;

*tech for industry sector
set source2(source)
/
'FinalEnergy|Industry|Electricity'
'FinalEnergy|Industry|Gases'
'FinalEnergy|Industry|Hydrogen'
'FinalEnergy|Industry|Liquids|Oil'
'FinalEnergy|Industry|Solids|Biomass'
'FinalEnergy|Industry|Solids|Coal'
/;

*tech for Light Duty Road transport sector
set source3(source)
/
'FinalEnergy|LightTransportation|Electricity'
'FinalEnergy|LightTransportation|Liquids|Biomass'
'FinalEnergy|LightTransportation|Liquids|Oil'
'FinalEnergy|LightTransportation|Hydrogen'
/;

*tech for Heavy Duty Road transport sector
set source4(source)
/
'FinalEnergy|HeavyTransportation|Electricity'
'FinalEnergy|HeavyTransportation|Liquids|Biomass'
'FinalEnergy|HeavyTransportation|Hydrogen'
'FinalEnergy|HeavyTransportation|Liquids|Oil'
/;

*tech for Sea transport sector
set source5(source)
/
'FinalEnergy|SeaTransportation|Electricity'
'FinalEnergy|SeaTransportation|Liquids|Biomass'
'FinalEnergy|SeaTransportation|Hydrogen'
'FinalEnergy|SeaTransportation|Liquids|Oil'
/;

*tech for Railway transport sector
set source6(source)
/
'FinalEnergy|RailTransportation|Electricity'
'FinalEnergy|RailTransportation|Liquids|Biomass'
'FinalEnergy|RailTransportation|Liquids|Oil'
/;


*tech for service sector and households
set source7(source)
/
'FinalEnergy|ResidentialandCommercial|Electricity'
'FinalEnergy|ResidentialandCommercial|Gases'
'FinalEnergy|ResidentialandCommercial|Hydrogen'
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'
/;


set source8(source)
/
'FinalEnergy|AirTransportation|Electricity'
'FinalEnergy|AirTransportation|Hydrogen'
'FinalEnergy|AirTransportation|Liquids|Biomass'
'FinalEnergy|AirTransportation|Liquids|Oil'
/;

* countries from GENeSYS-MOD


$ontext
*=== First unload to GDX file (occurs during compilation phase)
$ifthen %CaseStudy%==0
$call gdxxrw.exe TIMES2REMESNoH2.xlsx par=PrimaryEnergy rng=DATA!A1:C241 cdim=1 rdim=2
$endif

$ifthen %CaseStudy%==1
$call gdxxrw.exe TIMES2REMESNoH2.xlsx par=PrimaryEnergy rng=DATA!A1:C241 cdim=1 rdim=2
$endif

$ifthen %CaseStudy%==2
$call gdxxrw.exe TIMES2REMES.xlsx par=PrimaryEnergy rng=DATA!A1:C241 cdim=1 rdim=2
$endif

$ifthen %CaseStudy%==3
$call gdxxrw.exe TIMES2REMES.xlsx par=PrimaryEnergy rng=DATA!A1:C241 cdim=1 rdim=2
$endif


$ifthen %CaseStudy%==4
$call gdxxrw.exe TIMES2REMES_INC.xlsx par=PrimaryEnergy rng=DATA!A1:C289 cdim=1 rdim=2
$endif

$ifthen %CaseStudy%==5
$call gdxxrw.exe TIMES2REMES_TEC.xlsx par=PrimaryEnergy rng=DATA!A1:C289 cdim=1 rdim=2
$endif

$ifthen %CaseStudy%==6
$call gdxxrw.exe TIMES2REMES_SOC.xlsx par=PrimaryEnergy rng=DATA!A1:C289 cdim=1 rdim=2
$endif

$ifthen %CaseStudy%==7
$call gdxxrw.exe TIMES2REMES_RAD.xlsx par=PrimaryEnergy rng=DATA!A1:C289 cdim=1 rdim=2
$endif
$offtext

*=== Now import data from GDX
Parameter PrimaryEnergy(source,prds,*),
* SelEne is only for the power sector.
SelEnet(source1,prds),SelEne(r,*,s,year),SelEne0(r,*,s,year);

Parameter ConsEneIndt(source2,prds),ConsEneInd(r,*,sec,year),ConsEneInd0(r,*,sec,year),
ConsEneLDt(source3,prds),ConsEneLD(r,*,sec,year),ConsEneLD0(r,*,sec,year),
ConsEneHDt(source4,prds),ConsEneHD(r,*,sec,year),ConsEneHD0(r,*,sec,year),
ConsEneSeat(source5,prds),ConsEneSea(r,*,sec,year),ConsEneSea0(r,*,sec,year),
ConsEneRailt(source6,prds),ConsEneRail(r,*,sec,year),ConsEneRail0(r,*,sec,year),
ConsEneSHt(source7,prds),ConsEneSH(r,*,sec,year),ConsEneSH0(r,*,sec,year),
ConsEneAirt(source8,prds),ConsEneAir(r,*,sec,year),ConsEneAir0(r,*,sec,year);

$ifthen %CaseStudy%==0
$gdxin TIMES2REMESNoH2.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==1
$gdxin TIMES2REMESNoH2.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==2
$gdxin TIMES2REMES.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==3
$gdxin TIMES2REMES.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==4
$gdxin TIMES2REMES_INC.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==5
$gdxin TIMES2REMES_TEC.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==6
$gdxin TIMES2REMES_SOC.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==7
$gdxin TIMES2REMES_RAD.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==8
$gdxin TIMES2REMES_RAD.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==9
$gdxin TIMES2REMES_RAD.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==10
$gdxin TIMES2REMES_RAD.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==11
$gdxin TIMES2REMES_RAD.gdx
$load PrimaryEnergy
$gdxin
$endif

$ifthen %CaseStudy%==12
$gdxin TIMES2REMES_RAD.gdx
$load PrimaryEnergy
$gdxin
$endif

* taken from oePathway.gdx
SelEnet(source1,prds)=
PrimaryEnergy(source1,prds,'VALUE');
ConsEneIndt(source2,prds)=
PrimaryEnergy(source2,prds,'VALUE');
ConsEneLDt(source3,prds)=
PrimaryEnergy(source3,prds,'VALUE');
ConsEneHDt(source4,prds)=
PrimaryEnergy(source4,prds,'VALUE');
ConsEneSeat(source5,prds)=
PrimaryEnergy(source5,prds,'VALUE');
ConsEneRailt(source6,prds)=
PrimaryEnergy(source6,prds,'VALUE');
ConsEneSHt(source7,prds)=
PrimaryEnergy(source7,prds,'VALUE');
ConsEneAirt(source8,prds)=
PrimaryEnergy(source8,prds,'VALUE');

set linkSor(source1,*)/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'.pBIO
'SecondaryEnergy|Electricity|Coal|w/oCCS'.pNG
'SecondaryEnergy|Electricity|Gas|w/oCCS'.pNG
'SecondaryEnergy|Electricity|Geothermal'.pNG
'SecondaryEnergy|Electricity|Hydro'.K
'SecondaryEnergy|Electricity|Nuclear'.K
'SecondaryEnergy|Electricity|Oil|w/oCCS'.pOIL
'SecondaryEnergy|Electricity|Solar|PV'.K
'SecondaryEnergy|Electricity|Wind|Onshore'.K
'SecondaryEnergy|Electricity|Wind|Offshore'.K
/;

* mapped commodities
set com1(com) /
pBIO
pNG
pOIL
/;

set linkConsInd(source2,com)/
'FinalEnergy|Industry|Electricity'.pPOW
'FinalEnergy|Industry|Gases'.pNG
'FinalEnergy|Industry|Hydrogen'.pH2
'FinalEnergy|Industry|Liquids|Oil'.pFUL
'FinalEnergy|Industry|Liquids|Oil'.pOIL
'FinalEnergy|Industry|Solids|Biomass'.pBIO
'FinalEnergy|Industry|Solids|Coal'.pNG
/;

* this is used only for the sectors that have one external technology mapped to
* many internal technologies. (industry, ld and hd transport and rail transport)
* As a mention 'FinalEnergy|Industry|Liquids|Oil' here is mapped both to pFUL and to pOIL
set gindst(g) multiple commodities mapped to a single external input /
pOIL
pFUL
/;
set gcomindst(g,com) /
pOIL.pOIL
pOIL.pFUL
pFUL.pOIL
pFUL.pFUL
/;

set com2(com) /
pBIO
pNG
pH2
pOIL
pFUL
/;

set linkConsLD(source3,com)/
'FinalEnergy|LightTransportation|Electricity'.pPOW
'FinalEnergy|LightTransportation|Liquids|Biomass'.pBIO
'FinalEnergy|LightTransportation|Liquids|Oil'.pFUL
'FinalEnergy|LightTransportation|Liquids|Oil'.pOIL
'FinalEnergy|LightTransportation|Liquids|Oil'.pNG
'FinalEnergy|LightTransportation|Hydrogen'.pH2
/;

set com3(com) /
pBIO
pPOW
pFUL
pOIL
pNG
pH2
/;

set glduty(g) multiple commodities mapped to a single external input /
pOIL
pFUL
pNG
/;
set gcomlduty(g,com) /
pOIL.pOIL
pOIL.pFUL
pOIL.pNG
pFUL.pOIL
pFUL.pFUL
pFUL.pNG
pNG.pOIL
pNG.pFUL
pNG.pNG
/;


set linkConsHD(source4,com)/
'FinalEnergy|HeavyTransportation|Electricity'.pPOW
'FinalEnergy|HeavyTransportation|Liquids|Biomass'.pBIO
'FinalEnergy|HeavyTransportation|Hydrogen'.pH2
'FinalEnergy|HeavyTransportation|Liquids|Oil'.pFUL
'FinalEnergy|HeavyTransportation|Liquids|Oil'.pOIL
'FinalEnergy|HeavyTransportation|Liquids|Oil'.pNG
/;

set com4(com) /
pPOW
pBIO
pH2
pFUL
pOIL
pNG
/;

set ghduty(g) multiple commodities mapped to a single external input /
pOIL
pFUL
pNG
/;
set gcomhduty(g,com) /
pOIL.pOIL
pOIL.pFUL
pOIL.pNG
pFUL.pOIL
pFUL.pFUL
pFUL.pNG
pNG.pOIL
pNG.pFUL
pNG.pNG
/;


set linkConsSea(source5,com)/
'FinalEnergy|SeaTransportation|Electricity'.pPOW
'FinalEnergy|SeaTransportation|Liquids|Biomass'.pBIO
'FinalEnergy|SeaTransportation|Hydrogen'.pH2
'FinalEnergy|SeaTransportation|Liquids|Oil'.pFUL
/;

set com5(com) /
pPOW
pBIO
pH2
pFUL
/;

set linkConsRail(source6,com)/
'FinalEnergy|RailTransportation|Electricity'.pPOW
'FinalEnergy|RailTransportation|Liquids|Biomass'.pBIO
'FinalEnergy|RailTransportation|Liquids|Oil'.pFUL
'FinalEnergy|RailTransportation|Liquids|Oil'.pOIL
'FinalEnergy|RailTransportation|Liquids|Oil'.pNG
/;

set com6(com) /
pPOW
pBIO
pFUL
pOIL
pNG
/;

set grail(g) multiple commodities mapped to a single external input /
pOIL
pFUL
pNG
/;
set gcomrail(g,com) /
pOIL.pOIL
pOIL.pFUL
pOIL.pNG
pFUL.pOIL
pFUL.pFUL
pFUL.pNG
pNG.pOIL
pNG.pFUL
pNG.pNG
/;

set linkConsSH(source7,com)/
'FinalEnergy|ResidentialandCommercial|Electricity'.pPOW
'FinalEnergy|ResidentialandCommercial|Gases'.pNG
'FinalEnergy|ResidentialandCommercial|Hydrogen'.pH2
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'.pFUL
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'.pBIO
/;

set com7(com) /
pBIO
pNG
pH2
pOIL
pFUL
/;

set linkConsAir(source8,com)/
'FinalEnergy|AirTransportation|Electricity'.pPOW
'FinalEnergy|AirTransportation|Hydrogen'.pH2
'FinalEnergy|AirTransportation|Liquids|Biomass'.pBIO
'FinalEnergy|AirTransportation|Liquids|Oil'.pFUL
/;

set com8(com) /
pPOW
pH2
pBIO
pFUL
/;

set techcom(com) commodities that undergo transition /
pBIO
pNG
pH2
pOIL
pFUL
pPOW
/;

parameter SelEne1(r,g,s,year);
* Transform the data from the openENTRANCE Scenario platform into data understandable by REMES
* aggregate the sources into REMES commodities
SelEne0(r,g,s,year)=0;
SelEne1(r,g,s,year)=0;
SelEne0(r,'K',s,year)=0;
SelEne1(r,g,s,year)$(powsecs(s) and not newcom(g) and sum((cnt,sec)$powsecs(sec),Qprod(cnt,g,sec)))=sum((source1,prds)$(linkSor(source1,g) and (prds.val eq year.val)), SelEnet(source1,prds))*Qprod(r,g,s)/sum((cnt,sec)$powsecs(sec),Qprod(cnt,g,sec));
SelEne0(r,'K',s,year)$(powsecs(s) and ks0(r,s))=sum((source1,prds)$(linkSor(source1,'K') and (prds.val eq year.val)), SelEnet(source1,prds));


*SelEne0(r,g,s,year)$((year.val ge 2020) and powsecs(s))=SelEne1(r,g,s,'2020')+(SelEne1(r,g,s,'2050')-SelEne1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
SelEne0(r,'K',s,year)$((year.val ge 2020) and powsecs(s))=SelEne0(r,'K',s,'2020')+(SelEne0(r,'K',s,'2050')-SelEne0(r,'K',s,'2020'))/(2050-2020)*(year.val-2020);

SelEne0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and powsecs(s))=SelEne1(r,g,s,'2020')+(SelEne1(r,g,s,'2025')-SelEne1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
SelEne0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and powsecs(s))=SelEne1(r,g,s,'2025')+(SelEne1(r,g,s,'2030')-SelEne1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
SelEne0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and powsecs(s))=SelEne1(r,g,s,'2030')+(SelEne1(r,g,s,'2035')-SelEne1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
SelEne0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and powsecs(s))=SelEne1(r,g,s,'2035')+(SelEne1(r,g,s,'2040')-SelEne1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
SelEne0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and powsecs(s))=SelEne1(r,g,s,'2040')+(SelEne1(r,g,s,'2045')-SelEne1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
SelEne0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and powsecs(s))=SelEne1(r,g,s,'2045')+(SelEne1(r,g,s,'2050')-SelEne1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);

SelEne0(r,g,s,year)$(year.val lt 2020)=SelEne0(r,g,s,'2020');
SelEne0(r,'K',s,year)$(year.val lt 2020)=SelEne0(r,'K',s,'2020');
SelEne(r,'K',s,year)$(SelEne0(r,'K',s,year))=SelEne0(r,'K',s,year)/(sum(com,SelEne0(r,com,s,year))+SelEne0(r,'K',s,year));
SelEne(r,g,s,year)$(SelEne0(r,g,s,year))=SelEne0(r,g,s,year)/(sum(com,SelEne0(r,com,s,year))+SelEne0(r,'K',s,year));

parameter ConsEneInd1(r,g,s,year);
* technical structure of the energy nest for Industry, Transport and Services/Households over time.
* initialize at zero
ConsEneInd0(r,g,s,year)=0;
ConsEneInd1(r,g,s,year)=0;

parameter divindst(g);
divindst(g)$(not gindst(g)) = sum((cnt,sec)$indsecs(sec),Qprod(cnt,g,sec));
divindst(g)$gindst(g) = sum((cnt,sec,com)$(indsecs(sec) and gcomindst(g,com) and not newcom(g)),Qprod(cnt,com,sec));
* Allocate ConsEneIndt in the different sectors/regions based on the initial values in the SAM
* sum over openENTRANCE goods and remes goods of ConsEneIndt taken from pathways and then redistribute it based on the data in the SAM
* for every industrial sector
* for every EXISTING energy carrier
* select the good related to the source in the external data (i.e. pair source2 and g)
* select the period related to the milestone in the external data (i.e. pair prds and year)
* allocate the total industry consumption of the considered energy carrier (source2) in the different industrial sectors based on their initial usage (from the SAM)
ConsEneInd1(r,g,s,year)$(indsecs(s) and not newcom(g) and sum((cnt,sec)$indsecs(sec),Qprod(cnt,g,sec)))=sum((source2,prds)$(linkConsInd(source2,g) and (prds.val eq year.val)), ConsEneIndt(source2,prds))*Qprod(r,g,s)/divindst(g);
* NEW commodities (such as H2) are allocated evenly in every sector in the cluster
* for every industrial sector
* for every NEW energy carrier
* select the good related to the source in the external data (i.e. pair source2 and g)
* select the period related to the milestone in the external data (i.e. pair prds and year)
* allocate the total data taken from the external file uniformly across industrial sectors and regions.
ConsEneInd1(r,g,s,year)$(indsecs(s) and newcom(g))=sum((source2,prds)$(linkConsInd(source2,g) and (prds.val eq year.val)), ConsEneIndt(source2,prds)/(card(r)*card(indsecs)));
* linear combination to smooth out
* ConsEneInd0(r,g,s,year)$((year.val ge 2020) and indsecs(s))=ConsEneInd1(r,g,s,'2020')+(ConsEneInd1(r,g,s,'2050')-ConsEneInd1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneInd0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and indsecs(s))=ConsEneInd1(r,g,s,'2020')+(ConsEneInd1(r,g,s,'2025')-ConsEneInd1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneInd0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and indsecs(s))=ConsEneInd1(r,g,s,'2025')+(ConsEneInd1(r,g,s,'2030')-ConsEneInd1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneInd0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and indsecs(s))=ConsEneInd1(r,g,s,'2030')+(ConsEneInd1(r,g,s,'2035')-ConsEneInd1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneInd0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and indsecs(s))=ConsEneInd1(r,g,s,'2035')+(ConsEneInd1(r,g,s,'2040')-ConsEneInd1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneInd0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and indsecs(s))=ConsEneInd1(r,g,s,'2040')+(ConsEneInd1(r,g,s,'2045')-ConsEneInd1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneInd0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and indsecs(s))=ConsEneInd1(r,g,s,'2045')+(ConsEneInd1(r,g,s,'2050')-ConsEneInd1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
* fix periods prior to 2020 to 2020 values
ConsEneInd0(r,g,s,year)$(year.val lt 2020 and indsecs(s))=ConsEneInd0(r,g,s,'2020');
* normalize to unit
ConsEneInd(r,g,s,year)$(ConsEneInd0(r,g,s,year) and indsecs(s))=ConsEneInd0(r,g,s,year)/sum(com,ConsEneInd0(r,com,s,year));


parameter ConsEneLD1(r,g,s,year);
ConsEneLD0(r,g,s,year)=0;
ConsEneLD1(r,g,s,year)=0;
parameter divlduty(g);
divlduty(g)$(not glduty(g)) = sum((cnt,sec)$ldtsecs(sec),Qprod(cnt,g,sec));
divlduty(g)$glduty(g) = sum((cnt,sec,com)$(ldtsecs(sec) and gcomlduty(g,com) and not newcom(g)),Qprod(cnt,com,sec));

ConsEneLD1(r,g,s,year)$(ldtsecs(s) and not newcom(g) and sum((cnt,sec)$ldtsecs(sec),Qprod(cnt,g,sec)))=sum((source3,prds)$(linkConsLD(source3,g) and (prds.val eq year.val)), ConsEneLDt(source3,prds))*Qprod(r,g,s)/divlduty(g);
ConsEneLD1(r,g,s,year)$(ldtsecs(s) and newcom(g))=sum((source3,prds)$(linkConsLD(source3,g) and (prds.val eq year.val)), ConsEneLDt(source3,prds)/(card(r)*card(ldtsecs)));
*ConsEneLD0(r,g,s,year)$((year.val ge 2020) and ldtsecs(s))=ConsEneLD1(r,g,s,'2020')+(ConsEneLD1(r,g,s,'2050')-ConsEneLD1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneLD0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and ldtsecs(s))=ConsEneLD1(r,g,s,'2020')+(ConsEneLD1(r,g,s,'2025')-ConsEneLD1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneLD0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and ldtsecs(s))=ConsEneLD1(r,g,s,'2025')+(ConsEneLD1(r,g,s,'2030')-ConsEneLD1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneLD0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and ldtsecs(s))=ConsEneLD1(r,g,s,'2030')+(ConsEneLD1(r,g,s,'2035')-ConsEneLD1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneLD0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and ldtsecs(s))=ConsEneLD1(r,g,s,'2035')+(ConsEneLD1(r,g,s,'2040')-ConsEneLD1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneLD0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and ldtsecs(s))=ConsEneLD1(r,g,s,'2040')+(ConsEneLD1(r,g,s,'2045')-ConsEneLD1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneLD0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and ldtsecs(s))=ConsEneLD1(r,g,s,'2045')+(ConsEneLD1(r,g,s,'2050')-ConsEneLD1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
ConsEneLD0(r,g,s,year)$(year.val lt 2020 and ldtsecs(s))=ConsEneLD0(r,g,s,'2020');
ConsEneLD(r,g,s,year)$(ConsEneLD0(r,g,s,year) and ldtsecs(s))=ConsEneLD0(r,g,s,year)/sum(com,ConsEneLD0(r,com,s,year));


parameter ConsEneHD1(r,g,s,year);
ConsEneHD0(r,g,s,year)=0;
ConsEneHD1(r,g,s,year)=0;
parameter divhduty(g);
divhduty(g)$(not ghduty(g)) = sum((cnt,sec)$hdtsecs(sec),Qprod(cnt,g,sec));
divhduty(g)$ghduty(g) = sum((cnt,sec,com)$(hdtsecs(sec) and gcomhduty(g,com) and not newcom(g)),Qprod(cnt,com,sec));

ConsEneHD1(r,g,s,year)$(hdtsecs(s) and not newcom(g) and sum((cnt,sec)$hdtsecs(sec),Qprod(cnt,g,sec)))=sum((source4,prds)$(linkConsHD(source4,g) and (prds.val eq year.val)), ConsEneHDt(source4,prds))*Qprod(r,g,s)/divhduty(g);
ConsEneHD1(r,g,s,year)$(hdtsecs(s) and newcom(g))=sum((source4,prds)$(linkConsHD(source4,g) and (prds.val eq year.val)), ConsEneHDt(source4,prds)/(card(r)*card(hdtsecs)));
*ConsEneHD0(r,g,s,year)$((year.val ge 2020) and hdtsecs(s))=ConsEneHD1(r,g,s,'2020')+(ConsEneHD1(r,g,s,'2050')-ConsEneHD1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneHD0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and hdtsecs(s))=ConsEneHD1(r,g,s,'2020')+(ConsEneHD1(r,g,s,'2025')-ConsEneHD1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneHD0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and hdtsecs(s))=ConsEneHD1(r,g,s,'2025')+(ConsEneHD1(r,g,s,'2030')-ConsEneHD1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneHD0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and hdtsecs(s))=ConsEneHD1(r,g,s,'2030')+(ConsEneHD1(r,g,s,'2035')-ConsEneHD1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneHD0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and hdtsecs(s))=ConsEneHD1(r,g,s,'2035')+(ConsEneHD1(r,g,s,'2040')-ConsEneHD1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneHD0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and hdtsecs(s))=ConsEneHD1(r,g,s,'2040')+(ConsEneHD1(r,g,s,'2045')-ConsEneHD1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneHD0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and hdtsecs(s))=ConsEneHD1(r,g,s,'2045')+(ConsEneHD1(r,g,s,'2050')-ConsEneHD1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
ConsEneHD0(r,g,s,year)$(year.val lt 2020 and hdtsecs(s))=ConsEneHD0(r,g,s,'2020');
ConsEneHD(r,g,s,year)$(ConsEneHD0(r,g,s,year) and hdtsecs(s))=ConsEneHD0(r,g,s,year)/sum(com,ConsEneHD0(r,com,s,year));


parameter ConsEneSea1(r,g,s,year);
ConsEneSea0(r,g,s,year)=0;
ConsEneSea1(r,g,s,year)=0;
ConsEneSea1(r,g,s,year)$(seasecs(s) and not newcom(g) and sum((cnt,sec)$seasecs(sec),Qprod(cnt,g,sec)))=sum((source5,prds)$(linkConsSea(source5,g) and (prds.val eq year.val)), ConsEneSeat(source5,prds))*Qprod(r,g,s)/sum((cnt,sec)$seasecs(sec),Qprod(cnt,g,sec));
ConsEneSea1(r,g,s,year)$(seasecs(s) and newcom(g))=sum((source5,prds)$(linkConsSea(source5,g) and (prds.val eq year.val)), ConsEneSeat(source5,prds)/(card(r)*card(seasecs)));
*ConsEneSea0(r,g,s,year)$((year.val ge 2020) and seasecs(s))=ConsEneSea1(r,g,s,'2020')+(ConsEneSea1(r,g,s,'2050')-ConsEneSea1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneSea0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and seasecs(s))=ConsEneSea1(r,g,s,'2020')+(ConsEneSea1(r,g,s,'2025')-ConsEneSea1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneSea0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and seasecs(s))=ConsEneSea1(r,g,s,'2025')+(ConsEneSea1(r,g,s,'2030')-ConsEneSea1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneSea0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and seasecs(s))=ConsEneSea1(r,g,s,'2030')+(ConsEneSea1(r,g,s,'2035')-ConsEneSea1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneSea0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and seasecs(s))=ConsEneSea1(r,g,s,'2035')+(ConsEneSea1(r,g,s,'2040')-ConsEneSea1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneSea0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and seasecs(s))=ConsEneSea1(r,g,s,'2040')+(ConsEneSea1(r,g,s,'2045')-ConsEneSea1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneSea0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and seasecs(s))=ConsEneSea1(r,g,s,'2045')+(ConsEneSea1(r,g,s,'2050')-ConsEneSea1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
ConsEneSea0(r,g,s,year)$(year.val lt 2020 and seasecs(s))=ConsEneSea0(r,g,s,'2020');
ConsEneSea(r,g,s,year)$(ConsEneSea0(r,g,s,year) and seasecs(s))=ConsEneSea0(r,g,s,year)/sum(com,ConsEneSea0(r,com,s,year));

parameter ConsEneRail1(r,g,s,year);
ConsEneRail0(r,g,s,year)=0;
ConsEneRail1(r,g,s,year)=0;

parameter divrail(g);
divrail(g)$(not grail(g)) = sum((cnt,sec)$railsecs(sec),Qprod(cnt,g,sec));
divrail(g)$grail(g) = sum((cnt,sec,com)$(railsecs(sec) and gcomrail(g,com) and not newcom(g)),Qprod(cnt,com,sec));
display divrail;
ConsEneRail1(r,g,s,year)$(railsecs(s) and not newcom(g) and sum((cnt,sec)$railsecs(sec),Qprod(cnt,g,sec)))=sum((source6,prds)$(linkConsRail(source6,g) and (prds.val eq year.val)), ConsEneRailt(source6,prds))*Qprod(r,g,s)/divrail(g);
ConsEneRail1(r,g,s,year)$(railsecs(s) and newcom(g))=sum((source6,prds)$(linkConsRail(source6,g) and (prds.val eq year.val)), ConsEneRailt(source6,prds)/(card(r)*card(railsecs)));
*ConsEneRail0(r,g,s,year)$((year.val ge 2020) and railsecs(s))=ConsEneRail1(r,g,s,'2020')+(ConsEneRail1(r,g,s,'2050')-ConsEneRail1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneRail0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and railsecs(s))=ConsEneRail1(r,g,s,'2020')+(ConsEneRail1(r,g,s,'2025')-ConsEneRail1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneRail0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and railsecs(s))=ConsEneRail1(r,g,s,'2025')+(ConsEneRail1(r,g,s,'2030')-ConsEneRail1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneRail0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and railsecs(s))=ConsEneRail1(r,g,s,'2030')+(ConsEneRail1(r,g,s,'2035')-ConsEneRail1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneRail0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and railsecs(s))=ConsEneRail1(r,g,s,'2035')+(ConsEneRail1(r,g,s,'2040')-ConsEneRail1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneRail0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and railsecs(s))=ConsEneRail1(r,g,s,'2040')+(ConsEneRail1(r,g,s,'2045')-ConsEneRail1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneRail0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and railsecs(s))=ConsEneRail1(r,g,s,'2045')+(ConsEneRail1(r,g,s,'2050')-ConsEneRail1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
ConsEneRail0(r,g,s,year)$(year.val lt 2020 and railsecs(s))=ConsEneRail0(r,g,s,'2020');
ConsEneRail(r,g,s,year)$(ConsEneRail0(r,g,s,year) and railsecs(s))=ConsEneRail0(r,g,s,year)/sum(com,ConsEneRail0(r,com,s,year));


parameter ConsEneSH1(r,g,s,year);
ConsEneSH0(r,g,s,year)=0;
ConsEneSH1(r,g,s,year)=0;
ConsEneSH0(r,g,s,year)=0;
ConsEneSH1(r,g,s,year)=0;
ConsEneSH1(r,g,s,year)$(sisecs(s) and not newcom(g) and sum((cnt,sec)$sisecs(sec),Qprod(cnt,g,sec)))=sum((source7,prds)$(linkConsSH(source7,g) and (prds.val eq year.val)), ConsEneSHt(source7,prds))*Qprod(r,g,s)/sum((cnt,sec)$sisecs(sec),Qprod(cnt,g,sec));
ConsEneSH1(r,g,s,year)$(sisecs(s) and newcom(g))=sum((source7,prds)$(linkConsSH(source7,g) and (prds.val eq year.val)), ConsEneSHt(source7,prds)/(card(r)*card(sisecs)));
*ConsEneAir0(r,g,s,year)$((year.val ge 2020) and airsecs(s))=ConsEneAir1(r,g,s,'2020')+(ConsEneAir1(r,g,s,'2050')-ConsEneAir1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneSH0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and sisecs(s))=ConsEneSH1(r,g,s,'2020')+(ConsEneSH1(r,g,s,'2025')-ConsEneSH1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneSH0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and sisecs(s))=ConsEneSH1(r,g,s,'2025')+(ConsEneSH1(r,g,s,'2030')-ConsEneSH1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneSH0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and sisecs(s))=ConsEneSH1(r,g,s,'2030')+(ConsEneSH1(r,g,s,'2035')-ConsEneSH1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneSH0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and sisecs(s))=ConsEneSH1(r,g,s,'2035')+(ConsEneSH1(r,g,s,'2040')-ConsEneSH1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneSH0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and sisecs(s))=ConsEneSH1(r,g,s,'2040')+(ConsEneSH1(r,g,s,'2045')-ConsEneSH1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneSH0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and sisecs(s))=ConsEneSH1(r,g,s,'2045')+(ConsEneSH1(r,g,s,'2050')-ConsEneSH1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
ConsEneSH0(r,g,s,year)$(year.val lt 2020 and sisecs(s))=ConsEneSH0(r,g,s,'2020');
ConsEneSH(r,g,s,year)$(ConsEneSH0(r,g,s,year) and sisecs(s))=ConsEneSH0(r,g,s,year)/sum(com,ConsEneSH0(r,com,s,year));







parameter ConsEneAir1(r,g,s,year);
ConsEneAir0(r,g,s,year)=0;
ConsEneAir1(r,g,s,year)=0;
ConsEneAir1(r,g,s,year)$(airsecs(s) and not newcom(g) and sum((cnt,sec)$airsecs(sec),Qprod(cnt,g,sec)))=sum((source8,prds)$(linkConsAir(source8,g) and (prds.val eq year.val)), ConsEneAirt(source8,prds))*Qprod(r,g,s)/sum((cnt,sec)$airsecs(sec),Qprod(cnt,g,sec));
ConsEneAir1(r,g,s,year)$(airsecs(s) and newcom(g))=sum((source8,prds)$(linkConsAir(source8,g) and (prds.val eq year.val)), ConsEneAirt(source8,prds)/(card(r)*card(airsecs)));
*ConsEneAir0(r,g,s,year)$((year.val ge 2020) and airsecs(s))=ConsEneAir1(r,g,s,'2020')+(ConsEneAir1(r,g,s,'2050')-ConsEneAir1(r,g,s,'2020'))/(2050-2020)*(year.val-2020);
* more refined method to compute the linear combination to smooth out between every milestone year.
ConsEneAir0(r,g,s,year)$((year.val ge 2020 and year.val le 2025) and airsecs(s))=ConsEneAir1(r,g,s,'2020')+(ConsEneAir1(r,g,s,'2025')-ConsEneAir1(r,g,s,'2020'))/(2025-2020)*(year.val-2020);
ConsEneAir0(r,g,s,year)$((year.val ge 2025 and year.val le 2030) and airsecs(s))=ConsEneAir1(r,g,s,'2025')+(ConsEneAir1(r,g,s,'2030')-ConsEneAir1(r,g,s,'2025'))/(2030-2025)*(year.val-2025);
ConsEneAir0(r,g,s,year)$((year.val ge 2030 and year.val le 2035) and airsecs(s))=ConsEneAir1(r,g,s,'2030')+(ConsEneAir1(r,g,s,'2035')-ConsEneAir1(r,g,s,'2030'))/(2035-2030)*(year.val-2030);
ConsEneAir0(r,g,s,year)$((year.val ge 2035 and year.val le 2040) and airsecs(s))=ConsEneAir1(r,g,s,'2035')+(ConsEneAir1(r,g,s,'2040')-ConsEneAir1(r,g,s,'2035'))/(2040-2035)*(year.val-2035);
ConsEneAir0(r,g,s,year)$((year.val ge 2040 and year.val le 2045) and airsecs(s))=ConsEneAir1(r,g,s,'2040')+(ConsEneAir1(r,g,s,'2045')-ConsEneAir1(r,g,s,'2040'))/(2045-2040)*(year.val-2040);
ConsEneAir0(r,g,s,year)$((year.val ge 2045 and year.val le 2050) and airsecs(s))=ConsEneAir1(r,g,s,'2045')+(ConsEneAir1(r,g,s,'2050')-ConsEneAir1(r,g,s,'2045'))/(2050-2045)*(year.val-2045);
ConsEneAir0(r,g,s,year)$(year.val lt 2020 and airsecs(s))=ConsEneAir0(r,g,s,'2020');
ConsEneAir(r,g,s,year)$(ConsEneAir0(r,g,s,year) and airsecs(s))=ConsEneAir0(r,g,s,year)/sum(com,ConsEneAir0(r,com,s,year));


parameter newshare0(r,*,*,*), newshare(*,*,*,*), KZ0(cnt,sec,year),KZshare(cnt,sec,year);
* CAREFUL! some sectors do not have the commodity featured in newshare. E.g. Agriculture does not have COAL but it IS in newshare.

* external shares for power sector
newshare0(r,powsecs,g,year)$(PTD eq 1)=SelEne(r,g,powsecs,year);
KZ0(r,powsecs,year)$(PTD eq 1)=1-sum(com,newshare0(r,powsecs,com,year));
* external shares for transport sector (add all the types of transport

newshare0(r,ldtsecs,g,year)$(LDD eq 1)=ConsEneLD(r,g,ldtsecs,year);
newshare0(r,hdtsecs,g,year)$(HDD eq 1)=ConsEneHD(r,g,hdtsecs,year);
newshare0(r,railsecs,g,year)$(RTD eq 1)=ConsEneRail(r,g,railsecs,year);
newshare0(r,seasecs,g,year)$(MTD eq 1)=ConsEneSea(r,g,seasecs,year);
* external shares for industry
newshare0(r,indsecs,g,year)$(ITD eq 1)=ConsEneInd(r,g,indsecs,year);
newshare0(r,airsecs,g,year)$(ATD eq 1)=ConsEneAir(r,g,airsecs,year);
* external shares for services and households.
* It does not work if the base year is 2007 due to data from Genesysmod not having
* electricity consumption in 2015 for households and services.
* It does work for the SAM in 2018 because it used data from 2020.
newshare0(r,sisecs,g,year)$(STD eq 1)=ConsEneSH(r,g,sisecs,year);

* check data
execute_unload "IniQprod.gdx" Qprod;

execute_unload 'ConsumptionAllocation.gdx' SelEnet, SelEne0, SelEne, newshare0, KZ0, ConsEneIndt,ConsEneInd0, ConsEneInd1,ConsEneInd,
ConsEneLDt,ConsEneLD0,ConsEneLD1, ConsEneLD,ConsEneHDt,ConsEneHD0,ConsEneHD1, ConsEneHD,ConsEneSeat,ConsEneSea0,ConsEneSea1, ConsEneSea,ConsEneRailt,ConsEneRail0,ConsEneRail1, ConsEneRail,
ConsEneAirt,ConsEneAir0,ConsEneAir1, ConsEneAir, ConsEneSHt,ConsEneSH0, ConsEneSH1,ConsEneSH;
* ConsEneSHt,ConsEneSH0, ConsEneSH;

*execute_unload 'FromPlatform.gdx' SelEnet, SelEne0,SelEne, newshare0;

alias(year,pass);

parameter
temp0(cnt,sec)       total sum of commodities that subject to technical change from SAM ,
multSAM(cnt,sec,*) ensures that in the first period the resharing give the same values as the SAM even with external shares,
multKZ(cnt,sec)  ensures that in the first period the resjaring gives the same values as the SAM for the capital,
reSAM(cnt,sec,*,year)   reallocation of values with same magnitude as into the SAM,
reKZ(cnt,sec,year)            reallocation of values for capital. same magnitude as the SAM,
KAP0(cnt,sec)    initial share belonging to capital
FZ0(cnt,sec)     initial share belonging to fuels
Qptest(cnt,com,sec,year)
Ktest(cnt,sec,year);


* if at one point the share is nonzero compute the sum only for commodities with a nonzero share
* the initial sum of newshare0 over goods is not 1. The rest is kapital
temp0(cnt,sec) = sum(com$(sum(pass,newshare0(cnt,sec,com,pass))), Qprod(cnt,com,sec));
temp0(cnt,sec)$(powsecs(sec))=sum(com$(sum(pass,newshare0(cnt,sec,com,pass))), Qprod(cnt,com,sec))+ks0(cnt,sec);

* Prices: compute the prices for the goods in the SAM
multSAM(cnt,sec,com)$(sum(pass,newshare0(cnt,sec,com,pass)) and Qprod(cnt,com,sec) and newshare0(cnt,sec,com,"2020"))=Qprod(cnt,com,sec)/(newshare0(cnt,sec,com,"2020")*temp0(cnt,sec));
multKZ(cnt,sec)$(sum((com,pass),newshare0(cnt,sec,com,pass)) and powsecs(sec) and sum(year,KZ0(cnt,sec,year)))=ks0(cnt,sec)/(KZ0(cnt,sec,"2020")*temp0(cnt,sec))

* count how many multSAM are nonnegative and are still there in 2050
parameter count(cnt,sec);
count(cnt,sec)=sum(com$(multSAM(cnt,sec,com)),multSAM(cnt,sec,com)/multSAM(cnt,sec,com));

* Prices: if their initial share in the SAM is zero and are still there in 2050
*multSAM(cnt,sec,com)$(sum(pass,newshare0(cnt,sec,com,pass)) and (Qprod(cnt,com,sec)=0 or newshare0(cnt,sec,com,"2020")=0))=smax(g$(multSAM(cnt,sec,g)),multSAM(cnt,sec,g));
multSAM(cnt,sec,com)$(sum(pass,newshare0(cnt,sec,com,pass)) and (Qprod(cnt,com,sec)=0 or newshare0(cnt,sec,com,"2020")=0))=smin(g$(multSAM(cnt,sec,g)),multSAM(cnt,sec,g));
*multSAM(cnt,sec,com)$(sum(pass,newshare0(cnt,sec,com,pass)) and (Qprod(cnt,com,sec)=0 or newshare0(cnt,sec,com,"2020")=0))=sum(g$(multSAM(cnt,sec,g)),multSAM(cnt,sec,g))/count(cnt,sec);



reSAM(cnt,sec,com,year)$(sum(pass,newshare0(cnt,sec,com,pass)))=0;
*reSAM(cnt,sec,"pH2",step)=0;
reSAM(cnt,sec,com,year)$(sum(pass,newshare0(cnt,sec,com,pass)))=newshare0(cnt,sec,com,year)*temp0(cnt,sec)*multSAM(cnt,sec,com);
*reSAM(cnt,sec,"pH2",step)=newshare0(cnt,sec,"pH2",step)*temp0(cnt,sec)*multSAM(cnt,sec,"pH2");
reKZ(cnt,sec,year)= KZ0(cnt,sec,year)*temp0(cnt,sec)*multKZ(cnt,sec);
*reKZ(cnt,sec,year)=0;

* compute new shares for the power sector techchange
newshare(cnt,sec,com,year)$(sum(pass,newshare0(cnt,sec,com,pass)) and reSAM(cnt,sec,com,year))=reSAM(cnt,sec,com,year)/(sum(techcom,reSAM(cnt,sec,techcom,year))+reKZ(cnt,sec,year));
KZshare(cnt,sec,year)$(sum(pass,KZ0(cnt,sec,pass)) and sum(com,newshare(cnt,sec,com,year)))=1-sum(com,newshare(cnt,sec,com,year));

Qptest(cnt,com,sec,year)$(sum(pass,newshare(cnt,sec,com,pass)))=newshare(cnt,sec,com,year)*(sum(g$(sum(pass,newshare(cnt,sec,g,pass))),reSAM(cnt,sec,g,"2018"))+reKZ(cnt,sec,"2018"));
Ktest(cnt,sec,year)$(sum((pass,com),newshare(cnt,sec,com,pass)) and powsecs(sec))=KZshare(cnt,sec,year)*(sum(g$(sum(pass,newshare(cnt,sec,g,pass))),reSAM(cnt,sec,g,"2018"))+reKZ(cnt,sec,"2018"));
execute_unload 'ExtData.gdx', SelEne,ConsEneInd,ConsEneLD,ConsEneHD,ConsEneSea,ConsEneRail,ConsEneAir,ConsEneSH, Qprod, reSAM, multSAM, newshare, newshare0,Qptest,Ktest;
*$exit
* =================== New emissions ========================
CO2r(cnt,com,"iH2S")=CO2r(cnt,com,"iREF");
CO2r(cnt,com,"iH2C")=0.1*CO2r(cnt,com,"iREF");
* sum of EmissionTest=sum of CO2Fuel
execute_unload 'CO2factors.gdx' CO2r,CO2Fuel,EmissionTest,SAMEM;


* ================ bypass elasticities =====================
sigma_prod("KLEM", s)$(BE eq 1)=1;
sigma_prod("KLE", s)$(BE eq 1)=1;
sigma_prod("KL", s)$(BE eq 1)=1;

elas_ps1n(g)$(BE eq 1)=1;
elas_psn(g)$(BE eq 1)=1;
elas_psta(g)$(BE eq 1)=1;
elas_psxa(g)$(BE eq 1)=1;



display taxcz;

parameter yup(r,s);
yup('R1','iPOW')$(ubpp eq 1)=1.7;
yup('R2','iPOW')$(ubpp eq 1)=1.4;
yup('R3','iPOW')$(ubpp eq 1)=2.9;
yup('R4','iPOW')$(ubpp eq 1)=2.3;
yup('R5','iPOW')$(ubpp eq 1)=cshp;
*1.3;

yup(cnt,'iPOW')$(ubpp eq 0)=1000;


* exports going down
set egd(g) exports going down /
pNG
pOIL
pTPI
pFUL
/;

parameter patest(r,g);
patest(r,g)=
sum(s,Qprod(r,g,s)*(1+taxcz(r,g)))
+sum(i$(not sameas(i,"GOVT")),(IC(i,r,g)+IC(i,r,g)*trmz(r,g))*(1+taxcz(r,g)))
         +(IC("GOVT",r,g)+IC("GOVT",r,g)*trmz(r,g))*(1+taxcz(r,g))
         +SVZ(r,g)
         +TMXZ(r,g)
         +EROWZ(r,g)+sum(rt$(not sameas(rt,r)),x0(g,r,rt))
         -XZ(r,g)-TaxedTradeMargins(r, g);

parameter patest1(r,g,s),patest2(i,r,g),patest2G(r,g),patest3(r,g),patest4(r,g),patest5(r,g),patest6(r,g);
patest1(r,g,s)=Qprod(r,g,s)*(1+taxcz(r,g));
patest2(i,r,g)=(IC(i,r,g)+IC(i,r,g)*trmz(r,g))*(1+taxcz(r,g));
patest2G(r,g)=(IC("GOVT",r,g)+IC("GOVT",r,g)*trmz(r,g))*(1+taxcz(r,g));
patest3(r,g)=SVZ(r,g) ;
patest4(r,g)=EROWZ(r,g)+sum(rt$(not sameas(rt,r)),x0(g,r,rt));
patest5(r,g)=XZ(r,g);
patest6(r,g)=TaxedTradeMargins(r, g);


execute_unload 'testNorm.gdx', patest,patest1,patest2,patest2G,patest3,patest4,patest5,patest6;

*$exit
* This is used to increase or decrease investments depending on the previous price of capital
parameter ir(r) interest rate;
ir(r)=1;
*parameter ds(r) decrease savings;
*ds(r)=1;

display patest;

y0(r,s,g)$(y0(r,s,g) < 0.00000001)=0;
display SpecificK, open;
*$exit


* ============                             ===================
* ============ DEFINITION OF THE CGE MODEL ===================
* ============                             ===================
$ONTEXT
$MODEL: Arrow_Debreu

$SECTORS:
        u(i,r)$(not sameas(i,"GOVT"))                            ! Consumption of households                                                   ! Consumption of households
        u(i,r)$(sameas(i,"GOVT") and SW_GOVT eq 1)
        ug$(SW_GOVT eq 2)
        a(r,g)                                                   ! Armington composite
        yt(r)                                                    ! Transport services
        x(r,g)$(EZ(r,g) or newcom(g))                            ! Export activity
        y(r,s)$(XDZ(r,s) or newsec(s) and open(s))               ! Domestic production
        row                                                      ! exports to the Rest of the World

$COMMODITIES:
        pu(i,r)$(not sameas(i,"GOVT"))                           ! Consumption of households                                                   ! Consumption of households
        pu(i,r)$(sameas(i,"GOVT") and SW_GOVT eq 1)              ! Private consumption price index
        pugn$(SW_GOVT eq 2)                                      ! National Government Consumption
        p(r,s,g)$(y0(r,s,g) or Output(s,g) and open(s))          ! Domestic output price
        pdd(r,g)$(sum(s,y0(r,s,g)) or newcom(g))                 ! Price of domestic goods provided to domestic market
        px(g,r,rt)$((ord(r) ne ord(rt)) and (x0(g, r, rt) or newcom(g)))        ! Prices of traded goods
        pa(r,g)$(sum(s,Qprod(r,g,s)))                           ! Composite consumer price
        pl(labours,r)$(SW_LMKT eq 1)                                       ! Price of (locally traded)labour
        pln(labours)$(SW_LMKT  eq 2)                                        ! Price of (nationally traded)labour. Mobile labour
        pk(r)                                                    ! Price of (locally traded) capital
        pks(r,s)$(spc(s) and open(s))                            ! specific capital
        er(g)$(sum(r,EROWZ(r,g)) or (newcom(g) and h2e))         ! Price of exports
        ert                                                      ! Terms of Trade
        pt(r, rt)$(sum(g,trademargins(g, rt,r)) ne 0 )           ! Transport and trade margins
        ptr(r,hh)$(TRANSFZ(r,hh))                                      ! Price of governmental transfers
        ps(r)$(SGZ(r)+sum(hh,SHZ(r,hh)))                                  ! Price of (local) savings (artificial)
        pit$(sum(r, OutRegVol(r)) ne 0)                          ! Price of Interregional Transfers
        pog(r)$(OGR(r))                                         ! price of local oil resource
        pogm(r)$(OGRm(r))
        png(r)$(NGR(r))                                             ! price of natural gas resources
        plnd(r)$(LND(r))                                         ! price of land
        pco2$(CO2B)

$CONSUMERS:
        ra(i,r)$(not sameas(i,"GOVT"))                                        ! Representative agent
        ra(i,r)$(sameas(i,"GOVT") and SW_GOVT eq 1)
        ng$(SW_GOVT eq 2)
$AUXILIARY:

        PCINDEX(r)                                     ! Consumer price index
        PIINDEX(r)                                     ! Local Investment index
        PGINDEX(r)                                     ! Local Government price index
        R_SV(r,g)$(XZ(r,g))                                      ! Multiplier for changes in stocks
        R_SH(r,hh)                                        ! Multiplier for households savings
        CPI                                            ! Consumption Price Index (national)
        powmu(r,s)$sameas(s,'iPOW')                  ! increase in price due to capacity limits. The money goes to households because it is an extraprice

*Agents (Households, Government and Investors) Utility/Welfare
$PROD:u(hh,r)      s:0.1  sT(s):1  sO(s):1 sS(s):1 sE(s):1 sEl(sE):0  Energy.tl(sE):0  Travel.tl(sT):0
o:pu(hh,r)      q:u0(hh,r)
i:pa(r,Travel)$(IC(hh,r,Travel))      q:((IC(hh,r,Travel)+IC(hh,r,Travel)*trmz(r,Travel))*prdT)     p:(1+taxcz(r, Travel)/prdT)
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,Travel)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,Travel)$(SW_GOVT eq 2)   sT:

i:pa(r,"pAGR")      q:((IC(hh,r,"pAGR")+IC(hh,r,"pAGR")*trmz(r,"pAGR")))     p:(1+taxcz(r, "pAGR"))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pAGR")$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,"pAGR")$(SW_GOVT eq 2) sO:

i:pa(r,"pFIS")      q:((IC(hh,r,"pFIS")+IC(hh,r,"pFIS")*trmz(r,"pFIS")))     p:(1+taxcz(r, "pFIS"))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pFIS")$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,"pFIS")$(SW_GOVT eq 2) sO:

i:pa(r,Objects)      q:((IC(hh,r,Objects)+IC(hh,r,Objects)*trmz(r,Objects)))     p:(1+taxcz(r, Objects))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,Objects)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,Objects)$(SW_GOVT eq 2) sO:

i:pa(r,Services)      q:((IC(hh,r,Services)+IC(hh,r,Services)*trmz(r,Services)))     p:(1+taxcz(r, Services))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,Services)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,Services)$(SW_GOVT eq 2) sS:

i:pa(r,Energy)$(FF(Energy) eq 0)      q:((IC(hh,r,Energy)+IC(hh,r,Energy)*trmz(r,Energy))*prdE)     p:((1+taxcz(r, Energy))/prdE)
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,Energy)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,Energy)$(SW_GOVT eq 2)  sE:

i:pa(r,Energy)$(FF(Energy) eq 1)       q:((IC(hh,r,Energy)+IC(hh,r,Energy)*trmz(r,Energy))*prdE)     p:((1+taxcz(r, Energy))/prdE)
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,Energy)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,Energy)$(SW_GOVT eq 2)  Energy.tl:

i:pco2#(Energy)$(FF(Energy) eq 1 and CO2B)    q:((IC(hh,r,Energy)+IC(hh,r,Energy)*trmz(r,Energy))*prdE*CO2r(r,Energy,hh))     p:(1e-6/prdE)  Energy.tl:

i:pa(r,Electricity)      q:((IC(hh,r,Electricity)+IC(hh,r,Electricity)*trmz(r,Electricity))*prdE*prdEle)     p:((1+taxcz(r, Electricity))/(prdE*prdEle))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,Electricity)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,Electricity)$(SW_GOVT eq 2)  sEl:


*Agents (Households, Government and Investors) Utility/Welfare
$PROD:u(i,r)$(sameas(i,"INV"))      s:1
o:pu(i,r)      q:u0(i,r)
*i:pa(r,g)      q:(IC(i,r,g)+IC(i,r,g)*trmz(r,g))     p:((1+taxcz(r, g)))
*+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,g)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,g)$(SW_GOVT eq 2)
i:pa(r,g)$(not FF(g))      q:(IC(i,r,g)+IC(i,r,g)*trmz(r,g))     p:((1+taxcz(r, g)))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,g)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,g)$(SW_GOVT eq 2)
i:pa(r,g)$FF(g)            q:((IC(i,r,g)+IC(i,r,g)*trmz(r,g))*idwn)     p:((1+taxcz(r, g)))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,g)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,g)$(SW_GOVT eq 2)


*Agents (Households, Government and Investors) Utility/Welfare
$PROD:u(i,r)$(sameas(i,"GOVT") and SW_GOVT eq 1)      s:1
o:pu(i,r)      q:u0(i,r)
i:pa(r,g)      q:(IC(i,r,g)+IC(i,r,g)*trmz(r,g))     p:(1+taxcz(r, g) )
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,g)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,g)$(SW_GOVT eq 2)

$PROD:ug$(SW_GOVT eq 2)      s:1
o:pugn          q:ugn0
i:pa(r,g)      q:(IC("GOVT",r,g)+IC("GOVT",r,g)*trmz(r,g))     p:(1+taxcz(r, g))
+ a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,g)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)   t:taxc(r,g)$(SW_GOVT eq 2)


*Domestic Production
* do not change sG elasticity. I eliminated the subnest for CO2 allowances based on the fact that sG is zero.
* otherwise we would need a subnest if we are dealing with a fossil fuel.
$PROD:y(r,s)$(XDZ(r,s) and not extsecs(s) and not refsecs(s) and not sameas('iCHA',s) and not sameas('iPOW',s) and not sameas('iFIS',s)) t:0
+ s:sigma_prod("KLEM", s) sKLE(s):sigma_prod("KLE", s) sKL(sKLE):sigma_prod("KL", s) sE(sKLE):sigma_prod("E", s) sG(sE):0  sH(sE):0
+ encom.tl(sE):0  sM(s):sigma_prod("M", s) sEl(SE):0.1
o:p(r,s,g)    q:(y0(r,s,g)*GG(s))                         p:((1+taxpz(r,s))/GG(s))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxp(r,s)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)      t:taxp(r,s)$(SW_GOVT eq 2)
i:pa(r,encom)$(FF(encom) eq 0 and Qprod(r,encom,s))          q:(Qprod(r,encom,s)*prdE)           p:((1+taxcz(r,encom))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)        sE:
i:pa(r,encom)$(FF(encom) eq 1)          q:(Qprod(r,encom,s)*prdE)           p:((1+taxcz(r,encom))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)   encom.tl:
i:pco2#(encom)$(FF(encom) eq 1 and CO2B)    q:(Qprod(r,encom,s)*prdE*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6/prdE)                                          encom.tl:
i:pa(r,gascom)$(FF(gascom) eq 0)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)      sG:
i:pa(r,gascom)$(FF(gascom) eq 1)          q:(Qprod(r,gascom,s)*prdE)           p:((1+taxcz(r,gascom))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)      sG:
i:pco2#(gascom)$(FF(gascom) eq 1 and CO2B)    q:(Qprod(r,gascom,s)*prdE*CO2r(r,gascom,s)*CCSind(r,s))     p:(1e-6/prdE)                                     sG:
i:pa(r,h2com)$sameas(h2com,"pH2")          q:(Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pH2"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pH2")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pH2")$(SW_GOVT eq 2)        sH:
i:pa(r,h2com)$sameas(h2com,"pTPI")          q:(0.03*Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pTPI"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pTPI")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pTPI")$(SW_GOVT eq 2)      sH:
i:pa(r,matcom)         q:(Qprod(r,matcom,s))          p:(1+taxcz(r,matcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,matcom)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,matcom)$(SW_GOVT eq 2)       sM:
i:pa(r,trs)         q:(Qprod(r,trs,s)*prdT)          p:((1+taxcz(r,trs))/prdT)
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,trs)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,trs)$(SW_GOVT eq 2)             sM:
i:pa(r,powcom)        q:(Qprod(r,powcom,s)*(prdE*prdEle))         p:((1+taxcz(r,powcom))/(prdE*prdEle))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,powcom)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)    t:taxc(r,powcom)$(SW_GOVT eq 2)        sEl:
I:pl(labours,r)$(SW_LMKT eq 1)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pln(labours)$(SW_LMKT eq 2)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pk(r)                q:(ks0(r,s)*prdK*CCSup(r,s))   p:(1/prdK)       sKL:
I:ps(r)                q:INVZ(r,s)           sKL:

*Domestic Production ---> iFIS growth in production
* do not change sG elasticity. I eliminated the subnest for CO2 allowances based on the fact that sG is zero.
* otherwise we would need a subnest if we are dealing with a fossil fuel.
$PROD:y(r,s)$(XDZ(r,s) and not extsecs(s) and not refsecs(s) and sameas('iFIS',s)) t:0
+ s:ElasA(r) sR(s):0 s1(s):sigma_prod("KLEM", s) sKLE(s1):sigma_prod("KLE", s) sKL(sKLE):sigma_prod("KL", s) sE(sKLE):sigma_prod("E", s) sG(sE):0 sH(sE):0
+ encom.tl(sE):0 sM(s1):sigma_prod("M", s)  sEl(SE):0.1
o:p(r,s,g)    q:(y0(r,s,g)*GG(s))                         p:((1+taxpz(r,s))/GG(s))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxp(r,s)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)      t:taxp(r,s)$(SW_GOVT eq 2)
i:pa(r,encom)$(FF(encom) eq 0 and Qprod(r,encom,s))          q:(Qprod(r,encom,s)*prdE)           p:((1+taxcz(r,encom))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)        sE:
i:pa(r,encom)$(FF(encom) eq 1)          q:(Qprod(r,encom,s)*prdE)           p:((1+taxcz(r,encom))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)   encom.tl:
i:pco2#(encom)$(FF(encom) eq 1 and CO2B)    q:(Qprod(r,encom,s)*prdE*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6/prdE)                                          encom.tl:
i:pa(r,gascom)$(FF(gascom) eq 0)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)      sG:
i:pa(r,gascom)$(FF(gascom) eq 1)          q:(Qprod(r,gascom,s)*prdE)           p:((1+taxcz(r,gascom))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)      sG:
i:pco2#(gascom)$(FF(gascom) eq 1 and CO2B)    q:(Qprod(r,gascom,s)*prdE*CO2r(r,gascom,s)*CCSind(r,s))     p:(1e-6/prdE)                                     sG:
i:pa(r,h2com)$sameas(h2com,"pH2")          q:(Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pH2"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pH2")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pH2")$(SW_GOVT eq 2)        sH:
i:pa(r,h2com)$sameas(h2com,"pTPI")          q:(0.03*Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pTPI"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pTPI")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pTPI")$(SW_GOVT eq 2)      sH:
i:pa(r,matcom)         q:(Qprod(r,matcom,s))          p:(1+taxcz(r,matcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,matcom)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,matcom)$(SW_GOVT eq 2)       sM:
i:pa(r,trs)         q:(Qprod(r,trs,s)*prdT)          p:((1+taxcz(r,trs))/prdT)
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,trs)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,trs)$(SW_GOVT eq 2)             sM:
i:pa(r,powcom)        q:(Qprod(r,powcom,s)*(prdE*prdEle))         p:((1+taxcz(r,powcom))/(prdE*prdEle))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,powcom)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)    t:taxc(r,powcom)$(SW_GOVT eq 2)        sEl:
I:pl(labours,r)$(SW_LMKT eq 1)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pln(labours)$(SW_LMKT eq 2)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pk(r)                q:(ks0(r,s)*prdK*CCSup(r,s))   p:(1/prdK)       sKL:
I:ps(r)                q:INVZ(r,s)           sKL:
I:plnd(r)              q:LND(r)                     sR:


* todo: estrarre i settori di raffinazione i-OIL-GSL, i-OIL-DSL eccetera e ridefinirli come i settori estrattivi
* usando come risorse nel nest superiore petrolio e gas naturale. Altrimenti producono carburanti dal capitale.
*Domestic Production
$PROD:y(r,s)$(XDZ(r,s) and sameas('iPOW',s)) t:0
+ s:sigma_prod("KLEM", s) sKLE(s):sigma_prod("KLE", s) sKL(sKLE):sigma_prod("KL", s) sE(sKLE):sigma_prod("E", s) sG(sE):0 sH(sE):0
+ encom.tl(sE):0  sM(s):sigma_prod("M", s) sEl(SE):0.1
o:p(r,s,g)    q:(y0(r,s,g)*GG(s))                         p:((1+taxpz(r,s))/GG(s))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxp(r,s)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)      t:taxp(r,s)$(SW_GOVT eq 2)  a:ra("H1",r) n:powmu(r,s)$powsecs(s)
+ a:ra("H2",r) n:powmu(r,s)$powsecs(s) a:ra("H3",r) n:powmu(r,s)$powsecs(s) a:ra("H4",r) n:powmu(r,s)$powsecs(s) a:ra("H5",r) n:powmu(r,s)$powsecs(s)
i:pa(r,encom)$(FF(encom) eq 0 and Qprod(r,encom,s))          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)               sE:
i:pa(r,encom)$(FF(encom) eq 1)          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)         encom.tl:
i:pco2#(encom)$(FF(encom) eq 1 and CO2B)    q:(Qprod(r,encom,s)*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6)                                          encom.tl:
i:pa(r,gascom)$(FF(gascom) eq 0)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)             sG:
i:pa(r,gascom)$(FF(gascom) eq 1)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)      sG:
i:pco2#(gascom)$(FF(gascom) eq 1 and CO2B)    q:(Qprod(r,gascom,s)*CO2r(r,gascom,s)*CCSind(r,s))     p:(1e-6)                                     sG:

i:pa(r,h2com)$sameas(h2com,"pH2")          q:(Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pH2"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pH2")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pH2")$(SW_GOVT eq 2)        sH:
i:pa(r,h2com)$sameas(h2com,"pTPI")          q:(0.03*Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pTPI"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pTPI")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pTPI")$(SW_GOVT eq 2)      sH:


i:pa(r,matcom)         q:(Qprod(r,matcom,s))          p:(1+taxcz(r,matcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,matcom)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,matcom)$(SW_GOVT eq 2)              sM:
i:pa(r,trs)         q:(Qprod(r,trs,s)*prdT)          p:((1+taxcz(r,trs))/prdT)
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,trs)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,trs)$(SW_GOVT eq 2)                    sM:
i:pa(r,powcom)        q:(Qprod(r,powcom,s))         p:(1+taxcz(r,powcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,powcom)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)    t:taxc(r,powcom)$(SW_GOVT eq 2)              sEl:
I:pl(labours,r)$(SW_LMKT eq 1)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pln(labours)$(SW_LMKT eq 2)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pk(r)                q:(ks0(r,s)*prdK*CCSup(r,s))   p:(1/prdK)          sKL:
I:ps(r)                q:INVZ(r,s)           sKL:


*Domestic Production
$PROD:y(r,s)$(XDZ(r,s) and extsecs(s)) t:0
+ s:0.1 sR(s):0 s1(s):sigma_prod("KLEM", s) sKLE(s1):sigma_prod("KLE", s) sKL(sKLE):sigma_prod("KL", s) sE(sKLE):sigma_prod("E", s) sG(sE):0 sH(sE):0
+ encom.tl(sE):0 sM(s1):sigma_prod("M", s)  sEl(SE):0.1
o:p(r,s,g)    q:(y0(r,s,g)*GG(s))                         p:((1+taxpz(r,s))/GG(s))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxp(r,s)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxp(r,s)$(SW_GOVT eq 2)
i:pa(r,encom)$(FF(encom) eq 0 and Qprod(r,encom,s))          q:(Qprod(r,encom,s))           p:((1+taxcz(r,encom)))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)               sE:
i:pa(r,encom)$(FF(encom) eq 1)          q:(Qprod(r,encom,s))           p:((1+taxcz(r,encom)))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)         encom.tl:
i:pco2#(encom)$(FF(encom) eq 1 and CO2B)    q:(Qprod(r,encom,s)*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6)                                          encom.tl:
i:pa(r,gascom)$(FF(gascom) eq 0)          q:(Qprod(r,gascom,s))           p:((1+taxcz(r,gascom)))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)                 sG:
i:pa(r,gascom)$(FF(gascom) eq 1)          q:(Qprod(r,gascom,s))           p:((1+taxcz(r,gascom)))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)                 sG:
i:pco2#(gascom)$(FF(gascom) eq 1 and CO2B)    q:(Qprod(r,gascom,s)*CO2r(r,gascom,s)*CCSind(r,s))     p:(1e-6)                                      sG:

i:pa(r,h2com)$sameas(h2com,"pH2")          q:(Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pH2"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pH2")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pH2")$(SW_GOVT eq 2)        sH:
i:pa(r,h2com)$sameas(h2com,"pTPI")          q:(0.03*Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pTPI"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pTPI")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pTPI")$(SW_GOVT eq 2)      sH:
i:pa(r,matcom)         q:(Qprod(r,matcom,s))          p:(1+taxcz(r,matcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,matcom)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,matcom)$(SW_GOVT eq 2)              sM:
i:pa(r,trs)         q:(Qprod(r,trs,s)*prdT)          p:((1+taxcz(r,trs))/prdT)
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,trs)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,trs)$(SW_GOVT eq 2)                    sM:
i:pa(r,powcom)        q:(Qprod(r,powcom,s))         p:((1+taxcz(r,powcom)))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,powcom)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)    t:taxc(r,powcom)$(SW_GOVT eq 2)              sEl:
I:pl(labours,r)$(SW_LMKT eq 1)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pln(labours)$(SW_LMKT eq 2)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pk(r)                q:(ks0(r,s)*prdK*CCSup(r,s))   p:(1/prdK)          sKL:
I:ps(r)                q:INVZ(r,s)           sKL:
I:pog(r)$(sameas(s,"iCOI"))              q:OGR(r)                       sR:
I:pogm(r)$(sameas(s,"iMIN"))              q:OGRm(r)                     sR:
I:png(r)$(sameas(s,"iNG"))              q:NGR(r)                       sR:
*I:png(r)$(sameas(s,"iNGL"))              q:NGL(r)                       sR:

* refsecs have a particular structure: at the upper nest there are the natural resources used to produce the fuels.
*Domestic Production
$PROD:y(r,s)$(XDZ(r,s) and refsecs(s)) t:0
+ s:0.1 sR(s):0 s1(s):sigma_prod("KLEM", s) sKLE(s1):sigma_prod("KLE", s) sKL(sKLE):sigma_prod("KL", s) sE(sKLE):sigma_prod("E", s) sG(sE):0 sH(sE):0
+ encom.tl(sE):0 sM(s1):sigma_prod("M", s)  sEl(SE):0.1
o:p(r,s,g)    q:(y0(r,s,g)*GG(s))                         p:((1+taxpz(r,s))/GG(s))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxp(r,s)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxp(r,s)$(SW_GOVT eq 2)
i:pa(r,encom)$(not sameas(encom,"pOIL") and FF(encom) eq 0 and Qprod(r,encom,s))          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)               sE:
i:pa(r,encom)$(not sameas(encom,"pOIL") and FF(encom) eq 1)          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)               encom.tl:
i:pco2#(encom)$(not sameas(encom,"pOIL") and FF(encom) eq 1 and CO2B)    q:(Qprod(r,encom,s)*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6)                   encom.tl:
i:pa(r,matcom)         q:(Qprod(r,matcom,s))          p:(1+taxcz(r,matcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,matcom)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,matcom)$(SW_GOVT eq 2)              sM:
i:pa(r,trs)         q:(Qprod(r,trs,s)*prdT)          p:((1+taxcz(r,trs))/prdT)
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,trs)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,trs)$(SW_GOVT eq 2)                    sM:
i:pa(r,powcom)        q:(Qprod(r,powcom,s))         p:(1+taxcz(r,powcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,powcom)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)    t:taxc(r,powcom)$(SW_GOVT eq 2)                sEl:
i:pa(r,encom)$(sameas(encom,"pOIL"))          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)               sR:
i:pco2#(encom)$(sameas(encom,"pOIL") and CO2B)    q:(Qprod(r,encom,s)*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6)                                          sR:
i:pa(r,gascom)$(FF(gascom) eq 0)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)             sR:
i:pa(r,gascom)$(FF(gascom) eq 1)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)             sR:
i:pco2#(gascom)$(FF(gascom) eq 1 and CO2B)     q:(Qprod(r,gascom,s)*CO2r(r,gascom,s)*CCSind(r,s))     p:(1e-6)                                           sR:
i:pa(r,h2com)$sameas(h2com,"pH2")          q:(Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pH2"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pH2")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pH2")$(SW_GOVT eq 2)        sH:
i:pa(r,h2com)$sameas(h2com,"pTPI")          q:(0.03*Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pTPI"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pTPI")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pTPI")$(SW_GOVT eq 2)      sH:
I:pl(labours,r)$(SW_LMKT eq 1)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pln(labours)$(SW_LMKT eq 2)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)       sKL:
I:pk(r)                q:(ks0(r,s)*prdK*CCSup(r,s))   p:(1/prdK)          sKL:
I:ps(r)                q:INVZ(r,s)           sKL:


*Domestic Production
$PROD:y(r,s)$(XDZ(r,s) and sameas('iCHA',s)) t:0
+ s:sigma_prod("KLEM", s) sKLE(s):sigma_prod("KLE", s) sKL(sKLE):sigma_prod("KL", s) sE(sKLE):sigma_prod("E", s)
+ encom.tl(sE):0 sM(s):sigma_prod("M", s)  sEl(SE):0.1  sH(sE):0
o:p(r,s,g)    q:(y0(r,s,g)*GG(s))                         p:((1+taxpz(r,s))/GG(s))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxp(r,s)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxp(r,s)$(SW_GOVT eq 2)
i:pa(r,encom)$(FF(encom) eq 0 and Qprod(r,encom,s))          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)           sE:
i:pa(r,gascom)          q:(Qprod(r,gascom,s))           p:(1+taxcz(r,gascom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,gascom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,gascom)$(SW_GOVT eq 2)         sE:
i:pa(r,powcom)        q:(Qprod(r,powcom,s))         p:(1+taxcz(r,powcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,powcom)$(SW_GOVT eq 1)  a:ng$(SW_GOVT eq 2)    t:taxc(r,powcom)$(SW_GOVT eq 2)            sEl:
i:pa(r,encom)$(FF(encom) eq 1)          q:(Qprod(r,encom,s))           p:(1+taxcz(r,encom))
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,encom)$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,encom)$(SW_GOVT eq 2)           encom.tl:
i:pco2#(encom)$(FF(encom) eq 1 and CO2B)    q:(Qprod(r,encom,s)*CO2r(r,encom,s)*CCSind(r,s))     p:(1e-6)                                            encom.tl:

i:pa(r,h2com)$sameas(h2com,"pH2")          q:(Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pH2"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pH2")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pH2")$(SW_GOVT eq 2)           sH:
i:pa(r,h2com)$sameas(h2com,"pTPI")          q:(0.03*Qprod(r,"pH2",s)*prdE)           p:((1+taxcz(r,"pTPI"))/prdE)
+      a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,"pTPI")$(SW_GOVT eq 1)     a:ng$(SW_GOVT eq 2)   t:taxc(r,"pTPI")$(SW_GOVT eq 2)         sH:


i:pa(r,matcom)         q:(Qprod(r,matcom,s))          p:(1+taxcz(r,matcom))
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,matcom)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,matcom)$(SW_GOVT eq 2)          sM:
i:pa(r,trs)         q:(Qprod(r,trs,s)*prdT)          p:((1+taxcz(r,trs))/prdT)
+     a:ra("GOVT",r)$(SW_GOVT eq 1)   t:taxc(r,trs)$(SW_GOVT eq 1)   a:ng$(SW_GOVT eq 2)     t:taxc(r,trs)$(SW_GOVT eq 2)                sM:
I:pl(labours,r)$(SW_LMKT eq 1)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)                                                                     sKL:
I:pln(labours)$(SW_LMKT eq 2)                q:(ls0(labours,r,s)*prdL)   p:(1/prdL)                                                                       sKL:
I:pk(r)                q:(ks0(r,s)*prdK*CCSup(r,s))   p:(1/prdK)                                                                                    sKL:
I:ps(r)                q:INVZ(r,s)                                                                                                       sKL:

$PROD:y(r,s)$(newsec(s) and open(s)) t:0 s:newelas(s,"KLEM") sKLE(s):newelas(s,"KLE") sKL(sKLE):newelas(s,"KL") sE(sKLE):5 sM(s):0 g.tl(sE):0
o:p(r,s,g)                                               q:(Output(s,g)*GG(s))  p:(1/GG(s))
i:pa(r,g)$(InputM(s,g))                                  q:InputM(s,g)  p:(1+taxcz(r,g))         t:taxc(r,g)     sM:
i:pa(r,g)$(FF(g) eq 0 and InputE(s,g))                   q:InputE(s,g)  p:(1+taxcz(r,g))         t:taxc(r,g)     sE:
i:pa(r,g)$(FF(g) eq 1 and InputE(s,g))                   q:InputE(s,g)  p:(1+taxcz(r,g))         t:taxc(r,g)   g.tl:
i:pco2#(g)$(FF(g) eq 1 and CO2B and CO2r(r,g,s))         q:(InputE(s,g)*CO2r(r,g,s)) p:(1e-6)                  g.tl:
i:pl(labours,r)$(SW_LMKT eq 1 and InputL(labours,s))                     q:(InputL(labours,s)*prdL)  p:(1/prdL)                         sKL:
i:pln(labours)$(SW_LMKT eq 2 and InputL(labours,s))                       q:(InputL(labours,s)*prdL)  p:(1/prdL)                         sKL:
i:pk(r)$(InputK(s) and not spc(s))                       q:(InputK(s)*prdK)  p:(1/prdK)                         sKL:
i:pks(r,s)$(InputK(s) and spc(s) and open(s))            q:(InputK(s)*prdK)  p:(1/prdK)                         sKL:

*Domestic/Regional/International production split
$PROD:x(r,g)$(EZ(r,g) and not (sameas(g,'pNG') or sameas(g,'pOIL') or sameas(g,'pTPI') or sameas(g,'pPOW') or sameas(g,'pFUL'))) t:elas_psta(g) s:elas_psxa(g)
*$PROD:x(r,g)$(EZ(r,g) and not (sameas(g,'pNG'))) t:elas_psta(g) s:elas_psxa(g)
o:px(g,r,rt)$(ord(r) ne ord(rt))         q:x0(g,r,rt)
o:pdd(r,g)                               q:XXDZ(r,g)
o:er(g)                                  q:EROWZ(r,g)
i:p(r,s,g)                               q:y0(r,s,g)


*Domestic/Regional/International production split
$PROD:x(r,g)$(EZ(r,g) and sameas(g,'pPOW')) t:elas_psta(g) s:elas_psxa(g)
o:px(g,r,rt)$(ord(r) ne ord(rt))         q:(x0(g,r,rt))
o:pdd(r,g)                               q:(XXDZ(r,g))
o:er(g)                                  q:(EROWZ(r,g))      P:(1)
i:p(r,s,g)                               q:(y0(r,s,g))
i:p(r,s,g)$(Output(s,g)*open(s))         q:(output(s,g)*open(s))

*Domestic/Regional/International production split
$PROD:x(r,g)$(EZ(r,g) and (sameas(g,'pNG') or sameas(g,'pOIL') or sameas(g,'pTPI') or sameas(g,'pFUL'))) t:elas_psta(g) s:elas_psxa(g)
*$PROD:x(r,g)$(EZ(r,g) and sameas(g,'pNG')) t:elas_psta(g) s:elas_psxa(g)
o:px(g,r,rt)$(ord(r) ne ord(rt))         q:(x0(g,r,rt))
o:pdd(r,g)                               q:(XXDZ(r,g))
o:er(g)                                  q:(EROWZ(r,g)*gdwn)      P:(1/gdwn)
i:p(r,s,g)                               q:(y0(r,s,g))



*Domestic/Regional/International production split
$PROD:x(r,g)$(newcom(g)) t:elas_pstn(g) s:elas_psxn(g)
o:px(g,r,rt)$(ord(r) ne ord(rt))         q:x0m(g,r,rt)
o:pdd(r,g)                               q:XXDM(r,g)
o:er(g)                                  q:(EROWM(r,g)*push)  p:(1/push)
i:p(r,s,g)                               q:y0m(r,s,g)

*Armington Composite Good
$PROD:a(r,g)$(XZ(r,g) and not sameas(g,'pPOW')) s:elas_psa(g)$(not worldcom(g))  s:20$(worldcom(g))  s1(s):elas_ps1a(g)   s2:0 s3(s1):0
O:pa(r,g)                                Q:(XZ(r,g)+TaxedTradeMargins(r, g))
I:pdd(r,g)                               Q:XXDZ(r,g)                     s2:
I:pt(r, rt)#(g)$(ord(r)=ord(rt))         Q:trademargins(g, rt, r)        s2:
I:ert                                    Q:MROWZ(r,g)                    s1:
I:px(g,rt,r)$(ord(r) ne ord(rt))         Q:x0(g,rt,r)                    s3:
I:pt(r, rt)#(g)$(ord(r) ne ord(rt))      Q:trademargins(g, rt, r)        s3:

* need to artificially reduce the import of power because the model only sees the increase in price of power in Norway
* as consequence of the larger demand but knows nothing about the price of power in other countries.
* we assume it will increase even more there, and therefore there is no increase of demand for foreign power
*Armington Composite Good
$PROD:a(r,g)$(XZ(r,g) and sameas(g,'pPOW')) s:elas_psa(g)$(not worldcom(g))  s:20$(worldcom(g))  s1(s):elas_ps1a(g)   s2:0 s3(s1):0
O:pa(r,g)                                Q:(XZ(r,g)+TaxedTradeMargins(r, g))
I:pdd(r,g)                               Q:XXDZ(r,g)                     s2:
I:pt(r, rt)#(g)$(ord(r)=ord(rt))         Q:trademargins(g, rt, r)        s2:
I:ert                                    Q:(MROWZ(r,g))  P:(1)           s1:
I:px(g,rt,r)$(ord(r) ne ord(rt))         Q:x0(g,rt,r)                    s3:
I:pt(r, rt)#(g)$(ord(r) ne ord(rt))      Q:trademargins(g, rt, r)        s3:

*Armington Composite Good
$PROD:a(r,g)$newcom(g) s:elas_psn(g)$(not worldcom(g))  s:20$(worldcom(g))  s1(s):elas_ps1n(g)   s2:0 s3(s1):0
O:pa(r,g)$(sum(s,Qprod(r,g,s)))          Q:Aout(r,g)
I:pdd(r,g)                               Q:XXDN(r,g)             s2:
I:pt(r, rt)#(g)$(ord(r)=ord(rt))         Q:tmn(g, rt, r)         s2:
I:ert$(MROWN(r,g))                       Q:MROWN(r,g)            s1:
I:px(g,rt,r)$(ord(r) ne ord(rt))         Q:x0n(g,rt,r)           s3:
I:pt(r, rt)#(g)$(ord(r) ne ord(rt))      Q:tmn(g, rt, r)         s3:


$PROD:row   s:3  sG:0  sEl:0
O:ert                                                            Q:(sum((r,g)$(not egd(g)),EROWZ(r,g))+sum((r,g)$(egd(g)),EROWZ(r,g)*gdwn)+sum((r,g)$(newcom(g) and h2e),EROWM(r,g)*push))
i:er(g)#(r)$(not newcom(g) and not egd(g) and not powcom(g))     Q:(EROWZ(r,g))
i:er(g)#(r)$(not newcom(g) and not egd(g) and powcom(g))         Q:(EROWZ(r,g))          sEl:
i:er(g)#(r)$(not newcom(g) and egd(g) and not gascom(g))         Q:(EROWZ(r,g)*gdwn)
i:er(g)#(r)$(not newcom(g) and egd(g) and gascom(g))             Q:(EROWZ(r,g)*gdwn)     sG:
i:er(g)#(r)$(newcom(g) and h2e)                                  Q:(EROWM(r,g)*push)


*Transport transforms the bulk "TTM" product purchsed by the traders into
*payments to the transport industries.
$PROD:yt(r)  s:1   t:0  g.tl(s):0
O:pt(r, rt)#(g)                          Q:trademargins(g, rt,r)
O:pit$OutRegVol(r)                       Q:OutRegVol(r)
I:pa(r,g)$(FF(g) eq 0)                   Q:(TMXZ(r,g))
I:pa(r,g)$(FF(g) eq 1)                   Q:(TMXZ(r,g))                              g.tl:
i:pco2#(g)$(FF(g) eq 1 and CO2B)         Q:(TMXZ(r,g)*CO2r(r,g,"tmarg"))  p:(1e-6)  g.tl:
I:pit$InRegVol(r)                        Q:InRegVol(r)


*Household Demand
$DEMAND:ra(hh,r)
e:pl(labours,r)$(SW_LMKT eq 1)            q:(LSZ(hh,labours,r))
e:pln(labours)$(SW_LMKT eq 2)              q:(LSZ(hh,labours,r))
e:pk(r)                           q:(KSZ(hh,r))
e:pks(r,s)$(spc(s) and open(s))   q:SpecificK(r,s)
e:ptr(r,hh)                          q:(TRANSFZ(r,hh))         r:PCINDEX(r)
e:ps(r)                           q:(-SHZ(r,hh))            r:R_SH(r,hh)
e:ert                             q:(TRHROWZ(r,hh))         r:R_SH(r,hh)
E:pog(r)$(AOGR(hh,r))            q:(AOGR(hh,r))
E:pogm(r)$(AOGRm(hh,r))          q:(AOGRm(hh,r))
E:png(r)$ANGR(hh,r)                  q:ANGR(hh,r)
E:plnd(r)$ALND(hh,r)                 q:ALND(hh,r)
*E:png(r)$ANGL(r)                 q:ANGL(r)
d:pu(hh,r)                    q:u0(hh,r)


*Local Government Demand
$DEMAND:ra("GOVT",r)$(SW_GOVT eq 1)
e:ps(r)                           q:(-SGZ(r))            r:PIINDEX(r)
e:ert                             q:TRROWZ(r)            r:PCINDEX(r)
e:ptr(r,hh)                          q:(-TRANSFZ(r,hh))        r:PCINDEX(r)
d:pu("GOVT",r)                    q:u0("GOVT",r)


$DEMAND:ng$(SW_GOVT eq 2)
e:pco2$(CO2B)                     q:CO2B
e:ps(r)                           q:(-SGZ(r))            r:PIINDEX(r)
e:ert                             q:(sum(r,TRROWZ(r)))   r:CPI
e:ptr(r,hh)                          q:(-TRANSFZ(r,hh))        r:PCINDEX(r)
d:pugn                            q:ugn0


*Local Investment stor *SJEKK R_SH er borte i koden til Jan og Sara
$DEMAND:ra("INV",r)
e:ps(r)                          q:(sum(hh,SHZ(r,hh)))
*r:R_SH(r,hh)
e:ps(r)                          q:(SGZ(r))                       r:PIINDEX(r)
e:ert                            q:(SROWZ(r))                     r:PCINDEX(r)
e:pa(r,g)                        q:(-SVZ(r,g))                    r:R_SV(r,g)
e:ps(r)                          q:(sum(s,INVZ(r,s)*y.L(r,s)))
d:pu("INV",r)                    q:u0("INV",r)



*Definition of consumer price index
$CONSTRAINT:PCINDEX(r)
    PCINDEX(r) =e= sum(g, (1+taxc(r,g))*pa(r,g) *sum(hh,IC(hh,r,g))*(1+trmz(r, g)) ) /
                sum(g, (1+taxcz(r,g))*sum(hh,IC(hh,r,g))*(1+trmz(r, g)) )  ;


$CONSTRAINT:CPI
    CPI =e= sum((r,g), (1+taxc(r,g))*pa(r,g) *sum(hh,IC(hh,r,g))*(1+trmz(r, g))) /
                sum((r,g), (1+taxcz(r,g))*sum(hh,IC(hh,r,g))*(1+trmz(r, g)) )  ;

*Definition of local inverstment index
$CONSTRAINT:PIINDEX(r)
PIINDEX(r) =e= ir(r)*sum(g, (1+taxc(r,g))*pa(r,g) *IC("INV",r,g)*(1+trmz(r, g)) ) /
                sum(g, (1+taxcz(r,g))*IC("INV",r,g)*(1+trmz(r, g)) )  ;


$CONSTRAINT:R_SV(r,g)$(XZ(r,g))
    R_SV(r,g) =e= a(r,g) ;


$CONSTRAINT:R_SH(r,hh)$(sameas (hh,"H1"))
   R_SH(r,hh) =e= ir(r)*ra("H1",r)/u0("H1",r);

$CONSTRAINT:R_SH(r,hh)$(sameas (hh,"H2"))
   R_SH(r,hh) =e= ir(r)*ra("H2",r)/u0("H2",r);

$CONSTRAINT:R_SH(r,hh)$(sameas (hh,"H3"))
   R_SH(r,hh) =e= ir(r)*ra("H3",r)/u0("H3",r);

$CONSTRAINT:R_SH(r,hh)$(sameas (hh,"H4"))
   R_SH(r,hh) =e= ir(r)*ra("H4",r)/u0("H4",r);

$CONSTRAINT:R_SH(r,hh)$(sameas (hh,"H5"))
   R_SH(r,hh) =e= ir(r)*ra("H5",r)/u0("H5",r);


*Definition of government transfer index
$CONSTRAINT:PGINDEX(r)
    PGINDEX(r) =e= sum(g, (1+taxc(r,g)) *pa(r,g) *IC("GOVT",r,g)*(1+trmz(r, g)) ) /
                sum(g, (1+taxcz(r,g))*IC("GOVT",r,g)*(1+trmz(r, g)) )  ;

$constraint:powmu(r,s)$(XDZ(r,s) and sameas(s,'iPOW'))
        yup(r,s)-y(r,s) =g= 0;

$REPORT:
V:Kout(r,s)                I:pk(r)              PROD:y(r,s)
V:Lout(labours,r,s)$(SW_LMKT eq 1)                I:pl(labours,r)                PROD:y(r,s)
V:Lout(labours,r,s)$(SW_LMKT eq 2)                I:pln(labours)                   PROD:y(r,s)

V:XD_I(r,s,g)              I:pa(r,g)              PROD:y(r,s)
V:XD_O(r,s,g)              O:p(r,s,g)             PROD:y(r,s)

V:FDH(r,g,hh)                   I:pa(r,g)                PROD:u(hh,r)
V:FDG(r,g)$(SW_GOVT eq 1)    I:pa(r,g)                PROD:u("GOVT",r)
V:FDG(r,g)$(SW_GOVT eq 2)    I:pa(r,g)                PROD:ug
V:FDI(r,g)                   I:pa(r,g)                PROD:u("INV",r)

V:Demand(r,g)                O:pa(r,g)                PROD:a(r,g)
V:DomIn(r,g)                 I:pdd(r,g)               PROD:a(r,g)
V:MPregions(g,rt,r)          I:px(g,rt,r)             PROD:a(r,g)
V:MP(r,g)                    I:ert                    PROD:a(r,g)


V:Product(r,s,g)             I:p(r,s,g)               PROD:x(r,g)
V:XP(r,g)                    O:er(g)                  PROD:x(r,g)
V:DomOut(r,g)                O:pdd(r,g)               PROD:x(r,g)
V:XPregions(g,r,rt)          O:px(g,r,rt)             PROD:x(r,g)

V:TMout(g,r)                 I:pa(r,g)              PROD:yt(r)
V:TMin(g,r,rt)               I:pt(r,rt)             PROD:a(r,g)

V:CO2S_dem(r,s)                         I:PCO2                  PROD:y(r,s)
V:CO2H_dem(r,hh)                        I:PCO2                  PROD:u(hh,r)
V:CO2T_dem(r)                           I:PCO2                  PROD:yt(r)

V:II(r)                                 O:pu("INV",r)           PROD:u("INV",r)

*test exports
V:HHinc(r,hh)                           D:pu(hh,r)              DEMAND:ra(hh,r)
V:HHtrans(hh,r)                         D:ptr(hh,r)             DEMAND:ra(hh,r)

*new reports for H2 quantities
V:H2Exports(r)                          O:er("pH2")             PROD:x(r,"pH2") *exports of H2 to ROW  per region
V:H2othReg(r,rt)                        O:px("pH2",r,rt)        PROD:x(r,"pH2") *exports of H2 to other regions per region
V:H2dom(r)                              O:pdd(r,"pH2")           PROD:x(r,"pH2") *domestic H2 supply per region
$OFFTEXT


* ============                               ===================
* ============ INCLUDE THE MPSGE FILES ABOVE ===================
* ============                               ===================

$SYSINCLUDE mpsgeset Arrow_Debreu


* ============                             ===================
* ============ DEFINITION OF THE CGE MODEL ===================
* ============                             ===================


display y0, TAXPZ, IOZ, TRMZ, TAXCZ, ls0, ks0, INVZ, EROWZ, x0, XXDZ, IC;
display CBUDZ, CBUDGLZ, CGLZ, ITZ, IZ, XZ, MROWZ, TRADEMARGINS, TAXEDTRADEMARGINS, TMXZ, LSZ, KSZ;
display TRANSFZ, TRHROWZ, SGZ, INRegVol, OutRegVol;
* ============ Provide initial levels of the model variables ===================
*Reset variables to initial levels
*$SECTORS:
        u.L(i,r)                 = 1 ;
        ug.l$(SW_GOVT eq 2)      = 1;
        y.l(r,s)$XDZ(r,s)        = 1 ;
        a.l(r,g)$XZ(r,g)         = 1 ;
        yt.l(r)                  = 1 ;
        x.l(r,g)$EZ(r,g)         = 1 ;
        y.l(r,s)$(newsec(s))     = 0 ;
        a.l(r,g)$newcom(g)       = 0 ;
        x.l(r,g)$newcom(g)       = 0 ;
        row.l                    = 1 ;
*$COMMODITIES:
        pu.L(i,r)                   = num ;
        pugn.l$(SW_GOVT eq 2)  = num;
        p.l(r,s,g)$(y0(r,s,g) or newsec(s))  = num ;
        pa.L(r,g)$(XZ(r,g)  or newcom(g) )    = num ;
        pdd.L(r,g)$(sum(s,y0(r,s,g)) or newcom(g))    = num ;
        px.L(g,r,rt)$(x0(g,r,rt)$(ord(r) ne ord(rt)) or newcom(g))   = num ;
        pl.L(labours,r)$(SW_LMKT eq 1)                   = num ;
        pln.L(labours)$(SW_LMKT eq 2)                   = num ;
        pk.L(r)                  = num ;
        er.L(g)                  = num ;
        ert.L                    =num;
        ps.L(r)                   = 1 ;
        pit.FX                       = num ;
        pt.L(r, rt)            = num ;
        ptr.L(r,hh)                  = 1 ;
        pog.l(r)                 = 1 ;
        png.l(r)                 = 1 ;

*$CONSUMERS:
        ra.L(i,r)            = (u0(i,r)) ;
        ng.l$(SW_GOVT eq 2)  = (ugn0);

*$AUXILIARY:
        PCINDEX.L(r)  = num ;
        R_SV.L(r,g) = 1 ;
        R_SH.L(r,hh)     = num ;
        PIINDEX.L(r)  = num ;
        PGINDEX.L(r)  = num ;
        CPI.L         = num ;
        powmu.l(r,s)  = 0;


* =================== Solve Benchmark =======================

option mcp = path ;
Arrow_Debreu.iterlim = 0;
$INCLUDE Arrow_Debreu.GEN
ARROW_DEBREU.Savepoint = 1;
Solve Arrow_Debreu using mcp;

*$exit

* ============ Define variable to study and the set of increments ==============================

parameter sv_year(r, g, year);

parameter IOanalysis(*,*,*,*,year),incomeGDP(*,r,*,year),expendGDP(*,r,*,year),productGDP(*,r,*,year),
         SAMout(cnt,*,*,year),QQQ(cnt,*,*,year),QQQ2(cnt,*,*,year),PPP(cnt,*,*,year),labA(r,year),capA(r,year),labB(year),capB(year),labC(year),capC(year)
         VA(cnt,sec,year),EEdem(cnt,*,year),EMcap(year),CO2price(year),Activity(r,sec,year), HHIncome(cnt,hh,labours,year);
parameter Stot(cnt,sec),StotH(hh,cnt),TtotH(hh,cnt);
parameter ConsPI(year);
*=====================make parameters to save the variables of interests ============
parameters
KSZ_test(hh,r,year)
Kap_test(r,year),
I_test(r,year),
LSZ_test(hh,labours,r,year),
pop_test(year),
HHinc_test(hh,r,year),
HHtrans_test(hh,r,year),
u0_test(hh,r,year),
TrROW_test(hh,r,year),
AOGR_test(hh,r,year),
ANGR_test(hh,r,year),
HHsav_test(hh,r,year),
KapV_test(r,year),
CaDe_test(r,year),
KapVirt(r);
KapVirt(r)=Kap(r);

parameter Kprev(r,s) capital from previous period;
Kprev(r,s)=0;
CaDe(r)=0;

parameter Qpt(cnt,com,sec,year) last test on Qprod;



parameter sALND(hh,r,year);

*=====================Loop over the increments set============
loop(year$(year.val le 2030),

ElasA(r)$(FA(year,r) eq 1 and TLS eq 1) = 2;
ElasA(r)$(FA(year,r) eq 0 and TLS eq 1) = 0.1;

* ============ COUNTERFACTUALS =====================
* Capital Accumulation
display Kap, II.l, KSZ, CaDe,Kprev,Kout.l;

display ElasA;
* total capital disinvested. This will be depreciated at 90%
* This is the capital that is removed by sectors due to disinvestments
* ror is used to scale the capital figures proportional to KSZ to the same level as the total capital in the economy proportional to Kap.
CaDe(r)=sum(s,(Kprev(r,s)-Kout.l(r,s))$(Kprev(r,s)-Kout.l(r,s) ge 0))/ror(r);

* new capital formula
* normal capital has a standard depreciation, while capital removed from sectors has a 90% depreciation
Kap(r)$(ord(year) gt 1 and RM eq 1)=(Kap(r)-CaDe(r))*(1-depr(r))+CaDe(r)*(1-0.9)+II.l(r);
KapVirt(r)$(ord(year) gt 1 and RM eq 1)=KapVirt(r)*(1-depr(r))+II.l(r);
*Kap(r)$(ord(year) gt 1 and RM eq 1)=Kap(r)*(1-depr(r))+II.l(r);

* the previous capital is updated
Kprev(r,s)=Kout.l(r,s);

KSZ(hh,r)$(ord(year) gt 1 and RM eq 1)=(KSZ(hh,r)/sum(hous,KSZ(hous,r)))*Kap(r)*ror(r);
KSZ(hh,r)$(ord(year) gt 1 and RM eq 0)=KSZ(hh,r)*(1+grow);
KSZ0(hh,r)$(ord(year) gt 1)=KSZ0(hh,r)*(1+grow);
* household resources
LSZ(hh,labours,r)$(ord(year) gt 1 and PG eq 0)=LSZ(hh,labours,r)*(1+grow);
LSZ(hh,labours,r)$(ord(year) gt 1 and PG eq 1)=LSZ(hh,labours,r)*(1+pop);
*LSZ(hh,labours,r)$(ord(year) gt 1 and PG eq 1)=LSZ(hh,labours,r)*(1+Hpop(hh));
LSZ(hh,labours,r)$(ord(year) gt 1 and PG eq 2)=LSZ(hh,labours,r);
TRANSFZ(r,hh)$(ord(year) gt 1)=TRANSFZ(r,hh)*(1+grow);
SHZ(r,hh)$(ord(year) gt 1)=SHZ(r,hh)*(1+grow);

TRHROWZ(r,hh)$(ord(year) gt 1)=TRHROWZ(r,hh)*(1+grow);

* government resources
SGZ(r)$(ord(year) gt 1)=SGZ(r)*(1+grow);
TRROWZ(r)$(ord(year) gt 1)=TRROWZ(r)*(1+grow);

* investment resources
SROWZ(r)$(ord(year) gt 1)=SROWZ(r)*(1+grow);
SVZ(r,g)$(ord(year) gt 1)=SVZ(r,g)*(1+grow);
INVZ(r,s)$(ord(year) gt 1)=INVZ(r,s)*(1+grow);

* natural resources
AOGR(hh,r)$(ord(year) gt 1 and EL eq 0)=AOGR(hh,r)*(1+grow);
AOGRm(hh,r)$(ord(year) gt 1 and EL eq 0)=AOGRm(hh,r)*(1+grow);
ANGR(hh,r)$(ord(year) gt 1 and EL eq 0)=ANGR(hh,r)*(1+grow);
ALND(hh,r)$(ord(year) gt 1 and TLS eq 1)=ALND(hh,r)*(1+growF(year,r));
ALND(hh,r)$(ord(year) gt 1 and TLS eq 0)=ALND(hh,r)*(1+grow);
*ANGL(r)$(EL eq 0)=ANGL(r)*(1+grow);
*ACR(r)$(EL eq 0)=ACR(r)*(1+grow);

sALND(hh,r,year)=ALND(hh,r);

AOGR(hh,r)$(ord(year) gt 1 and year.val le 2024 and EL eq 1)=AOGR(hh,r)*(1+grow);
AOGRm(hh,r)$(ord(year) gt 1 and year.val le 2024 and EL eq 1)=AOGRm(hh,r)*(1+grow);
ANGR(hh,r)$(ord(year) gt 1 and ord(year) le 4 and EL eq 1)=ANGR(hh,r)*(1+grow);
*ANGL(r)$(ord(year) le 14 and EL eq 1)=ANGL(r)*(1+grow);
*ACR(r)$(ord(year) le 14 and EL eq 1)=ACR(r)*(1+grow);

AOGR(hh,r)$(year.val gt 2024 and EL eq 1)=AOGR(hh,r)*(1-odc);
AOGRm(hh,r)$(year.val gt 2024 and EL eq 1)=AOGRm(hh,r);
ANGR(hh,r)$(ord(year) gt 4 and EL eq 1)=ANGR(hh,r)*(1-ndc);
*ANGL(r)$(ord(year) gt 14 and EL eq 1)=ANGL(r);
*ACR(r)$(ord(year) gt 14 and EL eq 1)=ACR(r);

* CO2 Budget
CO2B$(ord(year) gt 1 and CB eq 1 and year.val lt 2021) = (sum((cnt,com,sec),EmissionTest(cnt,com,sec))+sum((cnt,com,hh),EmissionTest(cnt,com,hh))+sum((cnt,com),EmissionTest(cnt,com,"tmarg")));
CO2B$(CB eq 1 and year.val ge 2021) = (1+(ctarget-1)/((2050-2018))*(ord(year)-1))*(sum((cnt,com,sec),EmissionTest(cnt,com,sec))+sum((cnt,com,hh),EmissionTest(cnt,com,hh))+sum((cnt,com),EmissionTest(cnt,com,"tmarg")));

* Technological Change
*1 only for cnt,com and sec that appear in newshare at some point
*2 newshare is multiplied by the total over the goods that are in newshare of reSAM in 2007.
*3 reSAM in 2018 should be the same as the Qprod for these products.
*4 newshare until 2020 should reproduce reSAM and, theredfore, the original Qprod

* CAREFUL! coal is in Agriculture according to reSAM, but not for Qprod!!!
* Qprod is updated only if we want to consider external technical development
Qprod(cnt,com,sec)$(sum(pass,newshare(cnt,sec,com,pass)) and ord(year) gt 1 and TechCh gt 1)=newshare(cnt,sec,com,year)*(sum(g$(sum(pass,newshare(cnt,sec,g,pass))),reSAM(cnt,sec,g,"2018"))+reKZ(cnt,sec,"2018"));
ks0(cnt,sec)$(sum((pass,com),newshare(cnt,sec,com,pass)) and powsecs(sec) and TechCh gt 1 and PTD eq 1)=KZshare(cnt,sec,year)*(sum(g$(sum(pass,newshare(cnt,sec,g,pass))),reSAM(cnt,sec,g,"2018"))+reKZ(cnt,sec,"2018"));



Stot(cnt,sec)=sum(srv,Qprod(cnt,srv,sec));
TtotH(hh,cnt)=sum(Travel,IC(hh,cnt,Travel));
* For sectors: Decrease in Transport usage and increase in Services (More local production)
* what is removed from transport is added to services in proportion to their initial demand from the SAM
* For Households: decrease in Energy (does not contain electricity) and increase in Travel purchases (public transport)
IC(hh,cnt,Travel)$(ord(year) gt 4 and TR eq 1 and IC(hh,cnt,Travel))=IC(hh,cnt,Travel)+IC(hh,cnt,Travel)/TtotH(hh,cnt)*sum(Energy,IC(hh,cnt,Energy)*(-(0.95-1)/(card(year)-1)*(ord(year)-1)));
IC(hh,cnt,Energy)$(ord(year) gt 4 and TR eq 1 and IC(hh,cnt,Energy))=IC(hh,cnt,Energy)*(1+((ord(year)-4)-1)/((card(year)-4)-1)*(0.95-1));
Qprod(cnt,srv,sec)$(ord(year) gt 4 and TR eq 1 and Qprod(cnt,srv,sec))=Qprod(cnt,srv,sec)+Qprod(cnt,srv,sec)/Stot(cnt,sec)*sum(trs,Qprod(cnt,trs,sec)*(-(0.95-1)/(card(year)-1)*(ord(year)-1)));
Qprod(cnt,trs,sec)$(ord(year) gt 4 and TR eq 1)=Qprod(cnt,trs,sec)*(1+((ord(year)-4)-1)/((card(year)-4)-1)*(0.95-1));

StotH(hh,cnt)=sum(Services,IC(hh,cnt,Services));
* Decrease in Manufactory usage and increase in Services for Households
* what is removed from manufactory is added to services in proportion to their initial demand from the SAM
IC(hh,cnt,Services)$(ord(year) gt 4 and CE eq 1 and IC(hh,cnt,Services))=IC(hh,cnt,Services)+IC(hh,cnt,Services)/StotH(hh,cnt)*sum(Objects,IC(hh,cnt,Objects)*(-(0.95-1)/(card(year)-1)*(ord(year)-1)));
IC(hh,cnt,Objects)$(ord(year) gt 4 and CE eq 1)=IC(hh,cnt,Objects)*(1+((ord(year)-4)-1)/((card(year)-4)-1)*(0.95-1));





Qpt(cnt,com,sec,year)=Qprod(cnt,com,sec);

display Qprod;

* transport intensity improvement
prdT$(year.val le 2021) = prdT;
prdT$(year.val gt 2021) = prdT*(1+tint);
* energy intensity improvement
prdE$(year.val le 2021) = prdE*(1+enint);
prdE$(year.val gt 2021 and BosE eq 0) = prdE*(1+enint);
* Boost energy intensity by 30%
prdE$(year.val gt 2021 and BosE eq 1) = prdE*(1+enint*1.3);
prdEle$(ord(year) gt 1) = prdEle*(1+elint);
* total factor productivity improvement
GG(s)$(ord(year) gt 1)=GG(s)*(1+TFP*SFac(s));
* Extra productivity for industry 5.0
GG(indsecs)$(ord(year) gt 4 and I50 eq 1)=GG(indsecs)*(1.01);
GG(s)$(ord(year) gt 1 and GRW eq 1 and ord(year) le 7  and sameas('iFIS',s))=GG(s)*(1 + growGG);
GG(s)$(ord(year) gt 7 and GAQ eq 0 and GRW eq 1  and sameas('iFIS',s))=GG(s)*(1 + growGG);
GG(s)$(ord(year) gt 7 and GAQ eq 1 and GRW eq 1  and sameas('iFIS',s))=GG(s)*(1 + growAQ);

*GG(s)$(ord(year) gt 7 and ord(year) le 11 and GAQ eq 1  and sameas('iFIS',s))=GG(s)*(1 + growAQ);
*GG(s)$(ord(year) gt 11 and GAQ eq 1  and sameas('iFIS',s))=GG(s)*(1 + 0);

prdL$(year.val gt 2020) = prdL*(1+PLL);
prdK$(year.val gt 2020) = prdK*(1+PKK);

display GG;

* new sectors
open("iV2G")$(year.val gt 2020 and V2G eq 1)=1;
specificK(r,"iV2G")$(year.val gt 2020 and V2G eq 1)=0.01+(year.val-2020)/(2050-2020)*(6000*sum(hh,CBUDZ(hh,r))/sum((hh,cnt),CBUDZ(hh,cnt))-0.01);

* push for H2 exports
push$(year.val gt 2020)=push*(1+psp);
pup$(year.val gt 2020)=pup*(1+esp);
* reduction of gas exports
gdwn$(year.val gt 2020)=gdwn*(1-gdr);
idwn$(year.val gt 2020)=idwn*(1-idr);

* Dieselavgifter 4% �rlig �kning etter 2030
taxc(r,'pFUL')$(year.val gt 2030)=taxc(r,'pFUL')*(1+Tinc);

* CCS in industry
* decrease in CO2 emissions
CCSind(r,s)$(CCSi eq 1 and year.val gt 2024 and H2A(s))=CCSind(r,s)*(1-0.06);
* increase in capital requirements
CCSup(r,s)$(CCSi eq 1 and year.val gt 2024 and H2A(s))=CCSup(r,s)*(1+0.003);

*=====================Re-Solve============

execute_loadpoint "ARROW_DEBREU_p.gdx";
Arrow_Debreu.iterlim = 9999;
Arrow_Debreu.optfile = 1;
$INCLUDE Arrow_Debreu.GEN
Solve Arrow_Debreu using mcp;

display y0,prdE;

*=====================save the values of the variables of interests ============


*interest rate
ir(r)=pk.l(r);

*ds(r)$(PLL and year.val gt 2020)=ds(r)*(1-PLL);

* Activity Level
Activity(r,s,year)=sum(g,XD_O.l(r,s,g));



* input/output analysis
IOanalysis('input',r,s,g,year)=pa.l(r,g)/CPI.l*(XD_I.l(r,s,g))*(1+taxc(r,g));
IOanalysis('input',r,s,labours,year)$(SW_LMKT eq 1)=pl.l(labours,r)/CPI.l*Lout.l(labours,r,s);
IOanalysis('input',r,s,labours,year)$(SW_LMKT eq 2)=pln.l(labours)/CPI.l*Lout.l(labours,r,s);
*IOanalysis('input',r,s,"Capital",year)=pk.l(r)/CPI.l*Kout.l(r,s)+POG.L(r)*sum(hh,AOGR(hh,r))$(sameas(s,"iCOI"))/CPI.l+POGM.L(r)*sum(hh,AOGRm(hh,r))$(sameas(s,"iMIN"))/CPI.l+PNG.L(r)*sum(hh,ANGR(hh,r))$(sameas(s,"iNG"))/CPI.l;

IOanalysis('input',r,s,"Capital",year)=pk.l(r)/CPI.l*Kout.l(r,s)+POG.L(r)*sum(hh,AOGR(hh,r))$(sameas(s,"iCOI"))/CPI.l+POGM.L(r)*sum(hh,AOGRm(hh,r))$(sameas(s,"iMIN"))/CPI.l+PNG.L(r)*sum(hh,ANGR(hh,r))$(sameas(s,"iNG"))/CPI.l+sum(g,p.l(r,s,g)/CPI.l*(XD_O.l(r,s,g))*(powmu.l(r,s)$powsecs(s)))+PLND.L(r)*sum(hh,ALND(hh,r))$(sameas(s,"iFIS"))/CPI.l;


IOanalysis('input',r,s,"tax_sec",year)=sum(g,p.l(r,s,g)/CPI.l*XD_O.l(r,s,g)*taxp(r,s));
IOanalysis('input',r,hh,g,year)=pa.l(r,g)/CPI.l*(FDH.l(r,g,hh))*(1+taxc(r,g));
*gå tilbake her
IOanalysis('input',r,"demand",g,year)=pa.l(r,g)/CPI.l*(FDG.l(r,g)+FDI.l(r,g))*(1+taxc(r,g));
IOanalysis('input',r,hh,"CO2allow",year)=PCO2.l/CPI.l*sum((fosfuels),CO2r(r,fosfuels,hh))*sum((fosfuels),FDH.L(r,fosfuels,hh));
IOanalysis('input',r,s,"CO2allow",year)=PCO2.l/CPI.l*sum(fosfuels,CO2r(r,fosfuels,s)*XD_I.L(r, s, fosfuels));

IOanalysis('input',r,s,"overp",year)=sum(g,p.l(r,s,g)/CPI.l*(XD_O.l(r,s,g))*(powmu.l(r,s)$powsecs(s)));



IOanalysis('input',r,"stocks",g,year)=pa.l(r,g)*SVZ(r,g)/CPI.l*a.l(r,g);
IOanalysis('input',r,"tmarg",g,year)=pa.l(r,g)/CPI.l*TMout.l(g,r);
IOanalysis('input',r,"exportsROW",g,year)=er.l(g)/CPI.l*XP.l(r,g);
IOanalysis('output',r,s,g,year)=p.l(r,s,g)/CPI.l*XD_O.l(r,s,g);
IOanalysis('output',r,"tax_com",g,year)=pa.l(r,g)/CPI.l*(sum(s,XD_I.l(r,s,g))+sum(hh,FDH.l(r,g,hh))+FDG.l(r,g)+FDI.l(r,g))*taxc(r,g);
IOanalysis('output',r,"tmarg",g,year)=sum(rt,pt.l(rt,r)/CPI.l*TMin.l(g,rt,r));
IOanalysis('output',r,"importsROW",g,year)=ert.l/CPI.l*MP.l(r,g);



* GDP analysis
expendGDP("C",r,g,year)=pa.l(r,g)/CPI.l*sum(hh,FDH.l(r,g,hh))*(1+taxcz(r, g));
expendGDP("I",r,g,year)=pa.l(r,g)/CPI.l*FDI.l(r,g)*(1+taxcz(r, g));
expendGDP("G",r,g,year)=pa.l(r,g)/CPI.l*FDG.l(r,g)*(1+taxcz(r, g));
expendGDP("S",r,g,year)=IOanalysis('input',r,"stocks",g,year);
expendGDP("X",r,g,year)=IOanalysis('input',r,"exportsROW",g,year);
expendGDP("M",r,g,year)=IOanalysis('output',r,"importsROW",g,year);
expendGDP("taxc",r,g,year)=IOanalysis('output',r,"tax_com",g,year);
expendGDP("tm",r,g,year)=IOanalysis('output',r,"tmarg",g,year)-IOanalysis('input',r,"tmarg",g,year);

incomeGDP("K",r,s,year)=IOanalysis('input',r,s,"Capital",year);
incomeGDP("L",r,s,year)=sum(labours,IOanalysis('input',r,s,labours,year));
incomeGDP("taxs",r,s,year)=IOanalysis('input',r,s,"tax_sec",year);

productGDP("input",r,s,year)=sum(g,IOanalysis('input',r,s,g,year));
productGDP("output",r,s,year)=sum(g,IOanalysis('output',r,s,g,year));



* Social Accounting Matrix
SAMout(r,g,s,year)=pa.l(r,g)/CPI.l*(XD_I.l(r,s,g))*(1+taxc(r,g));
SAMout(r,s,g,year)= p.l(r,s,g)/CPI.l*XD_O.l(r,s,g);

SAMout(r,"Capital",s,year)=pk.l(r)/CPI.l*Kout.l(r,s)+POG.L(r)*sum(hh,AOGR(hh,r))$(sameas(s,"iCOI"))/CPI.l+POGM.L(r)*sum(hh,AOGRm(hh,r))$(sameas(s,"iMIN"))/CPI.l+PNG.L(r)*sum(hh,ANGR(hh,r))$(sameas(s,"iNG"))/CPI.l+sum(g,p.l(r,s,g)/CPI.l*(XD_O.l(r,s,g))*(powmu.l(r,s)$powsecs(s)))+PLND.L(r)*sum(hh,ALND(hh,r))$(sameas(s,"iFIS"))/CPI.l;


SAMout(r,labours,s,year)$(SW_LMKT eq 1)=pl.l(labours,r)/CPI.l*Lout.l(labours,r,s);
SAMout(r,labours,s,year)$(SW_LMKT eq 2)=pln.l(labours)/CPI.l*Lout.l(labours,r,s);
SAMout(r,"tax_sec",s,year)=taxp(r,s)*sum(g,p.l(r,s,g)/CPI.l*XD_O.l(r,s,g));


SAMout(r,g,hh,year)=FDH.l(r,g,hh)*pa.l(r,g)/CPI.l*(1+taxc(r,g));



SAMout(r,g,"GOVT",year)=FDG.l(r,g)*pa.l(r,g)/CPI.l*(1+taxc(r,g));
SAMout(r,g,"INV",year)=FDI.l(r,g)*pa.l(r,g)/CPI.l*(1+taxc(r,g));
SAMout(r,hh,"GOVT",year)=ptr.l(r,hh)/CPI.l*TRANSFZ(r,hh)*PCINDEX.l(r);
SAMout(r,"INV","GOVT",year)=ps.l(r)/CPI.l*SGZ(r)*PIINDEX.l(r);
SAMout(r,g,"STOCKS",year)=pa.l(r,g)*SVZ(r,g)/CPI.l*a.l(r,g);
SAMout(r,hh,"Capital",year)= pk.l(r)/CPI.l*KSZ(hh,r)+POG.L(r)*AOGR(hh,r)/CPI.l+POGM.L(r)*AOGRm(hh,r)/CPI.l+PNG.L(r)*ANGR(hh,r)/CPI.l+sum((g,s)$powsecs(s),p.l(r,s,g)/CPI.l*XD_O.l(r,s,g)*powmu.l(r,s))+PLND.L(r)*ALND(hh,r)/CPI.l;
SAMout(r,hh,labours,year)$(SW_LMKT eq 1)=pl.l(labours,r)/CPI.l*LSZ(hh,labours,r);
SAMout(r,hh,labours,year)$(SW_LMKT eq 2)=pln.l(labours)/CPI.l*LSZ(hh,labours,r);
*SAMout(r,"INV",i,year)=SHZ(r,hh)*ps.l(r)/CPI.l*R_SH.L(r,i);



SAMout(r,hh,"trade",year)=max(0, (TRHROWZ(r,hh))*CPI.l*ert.l/CPI.l*R_SH.l(r,hh));
SAMout(r,"trade",hh,year)=max(0, -(TRHROWZ(r,hh))*CPI.l*ert.l/CPI.l*R_SH.l(r,hh));


*SAMout(r,hh,"trade",year)=max(0, (TRHROWZ(r,hh))*CPI.l*ert.l/CPI.l);
*SAMout(r,"trade",hh,year)=max(0,-(TRHROWZ(r,hh))*CPI.l*ert.l/CPI.l);




SAMout(r,"GOVT","tax_sec",year)=sum(s,taxp(r,s)*sum(g,p.l(r,s,g)/CPI.l*XD_O.l(r,s,g)));
SAMout(r,"GOVT","tax_com",year)=sum(g,sum(s,XD_I.l(r,s,g))*pa.l(r,g)/CPI.l*taxc(r,g)+(sum(hh,FDH.l(r,g,hh))+FDG.l(r,g)+FDI.l(r,g))*pa.l(r,g)/CPI.l*taxc(r,g));
SAMout(r,"tax_sec",s,year)=taxp(r,s)*sum(g,XD_O.L(r, s, g)*p.l(r,s,g)/CPI.l);
SAMout(r,"tax_com",g,year)=sum(s,XD_I.L(r,s,g))*pa.l(r,g)/CPI.l*taxc(r,g)+(sum(hh,FDH.l(r,g,hh))+FDG.l(r,g)+FDI.l(r,g))*pa.l(r,g)/CPI.l*taxc(r,g);
SAMout(r,"STOCKS","INV",year)=sum(g,pa.l(r,g)*SVZ(r,g)/CPI.l*a.l(r,g));
SAMout(r,g,"tmarg",year)= pa.l(r,g)/CPI.l*TMout.L(g,r);
SAMout(r,"tmarg",g,year)= sum(rt,pt.l(r,rt)/CPI.l*TMin.L(g,r,rt)) ;
SAMout(r,g,"trade",year)= er.l(g)/CPI.l*XP.l(r,g)+sum(rt,px.l(g,r,rt)/CPI.l*XPregions.l(g,r,rt));
SAMout(r,"trade",g,year)=ert.l/CPI.l*MP.l(r,g)+sum(rt,px.l(g,rt,r)/CPI.l*MPregions.l(g,rt,r));
* REMEMBER!!: If the government is central there will be an unbalance in each SAM for the cell "Trade,GOVT"
* because the income from the rest of the world to the GOVT is reallocated between the different regions
SAMout(r,"GOVT","trade",year)= ert.L/CPI.l*TRROWZ(r)*CPI.l;
SAMout(r,"INV","trade",year)= ert.L/CPI.l*SROWZ(r)*PCINDEX.l(r);
SAMout(r,"CO2allow",s,year)=PCO2.L/CPI.l*sum(fosfuels,CO2r(r,fosfuels,s)*XD_I.L(r, s, fosfuels));
SAMout(r,"CO2allow",hh,year)=PCO2.L/CPI.l*sum(fosfuels,CO2r(r,fosfuels,hh)*FDH.L(r,fosfuels,hh));
SAMout(r,"CO2allow","tmarg",year)=PCO2.L/CPI.l*sum(fosfuels,CO2r(r,fosfuels,"tmarg")*TMout.L(fosfuels,r));
SAMout(r,"GOVT","CO2allow",year)=PCO2.L/CPI.l*sum(fosfuels,sum(sec,CO2r(r,fosfuels,sec)*XD_I.L(r, sec, fosfuels))+sum(hh,CO2r(r,fosfuels,hh)*FDH.L(r,fosfuels,hh))+CO2r(r,fosfuels,"tmarg")*TMout.L(fosfuels,r));

* Quantity Matrix
QQQ(r,g,s,year)=(XD_I.l(r,s,g));
QQQ(r,s,g,year)= XD_O.l(r,s,g);
QQQ(r,"Capital",s,year)=Kout.l(r,s)+sum(hh,AOGR(hh,r))$(sameas(s,"iCOI"))+sum(hh,AOGRm(hh,r))$(sameas(s,"iMIN"))+sum(hh,ANGR(hh,r))$(sameas(s,"iNG"));
QQQ(r,labours,s,year)=Lout.l(labours,r,s);
QQQ(r,"tax_sec",s,year)=sum(g,XD_O.l(r,s,g));
QQQ(r,g,hh,year)=FDH.l(r,g,hh);
QQQ(r,g,"GOVT",year)=FDG.l(r,g);
QQQ(r,g,"INV",year)=FDI.l(r,g);
QQQ(r,hh,"GOVT",year)=TRANSFZ(r,hh);
QQQ(r,"INV","GOVT",year)=SGZ(r);
QQQ(r,g,"STOCKS",year)=SVZ(r,g)*a.l(r,g);
QQQ(r,hh,"Capital",year)=KSZ(hh,r);
QQQ(r,hh,labours,year)=LSZ(hh,labours,r);
*QQQ(r,"INV",hh,year)=SHZ(r,hh)*R_SH.L(r,i);
QQQ(r,hh,"trade",year)=max(0, (TRHROWZ(r,hh)*CPI.l));
QQQ(r,"trade",hh,year)=max(0,-(TRHROWZ(r,hh)*CPI.l));
QQQ(r,"GOVT","tax_sec",year)=sum(s,taxp(r,s)*sum(g,XD_O.l(r,s,g)));
QQQ(r,"GOVT","tax_com",year)=sum(g,sum(s,XD_I.l(r,s,g))+(sum(hh,FDH.l(r,g,hh))+FDG.l(r,g)+FDI.l(r,g)));
QQQ(r,"tax_sec",s,year)=taxp(r,s)*sum(g,XD_O.L(r, s, g));
QQQ(r,"tax_com",g,year)=sum(s,XD_I.L(r,s,g))+(sum(hh,FDH.l(r,g,hh))+FDG.l(r,g)+FDI.l(r,g));
QQQ(r,"STOCKS","INV",year)=sum(g,SVZ(r,g)*a.l(r,g));
QQQ(r,g,"tmarg",year)= TMout.L(g,r);
QQQ(r,"tmarg",g,year)= sum(rt,TMin.L(g,r,rt)) ;
QQQ(r,g,"trade",year)= XP.l(r,g)+sum(rt,XPregions.l(g,r,rt));
QQQ(r,"trade",g,year)=MP.l(r,g)+sum(rt,MPregions.l(g,rt,r));
QQQ(r,"GOVT","trade",year)= TRROWZ(r)*CPI.l;
QQQ(r,"INV","trade",year)= SROWZ(r)*PCINDEX.l(r);


* Quantity Matrix with only ROW exports and imports.
* If you look at the results for whole Norway, this one is better.
* If you consider them by region, the previous QQQ is better.
QQQ2(r,g,s,year)=(XD_I.l(r,s,g));
QQQ2(r,s,g,year)= XD_O.l(r,s,g);
QQQ2(r,"Capital",s,year)=Kout.l(r,s)+sum(hh,AOGR(hh,r))$(sameas(s,"iCOI"))+sum(hh,AOGRm(hh,r))$(sameas(s,"iMIN"))+sum(hh,ANGR(hh,r))$(sameas(s,"iNG"));
QQQ2(r,labours,s,year)=Lout.l(labours,r,s);
QQQ2(r,"tax_sec",s,year)=0;
*sum(g,XD_O.l(r,s,g));
QQQ2(r,g,hh,year)=FDH.l(r,g,hh);
QQQ2(r,g,"GOVT",year)=FDG.l(r,g);
QQQ2(r,g,"INV",year)=FDI.l(r,g);
QQQ2(r,hh,"GOVT",year)=TRANSFZ(r,hh);
QQQ2(r,"INV","GOVT",year)=SGZ(r);
QQQ2(r,g,"STOCKS",year)=SVZ(r,g)*a.l(r,g);
QQQ2(r,hh,"Capital",year)=KSZ(hh,r);
QQQ2(r,hh,labours,year)=LSZ(hh,labours,r);
*QQQ2(r,"INV",hh,year)=SHZ(r,hh)*R_SH.L(r,hh);
QQQ2(r,hh,"trade",year)=max(0, (TRHROWZ(r,hh)*CPI.l));
QQQ2(r,hh,hh,year)=max(0,-(TRHROWZ(r,hh)*CPI.l));
QQQ2(r,"GOVT","tax_sec",year)=0;
*sum(s,taxp(r,s)*sum(g,XD_O.l(r,s,g)));
QQQ2(r,"GOVT","tax_com",year)=0;
*sum(g,sum(s,XD_I.l(r,s,g))+(FDH.l(r,g)+FDG.l(r,g)+FDI.l(r,g)));
QQQ2(r,"tax_sec",s,year)=0;
*taxp(r,s)*sum(g,XD_O.L(r, s, g));
QQQ2(r,"tax_com",g,year)=0;
*sum(s,XD_I.L(r,s,g))+(FDH.l(r,g)+FDG.l(r,g)+FDI.l(r,g));
QQQ2(r,"STOCKS","INV",year)=sum(g,SVZ(r,g)*a.l(r,g));
QQQ2(r,g,"tmarg",year)= TMout.L(g,r);
QQQ2(r,"tmarg",g,year)= sum(rt,TMin.L(g,r,rt)) ;
QQQ2(r,g,"trade",year)= XP.l(r,g);
QQQ2(r,"trade",g,year)=MP.l(r,g);
QQQ2(r,"GOVT","trade",year)= TRROWZ(r)*CPI.l;
QQQ2(r,"INV","trade",year)= SROWZ(r)*PCINDEX.l(r);

* Price Matrix
PPP(r,g,s,year)$(QQQ(r,g,s,year))=SAMout(r,g,s,year)/QQQ(r,g,s,year);
PPP(r,s,g,year)$(QQQ(r,s,g,year))= SAMout(r,s,g,year)/QQQ(r,s,g,year);
PPP(r,"Capital",s,year)$QQQ(r,"Capital",s,year)=SAMout(r,"Capital",s,year)/QQQ(r,"Capital",s,year);
PPP(r,labours,s,year)$QQQ(r,labours,s,year)=SAMout(r,labours,s,year)/QQQ(r,labours,s,year);
PPP(r,"tax_sec",s,year)$QQQ(r,"tax_sec",s,year)=SAMout(r,"tax_sec",s,year)/QQQ(r,"tax_sec",s,year);
PPP(r,g,hh,year)$QQQ(r,g,hh,year)=SAMout(r,g,hh,year)/QQQ(r,g,hh,year);
PPP(r,g,"GOVT",year)$QQQ(r,g,"GOVT",year)=SAMout(r,g,"GOVT",year)/QQQ(r,g,"GOVT",year);
PPP(r,g,"INV",year)$QQQ(r,g,"INV",year)=SAMout(r,g,"INV",year)/QQQ(r,g,"INV",year);
PPP(r,hh,"GOVT",year)$QQQ(r,hh,"GOVT",year)=SAMout(r,hh,"GOVT",year)/QQQ(r,hh,"GOVT",year);
PPP(r,"INV","GOVT",year)$QQQ(r,"INV","GOVT",year)=SAMout(r,"INV","GOVT",year)/QQQ(r,"INV","GOVT",year);
PPP(r,g,"STOCKS",year)$QQQ(r,g,"STOCKS",year)=SAMout(r,g,"STOCKS",year)/QQQ(r,g,"STOCKS",year);
PPP(r,hh,"Capital",year)$QQQ(r,hh,"Capital",year)=SAMout(r,hh,"Capital",year)/QQQ(r,hh,"Capital",year);
PPP(r,hh,labours,year)$QQQ(r,hh,labours,year)=SAMout(r,hh,labours,year)/QQQ(r,hh,labours,year);
PPP(r,"INV",hh,year)$QQQ(r,"INV",hh,year)=SAMout(r,"INV",hh,year)/QQQ(r,"INV",hh,year);
PPP(r,hh,"trade",year)$QQQ(r,hh,"trade",year)=SAMout(r,hh,"trade",year)/QQQ(r,hh,"trade",year);
PPP(r,"trade",hh,year)$QQQ(r,"trade",hh,year)=SAMout(r,"trade",hh,year)/QQQ(r,"trade",hh,year);
PPP(r,"GOVT","tax_sec",year)$QQQ(r,"GOVT","tax_sec",year)=SAMout(r,"GOVT","tax_sec",year)/QQQ(r,"GOVT","tax_sec",year);
PPP(r,"GOVT","tax_com",year)$QQQ(r,"GOVT","tax_com",year)=SAMout(r,"GOVT","tax_com",year)/QQQ(r,"GOVT","tax_com",year);
PPP(r,"tax_sec",s,year)$QQQ(r,"tax_sec",s,year)=SAMout(r,"tax_sec",s,year)/QQQ(r,"tax_sec",s,year);
PPP(r,"tax_com",g,year)$QQQ(r,"tax_com",g,year)=SAMout(r,"tax_com",g,year)/QQQ(r,"tax_com",g,year);
PPP(r,"STOCKS","INV",year)$QQQ(r,"STOCKS","INV",year)=SAMout(r,"STOCKS","INV",year)/QQQ(r,"STOCKS","INV",year);
PPP(r,g,"tmarg",year)$QQQ(r,g,"tmarg",year) = SAMout(r,g,"tmarg",year)/QQQ(r,g,"tmarg",year);
PPP(r,"tmarg",g,year)$QQQ(r,"tmarg",g,year) = SAMout(r,"tmarg",g,year)/QQQ(r,"tmarg",g,year);
PPP(r,g,"trade",year)$QQQ(r,g,"trade",year) = SAMout(r,g,"trade",year)/QQQ(r,g,"trade",year);
PPP(r,"trade",g,year)$QQQ(r,"trade",g,year) =SAMout(r,"trade",g,year)/QQQ(r,"trade",g,year);
PPP(r,"GOVT","trade",year)$QQQ(r,"GOVT","trade",year) = SAMout(r,"GOVT","trade",year)/QQQ(r,"GOVT","trade",year);
PPP(r,"INV","trade",year)$QQQ(r,"INV","trade",year) = SAMout(r,"INV","trade",year)/QQQ(r,"INV","trade",year);
PPP(r,"GOVT","CO2allow",year)$(CO2B)=PCO2.L/CPI.l;

VA(r,s,year)=SAMout(r,"Capital",s,year)+sum(labours,SAMout(r,labours,s,year))+SAMout(r,"tax_sec",s,year);

EEdem(r,s,year)=sum((fosfuels),XD_I.l(r, s, fosfuels)*CO2r(r,fosfuels,s));
EEdem(r,hh,year)=sum(fosfuels,FDH.l(r,fosfuels,hh)*CO2r(r,fosfuels,hh));
EEdem(r,"tmarg",year)= sum(fosfuels,TMout.L(fosfuels,r)*CO2r(r,fosfuels,"tmarg"));

******** NEW OUTPUT *********
HHIncome(r,hh,labours,year)$(SW_LMKT eq 1)=pl.l(labours,r)/CPI.l*LSZ(hh,labours,r);
HHIncome(r,hh,labours,year)$(SW_LMKT eq 2)=pln.l(labours)/CPI.l*LSZ(hh,labours,r);
*****************************

EmCap(year)=CO2B;
CO2price(year)=PCO2.L/CPI.l;



KapV_test(r,year)=KapVirt(r);
CaDe_test(r,year)=CaDe(r);

KSZ_test(hh,r,year)=KSZ(hh,r);
Kap_test(r,year)=Kap(r);
I_test(r,year)=II.l(r);
LSZ_test(hh,labours,r,year)=LSZ(hh,labours,r);
pop_test(year)=(1+pop);
HHinc_test(hh,r,year)=HHinc.L(r,hh);
HHtrans_test(hh,r,year)=HHtrans.L(hh,r);
u0_test(hh,r,year)=u0(hh,r);
TrROW_test(hh,r,year)=TRHROWZ(r,hh);
AOGR_test(hh,r,year)=AOGR(hh,r);
ANGR_test(hh,r,year)=ANGR(hh,r);
HHsav_test(hh,r,year)=SHZ(r,hh);



);
*End of year loop


* =================== KLEM analysis ==================
parameter qKLEM(*,cnt,sec,year) quantities aggregated by type of input;
parameter pKLEM(*,cnt,sec,year) prices aggregated by type of input;
parameter fKLEM(*,cnt,sec,year) flows aggregated by type of input;

qKLEM('K',cnt,sec,year)=QQQ(cnt,"Capital",sec,year);
qKLEM('L',cnt,sec,year)=sum(labours,QQQ(cnt,labours,sec,year));
qKLEM('L1',cnt,sec,year)=QQQ(cnt,'L1',sec,year);
qKLEM('L2',cnt,sec,year)=QQQ(cnt,'L2',sec,year);
qKLEM('L3',cnt,sec,year)=QQQ(cnt,'L3',sec,year);
qKLEM('L4',cnt,sec,year)=QQQ(cnt,'L4',sec,year);
qKLEM('L5',cnt,sec,year)=QQQ(cnt,'L5',sec,year);
qKLEM('E',cnt,sec,year)=sum(eng,QQQ(cnt,eng,sec,year))+(sum(fosfuels,CO2r(cnt,fosfuels,sec)*QQQ(cnt,fosfuels,sec,year)));
*qKLEM('E',cnt,sec,year)=sum(eng,QQQ(cnt,eng,sec,year));
qKLEM('M',cnt,sec,year)=sum(mtl,QQQ(cnt,mtl,sec,year));


pKLEM('K',cnt,sec,year)$(qKLEM('K',cnt,sec,year))=SAMout(cnt,"Capital",sec,year)/QQQ(cnt,"Capital",sec,year);
pKLEM('L',cnt,sec,year)$(qKLEM('L',cnt,sec,year))=sum(labours,SAMout(cnt,labours,sec,year))/sum(labours,QQQ(cnt,labours,sec,year));
pKLEM('L1',cnt,sec,year)$(qKLEM('L1',cnt,sec,year))=SAMout(cnt,'L1',sec,year)/QQQ(cnt,'L1',sec,year);
pKLEM('L2',cnt,sec,year)$(qKLEM('L2',cnt,sec,year))=SAMout(cnt,'L2',sec,year)/QQQ(cnt,'L2',sec,year);
pKLEM('L3',cnt,sec,year)$(qKLEM('L3',cnt,sec,year))=SAMout(cnt,'L3',sec,year)/QQQ(cnt,'L3',sec,year);
pKLEM('L4',cnt,sec,year)$(qKLEM('L4',cnt,sec,year))=SAMout(cnt,'L4',sec,year)/QQQ(cnt,'L4',sec,year);
pKLEM('L5',cnt,sec,year)$(qKLEM('L5',cnt,sec,year))=SAMout(cnt,'L5',sec,year)/QQQ(cnt,'L5',sec,year);
pKLEM('E',cnt,sec,year)=(sum(eng,SAMout(cnt,eng,sec,year))+SAMout(cnt,"CO2allow",sec,year))/(sum(eng,QQQ(cnt,eng,sec,year))+(sum(fosfuels,CO2r(cnt,fosfuels,sec)*QQQ(cnt,fosfuels,sec,year))));
*pKLEM('E',cnt,sec,year)$(qKLEM('E',cnt,sec,year))=(sum(eng,SAMout(cnt,eng,sec,year)))/sum(eng,QQQ(cnt,eng,sec,year));
pKLEM('M',cnt,sec,year)$(qKLEM('M',cnt,sec,year))=sum(mtl,SAMout(cnt,mtl,sec,year))/sum(mtl,QQQ(cnt,mtl,sec,year));

fKLEM('K',cnt,sec,year)=SAMout(cnt,"Capital",sec,year);
fKLEM('L',cnt,sec,year)=sum(labours,SAMout(cnt,labours,sec,year));
fKLEM('L1',cnt,sec,year)=SAMout(cnt,'L1',sec,year);
fKLEM('L2',cnt,sec,year)=SAMout(cnt,'L2',sec,year);
fKLEM('L3',cnt,sec,year)=SAMout(cnt,'L3',sec,year);
fKLEM('L4',cnt,sec,year)=SAMout(cnt,'L4',sec,year);
fKLEM('L5',cnt,sec,year)=SAMout(cnt,'L5',sec,year);
fKLEM('E',cnt,sec,year)=sum(eng,SAMout(cnt,eng,sec,year))+SAMout(cnt,"CO2allow",sec,year);
*fKLEM('E',cnt,sec,year)=sum(eng,SAMout(cnt,eng,sec,year));
fKLEM('M',cnt,sec,year)=sum(mtl,SAMout(cnt,mtl,sec,year));

*=====================Report any variables desired ============
parameter goal,relgdp;
goal=sum(r,VA(r,'iH2E','2030')+VA(r,'iH2S','2030')+VA(r,'iH2C','2030'))/sum(r,VA(r,'iCOI','2018')+VA(r,'iNG','2018'));
relgdp=sum((r,s),VA(r,s,'2030'))/sum((r,s),VA(r,s,'2018'));

set decade(year) /
2018
2020
2030
2040
2050
/;

parameter Activity_t(r,s,decade),VA_t(r,s,decade),IOanalysis_t(*,*,*,*,decade),QQQ_t(cnt,*,*,decade),QQQ2_t(cnt,*,*,decade),PPP_t(cnt,*,*,decade),EEdem_t(cnt,*,decade),qKLEM_t(*,cnt,sec,decade),pKLEM_t(*,cnt,sec,decade),fKLEM_t(*,cnt,sec,decade);

VA_t(r,s,decade)=VA(r,s,decade);

Activity_t(r,s,decade)=Activity(r,s,decade);

IOanalysis_t('input',r,s,g,decade)=IOanalysis('input',r,s,g,decade);
IOanalysis_t('input',r,s,labours,decade)=IOanalysis('input',r,s,labours,decade);
IOanalysis_t('input',r,s,"Capital",decade)=IOanalysis('input',r,s,"Capital",decade);
IOanalysis_t('input',r,s,"tax_sec",decade)=IOanalysis('input',r,s,"tax_sec",decade);
IOanalysis_t('input',r,hh,g,decade)=IOanalysis('input',r,hh,g,decade);
IOanalysis_t('input',r,"demand",g,decade)=IOanalysis('input',r,"demand",g,decade);
IOanalysis_t('input',r,"demand","CO2allow",decade)=IOanalysis('input',r,"demand","CO2allow",decade);
IOanalysis_t('input',r,hh,"CO2allow",decade)=IOanalysis('input',r,hh,"CO2allow",decade);
IOanalysis_t('input',r,s,"CO2allow",decade)=IOanalysis('input',r,s,"CO2allow",decade);
IOanalysis_t('input',r,s,"overp",decade)=IOanalysis('input',r,s,"overp",decade);
IOanalysis_t('input',r,"stocks",g,decade)=IOanalysis('input',r,"stocks",g,decade);
IOanalysis_t('input',r,"tmarg",g,decade)=IOanalysis('input',r,"tmarg",g,decade);
IOanalysis_t('input',r,"exportsROW",g,decade)=IOanalysis('input',r,"exportsROW",g,decade);
IOanalysis_t('output',r,s,g,decade)=IOanalysis('output',r,s,g,decade);
IOanalysis_t('output',r,"tax_com",g,decade)=IOanalysis('output',r,"tax_com",g,decade);
IOanalysis_t('output',r,"tmarg",g,decade)=IOanalysis('output',r,"tmarg",g,decade);
IOanalysis_t('output',r,"importsROW",g,decade)=IOanalysis('output',r,"importsROW",g,decade);


QQQ_t(r,g,s,decade)=QQQ(r,g,s,decade);
QQQ_t(r,s,g,decade)=QQQ(r,s,g,decade);
QQQ_t(r,"Capital",s,decade)=QQQ(r,"Capital",s,decade);
QQQ_t(r,labours,s,decade)=QQQ(r,labours,s,decade);
QQQ_t(r,"tax_sec",s,decade)=QQQ(r,"tax_sec",s,decade);
QQQ_t(r,g,hh,decade)=QQQ(r,g,hh,decade);
QQQ_t(r,g,"GOVT",decade)=QQQ(r,g,"GOVT",decade);
QQQ_t(r,g,"INV",decade)=QQQ(r,g,"INV",decade);
QQQ_t(r,hh,"GOVT",decade)=QQQ(r,hh,"GOVT",decade);
QQQ_t(r,"INV","GOVT",decade)=QQQ(r,"INV","GOVT",decade);
QQQ_t(r,g,"STOCKS",decade)=QQQ(r,g,"STOCKS",decade);
QQQ_t(r,hh,"Capital",decade)=QQQ(r,hh,"Capital",decade);
QQQ_t(r,hh,labours,decade)=QQQ(r,hh,labours,decade);
QQQ_t(r,"INV",hh,decade)=QQQ(r,"INV",hh,decade);
QQQ_t(r,hh,"trade",decade)=QQQ(r,hh,"trade",decade);
QQQ_t(r,"trade",hh,decade)=QQQ(r,"trade",hh,decade);
QQQ_t(r,"GOVT","tax_sec",decade)=QQQ(r,"GOVT","tax_sec",decade);
QQQ_t(r,"GOVT","tax_com",decade)=QQQ(r,"GOVT","tax_com",decade);
QQQ_t(r,"tax_sec",s,decade)=QQQ(r,"tax_sec",s,decade);
QQQ_t(r,"tax_com",g,decade)=QQQ(r,"tax_com",g,decade);
QQQ_t(r,"STOCKS","INV",decade)=QQQ(r,"STOCKS","INV",decade);
QQQ_t(r,g,"tmarg",decade)=QQQ(r,g,"tmarg",decade);
QQQ_t(r,"tmarg",g,decade)=QQQ(r,"tmarg",g,decade);
QQQ_t(r,g,"trade",decade)=QQQ(r,g,"trade",decade);
QQQ_t(r,"trade",g,decade)=QQQ(r,"trade",g,decade);
QQQ_t(r,"GOVT","trade",decade)=QQQ(r,"GOVT","trade",decade);
QQQ_t(r,"INV","trade",decade)=QQQ(r,"INV","trade",decade);

QQQ2_t(r,g,s,decade)=QQQ2(r,g,s,decade);
QQQ2_t(r,s,g,decade)=QQQ2(r,s,g,decade);
QQQ2_t(r,"Capital",s,decade)=QQQ2(r,"Capital",s,decade);
QQQ2_t(r,labours,s,decade)=QQQ2(r,labours,s,decade);
QQQ2_t(r,"tax_sec",s,decade)=QQQ2(r,"tax_sec",s,decade);
QQQ2_t(r,g,hh,decade)=QQQ2(r,g,hh,decade);
QQQ2_t(r,g,"GOVT",decade)=QQQ2(r,g,"GOVT",decade);
QQQ2_t(r,g,"INV",decade)=QQQ2(r,g,"INV",decade);
QQQ2_t(r,hh,"GOVT",decade)=QQQ2(r,hh,"GOVT",decade);
QQQ2_t(r,"INV","GOVT",decade)=QQQ2(r,"INV","GOVT",decade);
QQQ2_t(r,g,"STOCKS",decade)=QQQ2(r,g,"STOCKS",decade);
QQQ2_t(r,hh,"Capital",decade)=QQQ2(r,hh,"Capital",decade);
QQQ2_t(r,hh,labours,decade)=QQQ2(r,hh,labours,decade);
QQQ2_t(r,"INV",hh,decade)=QQQ2(r,"INV",hh,decade);
QQQ2_t(r,hh,"trade",decade)=QQQ2(r,hh,"trade",decade);
QQQ2_t(r,"trade",hh,decade)=QQQ2(r,"trade",hh,decade);
QQQ2_t(r,"GOVT","tax_sec",decade)=QQQ2(r,"GOVT","tax_sec",decade);
QQQ2_t(r,"GOVT","tax_com",decade)=QQQ2(r,"GOVT","tax_com",decade);
QQQ2_t(r,"tax_sec",s,decade)=QQQ2(r,"tax_sec",s,decade);
QQQ2_t(r,"tax_com",g,decade)=QQQ2(r,"tax_com",g,decade);
QQQ2_t(r,"STOCKS","INV",decade)=QQQ2(r,"STOCKS","INV",decade);
QQQ2_t(r,g,"tmarg",decade)=QQQ2(r,g,"tmarg",decade);
QQQ2_t(r,"tmarg",g,decade)=QQQ2(r,"tmarg",g,decade);
QQQ2_t(r,g,"trade",decade)=QQQ2(r,g,"trade",decade);
QQQ2_t(r,"trade",g,decade)=QQQ2(r,"trade",g,decade);
QQQ2_t(r,"GOVT","trade",decade)=QQQ2(r,"GOVT","trade",decade);
QQQ2_t(r,"INV","trade",decade)=QQQ2(r,"INV","trade",decade);


PPP_t(r,g,s,decade)=PPP(r,g,s,decade);
PPP_t(r,"Capital",s,decade)=PPP(r,"Capital",s,decade);
PPP_t(r,labours,s,decade)=PPP(r,labours,s,decade);
PPP_t(r,"tax_sec",s,decade)=PPP(r,"tax_sec",s,decade);
PPP_t(r,g,hh,decade)=PPP(r,g,hh,decade);
PPP_t(r,g,"GOVT",decade)=PPP(r,g,"GOVT",decade);
PPP_t(r,g,"INV",decade)=PPP(r,g,"INV",decade);
PPP_t(r,hh,"GOVT",decade)=PPP(r,hh,"GOVT",decade);
PPP_t(r,"INV","GOVT",decade)=PPP(r,"INV","GOVT",decade);
PPP_t(r,g,"STOCKS",decade)=PPP(r,g,"STOCKS",decade);
PPP_t(r,hh,"Capital",decade)=PPP(r,hh,"Capital",decade);
PPP_t(r,hh,labours,decade)=PPP(r,hh,labours,decade);
PPP_t(r,"INV",hh,decade)=PPP(r,"INV",hh,decade);
PPP_t(r,hh,"trade",decade)=PPP(r,hh,"trade",decade);
PPP_t(r,"trade",hh,decade)=PPP(r,"trade",hh,decade);
PPP_t(r,"GOVT","tax_sec",decade)=PPP(r,"GOVT","tax_sec",decade);
PPP_t(r,"GOVT","tax_com",decade)=PPP(r,"GOVT","tax_com",decade);
PPP_t(r,"tax_sec",s,decade)=PPP(r,"tax_sec",s,decade);
PPP_t(r,"tax_com",g,decade)=PPP(r,"tax_com",g,decade);
PPP_t(r,"STOCKS","INV",decade)=PPP(r,"STOCKS","INV",decade);
PPP_t(r,g,"tmarg",decade)=PPP(r,g,"tmarg",decade);
PPP_t(r,"tmarg",g,decade)=PPP(r,"tmarg",g,decade);
PPP_t(r,g,"trade",decade)=PPP(r,g,"trade",decade);
PPP_t(r,"trade",g,decade)=PPP(r,"trade",g,decade);
PPP_t(r,"GOVT","trade",decade)=PPP(r,"GOVT","trade",decade);
PPP_t(r,"INV","trade",decade)=PPP(r,"INV","trade",decade);

EEdem_t(r,sec,decade)=EEdem(r,sec,decade);
EEdem_t(r,hh,decade)=EEdem(r,hh,decade);
EEdem_t(r,"tmarg",decade)= EEdem(r,"tmarg",decade);

qKLEM_t('K',cnt,sec,decade)=qKLEM('K',cnt,sec,decade);
qKLEM_t('L',cnt,sec,decade)=qKLEM('L',cnt,sec,decade);
qKLEM_t('E',cnt,sec,decade)=qKLEM('E',cnt,sec,decade);
qKLEM_t('M',cnt,sec,decade)=qKLEM('M',cnt,sec,decade);

pKLEM_t('K',cnt,sec,decade)=pKLEM('K',cnt,sec,decade);
pKLEM_t('L',cnt,sec,decade)=pKLEM('L',cnt,sec,decade);
pKLEM_t('E',cnt,sec,decade)=pKLEM('E',cnt,sec,decade);
pKLEM_t('M',cnt,sec,decade)=pKLEM('M',cnt,sec,decade);

fKLEM_t('K',cnt,sec,decade)=fKLEM('K',cnt,sec,decade);
fKLEM_t('L',cnt,sec,decade)=fKLEM('L',cnt,sec,decade);
fKLEM_t('E',cnt,sec,decade)=fKLEM('E',cnt,sec,decade);
fKLEM_t('M',cnt,sec,decade)=fKLEM('M',cnt,sec,decade);

parameter power;
parameter QTLH;
QTLH=(sum((r,s),QQQ(r,'pTLH',s,'2030'))+sum((r,hh),QQQ(r,'pTLH',hh,'2030')+QQQ(r,'pTLH',"INV",'2050')+QQQ(r,'pTLH',"GOVT",'2030')))/(sum((r,s),QQQ(r,'pTLH',s,'2018'))+sum((r,hh),QQQ(r,'pTLH',hh,'2018')+QQQ(r,'pTLH',"INV",'2018')+QQQ(r,'pTLH',"GOVT",'2018')));

parameter productivity2430,fishprod, fishprodBridge;
productivity2430=((QQQ('R3','iFIS','pFIS','2030')/sum(Labours,QQQ('R3',Labours,'iFIS','2030')))/(QQQ('R3','iFIS','pFIS','2024')/sum(Labours,QQQ('R3',Labours,'iFIS','2024'))))**(1/(2030-2024))-1;

fishprod=(sum(r,QQQ(r,'iFIS','pFIS','2030'))/sum(r,QQQ(r,'iFIS','pFIS','2018')))**(1/(2030-2018))-1;
fishprodBridge=(sum(r,QQQ(r,'iFIS','pFIS','2030'))/sum(r,QQQ(r,'iFIS','pFIS','2021')));

power=sum(r,sum(s,QQQ(r,'pPOW',s,'2030'))+sum(hh,QQQ(r,'pPOW',hh,'2030'))+QQQ(r,'pPOW',"GOVT",'2030')+QQQ(r,'pPOW',"INV",'2030'))/(sum(r,sum(s,QQQ(r,'pPOW',s,'2018'))+sum(hh,QQQ(r,'pPOW',hh,'2018'))+QQQ(r,'pPOW',"GOVT",'2018')+QQQ(r,'pPOW',"INV",'2018')));

parameter InterSecFlows(r,*,*,year);
* production of one good from a sector allocated according to the consumption of that good from other sectors
* The consumption level of commodity g produced by sector s is given by the share produced by sector s compared to the overall production commodity g
*InterSecFlows(r,sec,s,year)=sum(g,QQQ(r,sec,g,year)*(QQQ(r,g,s,year)/(sum(ss,QQQ(r,g,ss,year))+QQQ(r,g,'H1',year)+QQQ(r,g,'H2',year)+QQQ(r,g,'H3',year)+QQQ(r,g,'H4',year)+QQQ(r,g,'H5',year)+QQQ(r,g,'INV',year)+QQQ(r,g,'GOVT',year)+QQQ(r,g,'STOCKS',year)+QQQ(r,g,'Trade',year))));

* Flows of money to sec from s are the total goods that s buys from sec
* Which is the input of sector s allocated based on the percentage of production
* of sector sec over the production of all the sectors and the trade and the inventory.
* demand of good g by sector s = QQQ(r,g,s,year)
* estimated demand of good g by sector s coming from sector sec = QQQ(r,g,s,year)*QQQ(r,sec,g,year)/(sum(ss,QQQ(r,ss,g,year))+QQQ(r,'STOCKS',g,year)+QQQ(r,'Trade',g,year)))
InterSecFlows(r,sec,s,year)=sum(g,SAMout(r,g,s,year)*(SAMout(r,sec,g,year)/(sum(ss,SAMout(r,ss,g,year))+SAMout(r,'STOCKS',g,year)+SAMout(r,'Trade',g,year)+SAMout(r,'tax_com',g,year)+SAMout(r,'tmarg',g,year))));
* Demand of final consumption based on the production
InterSecFlows(r,s,"FinCons",year)=sum(g,(SAMout(r,g,'H1',year)+SAMout(r,g,'H2',year)+SAMout(r,g,'H3',year)+SAMout(r,g,'H4',year)+SAMout(r,g,'H5',year)+SAMout(r,g,'INV',year)+SAMout(r,g,'GOVT',year)+SAMout(r,g,'STOCKS',year))*(SAMout(r,s,g,year)/(sum(ss,SAMout(r,ss,g,year))+SAMout(r,'STOCKS',g,year)+SAMout(r,'Trade',g,year)+SAMout(r,'tax_com',g,year)+SAMout(r,'tmarg',g,year))));
* Demand by trade from the different sectors based on the production of these sectors
InterSecFlows(r,s,"Trade",year)= sum(g,SAMout(r,g,'Trade',year)*(SAMout(r,s,g,year)/(sum(ss,SAMout(r,ss,g,year))+SAMout(r,'STOCKS',g,year)+SAMout(r,'Trade',g,year)+SAMout(r,'tax_com',g,year)+SAMout(r,'tmarg',g,year))));

InterSecFlows(r,"FinCons",sec,year)=0;
InterSecFlows(r,"Trade",s,year)= sum(g,SAMout(r,'Trade',g,year)*(SAMout(r,g,s,year)/(sum(ss,SAMout(r,g,ss,year))+SAMout(r,g,"H1",year)+SAMout(r,g,'H2',year)+SAMout(r,g,'H3',year)+SAMout(r,g,'H4',year)+SAMout(r,g,'H5',year)+SAMout(r,g,'INV',year)+SAMout(r,g,'GOVT',year))));
InterSecFlows(r,"Trade","FinCons",year)= sum(g,SAMout(r,'Trade',g,year)*((SAMout(r,g,"H1",year)+SAMout(r,g,'H2',year)+SAMout(r,g,'H3',year)+SAMout(r,g,'H4',year)+SAMout(r,g,'H5',year)+SAMout(r,g,'INV',year)+SAMout(r,g,'GOVT',year))/(sum(ss,SAMout(r,g,ss,year))+SAMout(r,g,"H1",year)+SAMout(r,g,'H2',year)+SAMout(r,g,'H3',year)+SAMout(r,g,'H4',year)+SAMout(r,g,'H5',year)+SAMout(r,g,'INV',year)+SAMout(r,g,'GOVT',year))));


execute_unload 'Results.gdx', Activity, VA, IOanalysis, QQQ, QQQ2, PPP, EEdem, qKLEM,pKLEM,fKLEM, Activity_t,VA_t,IOanalysis_t,QQQ_t,QQQ2_t,PPP_t,EEdem_t,qKLEM_t,pKLEM_t,fKLEM_t, expendGDP, incomeGDP, productGDP, SAM, SAMout, HHIncome, EMcap,CO2price,goal,relgdp,power,newshare,sigma_prod,elas_psta,elas_psx,sALND,PLND.l,sigma_prod,productivity2430,fishprod,fishprodBridge,InterSecFlows;
display goal, relgdp,power,QTLH;

execute_unload "FinQprod.gdx" Qprod,Qpt;

execute_unload 'hous_testing.gdx' KSZ_test, Kap_test, I_test, LSZ_test, pop_test, HHinc_test, HHtrans_test, u0_test, TrROW_test, AOGR_test, ANGR_test, HHsav_test;

*IOanalysis_t('input',r,,*,decade)



