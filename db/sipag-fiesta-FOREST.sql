 /*FOREST AND ENVIRONMENT COMMODITY*/
INSERT INTO COMMODITY ( name, category ) 
  VALUES 
    (
      'Rubber',
      (SELECT name FROM CATEGORY WHERE name="Forest and Environment")
    ),
    (
      'Cacao',
      (SELECT name FROM CATEGORY WHERE name="Forest and Environment")
    ),
    (
      'Industrial Tree Plantation',
      (SELECT name FROM CATEGORY WHERE name="Forest and Environment")
    ),
    (
      'Bamboo',
      (SELECT name FROM CATEGORY WHERE name="Forest and Environment")
    ),
    (
      'SARAI',
      (SELECT name FROM CATEGORY WHERE name="Forest and Environment")
    );

/*FOREST AND ENVIRONMENT TECHNOLOGY*/
INSERT INTO TECHNOLOGY ( title, description, objective_intro, commodity_id ) 
  VALUES 
    /*RUBBER*/
    (
      'White gold from the forests',
      'Quality planting materials (QPM) for rubber are produced through green budding technology, which uses the recommended high-yielding rubber varieties such as PB217, PB235, B260, PB330, PB331, RRIM 600, and USM 1.\nDNA markers validate the identity of the rubber clones and ensure production of correct and high-yielding clones.',
      NULL,
      (SELECT commodity_id FROM COMMODITY WHERE name="Rubber") 
    ),
    /*CACAO*/
    (
      'Brown gold from the forests',
      'Proper cultural management practices and the use of high-yielding varieties such as UF18, BR25, K1, K2, and K9 ensure successful and economically-competitive cacao farming. Also, the productivity of old and unproductive cacao trees is improved through the Enhanced Integrated Cultural Management for Cacao Rehabilitation, which applies fertilization, pruning, and side and/or ‘chupon’ grafting of quality bud sticks. Three combinations of high-yielding clones (UF 18, W10, PBC-123) are used for grafting to prevent pest and disease infestation.',
      NULL,
      (SELECT commodity_id FROM COMMODITY WHERE name="Cacao") 
    ),
    (
      'Cacao QPM production',
      'The production of QPM requires two components: a) the rootstock and b) the scion.\nSteps\n•  To get the seedling to be used as rootstock:\n1.   Grow seedlings from carefully selected seeds.\n2.   Plant the seeds in polyethylene bags filled with sterilized garden soil (clay loam + organic matter).\n3.   Allow seedling to grow until it reaches a pencil sized stem (approximately 3 months).\n•  To get the scion:\n1.   Select the scion. Use the NSIC recommended varieties from a reputable budwood garden.\n2.   Cut a healthy branch from the selected tree. A good branch is pencil size and has at least 3 active bud eyes.\n3.   Clean the branch (should be free of leaves).\n4.   Wrap the clean branch using a smoke white plastic sheet.\n•  To graft:\n1.   Select rootstock with matured leaves without young flush.\n2.   Cut the top part of the rootstock leaving one leaf storey.\n3.   Make an incision at the center of the stem.\n4.   Insert the scion.\n5.   Wrap and seal the union site with plastic wrap.\n6.   Allow the grafted seedling to grow under 75% shade. Water as needed. \n7.   After 21 days, inspect for the growth of leaf buds. \n8.   Open and remove half of the wrap to allow new leaves to grow.\n 9.   When the leaves mature (approximately 1 month), remove the remaining wrap. \n10. Remove the plastic seal and the leaves of the rootstock after 2 months.\n11. The grafted seedling is ready for field planting.',
      NULL,
      (SELECT commodity_id FROM COMMODITY WHERE name="Cacao") 
    ),
    /*INDUSTRIAL TREE PLANTATION*/
    (
      'Emeralds from the forests',
      'The use of quality planting materials can increase the survival rate of tree seedlings in the nursery by 40%. Seedlings from quality seeds are healthy, vigorously growing, disease-free, and have a robust and woody (lignified) single stem that are free of deformities. They have a large root collar diameter, dense, healthy root system with many fine, fibrous hairs at the root tips. The seedlings also have a balance shoot and root mass and are accustomed to short periods without water and full sunlight.',
      NULL,
      (SELECT commodity_id FROM COMMODITY WHERE name="Industrial Tree Plantation") 
    ),
    /*BAMBOO*/
    (
      'Green gold from the forests',
      'For giant bamboo propagation (Dendrocalamus asper Schultes f.), branch cuttings from 3 to 4 year-old culms are the best planting materials. At least 10 branches can be collected from one culm. Each branch should have 2–3 nodes and live buds. The branch cuttings sprout 7–10 days after potting. Proper care and maintenance are necessary for potted branch cuttings. Usually, potted propagules are ready for outplanting in 3–4 months or longer.\n Meanwhile, ‘kawayan tinik’ (Bambusa blumeana J. A. & A.H. Schultes f.) is propagated through one–node culm cuttings. One-node cuttings should have an equal portion of the lower (below the node) and upper (above the node) internodes of about 4–6 cm. These cuttings are obtained from the mother culms. Rooted cuttings with sprouts are exposed to full sunlight for better growth. Potted cuttings are ready for outplanting in 6–12 months.\n For ornamental bamboo, the propagation techniques are culm cutting, branch cutting, marcotting, and division or offset. The commonly used method is division or offset. Newly-developed bamboo shoot from a clump is allowed to grow to its height with fully developed leaves and branches before it is separated from the clump.\n Clump management is necessary to improve bamboo clump productivity in general. This is done through regular tending operations, which includes cleaning, thinning, mounding, mulching, and fertilization. Old bamboo clumps can also be rehabilitated/ rejuvenated through the application of suitable cultural treatments such as sanitation cutting, cleaning, or fertilizer application. This offers a quick and cheap means of increasing the supply of bamboo.',
      NULL,
      (SELECT commodity_id FROM COMMODITY WHERE name="Bamboo") 
    ),
    /*SARAI*/
    (
      'Smarter moves for a competitive agriculture',
      'One of the most affected sectors by climate change in the Philippines is agriculture. Harnessing the present advances in science and technology, the Smarter Approaches to Reinvigorate Agriculture as an Industry in the Philippines (SARAI) aims to provide agriculture stakeholders access to near real-time scientific information on pressing questions in the context of agricultural uncertainties caused by climate variabilities and extremes. It is anchored on precision agriculture by optimizing the use of crop simulation modelling (CSM), remote sensing and geographic information systems (RS/GIS), and field sensors to develop decision support models for crop forecasting, crop advisories, and early warning systems. Initially, it focuses on six priority crops: rice, corn, banana, coconut, coffee, and cacao. \n As of 2015, the program has already produced outputs that can be grouped into four categories: \n •  technologies (Smarter Pest Identification Technology [SPId Tech], and cost-efficient soil moisture monitoring system for soil water deficit); \n •  systems (Water Management Decision Support System (WAISS), SARAI Enhanced Agricultural Monitoring System (SEAMS), and Maize Nutrient Expert); \n •  data products (crop suitability maps for the six crops); and •  networks/connections/linkages established.',
      'To aid in the statistical modelling for the crop forecasts and advisories, SARAI has also been using automatic weather stations (AWS) and unmanned aerial vehicle (UAV) to provide real-time weather data.',
      (SELECT commodity_id FROM COMMODITY WHERE name="SARAI") 
    );

/*FOREST AND ENVIRONMENT BENEFIT*/
INSERT INTO BENEFIT ( technology_id, benefit) 
  VALUES
    /*RUBBER-White gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Produces high-yielding budded seedlings' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Increases annual yield of dry rubber (DR) from 1.28 metric ton/hectare (mt/ha) to 1.92 mt/ha using high-yielding budded clones' 
    ),
    /*CACAO-Brown gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Increases annual cacao bean yield (fully fermented) per ha from 1 metric ton (mt) to 1.6 mt (2016) and 2 mt (2020) using high-yielding clones/varieties' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Increases productivity of cacao beans by 60% and income of smallhold cacao farmers by 50% (i.e., from P30,000 to P45,000)' 
    ),
    /*CACAO-Cacao QPM production*/
    /*NO ENTRY*/
    /*ITP-Emeralds from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Increases wood yield by 40% (from 60 m3/ha to 100 m3/ha) through:\n•  supply of quality seeds to support tree plantation development in 3,000 ha lands;' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'capacity building of tree farmers on quality seedling production; and' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'dissemination of information, education, and communication materials and continuous coaching.' 
    ),
    /*BAMBOO-Green gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Increased annual yield per hectare by 20% (from 800 to 1,000 poles)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Sustained source of quality bamboo pole' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Increased income of bamboo farmers' 
    ),
    /*SARAI-Smarter moves for a competitive agriculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Better equipped agricultural sector in dealing with climate uncertainties and in planning their planting/harvesting activities with more tangible scientific support' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Avoidance of significant economic losses due to climate uncertainties' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'More enhanced crop insurance mechanisms through the program' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'More scientifically and technologically advanced agricultural sector/farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'More stable supply of crops' 
    );

/*FOREST AND ENVIRONMENT BENEFICIARY*/
INSERT INTO BENEFICIARY ( technology_id, beneficiary) 
  VALUES 
    /*RUBBER-White gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Produces high-yielding budded seedlings' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Rubber latex processors (natural rubber-based industry)' 
    ),
    /*CACAO-Brown gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'People’s organizations (POs)' 
    ),
    /*CACAO-Cacao QPM production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'Farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'People’s organizations (POs)' 
    ),
    /*ITP-Emeralds from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Tree farmers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'POs' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Private individuals, SUCs, GOs, and NGOs' 
    ),
    /*BAMBOO-Green gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Increased annual yield per hectare by 20% (from 800 to 1,000 poles)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Sustained source of quality bamboo pole' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Increased income of bamboo farmers' 
    ),
    /*SARAI-Smarter moves for a competitive agriculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Agricultural sector' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Farmers/Farmer-scientists of rice, corn, banana, coconut, coffee, and cacao' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'LGUs' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Researchers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Policymakers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Students' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Other government agencies like DA, DA - Bureau of Soils and Water Management (BSWM), and DOST - Philippine Atmospheric, Geophysical, and Astronomical Services Administration (PAGASA)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Extension workers' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Agricultural technicians' 
    );


/*FOREST AND ENVIRONMENT LOCATION*/
INSERT INTO LOCATION ( technology_id, location) 
  VALUES 
    /*RUBBER-White gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Quezon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Palawan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Cagayan Valley' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Zamboanga Peninsula' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Basilan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Bukidnon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Cotabato' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Sultan Kudarat' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Caraga Region' 
    ),
    /*CACAO-Brown gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Davao Oriental' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Cotabato' 
    ),
    /*CACAO-Cacao QPM production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'Davao Oriental' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'Cotabato' 
    ),
    /*ITP-Emeralds from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Isabela' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Nueva Vizcaya' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Bukidnon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Cagayan de Oro' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Agusan del Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Agusan del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Surigao del Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Surigao del Sur' 
    ),
    /*BAMBOO-Green gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Bulacan)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Pampanga' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Nueva Ecija' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Zambales)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Batangas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Iloilo' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Bukidnon' 
    ),
    /*SARAI-Smarter moves for a competitive agriculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Ilocos Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Pangasinan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Cagayan Valley' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Isabela' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Aurora' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Nueva Ecija' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Zambales' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Bataan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Cavite' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Laguna' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Batangas' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Quezon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Oriental Mindoro' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Occidental Mindoro' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Palawan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Albay' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Iloilo' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Antique' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Negros Occidental' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Cebu' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Bohol Samar' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Leyte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Zamboanga del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Northern Mindanao' 
    ),

    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Misamis Oriental' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Bukidnon' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Davao del Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Davao del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Cotabato' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Surigao del Norte' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Surigao del Sur' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Agusan del Sur' 
    );
  
/*FOREST AND ENVIRONMENT PARTNER*/
INSERT INTO PARTNER ( technology_id, partner) 
  VALUES 
    /*RUBBER-White gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'USM' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'CMU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'WPU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'WMSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'ISU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'SKSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'DA - Zamboanga Peninsula Integrated Agricultural Center (ZAMPIARC)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='White gold from the forests') ,
      'Sultan Kudarat' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Southern Luzon State University (SLSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Basilan State College (BSC)' 
    ),
    /*CACAO-Brown gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'USM' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Cotabato' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Brown gold from the forests') ,
      'Davao Oriental State College of Science and Technology (DOSCST)' 
    ),
    /*CACAO-Cacao QPM production*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'USM' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Cacao QPM production') ,
      'DOSCST' 
    ),
    /*ITP-Emeralds from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'Department of Environment and Natural Resources (DENR) - Region 13' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'UPLB' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'ISU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Emeralds from the forests') ,
      'CMU' 
    ),
    /*BAMBOO-Green gold from the forests*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'DENR Regions 3 and 6)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'PSAU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'Nueva Ecija' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'MMSU)' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Green gold from the forests') ,
      'CMU' 
    ),
    /*SARAI-Smarter moves for a competitive agriculture*/
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'ISU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'CLSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Mindoro State College of Agriculture and Technology - Victoria' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'WVSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'CMU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'USM' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Southern Philippines Agri-business and Marine and Aquatic School of Technology' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Bataan' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'BUCAF' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'UPLB College of Agriculture - La Granja Research and Training Station' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Cebu Technological University' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Misamis Oriental State College of Agriculture and Technology' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Western Philippines University' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'UP Diliman' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'CvSU' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'PCA' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'DA - Quezon Agricultural Experimental Station' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'PhilRice' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Northern Mindanao Integrated Agricultural Research Center' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'PAGASA' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'DA - BSWM' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Advanced Science and Technology Institute' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'International Center for Research in Agroforestry' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Talaorani Multipurpose Cooperative, Inc.' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Misamis Oriental' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Nestle' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Margaja Resources and Development Corporation' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Puentespina Farms' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'International Plant Nutrition Institute' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'International Business Machines Corporation' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'SMART Communications, Inc.' 
    ),
    (
      (SELECT technology_id FROM TECHNOLOGY WHERE title='Smarter moves for a competitive agriculture') ,
      'Philippine Maize Federation Inc.' 
    );
  