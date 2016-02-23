


CREATE TABLE boroughs
(
id serial,
Borough_Name character varying,
Murder Integer,
Wounding_GBH Integer,
Assault_With_Injury Integer,
Common_Assault Integer,
Offensive_Weapon Integer,
Harassment Integer,
Other_Violence Integer,
Rape Integer,
Other_Sexual Integer,
Personal_Property Integer,
Business_Property Integer,
Burglary_in_A_Dwelling Integer,
Burglary_in_Other_Buildings Integer,
Theft_Taking_Of_Motor_Vehicle Integer,
Theft_From_Motor_Vehicle Integer,
Motor_Vehicle_Interference_Tampering Integer,
Theft_From_Shops Integer,
Theft_Person Integer,
Theft_Taking_Of_Pedal_Cycles Integer,
Other_Theft Integer,
Handling_Stolen_Goods Integer,
Other_Fraud_Forgery Integer,
Criminal_Damage_to_a_Dwelling Integer,
Criminal_Damage_To_Other_Buildings Integer,
Criminal_Damage_To_Motor_Vehicle Integer,
Other_Criminal_Damage Integer,
Drug_Trafficking Integer,
Possession_Of_Drugs Integer,
Other_Drugs Integer,
Going_Equipped Integer,
Other_Notifiable Integer
)


COPY fy16s FROM '/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/FY16.csv' DELIMITER ',' CSV HEADER;

COPY fy15s FROM '/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/FY15.csv' DELIMITER ',' CSV HEADER;


COPY boroughs FROM '/Users/louisefranklin/Documents/Code/Makers/6week/db_api_crimedata/app/models/boroughs.csv' DELIMITER ',' CSV HEADER;
