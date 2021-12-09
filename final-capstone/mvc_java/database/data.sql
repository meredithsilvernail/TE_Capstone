-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

INSERT INTO Address(street,city,state_code,zip_code)
VALUES
('1101 N 4th St','Columbus','OH',43201),
('424 W. Town Street','Columbus','OH',43215),
('2025 S High Street','Columbus','OH',43207),
('215 N. 4th Street','Columbus','OH', 43215),
('1288 N. High Street','Columbus','OH',43201),
('2971 N. High Street','Columbus','OH',43202),
('2555 Harrison Road','Columbus','OH',43204),
('7020 A Huntley Road','Worthington','OH',43229),
('2415 Scioto Harper Dr','Columbus','OH',43204),
('165 N 4th Street','Columbus','OH',43215),
('745 Taylor Avenue','Columbus','OH',43219),
('467 N High Street','Columbus','OH',43215),
('850 North 4th Street','Columbus','OH',43215),
('408 N 6th Street','Columbus','OH',43215),
('909 W 5th Avenue','Columbus','OH',43212),
('5053 Dierker Road','Columbus','OH',43220),
('1765 West 3rd Avenue','Columbus','OH',43212),
('161 N. High Street','Columbus','OH',43215),
('303 Green Meadows Dr South','Lewis Center','OH',43035),
('37 W. Waterloo St','Canal Winchester','OH',43110),
('2365 W. Dublin Granville Road','Columbus','OH',43235),
('685 Parsons Avenue','Columbus','OH',43206),
('505 Morrison Road','Gahanna','OH',43230),
('38 Grace Avenue','Powell','OH',43065),
('1291 W 3rd Avenue','Columbus','OH',43212),
('3946 Broadway','Grove City','OH',43123),
('401 N Front St #120','Columbus', 'OH',43215),
('41 N State Street','Westerville','OH',43081),
('4539 E Broad St','Whitehall','OH',43213),
('81 Mill Street #150','Gahanna','OH',43230),
('714 S High Street','Columbus','OH',43206),
('41 Depot Street','Powell','OH',43065),
('26 E 5th Ave','Columbus','OH',43201),
('80 W Church St #101','Pickerington','OH',43147),
('1130 Dublin Road','Columbus','OH',43215),
('800 Goodale Blvd','Columbus','OH',43212),
('503 South Front Street','Columbus','OH',43215),
('7472 Reliance Street','Columbus','OH',43085),
('5901-B Chandler Court','Westerville','OH',43082),
('41 N State Street','Westerville','OH',43081),
('1414 Polaris Parkway','Columbus','OH',43240),
('343 N Front Street','Columbus','OH',43215),
('734 Oak Street','Columbus','OH',43205),
('96 Gender Road','Winchester','OH',43110),
('1500 Polaris Pkwy, Ste 5A','Columbus','OH',43240),
('5705 Lithopolis Road NW','Lancaster','OH',43130),
('3517 N High Street','Columbus','OH',43214),
('3934 Townsfair Way','Columbus','OH',43219),
('440 West Broad Street','Columbus','OH',43215),
('9 E Columbus Street','Lithopolis','OH',43136),
('2134 Britains Lane','Columbus','OH',43224),
('5354 Center Street','Hilliard','OH',43026)
;


INSERT INTO Breweries(brewery_name, phone_number,brewery_history,sunday_hrs,monday_hrs,tuesday_hrs,wednesday_hrs,thursday_hrs,friday_hrs,saturday_hrs,brewery_image_filename,brewery_address_id)
VALUES ('Seventh Son Brewing Company','(614)421-2337','Seventh Son Brewing has been producing exceptional beers at the intersection of 4th & 4th in Columbus’ historic Italian Village since April of 2013','11:00am-12:00am','4:00pm-11:00pm','3:30pm-
12:00am','3:30pm-12:00am','3:30pm-12:00am','11:00am-2:00am','11:00am-2:00am','SeventhSon',1),

 ('Land-Grant Brewing Company','(614)427-3946','The old factory was built in 1920, and bringing this old building up to snuff was an endeavor; countless blood, sweat, and beers were poured into demo and construction from a cast of amazing folks, namely the mighty Compton Construction',
'11:30am-8:00pm','3:30pm-10:00pm','3:30pm-10:00pm','3:30pm-10:00pm','11:30am-10:00pm','11:30am-12:00am','11:30am-12:00am','LandGrant',2),

('Wild Ohio Brewing','(614)262-0000','Wild Ohio Brewing is a Columbus, Ohio based Company owned and managed by people who are extremely proud of the art and science of creating great Tea Beer. Folks at Wild Ohio believe that a great beer makes good times better. We feel blessed and humbled by the admiration, respect, and accolades showered upon us by our esteemed customers. Thanks to our loyal customers, our employees, and business associates, we are now one of the fastest growing producers of Tea Beer in Ohio',
'NONE','NONE','NONE','NONE','NONE','NONE','NONE','WildOhio',3),

('Wolf''s Ridge Brewing','(614)429-3936','Established in 2013, Wolf’s Ridge has grown into one of Columbus’ premier dining and drinking destinations, winning numerous local and national awards for their food and drink programs that have become synonymous with quality, inventiveness, and approachability','12:00pm-10:00pm','CLOSED','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-12:00am','12:00pm-12:00am','WolfRidge',4),

('North High Brewing','(614)407-5278','In 2011, North High Brewing was born as Columbus’ first and only Brew on Premises establishment, where the customer is the brewmaster.  In addition to customers brewing their own beer, North High Brewing creates small-batch, high-quality craft beer that they serve in their taproom as well as on tap at dozens of area restaurants and bars',
'12:00pm-10:00pm','2:00pm-12:00am','2:00pm-12:00am','2:00pm-12:00am','2:00pm-12:00am','12:00pm-2:00am','12:00pm-2:00am','NorthHigh', 5),

('Lineage Brewing','(614)461-3622','Lineage Brewing pays homage to the tradition of craft beer by expanding upon age-old techniques with new flavor combinations that would make our ancestors proud','11:00am-10:00pm','CLOSED','4:00pm-11:00pm','4:00pm-11:00pm','4:00pm-11:00pm','4:00pm-1:00am','11:00am-1:00am','Lineage',6),

('Columbus Brewing Company','(614)224-3626','It’s no secret that we love hops! As part of our sensory program, we frequently evaluate the quality of each of hop variety. We use this info to help us decide which hops to put in upcoming brews and also to build targets for when we select new hops in Yakima, WA each fall',
'11:00am-10:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','11:00am-12:00am','11:00am-12:00am','ColumbusBrewing',7),

('Zaftig Brewing Company','(614)636-2537','Founded in 2013, we are not just Worthington''s only craft brewery, we are unique in that we focus on high gravity, full bodied ales. Body is the sensation of fullness of a beer on the palate, while gravity refers to the dissolution of sugars during fermentation, which results in a beer’s alcoholic strength. Full body, high gravity means a big mouth feel and a generally higher alcohol by volume percentage.  You don''t pound these down, you sip slowly and savor the goodness',
'1:00pm-6:00pm','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','3:00pm-12:00am','12:00pm-12:00am','Zaftig',8),

('Sideswipe Brewing','(614)719-9654','Sideswipe is a small operation dedicated to using the highest quality ingredients to craft dynamic, kick-ass beers in Columbus, Ohio','1:00pm-7:00pm','CLOSED','CLOSED','4:00pm-9:00pm','4:00pm-9:00pm','4:00pm-11:00pm','1:00pm-11:00pm','Sideswipe',9),

('Elevator Brewing Co. Taproom','(614)679-2337','The Elevator Brewing Company was established in 1999 by a father and son collaboration and remains forever committed to making independent craft beer in Downtown Columbus, Ohio',
'12:00pm-8:00pm','CLOSED','4:00pm-12:00am','4:00pm-12:00am','4:00pm-2:00am','4:00pm-2:00am','12:00pm-2:00am','ElevatorBrewing',10),

('Pretentious Barrel House','(614)887-7687','Established in October of 2017, Pretentious is the first brewery in Columbus to specialize exclusively in barrel-aged sour ales. Our extensive knowledge of the symbiotic relationship between beer and wood results in consistent, quality sours. By manufacturing a wide range of beer along the sour spectrum, our consumers can ease their way into this unique style. Our goal is to produce award-winning sours that change people’s perspectives regarding craft beer',
'12:00pm-8:00pm','CLOSED','CLOSED','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','12:00pm-10:00pm','Pretentious',11),

('Barley''s Brewing Company','(614)228-2537','On Thursday, November 1, 2012 we were proud to celebrate our 20th anniversary. As is customary, we tapped the first Christmas Ale of the season at the party. Our friend Frankie Hejduk from the Columbus Crew was our guest tapper and The Drowsy Lads performed live. It was a most excellent celebration',
'12:00pm-11:00pm','11:00am-12:00am','11:00am-12:00am','11:00am-12:00am','11:00am-12:00am','11:00am-1:00am','11:00am-1:00am','Barleys',12),

('Hoof Hearted Brewery and Kitchen','(614)401-4033','No History Available','10:00am-10:00pm','CLOSED','CLOSED','3:00pm-12:00am','3:00pm-12:00am','3:00pm-1:00am','10:00am-1:00pm','HoofHearted',13),

('Platform Beer Company','(614)826-2285','Platform was founded in 2014 on the premise that collaboration should be at the cornerstone of everything that we do. Whether it be with pro brewers, the home brewing world or a variety of other industries, beer is special and should be shared',
'10:00am-10:00pm','3:00pm-12:00am','3:00pm-12:00am','3:00pm-12:00am','3:00pm-12:00am','3:00pm-2:30am','10:00am-2:30pm','Platform',14),

('Endeavor Brewing and Spirits','(614)732-0086','Our brewhouse was inspired by the traditional three vessel brewing sculptures you will find in Germany containing a Mash Kettle, Lauter Tun, and Whirlpool. This additional vessel (Lauter Tun) offers precise control over temperatures in the production process, resulting in quality products of the highest standard',
'10:00am-9:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','1:00pm-1:00am','10:00am-1:00am','Endeavor',15),

('Somewhere In Particular Brewing','(614)826-3723','As you walk through our doors and enjoy our brewery, we are excited to share the rich history behind it. The story moves from our country, to our state, to our area, to the road you took to get to here. As you enjoy our special brews, please take some time to go back through history with us to get a better understaning
of how we arrived at, most likely, the oldest still-standing property in the Northwest segment of Columbus, Ohio','11:00am-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-12:00am','3:00pm-12:00am','12:00pm-1:00am','11:00am-1:00am','SIPB',16),

('Knotty Pine Brewing','(614)817-1515','No History Available','10:00am-10:00pm','4:00pm-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-1:00am','10:00am-1:00pm','KnottyPine',17),

('Elevator Brewery and Draught Haus','(614)228-0500','The Elevator Brewing Company was established in 1999 by a father and son collaboration and remains forever committed to making independent craft beer in Downtown Columbus, Ohio',
'CLOSED','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-12:00am','5:00pm-12:00am','ElevatorBreweryDH',18),

('Olentangy River Brewing Company','(740)803-1561','Our Taproom is located in an industrial building that previously served as a data center and an office/workspace for a cabinet company. We have worked hard to create a warm and
welcoming environment with wood and natural tones paired with modern touches to enhance your coffee and beer drinking experience','8:00am-9:00pm','7:00am-9:00pm','7:00am-10:00pm','7:00am-10:00pm','7:00am-10:00pm','7:00am-12:00am','8:00am-12:00am','Olentangy',19),

('Loose Rail Brewing','(614)321-6634','We are a micro brewery based in the Historic District of Canal Winchester, Ohio. We stand by our craft and our beer. We strive to make our rustic brews with quality ingredients to make a more palatable beer for the people. We hope you enjoy, CHEERS!',
'2:00pm-8:00pm','CLOSED','5:00pm-10:00pm','5:00pm-10:00pm','5:00pm-10:00pm','3:00pm-11:00pm','12:00pm-11:00pm','LooseRail',20),

('Random Precision Brewing Company','(614)389-3864','Our 1,000 square foot taproom has several large communal tables and benches, three square four top tables, and a bar that will seat a dozen people comfortably.  A clean design with high vaulted, wooden ceilings with exposed trusses',
'12:00pm-8:00pm','CLOSED','CLOSED','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-12:00am','12:00pm-12:00am','RandomPrecision',21),

('Parsons North Brewing Company','(614)824-4208','Our extensive cocktail and wine offerings ensure that no matter the patron, we have something for you. Our extensive cocktail and wine offerings ensure no matter the patron,
we are an equal opportunity employer. See for yourself','11:00am-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-1:00am','11:00am-1:00am','Parsons',22),

('Kindred Brewing','(614)528-1227','When making plans for our craft beer tap room in metro Columbus, we wanted to adhere to a few core principles. We are committed to providing a comfortable and welcoming space to sit back with good friends and family while offering the highest quality house made beers and libations.','CLOSED','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-12:00am','12:00pm-12:00am','Kindred',23),

('Ill Mannered Brewing Company','(614)859-6819','Ill Mannered Brewing Company is the collective brain child of the Ill Mannered Team. We are passionate beer crafters who started years ago as home brewers.  By combining our passion with our varied backgrounds and expertise we''ve managed to pull together a nano brewing experience in the suburbs of Columbus.  We promise to add our own special touch to your experience at
Ill Mannered and crank out a wide variety of hand crafted beers for you to enjoy','12:00pm-8:00pm','CLOSED','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','3:00pm-11:00pm','11:30am-11:00pm','IllMannered',24),

('The Ohio Taproom','(614)487-9224','Plain and simple - We celebrate and sell only goods made in Ohio, starting with craft beer. We offer our Ohio-crafted beer in growlers of various sizes and we use cool technology like the CrafTap, a counter-pressure fill system that''s environmentally friendly and fills faster. Less waste and faster fill time? That''s a no-brainer to us.','2:00pm-7:00pm','CLOSED','3:00pm-9:00pm','3:00pm-9:00pm','3:00pm-9:00pm','2:00pm-10:00pm','11:00am-10:00pm','OhioTaproom',25),

('Grove City Brewing Company','(614)991-0338','Grove City Brewing Company opened in October 2016 and is located inside the Heart of Downtown Grove City, Ohio. Since then, Head Brewer Trevor Luther has been serving both quality interpretations of classic beers and daring new ventures into the uncharted territories of craft brew',
'11:00am-9:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-12:00am','11:00am-12:00am','GroveCityBrewing',26),

('Gordon Biersch Brewery Restaurant','(614)246-2900','Come back with us for a moment to 1987. Dan Gordon is one of the most sought-after brewers in the country, while Dean Biersch, an experienced restaurateur and beer lover, is searching for a partner to help open a brewery restaurant. A mutual friend arranges a meeting, so they sit down, start talking beer, and the rest is history.','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-11:00pm','11:00am-11:00pm','GordonBiersch',27),

('Temperance Row Brewing Company','(614)891-2337','Uptown Deli and Brew opened in December 2014 and serves carefully crafted sandwiches, soups and salads as well as offering a market aspect with artisan meats, cheeses and breads. The deli is a modern interpretation of the old world market with European style patio seating viewing State Street',
'11:00am-9:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-12:00am','11:00am-12:00am','TemperanceRow',28),

('2 Tones Brewing Co','(614)762-6281','The 2 Tones, Anthony and Tony, developed a passion for drinking craft beer as college roommates while attending The Ohio State University in 2008. Their passion for consumption transformed into a passion for creation over time. In 2009, the 2 Tones brewed their first batch of homebrew, a 10% ABV oatmeal imperial stout! It was an ambitious first brew, but the start of something special. Since then, they''ve crafted many beer styles ranging from Kölsch to Double IPA to Coffee Stout to Bourbon Barrel Barleywine. Over the years, two flagship beers were developed by 2 Tones: the Irish Red Ale and the India Pale Ale',
'12:00pm-7:00pm','CLOSED','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','3:00pm-11:00pm','12:00pm-11:00pm','TwoTones',29),

('Nostalgia Brewing','(614)934-7039','Beer that starts a conversation is the essence of Nostalgia Brewing. Our space brings you back to an enjoyable time and our beer keeps you having a one! Flip over our coasters and find a fun question to get your conversation started!',
'11:00am-10:00pm','3:00pm-10:00pm','3:00pm-10:00pm','3:00pm-10:00pm','3:00pm-10:00pm','11:00am-12:00am','11:00am-12:00am','Nostalgia',30),

('Antiques on High','(614)725-2070','Antiques on High is located on South High Street in the brewery district of Columbus, Ohio. As the sister brewery to Seventh Son Brewing, AoH focuses on the production of sour and wild beers as well as hazy hop-forward IPAs and pale ales. Along with the AoH beers there are several wines and craft cocktails offered on draft',
'11:00am-12:00am','4:00pm-12:00am','4:00pm-12:00am','4:00pm-12:00am','4:00pm-12:00am','3:00pm-2am','11:00am-2:00am','AntiquesOnHigh',31),

('Nocterra Brewing Co.','(614)896-8000','Nocterra Brewing Co. has a spacious taproom and large beer garden in historic downtown Powell, Ohio. We feature a full lineup of ales and lagers, specializing in bold IPAs and American sours',
'12:00pm-8:00pm','3:00pm-10:00pm','3:00pm-10:00pm','3:00pm-10:00pm','3:00pm-10:00pm','12:00pm-12:00am','12:00pm-12:00am','Nocterra',32),

('Brothers Drake Meadery','(614)388-8765','Our location has been setting the standard for craft alcohol made from honey for ten years running. Our facility has grown with us as we pioneered our craft, and now produces close to 10,000 gallons of mead per year. Our bar features meads available on tap, and by the bottle to go. We also made a commitment to serve only Ohio made beer and spirits at our bar, developing our unique mead cocktail menu.  Live music and local art has been a big part of our culture from the beginning too.  We have since built a high quality sound stage that hosts local and traveling independent music.  Our walls feature new local artists every month.  We invite you to come in and explore what the makers, musicians and artists of Ohio have crafted',
'1:00pm-6:00pm','CLOSED','CLOSED','5:00pm-8:00pm','5:00pm-8:00pm','5:00pm-10:00pm','1:00pm-10:00pm','BrothersDrake',33),

('Combustion Brewery & Taproom','(614)834-9595','Producing Fresh, Balanced, Quality craft beer','11:00am-10:00pm','CLOSED','4:00pm-11:00pm','4:00pm-11:00pm','4:00pm-11:00pm','11:00am-12:00am','11:00am-12:00am','Combustion.jpg',34),

('Smokehouse Brewing Company','(614)485-0227','Smokehouse Brewing Company is here to serve the perfect pint by exceeding guest expectations by providing unique, fresh ales, remarkable food, and a relaxed, friendly atmosphere while striving to be the dining destination of choice.','12:00pm-10:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-12:00am','12:00pm-12:00am','Smokehouse',35),

('Hofbräuhaus Columbus','(614)294-2437','Want to know the secret to our one-of-a-kind flavor? Our bier is brewed on-site every day using original recipes handed down by the Duke of Bavaria over 400 years ago. Today, our Brew Master oversees the brewing of our four year-round bier varieties, plus all of our seasonal specialties like Oktoberfest, Maibock, Pilsner and Dunkel Weizen',
'11:00am-10:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-12:00am','11:00am-1:00am','11:00am-1:00am','Hofbrauhaus',36),

('Rockmill Tavern','(614)732-4364','An elegant gastropub serving up a wide variety of house made beers in Columbus, Ohio','10:00am-9:00pm','CLOSED','CLOSED','11:00am-9:00pm','11:00am-9:00pm','11:00am-12:00am','11:00am-12:00am','Rockmill',37),

('Zen Bee Meadery','(614)526-4626','We are a Family enterprise and start up business who discovered the glory of mead back in 2010 and fell in love with it. Starting with humble home brewing adventures with my son, it was around 2016 that it became our goal to bring a great tasting beverage to the marketplace and spread awareness for the unique drink of the gods (mead)... thus the adventure of Zen Bee Meadery began',
'CLOSED','PLEASE CALL','PLEASE CALL','PLEASE CALL','PLEASE CALL','PLEASE CALL','4:00pm-7:00pm','ZenBee',38),

('Galena Brewing Company','(614)392-1430','It all started over a couple of beers...as do all great ideas. Walt Chrysler had a vision...to create a brewery that creates beers the people want',
'12:00pm-6:00pm','CLOSED','CLOSED','CLOSED','4:00pm-9:00pm','3:00pm-10:00pm','12:00pm-9pm','Galena',39),

('Uptown Deli and Brew','(614)891-2337','Uptown Deli and Brew opened in December 2014 and serves carefully crafted sandwiches, soups and salads as well as offering a market aspect with artisan meats, cheeses and breads. The deli is a modern interpretation of the old world market with European style patio seating viewing State Street',
'11:00am-9:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-10:00pm','11:00am-12:00am','11:00am-12:00am','UptownDeli',40),

('BJ''s Restaurant and Brewhouse','(614)885-1800','Since our humble beginnings back in 1978, we’ve continued to refine our brewhouse experience to make BJ’s a place where you can make the most of any meal. We want BJ’s to be a place where the moment you leave is the moment you plan on coming back',
'11:00am-10:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-12:00am','11:00am-12:00am','BJRestaurant',41),

('Whistle and Keg','(614)869-0013','In 2017 Mike and Joe Thomas stumbled into a bar near Atlanta (stumbled because they had been drinking) and unbeknownst to them at the time, the bar was powered by self-service technology. They had such a great time as customers that they decided to bring a similar system back to their hometown of Youngstown, Ohio',
'12:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-11:00pm','3:00pm-12:00am','3:00pm-2:00am','3:00pm-2:00am','WhistleKeg',42),

('Gemut Biergarten','(614)725-1725','Here in the biergarten we encourage cheer, leisure, and distraction from the busy life. Please relax and take pleasure in our refreshing libations and well-crafted fare. Enjoy good company while you’re with us, whether that be with your family, friends, neighbors, or the simple company of a crisp lager',
'10:00am-12:00am','CLOSED','11:00am-12:00am','11:00am-12:00am','11:00am-12:00am','11:00am-12:00am','10:00am-12:00am','GemutBiergarten',43),

('BrewDog Dog Tap Columbus','(614)908-3051','We decided the best way to fix this undesirable predicament was to brew our own. Consequently in April 2007 BrewDog was born. Both only 24 at the time, we leased a building in Fraserburgh, got some scary bank loans, spent all our money on stainless steel and started making some hardcore craft beers',
'11:00am-10:00pm','11:00am-10:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-11:00pm','11:00am-12:00pm','11:00am-12:00pm','BrewDog',44),

('The Daily Growler','(614)706-2749','The Daily Growler is a celebration of fresh craft beers. We are a family owned business that opened its first location in Upper Arlington in 2012. We’ve made a commitment to ourselves and to our customers to serve only the best and freshest beer available, with a focus on local and regional craft breweries',
'12:00pm-6:30pm','CLOSED','CLOSED','1:00pm-9:00pm','1:00pm-9:00pm','12:00pm-9:30pm','12:00pm-9:30pm','DailyGrowler',45),

('Rockmill Brewery','(740)205-8076','We are a family owned small production brewery located on a former horse farm near Lancaster, Ohio','12:00pm-6:00pm','CLOSED','CLOSED','CLOSED','CLOSED','3:00pm-9:00pm','12:00pm-9:00pm','RockmillBrewery',46),

('The Winemaker''s Shop','(614)263-1744','Since 1974, the Winemaker''s Shop has been owned and operated by a team of studied and knowledgeable beer and wine lovers, Scott Francis and Nina Hawranick and now their sons, Alex and Ivan Francis. In 1974 when this business opened up, homebrewers and winemakers were far and few between, primarily because there wasn''t high quality small batch supplies. But over the last 40 years, things have changed drastically. 40 years ago there was one hop variety, Cascade. Now, we carry about 50 varieties! 40 years ago there were maybe 12 varieties of wine concentrates, now we have over 40! 40 years ago there were only 116 breweries across the states, now there are over 3,000',
'12:00pm-5:00pm','CLOSED','11:00am-6:00pm','11:00am-6:00pm','11:00am-6:00pm','11:00am-6:00pm','10:00am-5:00pm','WinemakersShop',47),

('World Of Beer','(614)476-2962','Our ancient ancestors were onto something when they started making beer and gathering together. That''s why we make it our purpose to create events that you and your friends will enjoy week in and week out, including exclusive Tap Takeovers from Breweries, Themed Trivia like The Office, & Live Music',
'11:00am-2:30am','2:00pm-2:30am','2:00pm-2:30am','2:00pm-2:30am','2:00pm-2:30am','11:00am-2:30am','11:00am-2:30am','WorldOfBeer',48),

('Taft''s Brewpourium', '(614)489-8900','Based in the great state of Ohio, Taft’s Brewing Co. is an award-winning brewery that’s been pouring fresh, flavorful libations and serving fine fare since its founding in Cincinnati, Ohio in 2015',
'12:00pm-9:00pm','CLOSED','4:00pm-11:00pm','4:00pm-11:00pm','4:00pm-11:00pm','11:00am-12:00am','11:00am-12:00am','TaftBrewporium',49),

('Eldridge & Fiske Brewing Company','(614)829-3186','Eldridge & Fiske is located in downtown Lithopolis - a quaint but lively town southeast of Columbus Ohio. Owned by long time friends Dave Eldridge and Tim Fiske, the taproom and brewery was built inside a century old building best known in years past as the town hardware store. The duo designed the space with the intention of creating a neighborhood hangout where residents and visitors could meet, mingle and have a good time',
'2:00pm-10:00pm','CLOSED','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-10:00pm','4:00pm-12:00am','2:00pm-12:00am','EldridgeFiske',50),

('Mad Moon Cider Taproom','(614)354-8171','Mad Moon began hard cider production in a modest warehouse in 2014. We aspire for an artful production of fresh-pressed, hard apple cider. Crafted from locally grown apples; brewed in small unfiltered batches. Our goal is to produce amazing, creative flavors drawing inspiration from the craft beer revolution. We strive to support the local market by using Ohio apples and other local products',
'1:00pm-6:00pm','CLOSED','CLOSED','CLOSED','CLOSED','4:00pm-9:00pm','2:00pm-9:00pm','MadMoon',51),

('Crooked Can Brewing Company','(614)664-6023','Our customers constantly remind us of why we started this brewery. We wanted to make an amazing local Florida beer AND create an enjoyable drinking experience! Now, with local partners in Central Ohio we can bring our award-winning brews to THE OH-IO',
'11:00am-7:00pm','5:00pm-10:00pm,','5:00pm-10:00pm','5:00pm-10:00pm','5:00pm-10:00pm','4:00pm-11:00pm','2:00pm-11:00pm','CrookedCan',52)

;

INSERT INTO beers(beer_name,beer_type,description,abv,brewery_id, beer_image)
VALUES
('Seventh Son','Strong Ale','American Strong Ale, 40 IBU, seven hops, aromatically hoppy, rich malts, jammy, not bitter, nutty','7.7%',1, 'seventhSon'),

('Humulus Nimbus','Pale Ale','Strong Pale Ale,53 IBU, berry-piney hops and light malts, toes the line between IPA and pale ale','6.0%',1, 'humulus'),

('Scientist','IPA','IPA, 70-80 IBU, constantly shifting IPA, each batch w/one ingredient changed from the last','7.0%',1, 'scientist'),

('Stone Fort','Brown Ale','Oat Brown Ale, 28 IBU. A toasty brown ale with a round, full mouthfeel and a pleasant aroma. Light roasted notes, leather, biscuit','5.0%',1, 'stoneFort'),

('Proliferous','Dipa','DIPA,85 IBU, lots of resinous pine, very citrusy and tropical in the nose','8.3%',1, 'proliferous'),

('Assistant Manager Beer','Golden Ale','Golden Ale, 36 IBU, crisp, floral hops with a breakfast cereal-like maltiness. One of our most crushable beers','4.5%',1, 'assistant'),

('Quadrahopic','IPA','The fifth release in our new quarterly Quadrahopic IPA series, featuring a new blend of hops with each batch, Quadrahopic version 103 is an immersive Lupular experience of the senses. Four hop varietals —Chinook, Azacca, Cascade, and Simcoe— harmonize in perfect balance, building toward a hoppy crescendo of peach, pine, and grapefruit','6.7%',2, 'quadrahopic'),

('Stiff-Arm','IPA','Like a palm to your jaw, our American IPA delivers a jolt of hoppy goodness. An ale as well-rounded as any All-Timer, our Stiff-Arm IPA combines all of its talents: All American hops, fragrant aromas of citrus and pine, a clean finish, and an uncanny sense of balance provided by a nice malt backing. It’s a classic American beer that will have you striking the pose year-round','6.4%',2, 'stiffArm'),

('Greenskeeper','IPA','Our Session IPA is brewed with leisure in mind. Whether you are making the turn or watching the game with old friends, it’s the perfect complement to an easygoing lifestyle. Big citrus hop flavor that doesn’t overpower, medium body, and a low ABV allow for prolonged enjoyment through even the longest of afternoons. This is an IPA that deserves a day off','4.7%',2, 'greenskeeper'),

('Concentrate','IPA','The fourth and final 2019 release in our new quarterly Concentrate Hazy IPA series, brewed with both traditional and Cryo-Hops (concentrated lupulin from whole-leaf hops containing resins and aromatic oil) to deliver massive amounts of juicy, hoppy aroma and hop flavor. best enjoyed fresh and straight from the can','7.5%',2, 'concentrate'),

('Pool Party Pilsner','Pilsner','Whether at a five-star resort or in your neighbor’s back yard, no pool party is complete without the crisp snap of a cold beer. This Pilsner takes its traditional base south of the equator with the addition of Southern Hemisphere hops known for their subtle aromas of tropical fruit and citrus—creating a highly drinkable and incredibly refreshing beer. So, when the weather heats up, throw on some sunscreen, hide your wallet in your shoe, grab a pils, and dive in head first','5.4%',2, 'poolParty'),

('Urban Somberero','Lager','Combining the spirit of Old Mexico with a little big city panache, Urban Sombrero is a refreshing, easy-drinking, cover-worthy Mexican-Style Lager brewed for Year-Round sipping. Liberty hops add a floral bouquet and hint of spice to this classic brew. Best enjoyed ice cold and fresh. No lime necessary. Vaya con Dios','5.7%',2, 'urbanSombrero'),

('One Goal, One Rye''d','Rye Pale Ale','One Goal, One Rye’d is brewed in support of cancer research. This Rye Pale Ale offers up a bit of spice from the malt that pairs nicely with notes of lemon and grapefruit. $1.00 from each six pack sold ­and $1.00 from each taproom pour goes directly toward Pelotonia’s goal of ending cancer once and for all','5.9%',2, 'oneGoal'),

('Blackberry Jamble Blackberry Ale','Ale','The warm moonlit nights of a midwest summer are an invitation to get the band back together, tune up the strings, and gather ’round the fire. Our Blackberry Ale is a friendly companion for dog day rambles, ambles, and jambles of all varieties. It is An easy drinking ale whose fresh blackberries lend it an extra kiss of summer. Grab one from the cooler and sing along',
'5.5%',2, 'blackberryJamble'),

('Massive Juicy Pale Ale','Pale Ale','Chosen from four recipes by the passionate supporters of Columbus Crew SC and brewed with Club and City in mind, Massive is a Juicy Pale Ale with Mosaic, Citra, and Cashmere Hops','5.0%',2, 'massive'),

('Beard Crumbs','Stout','Beard Crumbs is a smooth dark stout teeming with notes of chocolate, coffee, and Packing an extra punch of holiday cheer via the addition of caramelized raisins. It delivers the joy of an oatmeal raisin cookie, minus the crumbly clean up. It’s a festive ale that’s bound to put the Scroogiest Grinch In the holiday spirit','6.8%',2, 'beard'),

('Blueberry Tea Beer','Tea','If you want to give your taste buds a flavor eruption, you need to jolt them with the  right blend. When we combined juicy and succulent blueberries with small hints of  lavender, we knew we did the right thing. With the first sip, you understand just  how much you’ve been missing out on. The touch of lavender doesn’t just complement succulent northern blueberries; it takes the taste to previously undiscovered heights','5.0%',3,'Blueberry'),

('Black Cherry Bourbon Barrel Tea Beer','Tea','If you think that black cherries are only good for decorating your cocktail, this beer  will change your mind in a flash. This brew delivers the extraordinary flavor  combination of cherries and high-quality bourbon with the alcohol content of beer.  Cherry and bourbon seem to be made for each other when you merge this brew  into one beer mug. If this is not enough for you, we added a touch of vanilla, to  enrich the flavor even more','9.2%',3,'BlackCherry'),

('Blood Orange Tangerine Tea Beer','Tea','Who said oranges and beer are not compatible? The tart citrus created by blood  oranges and delectable tangerines make this beer flavor a favorite for a hot summer  day. Likewise, this brew can bring you the forgotten touch of sun in the middle of a taste of our Mango Hops beer will leave you desiring more. This beer will bring the  joy of a tropical paradise to the comfort of your own home!','5.0%',3, 'BloodOrange'),

('Dalypalmer Tea Beer','Tea','Our DalyPalmer is par for the course. With a more pronounced tea flavor with  nuances of tangy lemonade, DalyPalmer will be your new cup of tea. No need to  maintain a stiff upper lip while imbibing. Available Spring/Summer','4.0%',3,'Dalypalmer'),

('Mango Tea Beer','Tea','The tropical mango flavor is a rare guest in a beer glass. Mango Hops are an opportunity to enjoy the combination','8.0%',3,'Mango'),

('Cranberry Tea Beer','Tea','We use the lush juice of ripe cranberries to create this refreshing seasonal beer. Antioxidantrich Cranberry is bursting with flavor and has a delightful tart and crisp finish','5.0%',3,'Cranberry'),

('Peach Tea Beer','Tea','After imbibing this tasty concoction, you will think that our peach beer is a peach. This zesty beer is prepared by fermenting juices of peach with tea. As you imbibe the beer the sweet and tangy taste of the peach will dance on your palate in a swirling crescendo of flavor. This brew will change your perceptions “Is this 8% ABV beer or just dangerous peach tea”. You can drink it as is or mix it with champagne to make a Peach Bellini','8.0%',3,'Peach'),

('Daybreak','Coffee Ale','Confusing to the senses in the best way possible, Daybreak’s clarity and golden color belie the smooth coffee presence inside. Brewed with local One Line Coffee’s rotating House roast and the finest vanilla beans','5.8%',4, 'Daybreak'),

('Heartlandia','Lager','Ohio is the heartland, and this lager is at the heart of our great state’s beating pulse for independently crafted and artfully designed beer. Ohio grown barley and hops lay the groundwork for this thirst-quenching light beer that’s fit for any occasion','4.2%',4,'Heartlandia'),

('Pack IPA','American IPA','From our pack to yours, we invite you to share and enjoy this IPA wherever your path leads you. Brimming with Citra, Mosaic, and Amarillo hoppy goodness, Pack is the perfect companion for any and all awaiting adventures','6.8%',4,'PackIPA'),

('Blackberry Red Legacy','Flanders','Barrel-Aged Flanders-Style Red with Blackberries','8.3%',4,'RedLegacy'),

('Coconut Cream Pie','Ale','Coconut Vanilla Cream Ale','5.0%',4, 'CoconutCreamPie'),

('Hop Harmonics','IPA','Barrel-Aged Brett IPA w/ Mandarina Bavaria','7.6%',4, 'HopHarmonics'),

('Dire Wolf','Imperial Stout','Imperial Stout','10.8%',4,'Direwolf'),

('Limit Break','Sour','Blackberry Lime Sour','4.0%',4, 'LimitBreak'),

('Five','Pale Ale','Easy drinking dry-hopped pale ale, showcasing aromas of tropical fruit, citrus and herbs. Drinks like a session IPA, but with the body to balance the hops','5.5%',5,'Five'),

('Rise','American IPA','An American IPA with aggressive bitterness, floral and citrusy hop aromas balanced with a biscuity maltiness','6.8%',5,'Rise'),

('Honey Wheat','Wheat','Smooth and balanced with a soft malty finish. Brewed with Ohio sourced honey and malt from Marysville, OH','5.8%',5,'HoneyWheat'),

('Life','Ale','An American ale made light and bubbly with a blend of champagne yeast','7.5%',5,'Life'),

('Cover Crop','Ale','A collaboration between the Ohio Farm Bureau and North High Brewing to commemorate the Ohio Farm Bureau’s 100 year anniversary. An easy drinking ale brewed with all Ohio malt and hops','4.5%',5,'CoverCrop'),

('Yeoman Pils','Pilsner','European style pilsner','5.1%',5,'YeomanPils'),

('Spaceship # 6', 'American IPA','Named after a Lineage grundy tank that shipped from the West coast, this American IPA is hopped with Mosaic, Simcoe, and Citra to build a complexity of tropical fruit flavors and aroma with a resiny finish','7.2%',6,'Spaceship6'),

('Oscura Obscura','Nitro Blonde Stout','We took our favorite stout recipe, made it more toasty, removed all roasted malt and added locally roasted coffee from One Line Coffee, organic cocoa nibs and vanilla beans to create a deliciously confusing, creamy chocolate and coffee forward blonde beer',
'7.9%',6,'ObscuraObscura'),

('Channing Tater','European Lager','We used 100 lbs of potatoes from Three Creeks Produce, a healthy hand of Czech Saaz hops and a Famous Danish lager strain to create this crisp refreshing beer','6.0%',6,'ChanningTater'),

('Monochromatic Moonmist','IPA','Brewed from our favorite aromatic New England yeast strain, this IPA is full of pineapple flavor. A pillowy soft mouth feel and lower bitterness is going to make MMM a new brewery favorite','7.0%',6,'MoonMist'),

('Hall Pass','Belgian Pale Ale','Our take on a Belgian style pale ale. Full of tasty toasty notes with a hint of caramel that finishes dry. The traditional abbey yeast provides a nice spicy character with a little fruitiness. A great beer to enjoy with food and friends','5.1%',6,'HallPass'),

('Loughran''s','Irish Stout','Named after Mike''s Irish grandmother and pronounced (lock-ran). This traditional dry Irish stout is roast forward with notes of coffee and a bit of toasted malt. This stout is only served on nitrogen, giving it a wonderful light and creamy mouthfeel',
'5.3%',6,'Loughrans'),

('Rory''s Rayge','Irish Red Ale','Named after our late Whippet, Rory and local bicycle advocate Ray George. This Irish Red is a touch bigger than a traditional Irish Red. Our take is full of toasted, biscuit flavors and notes of toffee in the finish. Sláinte!','6.7%',6,'RorysRage'),

('Mimring','Danish Amber Lager','Named after a Danish deity that also inspired a Clintonville street of the same name. This Amber lager is smooth, toasty and finishes with a touch of sweetness. Fermented with our favorite Danish lager yeast and lightly hopped with Tettnang hops',
'6.9%',6,'MImring'),

('Nova Scuti','Belgian Blonde','Named after a comet discovered by a Belgian Astronomer, this Belgian Blonde will take you into orbit. Brewed with a heavy hand of El Dorado hops hops, which give this Belgian Blonde a wonderful fruity but dry finish','7.7%',6,'NovaScuti'),

('Aloha Bernice','Pineapple Bernice','Aunt Bernice makes a break for the islands. We use a mix of different lactobacillus cultures to create a nice acidity and our aromatic yeast strain for added fruity notes. We then added pineapple for a tropical flavor to get you in the mood for spring','4.4%',6,'AlohaBernice'),

('India Pale Ale','IPA','India Pale Ales were originally brewed to withstand long ocean voyages by increasing the quantity of hops and malt used in their Pale Ale predecessors. Our take on IPA pours pale orange with a balanced malt presence and finishes with a combination of grapefruit, pine, and tropical fruit notes from Pacific Northwest grown hops','6.3%',7,'IndiaPaleAle'),

('Yakima Fresh','American IPA','Our annual wet-hopped American IPA features hops that were shipped directly from the farm to our brewery and used within 24 hours after being picked in the field. This year’s batch (2018) was brewed with fresh Mosaic® hops from B.T. Loftus Ranches in Yakima, WA','7.5%',7,'YakimaFresh'),

('Thunderlips','Pale Ale','This deep golden Pale Ale is brewed with Simpsons Golden Promise malt to create a backbone for thunderous additions of Mosaic® and Idaho 7™ hops','5.3%',7,'Thunderlips'),

('Skateland','Blonde Pale Ale','The newest addition to our rotating Pale series, Skateland is a blonde pale ale featuring a slightly sweet malt profile with a balanced bitterness. The hop flavors and aromas are of tropical fruit, oranges, and stone fruit',
'5.3%',7,'Skateland'),

('Citra Noel','Ale','Welcome to a new holiday tradition. Our mahogany colored ale features tropical fruit notes from Citra® hops and has a deep rich malt character','7.3%',7,'CitraNoel'),

('Festbier','Amber Lager','Our Festbier is inspired by the Oktoberfest beers of Germany. It is brewed with imported specialty malts to create a medium bodied, malty, amber lager with a smooth finish','5.3%',7,'Festbier'),

('Lucy','Belgian style IPA','Our Belgian style IPA is brewed with traditional Trappist ale yeast. This deceptively strong ale is hopped with a blend of new world hops to enhance the spicy aromatics from the Belgian yeast','9.0%',7,'Lucy'),

('Mini Bomb Blonde Ale','Blonde Ale','This spunky little offering proves blondes DO have more fun. Light cereal malts and citrus are the star of this party that go on all night and every day','5.0%',8,'MiniBombBlonde'),

('Pineapple Pale','Pale Ale','This classic pale ale is backed up by a burst of fresh ripened pineapple. Golden straw hue, stark white head and a refreshing bitter finish come together around a juicy balance of fresh fruit and pineapple','5.5%',8,'PineapplePale'),

('Hazy Miss Daisy','IPA','With all the “Haze Craze”, one might think we just jumped on the band wagon. However, we have been brewing this bright beauty for a couple years. She boasts a tart juiciness that derives from Amarillo and Mosaic hops. The light haze you see from the east coast yeast with a slight bit of maltiness makes this brew a fan fave','7.0%',8,'HazyMissDaisy'),

('Heavy Hearted Amber','Amber','A balanced beauty with notes of biscuit, caramel, toffee, and toast, with a slight hop bite','8.0%',8,'HeavyHeartedAmber'),

('Wee Heavy','Scottish Ale','Scottish ale is a beauty full of toffee, caramel, and dark fruit notes and grassy, floral hops','10.0%',8,'WeeHeavy'),

('BamBaLam','Imperial Stout','This seasonal favorite features flaked oats, locally roasted Crimson Cup Coffee, and Ghirardelli chocolate','10.0%',8,'BamBaLam'),

('Elegant Hoodlum','Stout','A rich, dark stout with a light smoke character that blends with roasted malts, providing flavors of caramel, chocolate and coffee. The medium-bodied stout finishes with slightly sweet, making it easy to drink',
'7.0%',9,'ElegantHoodlum'),

('Fisticuffs IPA','IPA','An IPA that isn’t trying to be the biggest, bitterest hoppy beer out there. A blend of citrus and piney hops is countered by flavorful malt to give this rich, orange peel-colored beer a finish that''s hoppy yet refreshing',
'7.0%',9,'Fisticuffs'),

('Coop Looter','Saison','An American-style saison made with whole white wheat and aromatic Belgian malts. The beer has a champagne-like effervescence, a subtle tropical fruit aroma and a flavor with hints of grapefruit and cracked pepper',
'6.0%',9,'CoopLooter'),

('Journeyman','Altbier','A light, malty and crisp altbier brewed in the traditional German beer style with all-American ingredients. The refreshing brown ale has a bread-like maltiness and hints of dark fruit','5.0%',9,'Journeyman'),

('OH Country','German Ale','A light and easy drinking German style ale. Refreshing to novice and experienced craft beer drinkers alike','4.5%',9,'OHCountry'),

('Punch Out Pale Ale','Pale Ale','Rich full flavored American style pale ale, packing the punch of an IPA at a lower ABV.  A balanced malt base packed full of resinous hops', '5.0%',9,'PunchOut'),

('Pixelated Sun Hoppy Wheat','Wheat','A smooth, citrusy hoppy beer that’s balanced, not bitter. Citrus hops highlight the front of the beer and subtle notes of wheat can be tasted in the finish','6.0%',9,'PixelatedSun'),

('Squashing Pumpkins','Pumpkin Ale','A fall-flavored, medium-body beer brewed with Ohio grown butternut squash and pumpkin pie spice. A fuller base flavor and less spice than most beers of this style makes for an easier drinking seasonal beer','6.0%',9,'SquashingPumpkins'),

('Three Frogs No Coast IPA','IPA','This juicy and dank triple-hopped IPA has a drinkable malt balance brewed specifically for the Midwest','6.9%',10,'ThreeFrogs'),

('West Coast IPA','IPA','We dialed up the juice with this citrus-forward West Coast IPA perfectly balanced with floral hop aromas','6.0%',10,'WestCoastIPA'),

('Hazy Hefer Hefeweizen','Hefeweizen','An easy-drinking German wheat beer that''s traditionally hazy with a sweet, crisp finish','5.5%',10,'HazyHefer'),

('Midnight Light - Light Lager That Snaps','Lager','I pledge, that with drinking this Midway Light, I will do my best to forever obey the drink responsibility club','4.2%',10,'MidnightLight'),

('Bleeding Buckeye Scarlet Ale','Red Ale','THE All-American Red Ale that''s surprisingly drinkable while rich with malt flavor','5.5%',10,'BleedingBuckeye'),

('Red, Wheat and Blue','Saison','An effervescent Summer Saison brewed with fresh blueberries and raspberries','5.9%',10,'RedWheatBlue'),

('Truculent','Blonde Ale','Our OG blonde is back! The Chardonnay character and American oak shine through brightly, creating a complex aroma. The rich oak flavor is balanced by a subtle acidity and culminates with a dry finish',
'5.3%',11,'Truculent'),

('Here''s Your Hops, Pucker', 'IPA',  'Our first collaboration with DankHouse Brewing Co. and the perfect harmony of hops and sour. Passion fruit and citrus are apparent in flavor with a hoppy nose','6.7%',11,'HeresYourHops'),

('Indolence','American Wild Ale','The aroma of passion fruit and the dichotomy of sweet and sour unite to create something unlike any beer we have ever tried. The balance of lactose, vanilla, and passion fruit impart a flavor that is truly greater than the sum of its parts','5.6%',11,'Indolence'),

('Sybarite With Cherries','American Wild Ale','A transcendent cherry aroma with subtle oak and brett character. The cherry flavor is reminiscent of pie and is balanced by acidity and oak tannin','5.6%',11,'Sybarite'),

('Avaricious','Sour','This brown sour will get you feelin the holiday spirit: apricot, nutmeg, clove, vanilla, and cinnamon. The aroma is a wonderful blend of apricot and clove. The flavor is complex, each ingredient shining through. Sip on this while your relatives debate politics. They’re wrong anyway',
'5.8%',11,'Avaricious'),

('Antonomasia','American Wild Ale','The perfect harmony of sweet, sour, and spicy. Chocolate, cinnamon, and vanilla dominate the aroma while the heat from the habanero warms your frozen heart. You won’t believe your taste buds','5.6%',11,'Antonomasia'),

('Magnanimous Oyo','Sour','Our dark sour aged in wine barrels for a year and finished in honey vanilla bourbon barrels from Middle West Spirits. The complexity of its production is mirrored by its aroma and flavor as the acidity is balanced by the subtle sweetness of brown sugar, dates, and caramel','10.3%',11,'Magnanimous'),

('Magnanimity','Sour','A culmination of alcohol, alcohol, and alcohol. A blend of dark sours aging in apple brandy, port, and rum barrels. The acidity is assertive with a hint of chocolate - the perfect blend of sweet & sour','6.8%',11,'Magnanimity'),

('Radioactive Windmill Experimental Milkshake IPA', 'IPA','Our offering has a fluffy and creamy mouthfeel from generous additions of Ohio''s Haus Malts Malted Wheat and Malted Oats, and lots of lactose from Wisconsin, America''s Dairy land. This beer has plenty of tropical fruit aroma from late addition hops, and negligible bitterness. We compliment a heavy handed dose of fruit and/or botanicals with evident but subtle vanilla. We look forward to experimenting with this ridiculously delightful beer','6.5%',12,'RadioactiveWindmill'),

('Tour De Hops #12','Double IPA','Our Experimental Double IPA will feature different hops in each iteration. It''s a warming companion to Blurry Bike, our core IPA. Experimenting with hops helps keep the brewer''s job interesting, we hope to keep our customer''s curious palate interested,too. Varying combinations of citrus, pine, tropical fruit and spicy hop flavors are almost balanced by rich British malt, american oats and a not so sneaky sensation of peppery alcohol. Enjoy the Tour, but don''t drink and ride','8.7%',12,'TourDeHops'),

('Barley''s Blood Thirst Wheat','Wheat','Winner of our 14th annual Homebrew Competition in 2009. Lloyd Cicetti''s Wheat Beer with Blood Oranges is a citrusy and supremely refreshing with floral notes thanks to Sicillian blood orange zest added to the brew kettle and puree added during and after fermentation. This hefeweizen has hints of fruity esters and spice from Bavarian wheat yeast','5.0%',12,'BloodThirstWheat'),

('Barley''s Pilsner','Pilsner','A great introduction to craft brewed beer, since there is enough malt and hop flavor in our Pilsner to keep even the most sophisticated beer drinkers coming back for more','4.8%',12,'Pilsner'),

('Alexander''s Russian Imperial Stout','Imperial Stout','The first time we brewed the Russian we didn''t think we''d get all the grain in the mash tun. Until Ohio liquor laws allowed us to exceed 6% alcohol by weight, this was as big as brewing workouts got here. The result is a roasty, fruity beer that you might be tempted to eat with a spoon','7.6%',12,'AlexandersRussian'),

('Rake The Woods','Porter','A portion of our latest batch of chocolaty, caramelly Porter took a detour on it''s way to the taps. Months ago we filled two 60 gallon barrels that had previously aged California Syrah. The barrels contribute noticeable oak, tannin, and vanilla notes. The wine in the wood contributes subtle dark fruit (blueberry and cherry come to mind) and a hint of tobacco','6.3%',12,'RakeTheWoods'),

('Yann Bandana','IPA','Collaboration IPA with Hoof Hearted. Big juicy ipa with Mosaic, Galaxy, and Calypso hops','7.5%',13,'YannBandana'),

('Cowboy Konkey Dong','IPA','An XXXTRA fussed on version of classic Konkey Dong','8.0%',13,'KonkeyDong'),

('Did We Just Become Buddy Buddy?', 'Triple IPA','Triple Dry Hopped Triple IPA with Citra & Sabro hops A souped up version of our Buddy Cop DIPA','10.0%',13,'BuddyBuddy'),

('Did We Just Become Best Fwendz?','Double IPA','Double IPA with El Dorado & Galaxy hops','8.0%',13,'BestFwendz'),

('Everybody Wants Some','Double IPA','Double Dry-Hopped Double IPA with Nelson Sauvin Hops','8.0%',13,'EverybodyWantsSome'),

('Key Bump','IPA','Dat froot forward cousin to Dragonsaddle is Triple Dry Hopped with a mountain of #Elmomocoe hops','10.5%',13,'KeyBump'),

('Blockbuster Night','Sour','Aromas of stone fruit and subtle sweet vanilla give way to a bright tart flavor. Generous amounts of wheat lighten the body for this refreshing sour','4.25%',14,'BlockbusterNight'),

('Orange Blossom Gose','Gose','Gose-style sour brewed with artisanal sea salt and orange zest to be a thirst-quenching, sessionable warm weather beer','4.2%',14,'OrangeBlossom'),

('Haze Jude','IPA','Brewed with Simcoe and Michigan Chinook, this haze-filled wonder is a pineapple bomb that drinks smooth and is citrus Juicy','6.8%',14,'HazeJude'),

('Basic Lager','Lager','This drinkable American Lager is a collision of old and new world hops. Cold fermented with lager yeast originating from a 14th century german brewery. This easy-drinking lager hits subtle notes of cereal, floral, and soft spice',
'4.6%',14,'BasicLager'),

('Crop Top','Lager','This drinkable American Lager is a collision of old and new world hops. Cold fermented with lager yeast originating from a 14th century german brewery. This easy-drinking lager hits subtle notes of cereal, floral, and soft spice','6.5%',14,'CropTop'),

('Old Watch','Scotch Ale','Old watch Scotch Ale is the newest release from the Columbus Tap room. Pleasant notes of stone fruit, caramel, raisin, and a touch of smokiness balances this Autumn Ale perfectly. Medium body with a very low bitter profile, Old Watch might just be the best way to enjoy your next campfire. Cheers!','7.0%',14,'OldWatch'),

('Darkhous','Wheat','This Bavarian style dark wheat beer has flavors of banana clove and spices.  A treat for any kind of weather but especially cold weather nights','5.7%',15,'Darkhaus'),

('Golden Ale','Golden Ale','A beer celebrating the community''s success.  Designed as the perfect tailgate beer, this golden ale features Victory malt and Columbus hops','4.96%',15,'GoldenAge'),

('Altura/Latin Lager','Lager','Textured and refreshing lager, brewed with Patagonia malt from Chile and dry hopped for an aroma of lime zest and flavors of sweet corn tortilla','5.0%',15,'Altura'),

('Shaka Unfiltered IPA','IPA','Select hops from 3 separate continents provide an accenturated aroma of tropical fruit, while keeping bitterness, alcohol content, and multi base balanced','6.5%',15,'Shaka'),

('Landhaus Hefeweizen','Hefeweizen','This is a beer done in the traditional Bavarian style with more than 50% wheat malt and fermented with a yeast that produces strong bananas, clove and vanilla flavors','5.5%',15,'Landhaus'),

('Holy Ground Export Stout','Stout','Coffee and dark chocolate flavors give way to earthly hops and a velvety into finish.  We brew this transatlantic style with malt from Cork, Ireland','6.0%',15,'HolyGround'),

('Brewdog Hawkes Slam Funk','Cider','This high scoring blend uses classic apples picked from the orchard and applies both traditional and innovative reuses to amplify the funk quotient; full-bodied with a sweet start and tannic finish','6.5%',16,'BrewdogHawkes'),

('Columbus CBC IPA','IPA','Pale orange, with grapefruit, pine, and tropical fruit aromas. India Pale Ales were originally brewed to withstand long ocean voyages by increasing the quantity of hops and malt used in their Pale Ale predecessors','6.3%',16,'ColumbusCBC'),

('Fat Head''s Bumble Berry','Honey Blueberry Ale','Brewed with fresh harvested spring honey and infused with fresh blueberries. A light, refreshing ale with a nice blueberry aroma, crackery malt flavors, a hint of sweetness and a refreshing blueberry finish.','5.1%',16,'FatheadsBumbleBerry'),

('Great Lakes Conway''s Irish Ale','Irish Ale','Arrestingly smooth with a rap sheet of toasty biscuit and caramel malt flavors.','6.5%',16,'Conway'),

('Homestead Beach Bummin'' ','Lager','A Pacific lager brewed with rice','4.7%',16,'BeachBummin'),

('Homestead Horizon','IPA','Off in the hazy distance, where the earth meets the sky, lives a beer loaded with fresh, juicy flavor from the bountiful selection of hops. Horizon Hazy IPA is bold, smooth and adventurous just like you!','7.0%',16,'Horizon'),

('Black Bones IPA','American Black Ale','Black barley and chocolate malts meld with Cottage, Columbus and Lemondrop hops for a rich drinking experience.','5.8%',17,'BlackBones'),

('Buckeye Blonde','American Blonde Ale','American Blonde Ale','5.9%',17,'BuckeyeBlonde'),

('Chai-Son','Saison','Belgian Saison','5.6%',17,'ChaiSon'),

('Cherrywood Smoked Porter','Porter','Smoke Porter','6.5%',17,'Cherrywood'),

('Cinilla Brown Ale','Brown ALe','American brown ale','4.5%',17,'Cinilla'),

('Honey Blonde Ale','Blonde Ale','American blonde ale','6.25%',17,'HoneyBlondeAle'),

('Oktoberfest','Festbier','A traditional Festbier that''s easy-drinking while robust with fall flavors','5.9%',18,'Oktoberfest'),

('Whetstone Lager','Lager','This is one helles of a lager. Crisp, clean, drinkable, and bursting with flavor. Just like you want it','4.8%',19,'Whetstone'),

('Alum Creek Beach Blonde','Blonde Ale','Refreshing, like your first dip in Alum Creek','5.4%',19,'AlumCreek'),

('Hero, By Enrique Iglesias','American Red Ale','American red ale','5.8%',19,'Hero'),

('Oln'' Tangy Blackberry','Sour','Our delicious house kettle sour just keeps getting better! This batch is fruited with Blackberries, and spiced with Coriander seed and Pink Himalayan Salt','4.6%',19,'OlnTangyBlackberry'),

('Sofia','IPA','All the way from Puerto Rico, this West Coast IPA is a first in Ohio - The Ohiorrican IPA','6.9%',19,'Sofia'),

('Susie','IPA','Have you ever wondered what a perfectly juicy and hazy NEIPA would taste like? Yeah, this is that','7.0%',19,'Susie'),

('Dead Man''s Throttle','IPA','Medium body, New England Style IPA - hazy, juicy, fruit forward flavor with hints of mango and lychee','6.3%',20,'DeadMansThrottle'),

('Full Steam','Saison','Low malt aroma with medium bitterness. Lighter body, bitter orange peel with residual sweetness','6.5%',20,'FullSteam'),

('Ashcat','Amber','Full bodied, butterscotch aroma and tastes with hints of caramel','5.2%',20,'Ashcat'),

('Searchlight','Shandy','Sweet peach shandy','4.0%',20,'Searchlight'),

('Cocomotive','Milk Stout','English Sweet / Milk Stout style','6.6%',20,'Cocomotive'),

('Waterloo Golden Lager','Lager','Golden lager','5.25%',20,'Waterloo'),

('Awake With A Start','Sour','Our red sour ale aged for 10 months in neutral red wine barrels and then steeped with Ethiopian coffee beans','6.4%',21,'AwakeWithAStart'),

('Misconstrued Sarcasm IPA','IPA','100% Brettanomyces fermented IPA, brewed with Amarillo hops and dry hopped with Azacca hops and even more Amarillo hops, imparting a floral and tropical aroma without extreme bitterness','7.2%',21,'MisconstruedSarcasm'),

('Bending Towards The Sun Berliner Weisse','Weisse','A light, tart, and refreshing Berliner Weisse. A German wheat beer fermented with German Kolsh yeast and Lactobacillus bacteria, available in ginger and blood orange','4.0%',21,'BendingTowardsTheSun'),

('Hiding In Plain Sight Gose','Gose','A light German wheat beer, brewed with sea salt and coriander. A slight tartness created by the addition of Lactobacillus','5.0%',21,'HidingInPlainSight'),

('Unforseen Consequences Golden Sour Ale','Sour','Unforeseen Consequences is our golden sour ale that is aged in wine barrels for at least ten months. It’s created through mixed fermentation using French Saison yeast, Brettanomyces yeast, and Lactobacillus bacteria, we currently offer this beer with dates','6.0%',21,'UnforseenConsequences'),

('Passage Of Time Red Sour Ale','Sour','Passage of Time is our red sour ale that is aged in wine barrels for at least ten months. A slight change from Unforeseen Consequences with the additional of caramel and debittered black grain in the mash. It’s created through mixed fermentation using French Saison yeast, Brettanomyces yeast, and Lactobacillus bacteria,
currently available in black currants and pomegranate','6.4%',21,'PassageOfTime'),

('Barrel Aged Imperial Stout','Imperial Stout','Silky, Rich and Smooth','10.4%',22,'BarrelAged'),

('Imperial Stout','Imperial Stout','Immense, Silky and Bittersweet','10.0%',22,'Imperial'),

('Irish Rye','Rye','Spicy, malty and light','4.5%',22,'IrishRye'),

('Kolsch','Kolsch','Crisp, Dry and Light','5.4%',22,'Kolsch'),

('Midwest Session IPA','IPA','Light, Citrusy, and Crisp','5.2%',22,'MidwestSession'),

('American Stout','Stout','Rich, Balanced, and Chocolatey','6.5%',22,'AmericanStout'),

('Juicy Hodad','IPA','Our Tropical Hodad has been treated up with LOADS more orange and passionfruit for a crushable Hazy IPA! Stop in to give it a try, only $4 during Happy Hour','7.5%',23,'JuicyHodad'),

('Jackie O''s Chomolungma','Brown Ale','his brown ale was brewed to commemorate the 2007 Lungevity Everest Expedition. The people of Tibet call Mt. Everest “Chomolungma,” and this exceptional ale carries on the spirit of the climb. Seven Malts, three hops, and 100 pounds of local wild flower honey give this ale an exceptional character. Baked muffins, dark fruit, bittersweet chocolate, rich honey and earthy subtle hops caress the palate.','6.5%',23,'JackieOChomulungma'),

('Kindred AU Golden Sour','Sour','Belgian Golden Sour Ale. AU was brewed in late 2016 and aged in wine barrels with our house culture mix for the past 14 months. It pours a bright hazy yellow, with a delicate floral lime aroma. Flavors of lemon zest and tropical fruit give way to a tart dry finish.','5.7%',23,'AUGoldenSour'),

('Kindred Waves Pale Ale','Pale Ale','American pale ale','6.3%',23,'WavesPaleAle'),

('Kindred Camp Fire','Ale','Blonde ale','4.2%',23,'Campfire'),

('Mad Moon Bad Blood Orange','Cider','Sometimes bad is better than good. Such is the case with this elegantly semi-dry hard cider. It has an invigorating citrus finish of blood orange. Try some, it’s yours for the picking.','6.0%',23,'BadBloodOrange'),

('Ill Manna Slamma','Blonde Ale','American blonde ale','4.8%',24,'IllMnnaSlanda'),

('Ill Manna Cranda','Shandy','Cranberry shandy','3.2%',24,'IllMannaCranda'),

('Cup Check','Lager','Helles lager','4.8%',24,'CupCheck'),

('Effe Off!','Hefeweizen','Hefeweizen','5.1%',24,'EffeOff'),

('Powell! Right in the Kisser','IPA','American-style IPA','6.9%',24,'Powell'),

('Turbid Reality Experience #2 - Galaxy & El Dorado','IPA','New England Style IPA','6.4%',24,'TurbidReality'),

('Coffee Crumble Vanilla Ale','Ale','Crumble with Transcend Monsooned Malibar Coffee','5.8%',25,'Coffee Crumble'),

('2 Tones IPA','IPA','Our flagship IPA','7.0%',25,'bar'),

('K Dawg Kolsch','Kolsch','Crisp and refreshing light German style beer','5.0%',25,'bar'),

('Mad Tree Happy Amber','Amber','This dry-hopped ale combines carmel and biscuit malt flavors in happy equilibrium with late addition American hops','6.0%',25,'HappyAmber'),

('March First Craft Lager','Lager','Pours a harvest gold with a frothy white head. A clean, malty aroma mixes with hints of orange marmalade and citrus. Notes of bready malts and roasted corn','5.1%',25,'MarchFirst'),

('Beulah Blonde','Blonde Ale','Light and refreshing blonde dry hopped with citra hops','4.3%',26,'BeulahBlonde'),

('Smoked Lager','Lager','Lager brewed with mesquite smoked malts','4.0%',26,'Smoked Lager'),

('Bearded Aviator','Red Ale','Red Ale - American Amber / Red','4.8%',26,'Bearded Aviator'),

('The Subscriber','IPA','Imperial/Double IPA','11.0%',26,'The Subscriber'),

('Cran-Ras-Pils','Pilsner','Pilsner infused with Cranberries and raspberries','4.0%',26,'CranRasPils'),

('Resillience Bushfire','Pale Ale','Australian pale ale','5.8%',26,'Resillience'),

('Cliff Hanger Marzen','Auburn Lager','GB Cliff Hanger Märzen is brewed to an auburn hue using dark roasted, caramelized, Munich malt. The malted barley unveils a caramel malt aftertaste, creating an exceptionally smooth finish.','5.8%',27,'bar'),

('Cave Raider Blonde Bock','Golden Bock Lager','While most bocks are dark, Gordon Biersch Cave Raider Blonde Bock pours a crisp, golden hue, with a rich, creamy head. The bold malt flavor is counterbalanced with just the right level of bitterness from the hallertau aroma hops.','7.0%',27,'bar'),

('Full Pressure Unfiltered Pilsner','Pilsner','Our Full Pressure Pilsner draws upon the five centuries of pure brewing tradition. Malt, hops and water. The yeast was naturally occurring. Our unfiltered pilsner leaves some of the yeast behind creating a flavor experience previously only available from beer tapped directly out of the aging tanks at the brewery.','5.0%',27,'bar'),

('Hefeweizen','Unfiltered Wheat','GB Hefeweizen pours a hazy golden orange color, with a large, fluffy white head. The aroma is slightly sweet and fruity, with the classic banana, citrus and bubble gum ester character of German Hefeweizen yeast, as well as a touch of toasted bread.','5.5%',27,'bar'),

('Prohibition Pilsner','Pilsner','Bavarian style pilsner brewed with German and Czech hops. Straw colored, crisp, malty, and clean','5.0%',28,'Prohibition Pilsner'),

('Scofflaw Scottish Ale', 'Scottish Ale','Scottish ales are more malty and softer than their British pale ale cousins. Ours has subtle caramel undertones','6.0%',28,'Scofflaw'),

('Two Pistols IPA','IPA','Somewhat similar to our Corbin''s Revenge IPA, but with more hops and citrus while maintaining a malty balance. Dry hopped with Centennial hops and brewed with Centennial, Columbus, and Cascade hops','6.25%',28,'TwoPistols'),

('Corbin''s Revenge IPA','IPA','This classic unfiltered IPA has a nice balance of hops and malt. Dry hopped with centennial hops and French oak for a delicate floral finish and subtle vanilla flavors. This is not a West Coast style hop-bomb','6.0%',28,'CorbinsRevenge'),

('Hatchetation Pale Ale', 'Pale Ale', 'This traditional ruby colored British pale ale has a medium malt and hop profile. Made with English malt, English Kent-Golding hops and English Yeast','5,5%',28,'Hatchetation'),

('Fortune Teller Macedonian Coffee Stout', 'Stout', 'Full bodied, malty dark ale with hints of chocolate and caramel, derived from five different barleys including: crystal malt, pale malt, chocolate malt, roast barley, black patent malt, and a blend of British and American hops. Infused with cold brewed Macedonian coffee','7.5%',28,'FortuneTeller'),

('Uncle Joe''s Irish Red Ale','Irish Red Ale','Flagship ale brewed with jumper berries','6.0%',29,'UncleJoesAle'),

('2 Tones IPA','IPA','Our flagship IPA','7.0%',29,'TwoTonesIPA'),

('Big Hawk Scotch Ale','Scotch Ale','Rich and malt forward strong ale','9.2%',29,'BigHawk'),

('Taco Pump Ne Oat IPA','IPA','Taco Tuesday benefit beer','7.5%',29,'TacoPumpNEOut'),

('UR Slack''n Belgian Strong Dark Ale', 'Belgian Strong Ale','Belgian dark fermented with saison yeast','10.3%',29,'URSlackN'),

('Return of the Living Red IPA','IPA','Balanced red IPA with kveik yeast','6.9%',29,'ReturnOfLivingRed'),

('Marty McFly-P-A','IPA','New England IPA','7.0%',30,'MartyMcFly'),

('NBA Jam Session','Blonde Ale','Session Blonde Ale','4.2%',30,'NBAJamSession'),

('Bonus Fruits','Gose','Cherry gose','5.0%',30,'BonusFruits'),

('Dawg Pound','Brown Ale','brown ale','5.25%',30,'DawgPound'),

('Don Flamenco','IPA','India pale ale','6.0%',30,'DonFlamenco'),

('Pokey','IPA','IPA with tangerine','7.2%',30,'Pokey'),

('Honest Wear','Sour','Sour Blond Ale with Ohio La Crescent wine grapes. Highly sour. Wine barrels','8.4%',31,'HonestWear'),

('Ginnie','Sour','Sour Blonde Ale. Moderately sour. Watershed gin barrels','5.25%',31,'Ginnie'),

('Wax Poetic','Sour','Sour Blonde Ales. Highly sour. Blend of several barrels','7.0%',31,'WaxPoetic'),

('Gingkyo','Saison','Brett Saison. Mildly sour. Oak Foudre','7.4%',31,'Gingkyo'),

('Sike! Tropical','Ale','Kettle soured, Kveik fermented ale with tropical fruits. Mildly sour','5.1%',31,'SikeTropical'),

('Razz Den','Weisse','Berliner Weisse with local red and black raspberries. Highly sour','7.2%',31,'RazzDen'),

('Phase 2','IPA','American IPA','6.5%',32,'PhaseTwo'),

('Trail Break','Lager','Helles Lager','5.0%',32,'TrailBreak'),

('Scioto Coast','IPA','Double IPA','8.5%',32,'SciotoCoast'),

('The Swell Line Series','Gose','Rotating Series of Heavily-Fruited Goses','6.5%',32,'SwellLineSeries'),

('Beta Flash','IPA','New England IPA','6.5%',32,'BetaFlash'),

('Californian Swell Line','Gose','2x Fruited Gose w/ Raspberry & Blackberry','6.5%',32,'CalifornianSwellLine'),

('2019 Blackjack','Mead','Crafted from locally sourced raw honey, blackberry and currant, Blackjack is a 21 on flavor. Our tart and earthy berry brew has full, smooth body from wildflower honey.The finish is slightly sweet','13.0%',33,'Blackjack'),

('2019 Bourbon Apple Pie','Mead','Our seasonal classic Apple Pie aged in Bourbon Barrels from Middle West Spirits. Our two favorite things. Together','15.0%',33,'ApplePie'),

('2018 Battle Axe','Mead','A sweet cranberry melomel infused with vanilla and juniper berries. Unapologetically tart upfront like cranberries with a smooth finish that is sweet and hints at the vanilla and juniper infusion','13.0%',33,'BattleAxe'),

('2019 Peach Rush','Mead','Fresh peaches fermented with Ohio wildflower honey. Minimal filtering preserves peach flavor. Semi-sweet','13.0%',33,'PeachRush'),

('Wild Ohio', 'Mead','A traditional mead made with Ohio wildflower honey. Light and delicate but not without attitude. Our mission statement in a bottle','13.0%',33,'WildOhio'),

('Honey Oak','Mead','Ohio wildflower honey traditional mead aged on French and American Oak. Pronounced honey nose. Flavors of caramel and woodiness are enhance by the oak. Semi-dry','13.0%',33,'HoneyOak'),

('Now We''re Talkin'' ','IPA','Tropical fruits & big hops','8.9%',34,'NowWereTalking'),

('Wanderlust','Ale','Golden, crisp, refreshing','5.0%',34,'Wanderlust'),

('Maggie Mae',' Irish Red Ale','Balanced malt, easy-drinking','4.7%',34,'MaggieMae'),

('Mayflower Macchiato','Milk Stout','Strong black coffee. Sweet Milk','7.3%',34,'MayflowerMayhem'),

('Shananigans','Cider','Pineapple cider','6.7%',34,'Shananigans'),

('Blueprint','Blueberry Blonde','A liquid blueberry muffin','5.0%',34,'Blueprint'),

('Hygge','IPA','Double dry hopped','5.5%',35,'Hygge'),

('Robert Burns Scottish Export','Cask','Served old school style','9.7%',35,'RobertBurns'),

('Saint Joan''s Revenge RIS','Nitro Stout','Smooth and Silky','11.7%',35,'SaintJohnsRevenge'),

('Saint Nick''s Winter Warmer','Stout','Our biggest holiday beer','11.4%',35,'SaintNicksWinterWarmer'),

('Centennial IPA','IPA','Our flagship IPA','7.6%',35,'Centennial'),

('MacLenny''s Scottish Ale', 'Scottish Ale','Amber/Copper Scottish ale','6.6%',35,'MacLennysScottishAle'),

('Original lager','Lager','A traditional full flavored German Lager with a crisp finish. The bier Hofbräuhaus has been famous since 1589','5.2%',36,'OriginalLager'),

('Hefe Weizen','Wheat','A specialty born in Munich – loved by the world. A fairly sweet old-style Wheat bier brewed to create a wonderful combination banana and clove flavor and aroma','5.4%',36,'Hefeweizen'),

('Dunkel','Dark Lager','For centuries Munich’s favorite bier. Dunkel translates to “Dark” lager. It is medium bodied, easy to drink, with simple roasted malt flavor and slight caramel undertones','5.5%',36,'Dunkel'),

('Marzen','Amber','Märzen is our “March” bier. This is an amber colored Bier with a rich malty character. There is a hint of hops and the overall profile is smooth and very drinkable','5.8%',36,'Marzen'),

('Belgian Pilsner','Pilsner','Crisp clean lager. Modeled after traditional Belgian Pils','4.8%',37,'BelgianPilsner'),

('Witbier','Wheat', 'Traditional spices, coriander & orange Peel. Crisp, clean refreshing body with citrus bouquet & subdued bitterness','6.0%',37,'Witbier'),

('Petite Saison','Saison','Subtle peach with pistachio and honey','6.0%',37,'PetiteSaison'),

('War On Wheat','Saison','Almonds with anise and distilled amber and gluten free','5.5%',37,'War On Wheat'),

('Saison Super','Saison','Magnified version of our flagship Saison with intensified hop & malt profile','10.0%',37,'SaisonSuper'),

('Dubbel','Belgian Double','Dark fruit, maraschino cherry followed by wet forest and mushroom','8.0%',37,'Dubbel2'),

('Braspberry','Mead','Blueberry and raspberry','6.5%',38,'Braspberry'),

('Pear of Peaches','Mead','Peaches and pears','6.5%',38,'PearOfPeaches'),

('White Rabbit','Mead','Carrot blossom cyser(hops)','6.5%',38,'WhiteRabbit'),

('Pink Zilla','Mead','Strawberry and vanilla','6.5%',38,'PinkZilla'),

('Jacked Cherry','Mead','Tart cherry (hops)','6.5%',38,'Jacked Cherry'),

('BB Bing','Mead','Mead with blackberries and sweet cherries','6.5%',38,'BBBing'),

('CURRENTLY NO BEER IS AVAILABLE','','','',39,''),

('Contradiction ESB (Extra Special Bitter)','ESB','Contrary to what their names imply, ESBs are not bitter in taste. "Bitter" is a British term for pale ale. Inspired by the famous Fuller''s ESB from England, our ESB is fermented with very similar yeast. It has a dark amber color and malty flavors','6.5%',40,'ContradictionESB'),

('BJ''s Abbey Normal Quad','Belgian Quad','A strong Belgian-style dark ale with sweet flavors of fig and plum balanced by hints of spice and a dry finish','9.5%',41,'AbbeyNormalQuad'),

('BJ''s Goliath Imperial Red IPA','Imperial IPA','A strong Amber Ale with six different malts and four hop varieties for intense depth of flavor. Rich caramel and dark fruit flavors from the malts combine with hop flavors of tropical fruit and citrus. The flavor profile is very malty, like Jeremiah Red®, while also very hoppy, like HopStorm® IPA','9.0%',41,'Goliath'),

('BJ''s Pirhana Pale Ale','Pale Ale','This hoppy ale is dry-hopped with the snappy flavor and bite of Cascade hops…for hopheads only!','5.7%',41,'Pirhana'),

('BJ''s Brewhouse Blonde','Blonde Ale','A light and refreshing pale beer in the style of a German Kolsch. Slightly malty with delicate hopping to balance. Well-conditioned for exceptional smoothness and drinkability!','4.7%',41,'BrewhouseBlonde'),

('BJ''s Hopstorm IPA','IPA','BJ''s own handcrafted classic American-style India Pale Ale made with six hop varieties. An intense hop aroma with balanced bitterness','6.5%',41,'Hopstorm'),

('Hart Hat Lager','Lager','This lager is brewed with Vienna Malt which is malty-sweet with gentle notes of honey, almond and hazelnut','5.0%',42,'HartHat'),

('Kinky Kiwi','IPA','Don''t let the name fool you, there''s no Kiwi fruit here. This IPA is brewed with the choicest hops, offering hints of lemon grass, from the island of New Zealand','6.0%',42,'KinkiKiwi'),

('Chocolate Banana Carnival Series','Blonde Ale','The Carnival Series puts a fun twist on your everyday Blonde Ale by infusing the fun flavors we all remember from your local carnival. The chocolate banana is the first of this series','4.7%',42,'ChocolateBanana'),

('Lunch','IPA','Our “East Coast” version of a West Coast-style IPA. Intense hop flavors and aromas of tropical and citrus fruits and pine dominate. A subtle malt sweetness brings the beer into balance','7.0%',42,'Lunch'),

('Birdfish Tango and Cashmere','IPA','Tangerine and blood orange milkshake double IPA','7.8%',42,'BirdfishTango'),

('Nitro Crème Brûlée','Nitro Stout','Southern Tier’s Blackwater Series unleashes its popular flavor Crème Brûlée in NITRO. With notes of vanilla and caramel, this stout is sweet, creamy and uncannily true to the namesake dessert',
'10.0%',42,'NitroCremeBrulee'),

('Hellheim Helles','Lager','Crisp, bright, golden','N/A',43,'Hellheim'),

('Woden''s Hunt Dunkel','Dunkel','toasty, malty, dark reddish brown','N/A',43,'WodensHunt'),

('Alfheim Hefeweizen','Hefeweizen','banana, clove, hazy gold','N/A',43,'Alfheim'),

('Golem Czech Pils','Pilsner','floral, slightly bitter, straw yellow','N/A',43,'GolemCzech'),

('Huginn and Muninn Kolsch','Kolsch','dry, subtle esters, pale yellow','N/A',43,'HuginnMuninn'),

('Sow of Sunna Märzen','Amber','caramel, malty, rich amber','N/A',43,'SowOfSunna'),

('Sour City','IPA','Sour IPA','4.5%',44,'SourCity'),

('Hazy Jane','IPA','New England IPA','5.0%',44,'HazyJane'),

('Stratospheric','IPA','Double Dry Hopped IPA','7.0%',44,'Stratospheric'),

('Punk IPA','IPA','Headliner','5.6%',44,'PunkIPA'),

('Dead Pony Club','IPA','Pale Ale','3.8%',44,'DeadPonyClub'),

('Speedbird 100','IPA','Limited Release','4.8%',44,'Speedbird100'),

('Masthead NITRO Single Origin Coffee Stout','Nitro Stout','Our stout with a healthy dose of Six Shooter Coffee, tapped with Nitrogen for an extra creamy finish','6.9%',45,'MastheadNitro'),

('Platform Head tilt pistachio imperial stout','Imperial Stout','The next offering in our Barrel-Aged Program gives you a thick and mysterious imperial stout aged in rum and bourbon barrels, and on pistachios for over 9 months. Overtones of vanilla, molasses, and oak give way to a smooth and heavy body that will take hold of your senses and overwhelm them with dark chocolate, sweet bourbon, and pistachio','12.8%',45,'HeadTilt'),

('Seventh Son Fox in the Stout','Stout','Kosher Salt, Cocoa nibs and fresh vanilla beans along with flaked oats for body make this a big rich dessert stout worthy of its Fox in the Snow brownie inspiration','8.9%',45,'FoxInTheStout'),

('Bowling Green Beer Works Candy Man DIPA','Double IPA','Made with El Dorado hops, this double IPA has a nice sweetness with less hoppiness','8.0%',45,'CandyMan'),

('Little Fish Balaclava','Winter Warmer','Farmhouse winter warmer, brewed with a touch of cinnamon, ginger, coriander and bird chilies','8.8%',45,'LittleFish'),

('March First Highpoint IPA','IPA','IPA with sweet citrus and pine in the hop bill, with a sweeter malt bill','6.7%',45,'MarchFirst2'),

('Rockmill Brewery Witbier','Wheat','Crisp, refreshing body with citrus bouquet & subdued bitterness. Spice, Coriander & Orange Peel','6.0%',46,'Witbier'),

('Rockmill Brewery Saison','Saison','Rustic, earthy, complex spice notes in the aroma. Subtle cardamon and nutmeg','7.0%',46,'Saison'),

('Rockwell Brewery Dubbel','Ale','Dark fruit, maraschino cherry. Followed by wet forest & mushroom','8.0%',46,'Dubbel'),

('Rockwell Brewery Tripel','Ale','A golden ale that is rich & full bodied with dried fruit. Delicate Saaz in the nose','9.0%',46,'Tripel'),

('Urban Cowboy Belgian Style Stout','Stout','Raisins dipped in molasses. A collaboration Stout with Seventh Son Brewing','8.0%',46,'UrbanCowboy'),

('En Plein Air','Pale Ale','A Belgian-style pale ale. Voignier with crisp minerality and a toasty malt finish','6.0%',46,'EnPleinAir'),

('CURRENTLY NO BEER IS AVAILABLE','','','',47,''),

('Cascade Manhattan NW','Sour','American Wild','11.6%',48,'CascadeManhattan'),

('Rogue Dead Guy Ale','Ale','Maibock, made in Oregon','6.6%',48,'RogueDeadGuy'),

('Brother''s Drake Apple Pie','Mead','No description available','13.0%',48,'ApplePie2'),

('Pretentious Vaniloquent','Sour','American Wild','8.9%',48,'Vaniloquent'),

('Baltika 6','Porter','Baltic Porter','7.0%',48,'Baltika6'),

('Weyerbacher Insanity','Barleywine','Barleywine','11.0%',48,'Weyerbacher'),

('Gavel Banger','IPA','American IPA brewed and dry hopped with heaps of Amarillo, Citra and Simcoe hops, juicy and hoppy','7.0%',49,'GavelBanger'),

('Maverick Chocolate Porter','Porter','Brown porter brewed with cacao nibs and roasted cacao husks from our friends at Maverick chocolate','5.5%',49,'Maverick'),

('Nellie''s Winter Ale','Wheat','American wheat ale brewed with sweet orange peel and freshly ground coriander','4.0%',49,'NelliesWinterAle'),

('Oktubberfest','Festbier','Our festbier shines a deep golden orange with German malts and hops in all the right places','5.7%',49,'Oktubberfest'),

('Cincy Cobra','IPA','Our hazy citra IPA is brewed to pack a bunch of citrus flavors in honor of Cincinnati legend, Ezzard Charles','6.7%',49,'CincyCobra'),

('Citrus IPA','IPA','Brewed with Amarillo and El Dorado hops, malted oats, and Japanese Yuzu fruit.  Bright orange and pineapple hop character blend with tangy Yuzu juice to create a unique and easy-drinking IPA','6.6%',49,'CitrusIPA'),

('Autumn Amber','Amber','Full, sweet body with caramel notes','5.6%',50,'AutumnAmber'),

('Toffee Stout','Stout','Silky, smooth with toffee and coffee undertones','6.0%',50,'ToffeeStout'),

('Unfiltered IPA','IPA','Citrus notes with a lingering resinous, woodsy hop finish','6.5%',50,'UnfilteredIPA'),

('Whiskey Brown Ale','Brown Ale','Brown sugar, toffee with strong whiskey notes','16.0%',50,'WhiskeyBrownAle'),

('Ginger''s Pale Ale','Pale Ale','Ginger and lemon in a Golden Ale','5.5%',50,'GingersPaleAle'),

('Uncle Charlie','Lager','Clean, crisp American Lager','5.2%',50,'UncleCharlie'),

('Maui Wowie','Cider','Pineapple and ginger','6.0%',51,'MauiWowie'),

('Moon Dust','Cider','Cranberry and blood orange','6.0%',51,'Moon Dust'),

('Hound Dawg','Cider','Peanut butter and jelly','6.0%',51,'HoundDawg'),

('Hunky Dory Apple Pie','Cider','Apple, cinnamon, caramel and vanilla','6.0%',51,'HunkyDory'),

('Jinxter','Cider','Blueberry and lemon','6.0%',51,'Jinxter'),

('Swell Cold Brew Cider','Cider','Our cider with One Line Coffee','6.0%',51,'SwellColdBrew'),

('High Stepper','IPA','American IPA','7.0%',52,'HighStepper'),

('Cloud Chaser','Hefeweizen','Hefeweizen','5.3%',52,'CloudChaser'),

('McSwagger''s Own','Amber','Amber ale','6.0%',52,'McSwaggersOwn'),

('Mr. Tractor','Kolsch','Kolsch','5.0%',52,'MrTractor'),

('Domestic Bliss','Strong Ale','Belgian golden strong ale','9.5%',52,'DomesticBliss'),

('McStagger','IPA','Imperial IPA','9.0%',52,'McStagger')
;



COMMIT;