/*AQUATIC COMMODITY*/
INSERT INTO COMMODITY ( name, category ) 
  VALUES 
    (
      'Milkfish',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Shrimp',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Mussel',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Mud Crab',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Tilapia',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Aquafeed',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Sea Cucumber',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Oyster',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Coral',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Seaweed',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    ),
    (
      'Benham Rise',
      (SELECT name FROM CATEGORY WHERE name="Aquatic")
    );
/*AQUATIC TECHNOLOGY*/
INSERT INTO TECHNOLOGY ( title, description, objective_intro) 
  VALUES 
      /*Milkfish*/
      (
        'DNA probes: Detecting pathogens on the dot',
        'DNA Probe Kits contain highly specific probes for the detection of bacterial pathogens in milkfish such as Vibrio anguillarum, Photobacterium damselae, Nocardia seriolae, Vibrio parahaemolyticus, and other pathogenic bacteria such as Klebsiella pneumonia and Staphylococcus saprophyticus. Highly specific probes are essential components for pathogen detection using quantitative real-time polymerase chain reaction (qPCR) technology. 52The qPCR technology offers greater sensitivity, rapidity, specificity, and ability for quantitative detection of pathogens. Using the DNA probe kits, the amplification of gene and detection of pathogen are seen in real-time. It does not require post-PCR steps such as gel-based analysis as in conventional end-point PCR, which is time-consuming, laborious, and unsafe. DNA probe kits are used in qPCR assays to detect the presence of pathogens in diseased fish or in water samples. The rapid detection of pathogenic bacteria from samples obtained in hatcheries and fish farms allows implementation of immediate remedial or preventive measures of the disease and formulation of better strategies for disease management in fish farming. ',
        NULL
      ),
      (
        'Automatic fry counter: Accurate laser fry counting for milkfish',
        'Milkfish is an important food fish comprising 8% of the total animal protein intake of Filipinos. Traditionally cultured in brackish water ponds, rearing of milkfish has expanded in lakes and more recently, in the marine environment. Aside from grow-out culture, selling of milkfish fry has also been a profitable aspect of the overall milkfish production. Counting using scoop net or small cup, however, is laborious and inaccurate. Faced with this problem, researchers from University of the Philippines Visayas (UPV) have developed a prototype \“automatic fry counter\” as a solution. Designs for the automated fry counter have been based on initial observations of fry swimming behavior through video documentation. Components of the fry counter, such as the holding chamber and counting channel, have been designed to minimize stress during the counting process and reduce the time it takes to count the fry. The counting mechanism utilizes a simple set-up composed of a light source (laser), receptor (phototransistor), and a small processor (Arduino-UNO chipset) to carry out the actual counting process. The simple design has kept estimated costs for the fry counter under PhP 5,000. Latest trials of the counting mechanism have shown 95% accuracy with six pieces fry per second counting rate.',
        NULL
      ),
        /*Shrimp*/
      (
        'Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases',
        'One of the keys to reducing the risk of diseases in shrimp is prevention and early detection. A rapid method that involves
        the use of genome-based lateral flow strip biosensor has been developed as a diagnostic platform for white spot syndrome
        virus and other shrimp pathogens. The test strips are field-ready, with an extraction and mobile device kit for first level screening of pathogens on site. Test strips may also be coupled with PCR amplification of DNA extracts for faster and low level detection. The test strips may be multiplexed for simultaneous detection of more than one pathogen. The use of mobile strip reader and an accompanying application (app) instantaneously allows the test results of the diagnostic strips to be fed into an on-line pathogen information resource and biosurveillance system. The mobile strip reader will link the data captured by the app to a cloud server, which in turn is linked to a biosurveillance data center at the Southeast Asian Fisheries Development Center (SEAFDEC). The lateral flow strip biosensor has four major parts. The first is a sample pad where liquid shrimp samples will be dropped. A conjugated pad contains gold nanoparticles conjugated with DNA sequences specific to the target pathogen. A nitrocellulose membrane contains the test line and control line. The absorption pad wicks the liquid sample to the end of the strip through capillary action.  This screening test is cost-competitive and when used in the field will allow for more regular and wider sampling for early detection of shrimp diseases.',
        NULL
      ),
      (
        'LAMP: New simple tool for detecting virus in shrimps',
        'Loop-mediated isothermal amplification (LAMP) is a new molecular technique available, which can equal the PCR in specificity and
        offers higher sensitivity and rapid detection under isothermal conditions. Sensitivity of the reaction is enhanced by the use of four to six specially designed primers to detect white spot syndrome virus (WSSV). LAMP is ten times more sensitive for the detection of WSSV than conventional PCR. The use of four to six primers, instead of the usual two primers in PCR, also speeds up the reaction thereby reducing detection time. Results can therefore be obtained within one hour.  It does not require complicated and expensive equipment like a thermocycler. Reaction can be performed within one hour at a constant temperature (isothermal condition) ranging from 600 to 650 o C using a laboratory heatblock or waterbath. Because of its convenience, simplicity, and speed of detection, LAMP can therefore be used for on-site detection of WSSV in shrimp. Moreover, the practicality of LAMP assay makes it an effective tool for routine diagnosis for early detection of WSSV or any pathogen so proper health management procedures can be implemented to prevent mortality and avert economic losses.',
        NULL
      ),
      /*Mussel*/
      (
        'Pinoy longline: An innovative and sustainable way of growing mussels',
        'The Pinoy longline is a modified and cheaper version of the longline culture system used by New Zealand for producing high-quality mussel. The method is suitable for deeper waters and may be used to replace the stake method which causes sedimentation in coastal areas. The Pinoy longline culture system is composed of a 50-m main line made of 20-mm polypropylene rope. Attached in the main line are black plastic containers (40 cm x 35 cm x 19 cm) used as floaters which are discarded materials used for transporting oil and soy sauce. On both ends of the line, two plastic containers (91 cm x 37 cm) covered with polyethylene rope are used. To maintain the longline, anchors (approximately 152 cm x 127 cm x 102 cm) are placed on both sides. For stocking, mussel socks made of 2-m long and 10-mm thick polyethylene rope with cylindrical cement weighing 1 kg at the bottom are used. Mussel spats (2–3 cm) are placed inside the mussel sock at 200 pieces/m of sock. Mussel socks are tied to the longline at 50 cm interval.',
        NULL
      ),  
    /*Mud Crab*/
    (
      'Soft opportunities for mud crab exports',
      'Soft-shell crabs are not distinct or special crab species, but are mud crabs or \'alimango\' (Scylla spp.) that have molted or shed their hard outer shells in preparation for growth. The hard shell must be shed in order for the crabs to grow. A soft, pliable crab emerges and expands its new shell. The shell of the crab starts to harden within hours. Scylla spp. juveniles (crablets) are obtained from hatcheries and reared in net cages until 3–4 cm size and grown further in ponds for 1.5–2.0 months until they attain 60–100 g body weight. At this size, crabs are placed individually in perforated plastic boxes on polyvinyl chloride (PVC) floating platforms set in brackish water ponds. The crabs are fed with mollusks or low value fish every 2 days. Molting is monitored every 4 hours. Newly molted crabs are kept in aerated freshwater to prevent hardening of shell. After one hour, the soft-shelled crabs are sorted and packed in plastic food containers for freezing.',
      NULL
    ),
    (
      'Marine annelid as broodstock diet improves larval performance of mangrove crabs',
      'Breeding and culture techniques were developed for the culture of marine annelid (Marphysa mossambica) (63.2% crude protein and 0.8% crude fat) to supply the nutritional requirements of mud crab broodstock. Zoeae from broodstock fed with 20% pathogen-free annelid in formulated diet contained higher levels of total lipids and highly unsaturated fatty acid (HUFA), which can improve the larval performance. Feeding the zoeae with formulated diets reduced the use of natural food in the hatchery. In the nursery phase, improved survival of 70% in Phase 1 and 70–90% in Phase 2 were achieved. Bait-size polychaetes were used as feed (live or dry meal added in formulation) for crab broodstock. Natural food live Marphysa produced higher number (p<0.05) of zoea than the natural food without live Marphysa. Formulated diet containing 20% Marphysa produced higher number (p<0.05) of zoea than 10% Marphysa. Natural food live Marphysa + formulated diet 20% M produced higher number (p<0.05) of zoea than those without live Marphysa.',
      NULL
    ),
    /*Tilapia*/
    (
      'GIS application for risk assessment in aquaculture',
      'Geographic information system (GIS) is a spatial decision support system or a system for input, storage, analysis, output, and display of geographic data or geographically-referenced information. GIS technology integrates spatial and other related information within a single computer system and allows access to attribute information by geographic location. A comprehensive geo-referenced database of tilapia ponds in Pampanga was developed. Data were used to determine the  suitability of fishponds in 21 municipalities for aquaculture based on: a) selected farm practices; b) fish kill and disease occurrences; c) results on soil quality; and d) results on water quality. Digital mapping and modelling was performed using the ArcGIS software with Environmental Systems Research Institute (ESRI) base maps and downloaded satellite images as references. The Analytic Hierarchy Process, a decision support tool was used to determine the overall suitability of aquaculture in Pampanga.',
      NULL
    ),
    /*Aquafeeds*/
    (
      'Microalgae: Potential feed for aquaculture species',
      'Microalgae are microscopic floating aquatic organisms that contain one cell and no roots, stems, or leaves. These algae have
      different shapes and colors and are very small, usually one quarter of a millimeter. The color of the microalgae cell depends on their pigments, which can either appear in blue-green, yellow, brown, or orange. These small aquatic plants are usually found in marine and freshwater environments, which are considered as one of the most important water organisms due to its utilization in various fields. The species serve as natural food for milkfish, shrimp, tilapia, and other finfishes and crustaceans at different stages. It is also a potential feed ingredient for culture of different aquaculture species. Microalgae production plays a very important role in the field of aquaculture. The four commonly used microalgae species in aquaculture include Tetraselmis sp., Nannochloropsis sp., Chaetoceros calcitrans, and Chlorella vulgaris. These species are currently utilized for mass production of algal pastes, the concentrated liquid microalgae cells used as feed for larval fish, shrimp, and other aquaculture species. The commercial algal paste costs about US $150/L.',
      NULL
    ),
    /*Sea Cucumber*/
    ( 
      'Harnessing S&T for a sustainable and competitive sea cucumber industry',
      'Sea cucumbers are high value marine invertebrates that used to abound in the country’s coastal waters. There are about 200 sea cucumber species in the country, which include 40 species that are of high value. The Philippines was a top producer of dried sea cucumbers (also known as beche-de-mer or trepang) in the 1980s. Due to unregulated harvesting and trade, total annual production is now less than 900 t. This pulled down the country to being the third sea cucumber producer. Moreover, the bulk of Philippine sea cucumber products is undersized lower-value species, poorly processed, and lowly priced.',
      'A national program on sea cucumber was developed to restore the fishery and bring back a viable economic activity. The program aims to:'
    ),
    /*Oyster*/
    (
      'Bigger, juicier oyster, safe for human consumption',
      'Oyster farming is an important source of livelihood in many coastal communities. Production has been erratic due to unstable supply of quality seedstocks and poor oyster quality because most farms are located in shallow, polluted coastal areas. Hence, most of our oysters are consumed locally.',
      'The Oyster R&D Program aims to increase production and improve
      the quality of oyster (Crassostrea iredalei) in the Philippines by:'
    ),
    /*Corals*/
    (
      'Managing coral reefs for present and future generations',
      'The Philippine coral reefs significantly contribute to both global marine biodiversity and local economy. But these are massively threatened by natural and anthropogenic stressors and more recently, are faced with rising threats from climate change and continued coastal and upland development reflecting an increasingly complex environmental situation. Despite continued deterioration, corals’ specific responses to threats and ability to recover have not been fully documented and studied.',
      'The national program on coral aims to:'
    ),
    /*Seaweeds*/
    (
      'Revitalizing the seaweed industry',
      'Seaweeds are economically important as source of carrageenan,  an algal colloid that has various food and industrial applications. Seaweeds ranked as the country’s 2 nd major fishery export in 2013 contributing 18% share to the total export earnings. USA, China, and Belgium are among the major markets for Philippine seaweed products. Seaweed production comprised 65.66% of the total aquaculture production in 2013. Until 2008 when it was overtaken by Indonesia, the Philippines was the world’s No. 1 producer of raw materials for carrageenan. The decline in farm production is due to decreasing quality of seedstocks; unavailability of seedstocks for farming due to outbreak of diseases such as ‘ice-ice’ and presence of epiphytes; and decreasing carrying capacity of farms.',
      'The Seaweed R&D program aims to:'
    ),
    /*Benham Rise*/
    (
      'Benham Rise: The Philippines’ new territory off Aurora',
      'Benham Rise, a 13-million hectare undersea region east of Luzon, is the Philippines’ new territory. Most of the Rise is about 2,000– 5,000 m deep but a seamount on the southern part rises to 50 m below the surface and is called the Benham Bank. The Benham Rise region is an extension of the Philippines’ continental shelf and is believed to be rich in living and non-living resources such as minerals and gas. An all-Filipino marine scientific research cruise was conducted to assess the benthic habitats and water column biological productivity in the vicinity of the Benham Bank and investigate the interaction between the ocean currents and topography. The cruise provided the first research effort of documenting deep-water biodiversity in the Philippines.',
      NULL
    );

/*AQUATIC OBJECTIVE*/
INSERT INTO OBJECTIVE (technology_id, objective)
  VALUES
    /*Sea Cucumber- Harnessing S&T for a sustainable and competitive sea cucumber industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Establish a sustainable and globally competitive sea cucumber industry which provides equitable economic benefits to various stakeholders, and'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
     'Maintain the productivity and biodiversity of the sea cucumber fishery in the country'
    ),
    /*Oyster- Bigger, juicier oyster, safe for human consumption*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'refining broodstock/hatchery and nursery techniques'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'producing algal diet for all stages of development'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'identifying molecular markers for best broodstock performance such as fast growth rate, disease resistance, and low salinity tolerance'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'establishing sanitary quality of oysters and their culture environment'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'refining existing grow-out culture techniques'
    ),
    /*Corals- Managing coral reefs for present and future generations */
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'initiate an intensive systematic national coral reef assessment'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'generate knowledge on the connectivity and interaction of the shallow and deep corals as well as their genetic biodiversity to develop management strategies and policies,'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'develop restoration/rehabilitation technologies to restore degraded reefs'
    ), 
    /*Seaweeds- Revitalizing the seaweed industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Help farmers improve their stocks and eventually increase farm production by generating quality seedstocks (i.e., fast growing, good quality carrageenan, disease resistant) from branch cultures and spores'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Make the seedstocks efficiently available to seaweed farmers by storing and maintaining these in inexpensively maintained facilities (seaweed nurseries) near farming sites'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Develop concrete measures in the selection of farming areas that can support year-round farming, as well as make basis for cropping management and harvest schedules in areas where farming is seasonal'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Develop mitigating strategies to address seaweed diseases and epiphyte infestation'
    );

/*AQUATIC BENEFIT*/
INSERT INTO BENEFIT (technology_id, benefit) 
  VALUES 
    /*Milkfish- DNA probes: Detecting pathogens on the dot*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot'),
      'Rapid and easy to use' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot'),
      'Pathogen-specific and sensitive' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot'),
      'Safe and convenient diagnosis of pathogen' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot'),
      'Allows quantitative and real time detection of pathogens'
    ),
    /*Milkfish- Automatic fry counter: Accurate laser fry counting for milkfish*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Accurate and easy to use'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Inexpensive and simple design'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Minimum stress to fry'
    ),
    /*Shrimp- Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Affordable, rapid, and easy to use'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Pathogen-specific and highly sensitive'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Convenient for on-site diagnosis of pathogen'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Single strip or multiplexed for simultaneous detection of pathogens'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Can be integrated into a mobile-based reader'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Real-time connection to a cloud-based information system'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Detection can reduce losses by 50%'
    ),
    /*Shrimp- LAMP: New simple tool for detecting virus in shrimps*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'Efficient'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'Specificity and sensitivity and ability to detect pathogen even in low amounts'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'Does not require complicated and expensive equipment'
    ),
    /*Mussel- Pinoy longline: An innovative and sustainable way of growing mussels*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Will not cause sedimentation and reduces damage to coastal environment'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Can be applied in deeper waters'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Produces high quality mussels'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Will modernize the mussel industry'
    ),
    /*Mud Crab- Soft opportunities for mud crab exports*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Provides producers of year-round availability of seedstock'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Provides exportable value-added product for crabs'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Provides higher income for crab producers'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Provides consumers with crabs that can be eaten whole when cooked without removing the shell and limbs'
    ),
    /*Mud Crab- Marine annelid as broodstock diet improves larval performance of mangrove crabs*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Improved survival rate'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Improved larval performance'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Reduces use of natural food in the hatchery'
    ),           
    /*Tilapia- GIS application for risk assessment in aquaculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'GIS maps and other data can be accessed through geographical positioning system (GPS) units, laptops, tablets, smartphones, and other mobile devices at any time and location'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'Can answer questions such as the condition of a certain area, the location, trends, and changes for a certain period of time, spatial patterns and possible scenario for a given set of condition'
    ),
    /*Aquafeeds- Microalgae: Potential feed for aquaculture species*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Best alternative to live microalgae during difficult times of production and insufficient rations of live microalgae'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Readily available microalgae paste products any time'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Reduces the cost of aquaculture (crustaceans, mussels, and fish) feeds'
    ),        
    /*Sea Cucumber- Harnessing S&T for a sustainable and competitive sea cucumber industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Culture technology of sandfish, Holothuria scabra (a species of sea cucumber)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Accelerates production of sandfish juveniles for grow-out, in partnership with Palawan Aquaculture Corporation and Alson’s Aquaculture Corporation'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Integrates sandfish culture in existing hatchery and nursery production operations'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Provides low cost ocean nursery systems to reduce the cost and diversify systems for juvenile production'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Restores a viable supplemental source of livelihood to coastal villagers'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'The production of Class A premium grade trepang with reduced microbial content, improved shelf life and no foul odor commands a higher price in both local and international markets'
    ),
    /*Oyster- Bigger, juicier oyster, safe for human consumption*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Provides optimal culture conditions for broodstocks to produce stable supply of better quality spats for grow-out culture'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Enhances awareness on food safety among oyster consuming public, thus, providing safeguard against unwarranted occurrences of gastro-intestinal tract-related illnesses due to consumption of bacterially contaminated oysters'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Longline and raft methods are environment-friendly methods suitable for mass production of oyster meat for consumption and value added processing'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Pouch and tray methods can produce single oysters with uniform size and shape with bigger/juicier meat which are apt for high-end restaurants. It is also ideal for export to Asian, US and European markets'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Generated data will serve as springboard in the formulation of updated sanitation standards and methods for the regular monitoring, (e.g., BFAR) of farmed oysters in the Philippines'
    ),
    /*Corals- Managing coral reefs for present and future generations */
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'First documentation of the deep sea resources of the Benham Rise Region'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Pioneers in exploring, mapping, and documenting the country’s mesophotic coral reefs (up to 150 m depth), and studies factor that influence their morphology'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Seafloor mapping, underwater surveys, and hydrodynamic modeling in six sites (Apo Reef, Abra de Ilog, Verde Island Passage, Calatagan, Mabini, and Patnanungan)'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Protocol for coral reef assessment' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Conducts coral reef assessment initially in at least 28 municipalities/cities'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Screens 17 coral species for resiliency to temperature, ocean acidification and nutrients'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Molecular markers to identify resilient biological units and delineate spatial limits of coral population for future reef restoration initiatives'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Established coral nursery units (CNUs) and transplanted coral fragments'
    ),
    /*Seaweeds- Revitalizing the seaweed industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Establish indoor and outdoor land-based seaweed nurseries Trained manpower in laboratory spore collection, sporeling culture, and maintenance and taxonomic identification of eucheumatoid species'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Produce quality seedstocks from branch culture and sporelings'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Improve strategies for management of production losses'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Cropping management schemes'
    ),
    /*Benham Rise- Benham Rise: The Philippines’ new territory off Aurora*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Benham Rise: The Philippines’ new territory off Aurora'),
      'Improved coral reef management for increased fisheries production/biodiversity conservation'
    );

/*AQUATIC BENEFICIERY*/
INSERT INTO BENEFICIARY ( technology_id, beneficiary) 
  VALUES 
    /*Milkfish- DNA probes: Detecting pathogens on the dot*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot') ,
      'Milkfish growers association'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot') ,
      'Satellite PCR laboratories'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot') ,
      'Aquaculture operators'  
    ),
    /*Milkfish- Automatic fry counter: Accurate laser fry counting for milkfish*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Milkfish hatchery operators'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Aquaculturists and fish farmers'
    ),
    /*Shrimp- Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Shrimp growers associations'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Satellite PCR laboratories'
    ),
    /*Shrimp- LAMP: New simple tool for detecting virus in shrimps*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'Shrimp farmers'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'Shrimp operators'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'Consumers'
    ),
        /*Mussel- Pinoy longline: An innovative and sustainable way of growing mussels*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Mussel farmers'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Fisherfolk'
    ),
    /*Mud Crab- Soft opportunities for mud crab exports*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Pond operators and business entrepreneurs'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Local restaurants and supermarkets'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Export market'
    ),
    /*Mud Crab- Marine annelid as broodstock diet improves larval performance of mangrove crabs*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Mangrove crab farmers'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Mangrove crab operators'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Consumers'
    ),
    /*Tilapia- GIS application for risk assessment in aquaculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'Environmentalists'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'Development planners'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'LGUs'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'Aquaculture operators'
    ),
    /*Aquafeeds- Microalgae: Potential feed for aquaculture species*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Milkfish, shrimp, and tilapia culture industries'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Finfish, crustaceans, and mussel hatchery operators'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Fish cage and fishpond operators'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Feed millers'
    ),
    /*Sea Cucumber- Harnessing S&T for a sustainable and competitive sea cucumber industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Aquaculture industry'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Direct users of natural (wild) sea cucumber stocks (fishers, traditional gatherers, traders, processors)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Research, academic, and scientific community'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Organized groups with advocacies on promoting environment-friendly aquaculture practices'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'LGUs'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Resource managers'
    ),
     (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Small to medium-scale fisher cooperatives'
    ), 
    /*Oyster- Bigger, juicier oyster, safe for human consumption*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Hatchery operators, oysters growers, aquaculturists, processors, traders, fisherfolks, fisherfolk organizations, and coastal communities'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Government agencies, local government units, non-government organizations, and academic and research institutions'
    ),
    /*Corals- Managing coral reefs for present and future generations */
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Government agencies and academic Institutions'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Food and fishing industries'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Policy makers (local and national)'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Coral reef conservation practitioners, environmentalists, resource managers'  
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Resource users (reef coral aquarists, eco-tourists, fishers, coastal communities)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Scientific community (specifically the Philippine marine science community in particular'
    ),
    /*Seaweeds- Revitalizing the seaweed industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Seaweed farmers'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Seaweed industry'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Food and medical industries'
    );

/*AQUATIC LOCATION*/
INSERT INTO LOCATION ( technology_id, location) 
  VALUES 
    /*Milkfish- DNA probes: Detecting pathogens on the dot*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot') ,
      'Quezon City'
    ),  
    /*Milkfish- Automatic fry counter: Accurate laser fry counting for milkfish*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Iloilo'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'Cebu'
    ),
    /*Shrimp- Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Iloilo'
    ),
    /*Shrimp- LAMP: New simple tool for detecting virus in shrimps*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'NCR'
    ),
    /*Mussel- Pinoy longline: An innovative and sustainable way of growing mussels*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Iloilo'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Capiz'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Aklan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Samar'
    ),
    /*Mud Crab- Soft opportunities for mud crab exports*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Quezon'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Iloilo'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'Zamboanga del Sur'
    ),    
    /*Mud Crab- Marine annelid as broodstock diet improves larval performance of mangrove crabs*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'Iloilo'
    ),
    /*Tilapia- GIS application for risk assessment in aquaculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'Pampanga'
    ), 
    /*Aquafeeds- Microalgae: Potential feed for aquaculture species*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Iloilo'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Bohol'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Nueva Ecija'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'Laguna'
    ),
    /*Sea Cucumber- Harnessing S&T for a sustainable and competitive sea cucumber industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Quezon City'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Laguna'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Pangasinan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Palawan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Sarangani Province'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Misamis Oriental'
    ),
     (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Misamis Occidental'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Iloilo'
    ),
    /*Oyster- Bigger, juicier oyster, safe for human consumption*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Iloilo'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Capiz'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Aklan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Samar'
    ),
    /*Oyster- Bigger, juicier oyster, safe for human consumption*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Benham Park'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'Ilocos Norte'
    ),
    /*Corals- Managing coral reefs for present and future generations */
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'La Union'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Pangasinan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Cagayan'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Isabela'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Zambales'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Bataan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Aurora'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Batangas'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Quezon'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Mindoro'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Marinduque'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Romblon'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Aklan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Guimaras'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Antique'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Panay'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Cebu'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Bohol'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Negros Oriental'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Negros Occidental'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Zamboanga del Norte'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Zamboanga del Sur'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Zamboanga Sibugay'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Misamis Occidental'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Camiguin'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Davao Gulf'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Davao Oriental'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Sarangani'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Cotabato'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Surigao'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Dinagat Island'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Sulu Archipelago'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Tawi-Tawi'
    ),
    /*Seaweeds- Revitalizing the seaweed industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Pangasinan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Quezon City'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Tawi-Tawi'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Batangas'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Palawan'
    );

/*AQUATIC PARTNER*/
INSERT INTO PARTNER ( technology_id, partner) 
  VALUES 
    /*Milkfish- DNA probes: Detecting pathogens on the dot*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='DNA probes: Detecting pathogens on the dot') ,
      'UP Diliman - Institute of Biology'
    ),
    /*Milkfish- Automatic fry counter: Accurate laser fry counting for milkfish*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Automatic fry counter: Accurate laser fry counting for milkfish'),
      'UPV - College of Fisheries and Ocean Sciences'
    ),
    /*Shrimp- Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'Ateneo de Manila University'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Genome-based lateral flow strip biosensor kit: Quick detection, quick response against shrimp diseases'),
      'SEAFDEC - Aquaculture Department (AQD)'
    ),
    /*Shrimp- LAMP: New simple tool for detecting virus in shrimps*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='LAMP: New simple tool for detecting virus in shrimps'),
      'University of Sto. Tomas'
    ),
    /*Mussel- Pinoy longline: An innovative and sustainable way of growing mussels*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'UPV - College of Fisheries and Ocean Sciences'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Samar State University (SSU)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Pinoy longline: An innovative and sustainable way of growing mussels'),
      'Capiz State University (CAPSU)'
    ),
    /*Mud Crab- Soft opportunities for mud crab exports*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Soft opportunities for mud crab exports'),
      'SEAFDEC/AQD'
    ),
    /*Mud Crab- Marine annelid as broodstock diet improves larval performance of mangrove crabs*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Marine annelid as broodstock diet improves larval performance of mangrove crabs'),
      'SEAFDEC/AQD'
    ),
    /*Tilapia- GIS application for risk assessment in aquaculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='GIS application for risk assessment in aquaculture'),
      'CLSU - freshwater Aquaculture Center'
    ),
    /*Aquafeeds- Microalgae: Potential feed for aquaculture species*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Microalgae: Potential feed for aquaculture species'),
      'UPV - Institute of Aquaculture College of Fisheries and Ocean Sciences/Museum of Natural Sciences'
    ),  
    /*Sea Cucumber- Harnessing S&T for a sustainable and competitive sea cucumber industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'UP Marine Science Institute (UP MSI)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'UPLB - Institute of Agriculture Engineering'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Palawan Aquaculture Corporation'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Alsons Aquaculture Corporation'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'Mindanao State University (MSU) - Naawan'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Harnessing S&T for a sustainable and competitive sea cucumber industry'),
      'UPV'
    ),
   /*Oyster- Bigger, juicier oyster, safe for human consumption*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'SEAFDEC'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'UPV'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Bigger, juicier oyster, safe for human consumption'),
      'SSU'
    ),
      /*Corals- Managing coral reefs for present and future generations */
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'De La Salle University'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'UP MSI'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'UP Diliman - NIGS'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'University of San Carlos'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'MSU - Tawi-Tawi College of technology and Oceanography (TCTO)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'MMSU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Palawan State University'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'BPSU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Sangkalikasan'
    ),  
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'MSU - General Santos'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'Zamboanga State College of Marine Sciences and Technology (ZSCMST)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'BISU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Managing coral reefs for present and future generations'),
      'BU'
    ),
    /*Seaweeds- Revitalizing the seaweed industry*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'UP MSI'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'MSU - TCTO'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'PSU'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'Western Philippines University (WPU)'
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Revitalizing the seaweed industry'),
      'UP National Institute of Molecular Biology and Biotechnology (UP NIMBB)'
    );
