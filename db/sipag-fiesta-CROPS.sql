/*CROPS COMMODITY*/
INSERT INTO COMMODITY ( name, category ) 
  VALUES 
    (
      'Abaca',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Banana',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Coconut',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Coffee',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Jackfruit',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Mango',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Peanut',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Rice',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Sweet Potato',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    ),
    (
      'Vegetables',
      (SELECT name FROM CATEGORY WHERE name="Crops")
    );

/*CROPS TECHNOLOGY*/
INSERT INTO TECHNOLOGY ( title, description, objective_intro ) 
  VALUES 
    /*ABACA*/
    (
      'Diagnostic kit for abaca virus',
      'The diagnostic kit developed for the detection of abaca bunchy top virus (ABTV) is based on the principle of dot-ELISA (Enzyme Link Immunosorbent Assay). The primary component of the diagnostic kit is the antiserum generated to specifically detect the presence of the virus. The generated antibody can detect infection in the lowest concentration. The activity and sensitivity of the generated antisera are comparable to that of the commercial kit and its effectivity in identifying ABTV-free and ABTV-positive plants has been confirmed.',
      NULL 
    ),
    (
      'Adding higher value to abaca',
      'Abaca (Musa textilis Nee) is a plant indigenous to the Philippines. Its fiber is the strongest among natural fibers. The country supplies about 85% of the world’s demand, mainly as pulp, raw fibers, ropes, yarns, and fibercrafts. Ironically, the Philippines imports back abaca in the form of specialty paper products (security/ currency base papers, tea bags, filters).\n The research and development program on abaca for specialty papers, textile and other high value products will help push for the optimum use of our abaca resources to benefit the local pulp and paper industry, and the abaca sector in general. The program has components on characterizing abaca fiber (both commercial and new varieties) and processing/value adding with the ultimate goal of encouraging local production of high-value abaca-based products, such as textile, security/currency base paper, tea bags, packaging and printing/writing papers, and nanocrystalline cellulose (NCC), and abaca-based toxic metal ion adsorbent.',
      NULL
    ),
    (
      'High-yielding and virus-resistant abaca hybrid',
      'Abaca (Musa textilis Nee.) or Manila hemp is indigenous to the Philippines and considered as one of the country’s most important crops. It is grown by Filipino farmers for its fibers. \n Abaca fibers serve as raw materials for cordage, textile, and various hand-woven crafts. But in recent years, the importance of abaca has doubled and use of abaca fibers has expanded. Pulps from abaca fibers are now good materials for the manufacture of specialty papers such as currency notes, filter papers, stencil papers, and tea bags. \n Developed by the Institute of Plant Breeding (IPB) of the University of the Philippines Los Baños (UPLB) using marker-aided breeding technique, the promising abaca hybrid resistant to bunchy top virus (BTV) has a potential fiber yield of 1.56 mt/ha. It also has a fiber recovery of 1.31%, 275 cm fiber length, and 65.8 kg/g-m tensile strength.',
      NULL
    ),

    /*BANANA*/
    (
      'Combatting Fusarium wilt through resistant varieties and biological control',
      'The ‘Cavendish’ banana constitutes 50% of the country’s banana production and provides employment to almost 330,000 Filipinos. The incidence of Fusarium wilt caused by Fusarium oxysporum f. sp. cubense (Foc) Tropical Race 4 (TR4) in 2012 threatened the million-dollar export industry of the Philippines. \n Introduced Cavendish somaclones from Taiwan were tested on Philippine soil and two showed promising performance in terms of productivity and market acceptability– the giant Cavendish tissue culture variant (GCTCV) 218 and 219. GCTCV 218 produces fingers and yield that are almost similar to Grand Nain (GN) at an average of 25 kilograms (kg)/bunch (note: GN averages 30 kg/bunch). GCTCV 219, on the other hand has relatively lower yield at an average of 18 kg/bunch but is sweeter and can be marketed as highland banana.\n Application of commercially-available microbial agents such as Trichoderma harzianum enhances action against Foc TR4 in GCTCV 218, a moderately resistant somaclone while GCTCV 219, which is very resistant to Fusarium wilt no longer requires microbial agents even in infested soil.',
      NULL 
    ),
    (
      'Use of developed lakatan to address banana bunchy top',
      'Banana bunchy top virus (BBTV) is the most destructive virus disease of banana in the country as its severe incidence could wipe out a plantation singlehandedly. The vector, a winged aphid, Pentalonia nigronervosa, makes the disease difficult to contain and manage. Because it has no known cure, built-in resistance in lakatan is identified as a good management strategy to effectively control its spread. \nBBTV-resistant lakatan mutant lines were developed through irradiation and is currently showing intermediate resistance to the disease. Disease spread was observed to be slower in lakatan mutant lines compared to ordinary lakatan. The performance of the lines are being tested in Quirino, Laguna, Batangas, and Davao City and shows varying performance across location: 270–405 days to harvest; 6–9 hands per bunch; and 12–26 kg per bunch.',
      NULL 
    ),

    /*COCONUT*/
    (
      'Promising varieties of coconut for VCO and cocosap sugar production',
      'Five hybrids (PCA 15-8, Syn Var, PCA 15-9, PCA 15-3, PCA 15-2); 5 tall varieties (BAYT, SNRT, TAGT, BAOT, LAGT); and 1 dwarf variety with 5–7 liters (L)/palm oil yield, high Vitamin E, and lauric content were recommended for virgin coconut oil (VCO) production. Moreover, four hybrids (PCA 15-2, PCA 15-1, PCA 15-3, and PB 121) and two dwarf varieties (CATD and MRD) were recommended for coconut sugar production with high toddy yield (6,000–8,600 L/hectare [ha] per month) and sap sugar (700–1,000 kg/ha per month). These varieties shall be part of the mass production activities for the replanting program in Regions 4-A, 5, 6, 7, 8, 9, 11, 12, and ARMM.',
      NULL 
    ),
    (
      'Improved mass propagation technique for coconut',
      'Coconut tissue culture through somatic embryogenesis is an alternative technique for mass production of coconut. With this technique, the plumule-derived planting materials are produced from embryonic callus-forming somatic embryos and later on regenerate into plantlets over a period of almost three years. One plumule from a mature coconut is expected to produce 1,000 plantlets following the enhanced PCA-coconut somatic embryogenesis technology (PCA-CSet).',
      NULL 
    ),
    (
      'Biological control of coconut scale insect (CSI)',
      'Utilization of naturally-occuring insect predators and parasitoids is one of the Integrated Pest Management strategies for CSI infestation. Insect predators such as Telsimia sp. and Chilochorus sp. parasitize CSI by 65–92%. \n As a biological control procedure, about 80,000 adult predators have been mass reared and released monthly in CSI-infested coconut farms and in nearby areas to manage the CSI population. Mass rearing of additional biocon agent such as insect parasitoid (Comperiella sp.), is also being done for inoculative release in new areas with CSI invasion.',
      NULL 
    ),
    
    /*COFFEE*/
    (
      'Quality planting materials for better coffee',
      'Propagating coffee plants via somatic embryogenesis (SE), an asexual method of plant propagation, has been identified as a means to increase its production. Somatic embryos that will develop into mature plants are produced from tissues of the leaves and stems of coffee varieties with superior characteristics without seed formation/fertilization. This results in mass production of true-to-type plants (plants that are genetically similar with each other). \nMaintenance of genetic integrity leads to the preservation of the favored characteristics of a coffee variety even after many generations of reproduction. From a single leaf explant used, as much as 150 plantlets can be produced. This is significantly higher from an embryo culture which has a 1:1 plantlet and embryo ratio.',
      NULL 
    ),
    
    /*JACKFRUIT*/
    (
      'Metarhizium anisopliae as biological control for jackfruit fruit borer',
      'Metarhizium anisopliae is a fungus that grows naturally in soils throughout the world. It is reported to infect over 200 insect pest species and is currently being used as a biological insecticide to control a number of pests. The sweet potato weevil isolate of Metarhizium was found effective in controlling jackfruit fruit borer, with an infection rate of 84.75. Immature stages of jackfruit fruit borer are most vulnerable because they are still on the surface of the fruit which are directly hit by the Metarhizium suspension during application. Jackfruit fruit borer could infest in all fruit stages except the ripe stage, thereby causing considerable loss in jackfruit production.',
      NULL 
    ),
    (
      'Optimized vacuum-fried and dehydrated jackfruit products',
      'Vacuum-fried jackfruit is a nutritious product from jackfruit pulp processed at low temperature (below 1000C) thereby maintaining the fruit’s color, flavor, sweetness and nutritional qualities. It is less oily, hence not prone to rancidity.\n Meanwhile, dehydrated jackfruit is a chewy product with golden yellow color and a mix of sweet and sour taste. Sodium metabisulfite (0.1%) is being used in the product as anti-microbial and anti-browning agent. Jackfruit fruit maturity is not a critical factor in processing dehydrated jackfruit.',
      NULL 
    ),
    
    /*MANGO*/
    (
      'Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety',
      'The technology is a simple and rapid diagnostic kit (dipstick kit) that could determine true-to-type ‘carabao’ mango variety planting materials using ‘carabao’ mango-specific DNA markers. \nThe dipstick kit specifically identifies Philippine ‘carabao’ mango and differentiates it with other mango varieties to ensure dispersal of quality planting materials for sustained production of fresh fruits and quality raw materials for processing for the local and export market.',
      NULL 
    ),
    
    /*PEANUT*/
    (
      'Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18',
      'The use of improved varieties can increase crop productivity by 30%. The Asha (NSIC Pn 15) and Namnama 2 (NSIC Pn 14) varieties developed in 2002–2010 yield 2.2–3.5 t/ha as compared with the 0.60 t/ha produced by the native variety. These are big-seeded and are suitable for confectionery, often called 3-in-1 because they produce three seed classes. Continuous varietal improvement and trials are being done in various peanut-growing regions to evaluate the seeds’ performance and location specificity. The results serve as bases in selecting varieties for seed multiplication to enhance the peanut value chain.\n Through the PCAARRD Peanut R&D program, and in partnership with the DA, two new peanut varieties were approved by the National Seed Industry Council from 2013 to 2015—the NSIC Pn 2013 17 (ICGV 95390) also known as \"G.D. Lasam-Pride\" and NSIC 2013 Pn 18 (ICGV 01273) or Namnama 3. The NSIC Pn 19 (ICGV 96176) or Namnama 4 was recently nominated for NSIC registration and approval. These improved confectionery varieties are ideal for processing and were born from International Crops Research Institute for the Semi-Arid Tropics (ICRISAT)-bred varieties adapted to semi-arid conditions and localized to Cagayan Valley conditions, and eventually in major peanut growing areas of the country. \nThe development of improved varieties coupled with improved storage technologies and practices is a helpful input for the improvement of peanut seed production management to be adopted under the formal and informal seed system for the attainment of sustainable supply of quality seeds.',
      NULL 
    ),
    (
      'Improving productivity through improved soil nutrient and pest management practices',
      'The package of technology (POT) on peanut includes the adoption of recommended soil nutrient and pest management practices such as seed inoculation using Rhizobium, gypsum fertilization and the use of biological control agents (BCAs). \nPeanut can fix 45 kg of nitrogen (N)/ha through the root nodule bacteria using Rhizobium (Bradyrhizobium spp.). It is responsible in converting atmospheric N in a form available to plants. Inoculating the seeds prior to planting will boost root development and growth and this practice cuts down on production cost by reducing the use of inorganic fertilizers. \nApplication of gypsum or calcium sulfate, on the other hand, provides calcium for direct absorption by the plant. Calcium helps develop pods and reduces \"pops\" or unfilled pods, as well as seed rot caused by fungi. \nOn pest management, recent studies showed that Metarhizium anisopliae, a microbial control agent, can control leaf hopper and leaf folder in peanut. Metarhizium is a green muscardine fungus, which is safe to humans and animals and easy to mass produce. It is easy to apply and is compatible with other pest management options. Trichogramma spp., also a BCA, is efficient against cutworm, leaf folder, and leaf hopper. Trichogramma are dark-colored tiny wasps and the most widely used BCA in the world. A single Trichogramma, while multiplying itself, can destroy over 100 eggs of the pest. It offers a lower and more effective plant protection option than insecticides.',
      NULL 
    ),
    (
      'Improvement of peanut seed storage system through super grain bag',
      'Large -seeded confectionery peanut varieties like Namnama 1 and 2 and Asha were found to have quick seed deterioration and poor storability due to high oil content, hence, there is a need to improve the post-harvest handling specifically on drying and seed storage practices. The super grain bag (SGB) makes the principle of hermetic storage available to farmers and processors at low cost. Super grain bags reduce the flow of both oxygen and water between the stored seed and the outside atmosphere. The stability of seed moisture inside the bag prevents wetting and drying, and this stability reduces kernel breakage in peanut thus recovery is high during shelling. \nBased on recent studies on peanut seed packaging and storage, the use of SGB and jute sacks with transparent lining are the most appropriate and cost effective for seed storage. The packaging materials can maintain good seed germination of 80-83% until the 12th month of storage under cold and ambient condition. \n The development of SGB is helpful in the improvement of peanut seed production management. It can be adopted under the formal and informal seed system leading to the attainment of sustainable supply of quality seeds for enhanced peanut productivity.',
      NULL 
    ),
    (
      'Enhancing peanut productivity through boron fertilization',
      'Boron is one of the seven micronutrients required for normal growth and development of plants. It promotes proper cell division, cell elongation, cell wall strength, flowering, pollination, seed set, and sugar translocation. \nBased on recent studies, the combined application of Boron (Solubor Borax and Fertibor) significantly increased peanut yield up to 627–693 kg/ha for BPI Pn 9 variety, 709–1,097 kg/ha for NSIC Pn 15 (Asha) variety, and 1,641–1,907 kg/ha for NSIC Pn 14 (Namnama 2) variety. \n This yield increment can be translated to an increase in income ranging from P5,000/ha to P33,000/ha depending on the prevailing farm gate price of the peanut at harvest. Economic analysis however, showed that it is more economical to use Solubor Borax in single application at the rate of 500 g/ha giving a marginal benefit cost ratio (MBCR) of 5.89%, 9.17%, and 7.74% for BPI Pn 9, NSIC Pn 14, and NSIC Pn 15 variety, respectively. Boron application also reduced the number of unfilled pods by 15–44%.',
      NULL 
    ),
    (
      'Improved packaging and participatory marketing of peanut for regional OTOP',
      'Product development and improvement of packaging of regional peanut food products for the One-Town-One-Product (OTOP) approach enhances product differentiation between regions thereby boost peanut production and the establishment of small-scale enterprises in the countryside. \n This peanut R&D project component being implemented by state universities and colleges (SUCs) and with assistance of the DOST-ITDI and the DOST-Food and Nutrition Research Institute has developed and improved the packaging of five regional OTOP peanut products in Regions 1, 2, 3, 7, and CAR, with brand names \"CAR-ing Nuts\" for CAR (BSU for peanut butter), \"Ilocos Nuts\" for Region 1 (MMSU for sand-cooked peanut), \"Valley Nuts for Region 2 (QSU for peanut butterscotch), \"NUTurally Tarlac\" for Region 3 (TCA for peanut ice cream), and \"Tarsy Nuts\" for Region 7 (Bohol Island State University (BISU) for Peañato). \n Improved packaging of champion OTOP peanut products coupled with the adoption of appropriate storage and processing techniques can extend the shelf life and control aflatoxin contamination. It is considered as an effective tool in establishing local and export market linkages, and ensures the production, marketing and consumption of safe and quality peanut food products.',
      NULL 
    ),
    
    /*RICE*/
    (
      'Boosting rice productivity using carrageenan plant food supplement from seaweeds',
      'Carrageenan is an indigestible polysaccharide (carbohydrates) extracted from edible seaweeds. Polysaccharide, when subjected to modified irradiation technology, can be an effective plant growth supplement. At a very small dose, this supplement makes an effective organic fertilizer. It has been found to increase rice yield by 15–30%.\n The application of three and six bags of chemical fertilizer per ha, combined with 20 ml/L of carrageenan yields higher grain weight (450 g and 455 g/10 hills, respectively) than the farmers’ practice of applying nine bags of chemical fertilizer/ha.\n Carrageenan enhances the crop vigor of rice. Productive tillers and panicle length (length of inflorescence) are significantly higher in Carrageenan-treated plants. Productive tillers are the rice stems that bear panicles (rice inflorescence) with fertilized grains, while longer rice panicle is associated with producing more rice grains.',
      NULL 
    ),
    (
      'Improving rice milling in the countryside',
      'The developed technology is a new type of rice mill using \"impeller\" instead of \"rubber-roll\" for its hulling mechanism. The design is suitable for village level of operation. \n The machine has a milling capacity of 230 kg/hr. Head rice recovery for milled rice is 63.9% and 91% for brown rice. Milling recovery is 63–65%.',
      NULL 
    ),
    (
      'Increasing hand tractor utilization in the countryside',
      'The concept of developing rice transplanting and harvesting implements that can be readily mounted to and dismounted from the hand tractor unit is a relatively new concept. The availability of such implements will significantly increase further the utilization of hand tractor in farm areas. Moreover, it can potentially reduce the cost of farm level mechanization. \n Specifications \n   1. Working efficiency: 500 m2/hr \n 2. Working width: 0.8 meter (m) \n 3. Loss ratio: <= 3.5% \n 4. Impurity ratio: 6% \n 5. Power requirement: 9 horsepower (hp) diesel engine \n 6. Capacity: 1.6 ha/day \n 7. Planting distance: 30 centimeter (cm) x 20 cm \n   8. Field efficiency: 80% \n 9. Planting depth: 3–5 cm \n 10. Power requirement: 7 hp diesel engine',
      NULL 
    ),
    
    /*SWEET POTATO*/
    (
      'Sweetpotato clean planting materials (SP-CPM)',
      'The production of sweetpotato clean planting materials (SP-CPM) particularly of the Super Bureau variety was initiated to address problems on the incidence of the ‘camote kulot’. This disease has been attacking sweetpotato in Central Luzon since 1991 and has been causing yield losses of more than 50% due to the use of infected planting materials \n Piloting the utilization of SP-CPM proved to significantly reduce the incidence of the virus disease complex resulting in significant increase in yield and consequently improved the income of the sweetpotato farmers. Dissemination of the said technology is through participatory approach following the Farmers’ Field School (FFS) on Sweetpotato Integrated Crop Management (ICM) that is focused on SP-CPM production.',
      NULL 
    ),
    
    /*VEGETABLES*/
    (
      'Grafting technology for year-round production of vegetables',
      'Grafting is a natural or deliberate fusion of plant parts to establish vascular continuity and functions as a single plant. The term scion (cyon) refers to the shoot piece or bud cut from a donor plant that will grow into the upper portion of the grafted plant. The terms stock, under stock, or rootstock all refer to the plant that receives and fuses with the scion and functions as the root system of the grafted plant. \n Grafting of vegetable seedlings is a unique horticultural technology developed to overcome soil-borne diseases and pests and to  \n add extra vigor to the plants under various environmental stress conditions. It is a feasible technology in terms of yield advantage and disease prevention as compared to non-grafted plants during off-season production. \n The project was able to select open-pollinated lines for rootstock which are resistant to Ralstonia solanacearum and Fusarium, and commercially available varieties of cucumber, bitter gourd, sweet pepper, and eggplant for scion. Tube grafting and hole insertion is best employed for solanaceous and cucurbits, respectively.',
      NULL 
    ),
    (
      'GRAS coatings to enhance shelflife of vegetables',
      'Coatings derived from phytochemical extracts can be generally regarded as safe to enhance the shelflife of highly perishable vegetables. \n The project was able to extract effective generally regarded as safe (GRAS) coatings from ‘hagimit’ (Ficus minahassae), cat’s whiskers (Orthosiphon aristatus (Blanco)), turmeric (Curcuma longa L.), and ‘balimbing’ (Averrhoa carambola L.) using distilled water, acetic acid, or ethanol as solvent. Application of extracts extended the shelflife and sustained the free radical scavenging activity (FRSA) of coated vegetables.',
      NULL 
    );

/*CROP BENEFIT*/
INSERT INTO BENEFIT ( technology_id, benefit) 
  VALUES 
    /*ABACA-Diagnostic kit for abaca virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus'),
      'Plays an important role in detection, monitoring, and surveillance of ABTV for successful management and control of the disease and for sustainable production of abaca' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus'),
      'Initially produces an immuno-based assay system, which could be applied to develop similar diagnostic kits for other viruses infecting abaca or for other diseases infecting other commercially important crops' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus'),
      'Reliable, low cost, and fast for the detection of ABTV' 
    ),
    
    /*ABACA-Adding higher value to abaca*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca'),
      'Expands raw material base for textile' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca'),
      'Reduces dependence on imported specialty paper products and improve the country’s currency notes' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca'),
      'Strengthens local economy by boosting manufacture of quality packaging and printing/writing papers using waste or low-grade abaca fiber as reinforcement' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca'),
      'Promotes the country as prime source of NCC from abaca fiber for high-end paper and composite products' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca'),
      'Increases economic value of abaca, thereby increasing farmers’ income' 
    ),
    
    /*ABACA-High-yielding and virus-resistant abaca hybrid*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Availability of BTV-resistant abaca planting materials for replanting in infected abaca areas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Reduced losses due to ABTV' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Increased income of abaca farmers' 
    ),
    /*BANANA-Combatting Fusarium wilt through resistant varieties and biological control*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Areas infested with Foc TR4 can be planted with GCTCV 218 and 219 to become productive again' 
    ),
    
    /*BANANA-Use of developed lakatan to address banana bunchy top*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Slower spread of BBTV than ordinary lakatan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Follower crops do not manifest symptom of BBTV hence, annual planting is not necessary' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'The use of resistant varieties in combination with good agricultural practices produce better quality fruits, hence commands better price' 
    ),
    /*COCONUT-Promising varieties of coconut for VCO and cocosap sugar production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Helps increase coconut productivity in existing varieties and single-cross hybrids' 
    ),
    
    /*COCONUT-Improved mass propagation technique for coconut*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Helps produce quality planting materials of improved coconut varieties for the replanting program in coconut growing areas and new planting in coastal areas in Regions 4-A, 5, 6, 7, 8, 9, 11, 12, and ARMM.' 
    ),
    
    /*COCONUT-Biological control of coconut scale insect (CSI)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Biological control using native parasitoids or predators could be a safer and more sustainable alternative to chemical control of CSI infestation' 
    ),
    /*COFFEE-Quality planting materials for better coffee*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Gives farmers high revenue, thus, producing high-yielding and superior-quality coffee varieties using SE' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Helps the local growers introduce coffee novelties in the existing markets in the country' 
    ),
    /*JACKFRUIT-Metarhizium anisopliae as biological control for jackfruit fruit borer*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Metarhizium is a natural alternative to pesticides that does not infect humans or other animals, and poses no environmental hazards' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'It does not have significant effect on associated faunal decomposers in a jackfruit farm' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Production protocol established uses locally available substrate, i.e. palay' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'More than 400% increase in net income could be realized using the technology' 
    ),
    
    /*JACKFRUIT-Optimized vacuum-fried and dehydrated jackfruit products*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Vacuum-fried jackfruit has longer shelf life than other jackfruit products.' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Jackfruit processing increases utilization of jackfruit in the region, hence, increased income to its farmers.' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'It generates employment in the locality.' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Oversupply of jackfruit during peak season could be processed into value-added products.' 
    ),
    /*MANGO-Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Addresses problem on mislabelling of mango seedlings produced in the nursery, especially in accredited nurseries' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Reliable, low cost, and rapid determination of true-to-type ‘carabao’ mango variety' 
    ),
    /*PEANUT-Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Consistent high yielding (2.48–2.97 tons (t)/ha) varieties' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Medium-maturing (106–108 days) varieties ideal for processing' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'High oil content and sweet' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'All-season varieties that will enhance year-round production' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'NSIC Pn 17 (G.D. Lasam Pride) is the first identified drought-resistant variety in the Philippines thus, a potential variety responsive to El Niño' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Moderately resistant to foliar diseases and resistant Cercospora leaf spot and rust' 
    ),
    
    /*PEANUT-Improving productivity through improved soil nutrient and pest management practices*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Enhances N-fixation and increases crop production' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Produces quality pods and kernels' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Controls common insect pests in peanut' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Environment friendly' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Cost-effective and lowers cost of production' 
    ),
    
    /*PEANUT-Improvement of peanut seed storage system through super grain bag*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Extends the germination life of peanut seeds for planting from 6 months to 12 months' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Controls insect pest infestation during storage without using chemicals' 
    ),
    
    /*PEANUT-Enhancing peanut productivity through boron fertilization*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Increases crop yield' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Improves root nodule development for more nitrogen fixation and protein production' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Produces and retains more flowers and pegs' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Enhances calcium utilization' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'More sugars and protein from leaves to nuts' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Prevents \"hollow heart\" (internal nut damage with discolored and damaged kernels)' 
    ),
    
    /*PEANUT-Improved packaging and participatory marketing of peanut for regional OTOP*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Value-adding agri-enterprises' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Generates employment in the rural areas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Controls and eliminates aflatoxin contamination' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Extends shelf life of processed and semi-processed products' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Safe and quality peanut products' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Offers competitive products for local and export markets' 
    ),
    /*RICE-Boosting rice productivity using carrageenan plant food supplement from seaweeds*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Makes the rice stem stronger and improves rice resistance to lodging' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Compatible with farmers’ practice on fertilizer application thus, Giving higher grain yield potential' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Promotes resistance to rice tungro virus and bacterial leaf blight' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Environment-friendly (has no harmful effects on natural enemies or beneficial insects and arthropods)' 
    ),
    
    /*RICE-Improving rice milling in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Capable of producing both milled rice and brown rice' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Compact yet powerful with input capacity of 300–350 kg/hour (hr)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Requires minimal working space of 16 square meters (m2)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Easy to operate' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Installed with waste control system' 
    ),
    
    /*RICE-Increasing hand tractor utilization in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing hand tractor utilization in the countryside'),
      'Efficient and effective transplanting and harvesting functionalities will be added to plowing, tilling, and harrowing operation of hand tractor' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Minimizes delays in transplanting and harvesting period and its high labor cost' 
    ),
    /*SWEET POTATO-Sweetpotato clean planting materials (SP-CPM)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Reduces of incidence of camote kulot thereby increasing yield and income of farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Access to good quality planting materials anytime of the year' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Provides women and children opportunities for income generation' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Idle lands are utilized for SP-CPM production' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Allows farmers to propagate their own planting material' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'An enterprise in itself' 
    ),
    /*VEGETABLES-Grafting technology for year-round production of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Resistance to diseases:
        - Fusarium wilt: melon, cucumber, and tomato
        - Bacterial wilt: tomato, eggplant, and sweet pepper
        - Verticillium wilt: tomato' 
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Resistance to root-knot nematodes: cucumber, melon, watermelon, tomato, and eggplant' 
    ),
    
    /*VEGETABLES-GRAS coatings to enhance shelflife of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GRAS coatings to enhance shelflife of vegetables'),
      'Hagimit and balimbing extracts can extend the shelf-life of mature green (97 days), breaker (83 days), and red ripe (31 days) tomatoes' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GRAS coatings to enhance shelflife of vegetables'),
      'Turmeric and cat’s whiskers extracts can prolong the shelflife of eggplant to 8 days' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GRAS coatings to enhance shelflife of vegetables'),
      'Cat’s whiskers extract can extend the shelf-life of pole sitao to 2 days and bittergourd to 7–8 days' 
    );

/*CROPS BENEFICIARY*/
INSERT INTO BENEFICIARY ( technology_id, beneficiary) 
  VALUES 
    /*ABACA-Diagnostic kit for abaca virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Abaca farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Producers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Researchers/extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Plant certification body' 
    ),
    
    /*Adding higher value to abaca*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Abaca farmers and pulp mills' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Local paper and textile industry' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'General public' 
    ),
    
    /*High-yielding and virus-resistant abaca hybrid*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Abaca farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Producers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Researchers/Extension workers' 
    ),
    
  /*BANANA*/
    /*Combatting Fusarium wilt through resistant varieties and biological control*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Cavendish growers and exporters' 
    ),
    
    /*Use of developed lakatan to address banana bunchy top*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Lakatan growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Tissue culture laboratories and nursery growers' 
    ),
    
  /*COCONUT*/
    /*Promising varieties of coconut for VCO and cocosap sugar production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Coconut farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Entrepreneurs' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Researchers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Policy makers' 
    ),
    
    /*Improved mass propagation technique for coconut*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Researchers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Coconut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Farming communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Industry Stakeholders' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Policy makers' 
    ),
    
    /*Biological control of coconut scale insect (CSI)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Coconut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Farming communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Industry stakeholders' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Policy makers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Researchers' 
    ),
  /*COFFEE*/
    /*Quality planting materials for better coffee*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Coffee farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Producers/cooperatives/associations' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Researchers and extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Consumers and entrepreneurs' 
    ),
    
  /*JACKFRUIT*/
    /*Metarhizium anisopliae as biological control for jackfruit fruit borer*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Jackfruit farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Researchers/Extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Processors' 
    ),
    
    /*Optimized vacuum-fried and dehydrated jackfruit products*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Jackfruit farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Processors' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Traders and wholesalers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Consumers' 
    ),
    
  /*MANGO*/
    /*Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Mango growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Nursery operators' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Researchers/extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Plant certification body' 
    ),
    
  /*PEANUT*/
    /*Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Peanut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Low-income farmers in corn, rice, coconut and fruit crops-based farming systems/communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Agri-entrepreneurs (seed growers and food processors)' 
    ),
    
    /*Improving productivity through improved soil nutrient and pest management practices*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Peanut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Low-income farmers in corn, rice, coconut, and fruit crops-based farming systems/communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Agri-entrepreneurs (seed growers and food processors)' 
    ),
    
    /*Improvement of peanut seed storage system through super grain bag*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Peanut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Low-income farmers in corn, rice, coconut, and fruit crops-based farming systems/ communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Agri-entrepreneurs (seed growers and food processors)' 
    ),
    
    /*Enhancing peanut productivity through boron fertilization*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Peanut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Low-income farmers in corn, rice, coconut, and fruit crops-based farming systems/communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Low-income farmers in sandy soils and lahar-laden areas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Agri-entrepreneurs (seed growers and food processors)' 
    ),
    
    /*Improved packaging and participatory marketing of peanut for regional OTOP*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Peanut growers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Low-income farmers in corn, rice, coconut, and fruit crops-based farming systems/communities' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Agri-entrepreneurs (food processors)' 
    ),
    
  /*RICE*/
    /*Boosting rice productivity using carrageenan plant food supplement from seaweeds*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Rice farmers and input providers' 
    ),
    
    /*Improving rice milling in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Farmer’s organizations' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Small rice traders/millers' 
    ),
    
    /*Increasing hand tractor utilization in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing hand tractor utilization in the countryside'),
      'Rice farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Agri-cooperatives' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Local fabricator shops' 
    ),
    
  /*SWEET POTATO*/  
    /*Sweetpotato clean planting materials (SP-CPM)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Traditional and non-traditional SP farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'SP traders' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'SP processors' 
    ),
  
  /*VEGETABLES*/  
    /*Grafting technology for year-round production of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Vegetable farmers' 
    ),
    
    /*GRAS coatings to enhance shelflife of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GRAS coatings to enhance shelflife of vegetables'),
      'Vegetable farmers and traders' 
    );

/*CROPS LOCATION*/
INSERT INTO LOCATION ( technology_id, location) 
  VALUES 
    /*ABACA-Diagnostic kit for abaca virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Leyte'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Catanduanes'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Albay'  
    )
    ,(
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Davao'  
    ),
    
    /*Adding higher value to abaca*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'National Capital Region (NCR)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Albay' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Sorsogon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Catanduanes' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Leyte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Samar' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Zamboanga' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Davao Oriental' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Davao del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'North Cotabato' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Surigao del Sur' 
    ),
    
    /*High-yielding and virus-resistant abaca hybrid*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Albay' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Catanduanes' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Leyte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Samar' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Agusan del Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'North Cotabato' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Davao' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Zamboanga' 
    ),
    
  /*BANANA*/
    /*Combatting Fusarium wilt through resistant varieties and biological control*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Davao Region' 
    ),
    
    /*Use of developed lakatan to address banana bunchy top*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Quirino' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Cavite' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Batangas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Quezon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Cavite' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Use of developed lakatan to address banana bunchy top'),
      'Davao' 
    ),
    
  /*COCONUT*/
    /*Promising varieties of coconut for VCO and cocosap sugar production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Zamboanga City' 
    ),
    
    /*Improved mass propagation technique for coconut*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Albay' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Zamboanga del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Davao del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Leyte' 
    ),
    
    /*Biological control of coconut scale insect (CSI)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Batangas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Quezon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Basilan' 
    ),
    
  /*COFFEE*/
    /*Quality planting materials for better coffee*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Benguet' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Bukidnon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Cavite' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Negros Occidenta' 
    ),
    
  /*JACKFRUIT*/
    /*Metarhizium anisopliae as biological control for jackfruit fruit borer*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Leyte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Samar' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'Jackfruit-producing regions' 
    ),
    
    /*Optimized vacuum-fried and dehydrated jackfruit products*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Leyte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Samar' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'Jackfruit-producing regions' 
    ),
    
  /*MANGO*/
    /*Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'Nationwide' 
    ),
    
  /*PEANUT*/
    /*Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'La Union' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Ilocos Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Cagayan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Isabela' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Pampanga' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Tarlac' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Bohol' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'Bukidnon' 
    ),
    
    /*Improving productivity through improved soil nutrient and pest management practices*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Cagayan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Isabela' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'La Union' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Ilocos Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Tarlac' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Pampanga' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Bohol' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Bukidnon' 
    ),
    
    /*Improvement of peanut seed storage system through super grain bag*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'La Union' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Cagayan and Isabela' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Tarlac' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Pampanga' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Bohol' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'Bukidnon' 
    ),
    
    /*Enhancing peanut productivity through boron fertilization*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Cagayan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Isabela' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Tarlac' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Pampanga' 
    ),
    
    /*Improved packaging and participatory marketing of peanut for regional OTOP*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Benguet' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Ilocos Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Tarlac' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Quirino' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'Bohol' 
    ),
    
  /*RICE*/
    /*Boosting rice productivity using carrageenan plant food supplement from seaweeds*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Initially targeted at Regions 1, 2, 3, 4-A, 6, 9, and 11' 
    ),
    
    /*Improving rice milling in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Nueva Ecija' 
    ),
    
  /*SWEET POTATO*/  
    /*Sweetpotato clean planting materials (SP-CPM)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Tarlac' 
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Bataan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Aurora' 
    ),
    
  /*VEGETABLES*/  
    /*Grafting technology for year-round production of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Cavite' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Quezon' 
    ),
    
    /*GRAS coatings to enhance shelflife of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GRAS coatings to enhance shelflife of vegetables'),
      'Leyte' 
    );

/*CROPS PARTNER*/
INSERT INTO PARTNER ( technology_id, partner) 
  VALUES 
    /*ABACA-Diagnostic kit for abaca virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Diagnostic kit for abaca virus') ,
      'Visayas State University (VSU)'
    ),
    
    /*Adding higher value to abaca*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Albay Agro-Industrial Development Corporation' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Catanduanes State University' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Forest Products Research and Development Institute (FPRDI)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'DOST - Industrial Technology Development Institute (ITDI)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Philippine Fiber Development Authority (FIDA)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'DOST - Philippine Nuclear Research Institute (PNRI)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'DOST - Philippine Textile Research Institute' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Adding higher value to abaca') ,
      'Pulp and Paper Manufacturers Association, Inc.' 
    ),
    
    /*High-yielding and virus-resistant abaca hybrid*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Bicol University (BU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Catanduanes State University (CSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'University of Eastern Philippines' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'VSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Caraga State University' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'University of Southern Mindanao (USM)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'University of Southeastern Philippines (USeP)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'Western Mindanao State University (WMSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='High-yielding and virus-resistant abaca hybrid'),
      'FIDA' 
    ),
    
  /*BANANA*/
    /*Combatting Fusarium wilt through resistant varieties and biological control*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Bioversity International' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Bureau of Plant Industry (BPI) - Davao National Crop Research, Development and Production Support Center (DNCRDPSC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Southern Mindanao Agriculture and Resources Research and Development Consortium (SMARRDEC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'Southern Philippines Agri-Business and Marine and Aquatic School of Technology (SPAMAST)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'USeP' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Combatting Fusarium wilt through resistant varieties and biological control'),
      'UPLB' 
    ),
    
  /*COCONUT*/
    /*Use of developed lakatan to address banana bunchy top*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Quirino State University (QSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Cavite State University (CvSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'BPI-DNCRDPSC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Local government units (LGUs)' 
    ),
    
    /*Promising varieties of coconut for VCO and cocosap sugar production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Promising varieties of coconut for VCO and cocosap sugar production'),
      'Philippine Coconut Authority-Zamboanga Research Center (PCA-ZRC)' 
    ),
    
    /*Improved mass propagation technique for coconut*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'PCA - Albay Research Center (ARC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'PCA-ZRC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'UP Mindanao' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'VSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved mass propagation technique for coconut'),
      'Bicol University College of Agriculture and Forestry (BUCAF)' 
    ),
    
    /*Biological control of coconut scale insect (CSI)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'PCA' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Biological control of coconut scale insect (CSI)'),
      'Department of Agriculture (DA) - Regional Crop Protection Center-Region 4-A' 
    ),
    
  /*COFFEE*/
    /*Quality planting materials for better coffee*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Benguet State University (BSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Central Mindanao University (CMU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'CvSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Quality planting materials for better coffee'),
      'Central Philippine State University (CPSU)' 
    ),
    
  /*JACKFRUIT*/
    /*Metarhizium anisopliae as biological control for jackfruit fruit borer*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'DA - Regional Field Office (DA-RFO) 8' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'VSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Metarhizium anisopliae as biological control for jackfruit fruit borer'),
      'LGUs' 
    ),  
    
    /*Optimized vacuum-fried and dehydrated jackfruit products*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'VSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Optimized vacuum-fried and dehydrated jackfruit products'),
      'DA-RFO 8' 
    ),
    
  /*MANGO*/
    /*Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'VSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'USM' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Dipstick kit for rapid detection of true-to-type ‘carabao’ mango variety'),
      'BPI - Plant Material Certification Section' 
    ),
    
  /*PEANUT*/
    /*Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'DA - RFO 01/Ilocos Integrated Agricultural Research Center (ILIARC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'DA - RFO 02/Cagayan Valley Research Center (CVRC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'DA - RFO 03/Central Luzon Integrated Agricultural Research Center (CLIARC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'DA - RFO 07/Central Visayas Integrated Agricultural Research Center (CENVIARC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing productivity through development of new and improved peanut varieties: NSIC Pn 17, NSIC Pn 18'),
      'DA - RFO 10/Northern Mindanao Agricultural Crop and Livestock Research Complex (NMACLRC)' 
    ),  
    
    /*Improving productivity through improved soil nutrient and pest management practices*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Mariano Marcos State University (MMSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'Tarlac College of Agriculture (TCA)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'DA - RFO 01/ILIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'DA - RFO 02/CVRC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'DA - RFO 03/CLIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'DA - RFO 07/CENVIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving productivity through improved soil nutrient and pest management practices'),
      'DA - RFO 10/NMACLRC' 
    ),
    
    /*Improvement of peanut seed storage system through super grain bag*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'DA - RFO 01/ILIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'DA - RFO 02/CVRC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'DA - RFO 03/CLIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'DA - RFO 07/CENVIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improvement of peanut seed storage system through super grain bag'),
      'DA - RFO 10/NMACLRC' 
    ),
    
    /*Enhancing peanut productivity through boron fertilization*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'DA - RFO 02/CVRC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'DA - RFO 03/CLIARC' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'Pampanga State Agricultural University (PSAU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Enhancing peanut productivity through boron fertilization'),
      'TCA' 
    ),
    
    /*Improved packaging and participatory marketing of peanut for regional OTOP*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'BSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'MMSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'TCA' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'QSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved packaging and participatory marketing of peanut for regional OTOP'),
      'BISU' 
    ),

  /*RICE*/
    /*Boosting rice productivity using carrageenan plant food supplement from seaweeds*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'DOST Regional Offices' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'DA - Regional Field Units (RFOs)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'Philippine Rice Research Institute (PhilRice) stations' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'LGUs' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'DOST - PNRI' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Boosting rice productivity using carrageenan plant food supplement from seaweeds'),
      'UPLB - National Crop Protection Center (NCPC)' 
    ),
    
    /*Improving rice milling in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'DA - Philippine Center for Postharvest Development and Mechanization (PhilMech)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improving rice milling in the countryside'),
      'Local manufacturers' 
    ),
    
    /*Increasing hand tractor utilization in the countryside*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing hand tractor utilization in the countryside'),
      'DOST - Metals Industry Research and Development Center' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing hand tractor utilization in the countryside'),
      'PhilMech' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Increasing hand tractor utilization in the countryside'),
      'Local manufacturers' 
    ),
    
  /*SWEET POTATO*/  
    /*Sweetpotato clean planting materials (SP-CPM)*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'DOST III' 
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Central Luzon State University (CLSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'DA - Research Outreach Station (ROS)' 
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'International Potato Center - Users’ Perspectives With Agricultural Research and Development (CIP-UPWARD)' 
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'LGUs' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Bataan State College now Bataan Polytechnic State University (BPSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Philippine Rootcrops Research & Training Center (PhilRootcrops)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'UPLB - IPB' 
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'DA - Bureau of Agricultural Research (BAR)' 
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'DA-RFO 3 - High Value Crops Development Program (HVCDP)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Sweetpotato clean planting materials (SP-CPM)'),
      'Farmers and farmers cooperatives' 
    ),
    
  /*VEGETABLES*/  
    /*Grafting technology for year-round production of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'BPI - Los Baños Crop Research, Development and Production Support' 
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Grafting technology for year-round production of vegetables'),
      'Center (LBNCRDPSC)' 
    ),
    
    /*GRAS coatings to enhance shelflife of vegetables*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GRAS coatings to enhance shelflife of vegetables'),
      'VSU' 
    );
