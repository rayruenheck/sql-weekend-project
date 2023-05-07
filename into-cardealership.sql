INSERT INTO car_make (
	make,
	model
)VALUES(
	'honda',
	'civic'
),(
	'toyota', 
	'carola'
),(
	'ford',
	'fusion'
),(
	'nissan',
	'juke'
);


INSERT INTO car (
	car_make_id,
	vin,
	year,
	color
)VALUES (
	1,
	'1J4FA49S06P724882',
	2022,
	'blue'
),(
	2,
	'JTDBT923671166443',
	2018,
	'silver'
),(
	3,
	'KMHTC6AD5EU299375',
	2019,
	'black'
	
),(
	4,
	'3C4PDDBG7DT594843',
	2023,
	'yellow'
);

DROP TABLE address CASCADE;
INSERT INTO address (
	address1,
	district,
	city,
	postal_code
)VALUES (
	'123 maple st',
	'massachusetts',
	'gloucester',
	01930
), (
	'5 main st',
	'illinois',
	'joliet',
	60432
), (
	'64 whosawhatsa ave',
	'california',
	'hollywood',
	90028
),(
	'10 swagswiggity blv',
	'florida',
	'miami',
	33101
),(
	'43 twinkle ln',
	'kansas',
	'douglas',
	67039
),(
	'75 twinriver rd',
	'nevada',
	'las vegas',
	88901
), (
	'26 freedom blv',
	'georgia',
	'atlanta',
	30033
),(
	'233 sticks ln',
	'virgina',
	'fairfax',
	22030
),(
	'896 country music st',
	'tennessee',
	'nashville',
	37011
),(
	'1600 pennsylvania ave',
	'District of Columbia',
	'Washington',
	20500
), (
	'1901 west madison st',
	'illinois',
	'chicago',
	60612
), (
	'100 legends way',
	'massachusetts',
	'boston',
	02114
),(
	'24 star st',
	'new hampshire',
	'concord',
	01742
),(
	'53 little st',
	'connecticut',
	'new haven',
	06501
),(
	'2 how ave',
	'rhode island',
	'providence',
	02860
),(
	'3 wonder blv',
	'maine',
	'augusta',
	04538
);

INSERT INTO customer (
	c_last_name,
	c_first_name,
	c_email,
	address_id
)VALUES (
	'biden',
	'joe',
	'iamthepresident@whitehouse.com',
	10
), (
	'pippen',
	'scotty',
	's_pippen@michealjordanlovesme.com',
	11
), (
	'tatum',
	'jason',
	'j_tatum@kyrieirvingwasmean.com',
	12
), (
	'cash',
	'johnny',
	'j_cash@ipromiseimagoodperson.com',
	9
);
INSERT INTO sales_person (
	s_last_name,
	s_first_name,
	s_email,
	address_id
)VALUES (
	'pesci',
	'joe',
	'j_pesci@sackosuds.com',
	3	
), (
	'white',
	'cleetus',
	'c_white@iliketruck.com',
	8
), (
	'winston',
	'tex',
	't_winston@secondamendment.com',
	7
), (
	'rupp',
	'adolph',
	'a_rupp@iwinbasketballgames.com',
	5
);
INSERT INTO mechanic (
	m_last_name,
	m_first_name,
	m_email,
	address_id
)VALUES (
	'mcmahon',
	'ryan',
	'r_mcmahon@meluckycharms.com',
	1
), (
	'fred',
	'fredrickson',
	'f_fredrickson@mynameisntfunny.com',
	2
), (
	'bob',
	'bobbety',
	'b_bobbety@mynameisntfunny.com',
	4
), (
	'john',
	'johnson',
	'j_johnson@mynameisntfunny.com',
	13
);
INSERT INTO dealership (
	address_id,
	dealership_name
)VALUES (
	14,
	'car fixer'
),(
	15,
	'we fix cars'
),(
	16,
	'fixing cars is what we do'
), (
	6,
	'gamble and get your car fixed'
);
INSERT INTO service (
	dealership_id,
	car_id,
	customer_id,
	service_date,
	due_date
)VALUES (
	1,
	1,
	1,
	'2022-01-01',
	'2022-01-07'
),(
	2,
	2,
	2,
	'2022-02-02',
	'2022-02-09'
);
INSERT INTO car_inventory(
	car_id,
	dealership_id,
	"brand_new?"
)VALUES (
	3,
	3,
	'false'
),(
	4,
	4,
	'true'
);

INSERT INTO service_team(
	service_id,
	mechanic_id
)VALUES (
	1,
	1
),(
	2,
	2
);
INSERT INTO car_sale (
	car_inv_id,
	customer_id,
	sales_id,
	sale_date
)VALUES (
	1,
	1,
	1,
	'2022-04-06'
),(
	2,
	2,
	2,
	'2022-06-19'
);
INSERT INTO service_team(
	service_id,
	mechanic_id
)values(
	1,
	1
),(
	2,
	2
);

INSERT INTO payment (
	payment_date,
	amount,
	customer_id,
	payment_method,
	car_sale_id
)VALUES (
	'2022-06-19',
	19999,
	2,
	'1223-1234-1245-1231',
	2
),(
	'2022-04-06',
	21000,
	1,
	'5464-4564-4564-8688',
	1
);
INSERT INTO payment (
	payment_date,
	amount,
	customer_id,
	payment_method,
	service_id
)VALUES (
	'2022-01-07',
	764.32,
	1,
	'1235-5688-9768-4566',
	1
),(
	'2022-02-09',
	453.23,
	2,
	'4564-4654-3453-3452',
	2
)