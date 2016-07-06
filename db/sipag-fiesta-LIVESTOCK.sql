/*LIVESTOCK COMMODITY*/  
INSERT INTO COMMODITY ( name, category ) 
  VALUES
    (
      'Duck',
      (SELECT name FROM CATEGORY WHERE name="Livestock")
    ),
    (
      'Native Chicken',
      (SELECT name FROM CATEGORY WHERE name="Livestock")
    ),
    (
      'Swine',
      (SELECT name FROM CATEGORY WHERE name="Livestock")
    ),
    (
      'Goat',
      (SELECT name FROM CATEGORY WHERE name="Livestock")
    ),
    (
      'Dairy Buffalo',
      (SELECT name FROM CATEGORY WHERE name="Livestock")
    ),
    (
      'Feed Resources',
      (SELECT name FROM CATEGORY WHERE name="Livestock")
    );

/*LIVESTOCK TECHNOLOGY*/
INSERT INTO TECHNOLOGY ( title, description, objective_intro ) 
  VALUES
    /*DUCK*/
    (
      'Improved Pateros Layer Duck',
      'The S&T intervention on breeding and selection led to the development of breeding true-to-type Improved Pateros Layer Duck (PLD). Improved PLD strains are products of organized breeding and selection that show uniformity in physical characteristics, higher and predictable egg production performance and consistent egg quality.',
      NULL
    ),
    /*NATIVE CHICKEN*/
    (
      'Day-old chicks: Cracking the shell for profit',
      'Day-old native chick production is one of the products in native chicken production. Good quality day-old chicks are produced using technologies and protocols established on selection and breeding, housing and feeding management, hatchery management, and health care.',
      NULL
    ),
    /*SWINE*/
    (
      'AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus',
      'A rapid, timely and inexpensive diagnostic test to detect the presence of porcine epidemic diarrhea (PED) Virus using the LAMP assay technique was developed. The AndaliTM RT-LAMP Test Kit allows fast diagnosis of PED virus infection in pigs. LAMP technology produces tremendous copies of the target gene sequence in as short as 30 minutes. Nucleic acid amplification can be carried out using simple and less expensive equipment, such as a simple thermostat or water bath. LAMP is very comparable to ELISA and PCR but is less affected by presence of non-targeted DNA or inhibitory molecules, attributing to its high specificity and sensitivity.',
      NULL
    ),
    (
      '\'Etag\' for you and me!',
      'Etag is an ethnic and traditional meat delicacy of the Cordilleras processed through curing of the meat of native pig with salt and then either sundried or smoked for preservation. It is popularly used as flavor enhancer in different viands. Today etag is popular term used for salted and dried pork. Standardized processing techniques of etag using a hazard-free environment following the rules on the hazard analysis critical control point (HACCP) and quality control protocols. Protocols on processing convenient type etag-based products were developed such as: etag cubes, etag powder, etag granules, and etag liquid seasoning.',
      NULL
    ),
    (
      'Lechon pa more!',
      'Breeding and selection protocols for the development of the Philippine native pig breed were developed with improved and predictable production performance and consistent product quality. Free-range native pig production and management protocols were also established for sustained production of quality breeder and slaughter native pigs.',
      NULL
    ),
    (
      'Selecting the best local breeder pigs: Gene marker technology in breeding and selection',
      'The analysis of the swine farm performance data in the Philippines (1993–2011) shows that failure to achieve substantial improvement in the reproductive performance of sows appears to be a major factor that limits growth of the local swine industry. Published literatures indicate that application of molecular marker-assisted selection offers opportunities to hasten improvement of reproductive efficiency and overall swine productivity. Gene garker-assisted selection (GMAS) is the process of using DNA evaluation results to assists in the selection of individuals that would be parents of the next generation. Thus, in partnership with the Accredited Swine Breeder Association in the Philippines (ASBAP), PCAARRD, Philippine Carabao Center (PCC), and BAI implements a research program to develop strategies and promote the application of genetic markers in the breeding and selection of pigs in local farms. Adoption of the research outputs by the swine breeder farms is expected to increase productivity and efficiency in terms of number of pigs weaned and liveweight produced per sow per year.',
      NULL
    ),
    /*GOAT*/
    (
      'AI in goat: Facilitating genetic improvement, generating income opportunities',
      'Artificial insemination (AI) is a faster means of improving the genetic make-up of goats than natural mating and allows the sire to produce many potential progenies from a single ejaculation. The AI delivery protocol for goats, which includes the protocols for semen collection and processing, enhanced heat detection, proper insemination and providing proper links among stakeholders, was first tested in Region 2 in 2008–2011 by ISU. As it was found workable it was then tested in Regions 1, 3, 8, 10, and 12 from 2014 to 2015. AI service providers of the various LGUs in these regions as well as private inseminators known as Village-Based AI Technicians (VBAIT) were trained. By 2015, more than 200 technicians have been trained on AI service provision, more than 500 farmers on basic reproductive physiology and AI administration; and 81 entrepreneurs on business of AI delivery. Because of these, almost 2,000 does have been inseminated in Regions 1, 2, 3, 8, 10, and 12 producing almost 1,000 additional kids with average birth weight of 2.21 kg (native goats’ birth weight was 1.5 kg) and slaughter weight of 27 kg, an obvious increase of 80% from the 15kg weight of the native counterpart. It has also enabled the production of uniform quality offspring. Developing it as source of income among VBAIT is therefore helping generate employment while alleviating poverty in the countryside. Analysis of the AI enterprise shows a return on investment of 35.71%, making it an attractive enterprise for private practitioners, paving the way for technology commercialization and benefitting more raisers in the rural areas.',
      NULL
    ),
    /*DAIRY BUFFALO*/
    (
      'Application of genomic information in dairy buffalo breeding program',
      'The dairy buffalo industry is a small but growing sector in the Philippines. As of 2014, growth of the sector was reported to be 2.84%. In terms of milk production, the sector contributed 33.6% of domestic production in 2013. The bulk of the production came from cows from smallholder farms of various dairy cooperatives. Currently, there are 2,688 families engaged in dairy buffalo production. Increasing the productivity of the buffaloes would improve the economic well-being of the dairy buffalo farmers nationwide. Hence, PCC initiated a genetic improvement program for the Philippine dairy buffaloes to increase its milk production potential and productivity. The cows at the various dairy cooperatives are the direct beneficiaries of the improved genetics. However, due to the absence of a substantial “herd” size, the conventional genetic evaluation system is apparently not applicable to smallholder farms. Thus, recording and performance evaluation as well as identification of AI sires and replacement bulls and heifers are done at the institutional herds. While genetic progress is being achieved and is increasing on a yearly basis, based on conventional quantitative genetics (BLUP breeding value estimation), the rate of genetic gain still needs to improve. To address the very slow rate of milk production improvement, a research project on Genotyping the Philippine water buffaloes, is being implemented by PCC. Field verification of the phenotypic expression of genetic characteristics related to milk production and application of gene marker technology in breeding and selection are being employed for improved milk production. This will eventually increase milk production by 40%. Through marker-aided selection, a reference population for genomic selection derive a prediction equation so that young selection candidate bulls can be identified and selected based on genomic breeding values. It is hoped that through genomic selection, the first set of young bulls will be selected based on genomic breeding values.',
      NULL
    ),
    /*FEED RESOURCES*/
    (
      'Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua',
      'Copra meal is a by- product of the coconut oil industry and is often utilized as a source of protein for swine and poultry. Copra meal is abundantly available in the country but its relatively low protein content and quality compared to other plant protein sources like soybean meal. Bioprocessing of copra meal to protein-enriched copra meal (PECM) through solid state fermentation (SSF) improves its nutritive value. The bioprocessing technology has a product recovery rate of 92–96%. PECM has high potential as valuable protein feed ingredient with CP of 36–40%. Moreover, PECM having better nutrient profile and digestibility it could be used to produce economical feed rations. Considering that the Philippines perennially imports almost half a billion dollars’ worth of soybean meal every year, the improvement in protein and overall quality of PECM can potentially replace up to 50% of soybean meal and other protein feed material used in feed rations of swine, poultry and aqua. The partial replacement of soybean will translate to reduction in cost of mixed feed and dependence of local animal industry to soybean meal.',
      NULL
    ),
    (
      'Corn saves the day',
      'Quality protein maize was basically developed to produce corn of high nutritional quality, not only for humans but also for animals. Its lysine and tryptophan content is 30% and 55% more than the normal corn, respectively. It is claimed as a better animal feed than normal corn because of its well-balanced amino acid composition.',
      NULL
    );

/*LIVESTOCK BENEFIT*/
INSERT INTO BENEFIT ( technology_id, benefit) 
  VALUES 
    /*DUCK-Improved Pateros Layer Duck*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck'),
      'Improved PLD strain produces an average of 256 eggs/year which is 50 eggs more than the traditional Pateros duck'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck'),
      'At least 80% of eggs produced pass weight requirement for balut (at least 65 g)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck'),
      'Adopted to local environmental conditions and performs well even with simple housing and low cost feeds.'
    ),
    /*NATIVE CHICKEN-Day-old chicks: Cracking the shell for profit*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit'),
      'Produces substantial numbers of day-old chicks that are uniform in physical appearance with predictable growth performance and consistent product quality'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit'),
      'Provides a farmer with a net profit of P15/head'
    ),
    /*SWINE-AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus'),
      'Fast, early, and timely diagnosis of PED infection will greatly reduce production losses by minimizing mortalities associated with the disease'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus'),
      'Enhanced capability of private and regional animal disease diagnostic laboratories in the diagnosis of PED virus infection'
    ),
    /*SWINE-\'Etag\' for you and me!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='\'Etag\' for you and me!'),
      'Standardized raw material and quality control protocols for different variants of etag i.e. sundried, cold-smoked, and hot- smoked. Etag processed using the standardize techniques comply with the food safety standard for microbial count of E. coli, Staphylococcus areus, and absence of Samonella.'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='\'Etag\' for you and me!'),
      'Processors and consumers of etag are assured that they are producing or buying products with some level of food safety and quality assurance.'
    ),
    /*SWINE-Lechon pa more!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!'),
      'Philippine native pig breeds as local genetic resource and livelihood option for rural farming communities. Availability of quality breeder native pigs for native pig farmers and entrepreneurs'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!'),
      'More native pigs are produced to meet the demand for \'lechon\' in Metro Manila.'
    ),
    /*SWINE-Selecting the best local breeder pigs: Gene marker technology in breeding and selection*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection'),
      'Hastens improvement of production performance of breeder pigs'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection'),
      'Allows selection of traits that have low heritability, sex-limited in expression, expressed after sexual maturity, measured after the animal is slaughtered and difficult or expensive to measure'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection'),
      'Useful tool in identification of individual pigs that are resistant to certain diseases and for screening of breeder pigs for genetic defects'
    ),
    /*GOAT-AI in goat: Facilitating genetic improvement, generating income opportunities*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities'),
      'Facilitates stock upgrading without maintaining a buck in the farm'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities'),
      'With the infusion of better bloodlines through AI, increase in slaughter weight by 43% (15 kg to 21.4 kg) is expected'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities'),
      'Provides farmers with opportunities to earn from being semen collectors-processors or village inseminators, or both'
    ),
    /*DAIRY BUFFALO-Application of genomic information in dairy buffalo breeding program*/
    /*NULL*/
    /*FEED RESOURCES-Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'High volumetric productivity'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Use dry material as substrate'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Reduced energy requirement'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Easier downstream processing'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Low waste water output'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Low capital investment'
    ),
    /*FEED RESOURCES-Corn saves the day*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day'),
      'Lower feed cost due to lower inclusion rate of soybean meal in the diet by 5.8%'
    );

/*LIVESTOCK BENEFICIARY*/
INSERT INTO BENEFICIARY ( technology_id, beneficiary) 
  VALUES 
    /*DUCK-Improved Pateros Layer Duck*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck'),
      'Duck breeders' 
    ),
    /*NATIVE CHICKEN-Day-old chicks: Cracking the shell for profit*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit'),
      'Native chicken raisers' 
    ),
    /*SWINE-AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus'),
      'Local swine producers and farm managers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus'),
      'Veterinary practitioners and Animal health research personnel' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus'),
      'Regional Animal Disease Diagnostic Laboratories (RADDLs)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus'),
      'DA - Private animal disease diagnostic laboratories' 
    ),
    /*SWINE-\'Etag\' for you and me!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='\'Etag\' for you and me!'),
      'Etag processors and consumers' 
    ),
    /*SWINE-Lechon pa more!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!'),
      'Native pig raisers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!'),
      'Native lechon producers and consumers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!'),
      'Researchers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!'),
      'Institutional markets' 
    ),
    /*SWINE-Selecting the best local breeder pigs: Gene marker technology in breeding and selection*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection'),
      'Breeder farms and commercial farms' 
    ),
    /*GOAT-AI in goat: Facilitating genetic improvement, generating income opportunities*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities'),
      'Goat raisers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities'),
      'Existing Village-based technicians and LGU ruminant AI service providers' 
    ),
    /*DAIRY BUFFALO-Application of genomic information in dairy buffalo breeding program*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Application of genomic information in dairy buffalo breeding program'),
      'PCC nucleus and multiplier farms' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Application of genomic information in dairy buffalo breeding program'),
      'Local dairy buffalo industry in general' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Application of genomic information in dairy buffalo breeding program'),
      'Researchers from the industry and academe' 
    ),
    /*FEED RESOURCES-Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Swine, poultry, and aqua (tilapia, milkfish, and shrimp) farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Feed millers and processors' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua'),
      'Researchers from the industry and academe' 
    ),
    /*FEED RESOURCES-Corn saves the day*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day'),
      'Corn farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day'),
      'Feed millers' 
    );

/*LIVESTOCK LOCATION*/
INSERT INTO LOCATION ( technology_id, location) 
  VALUES 
    /*DUCK-Improved Pateros Layer Duck*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck') ,
      'Nueva Ecija'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck') ,
      'Pampanga'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck') ,
      'Batangas'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck') ,
      'Laguna'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck') ,
      'Quezon'  
    ),
    /*NATIVE CHICKEN-Day-old chicks: Cracking the shell for profit*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'Albay'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'Iloilo'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'Capiz'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'Aklan'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'Bohol'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'Zamboanga City'  
    ),
    /*SWINE-AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus') ,
      'Pampanga'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus') ,
      'Bulacan'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus') ,
      'Tarlac'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus') ,
      'Batangas'  
    ),
    /*SWINE-\'Etag\' for you and me!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='\'Etag\' for you and me!') ,
      'CAR-Benguet'  
    ),
    /*SWINE-Lechon pa more!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Marinduque'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Quezon'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Isabela'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Nueva Viscaya'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Kalinga'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Benguet'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Eastern Samar'  
    ),
    /*SWINE-Selecting the best local breeder pigs: Gene marker technology in breeding and selection*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection') ,
      'Nueva Ecija'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection') ,
      'Quezon City'  
    ),
    /*GOAT-AI in goat: Facilitating genetic improvement, generating income opportunities*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Pangasinan'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Ilocos Sur'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'La Union'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Nueva Viscaya'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Isabela'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Cagayan'  
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Quirino'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Nueva Ecija'  
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Tarlac'  
    ),     
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Bulacan'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Aurora'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Bataan'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Zambales'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Leyte'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Southern Leyte'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Biliran'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Samar'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Misamis Oriental'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Bukidnon'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Misamis Occidental'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'North Cotabato'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'South Cotabato'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Saranggani'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Sultan Kudarat'  
    ), 
    /*DAIRY BUFFALO-Application of genomic information in dairy buffalo breeding program*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Application of genomic information in dairy buffalo breeding program') ,
      'Nueva Ecija'  
    ), 
    /*FEED RESOURCES-Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua') ,
      'Bulacan'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua') ,
      'Laguna'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua') ,
      'Batangas'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua') ,
      'Rizal'  
    ), 
    /*FEED RESOURCES-Corn saves the day*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day') ,
      'Nueva Ecija'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day') ,
      'Bukidnon'  
    ), 
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day') ,
      'North Cotabato'  
    );

/*LIVESTOCK PARTNER*/
INSERT INTO PARTNER ( technology_id, partner) 
  VALUES 
    /*DUCK-Improved Pateros Layer Duck*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Improved Pateros Layer Duck') ,
      'Bureau of Animal Industry - National Swine and Poultry Research and Development Center (BAI-NSPRDC)'
    ),
    /*NATIVE CHICKEN-Day-old chicks: Cracking the shell for profit*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'BU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'West Visayas State University (WVSU)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'DA-RFO 7 - Ubay Stock Farm'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Day-old chicks: Cracking the shell for profit') ,
      'WMSU'
    ),
    /*SWINE-AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AndaliTM RT-LAMP Test Kits: Rapid and timely detection of PED virus') ,
      'CLSU'
    ),
    /*SWINE-\'Etag\' for you and me!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='\'Etag\' for you and me!') ,
      'BSU'
    ),
    /*SWINE-Lechon pa more!*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Marinduque State College'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'National Swine and Poultry Research and Development Center - BAI'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'UPLB'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Isabela State University (ISU)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Kalinga-Apayao State College'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'BSU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Nueva Viscaya State University'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Lechon pa more!') ,
      'Eastern Samar State University'
    ),
    /*SWINE-Selecting the best local breeder pigs: Gene marker technology in breeding and selection*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection') ,
      'PCC'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection') ,
      'BAI'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Selecting the best local breeder pigs: Gene marker technology in breeding and selection') ,
      'ASBAP'
    ),
    /*GOAT-AI in goat: Facilitating genetic improvement, generating income opportunities*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'ISU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'DA 1,2, and 8'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'CLSU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'CMU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'Sultan Kudarat State University (SKSU)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='AI in goat: Facilitating genetic improvement, generating income opportunities') ,
      'USM'
    ),
    /*DAIRY BUFFALO-Application of genomic information in dairy buffalo breeding program*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Application of genomic information in dairy buffalo breeding program') ,
      'PCC'
    ),
    /*FEED RESOURCES-Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Protein-enriched copra meal (PECM) as valuable protein source for swine, poultry, and aqua') ,
      'UPLB - National Institute of Microbiology and Biotechnology (BIOTECH)'
    ),
    /*FEED RESOURCES-Corn saves the day*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day') ,
      'USM'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day') ,
      'CMU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Corn saves the day') ,
      'CLSU'
    );