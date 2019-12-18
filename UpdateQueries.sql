
--update employee

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>Grafton</Street>
	<Building>Paradise</Building>
	<RoomNo>256</RoomNo>
	<County>Dublin</County>
	<AreaCode>RR82</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1000';

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>North Portland</Street>
	<Building>Portland Villa</Building>
	<RoomNo>10</RoomNo>
	<County>Dublin</County>
	<AreaCode>AR30</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1001';

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>Downtown</Street>
	<Building>Downtown Court</Building>
	<RoomNo>119</RoomNo>
	<County>Carlow</County>
	<AreaCode>CW02</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1002';

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>Rose Garden</Street>
	<Building>Old Castle</Building>
	<RoomNo>45</RoomNo>
	<County>Wicklow</County>
	<AreaCode>WK11</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1003';

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>River Lower</Street>
	<Building>River Palace</Building>
	<RoomNo>15</RoomNo>
	<County>Dublin</County>
	<AreaCode>DB22</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1004';

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>Old Garden</Street>
	<Building>Garden Tower</Building>
	<RoomNo>04</RoomNo>
	<County>Athlon</County>
	<AreaCode>AL77</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1005';

UPDATE Employee
SET employee_address = '<?xml version="1.0"?>
<Address>
	<Street>Upper Town</Street>
	<Building>Uptown Court</Building>
	<RoomNo>02</RoomNo>
	<County>Carlow</County>
	<AreaCode>CW11</AreaCode>
</Address>'
WHERE employee_id = 'OVDE1006';

-- update customer

UPDATE Customer
SET customer_address = '<?xml version="1.0"?>
<Address>
	<Street>Balfe</Street>
	<Building>Paradise</Building>
	<RoomNo>56</RoomNo>
	<County>Dublin</County>
	<AreaCode>RR77</AreaCode>
</Address>'
WHERE customer_id = 'OVDC1000000';

UPDATE Customer
SET customer_address = '<?xml version="1.0"?>
<Address>
	<Street>Riverland</Street>
	<Building>River Villa</Building>
	<RoomNo>1</RoomNo>
	<County>Dublin</County>
	<AreaCode>AR31</AreaCode>
</Address>'
WHERE customer_id = 'OVDC1000001';

UPDATE Customer
SET customer_address = '<?xml version="1.0"?>
<Address>
	<Street>Townhall Street</Street>
	<Building>Street Paradise</Building>
	<RoomNo>11</RoomNo>
	<County>Carlow</County>
	<AreaCode>CW05</AreaCode>
</Address>'
WHERE customer_id = 'OVDC1000002';

UPDATE Customer
SET customer_address = '<?xml version="1.0"?>
<Address>
	<Street>Folwer Garden</Street>
	<Building>Castle Building</Building>
	<RoomNo>48</RoomNo>
	<County>Wicklow</County>
	<AreaCode>WK15</AreaCode>
</Address>'
WHERE customer_id = 'OVDC1000003';

UPDATE Customer
SET customer_address = '<?xml version="1.0"?>
<Address>
	<Street>River Liffy Rd.</Street>
	<Building>River Palace</Building>
	<RoomNo>15</RoomNo>
	<County>Dublin</County>
	<AreaCode>DB22</AreaCode>
</Address>'
WHERE customer_id = 'OVDC1000004';

UPDATE Customer
SET customer_address = '<?xml version="1.0"?>
<Address>
	<Street>Old Garden</Street>
	<Building>Garden Court</Building>
	<RoomNo>06</RoomNo>
	<County>Athlon</County>
	<AreaCode>AL72</AreaCode>
</Address>'
WHERE customer_id = 'OVDC1000005';

-- Car Varient

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Red</Color>
<EngineNo>F488</EngineNo>
<Fuel>Diesel</Fuel>
<Power>301</Power>
<ZeroToSixty>4.3</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 1;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>White</Color>
<EngineNo>M100</EngineNo>
<Fuel>Diesel</Fuel>
<Power>300</Power>
<ZeroToSixty>4.9</ZeroToSixty>
<SeatingCapacity>6</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 2;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Blue</Color>
<EngineNo>S190</EngineNo>
<Fuel>Petrol</Fuel>
<Power>290</Power>
<ZeroToSixty>5.3</ZeroToSixty>
<SeatingCapacity>2</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 3;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Ash</Color>
<EngineNo>FX100</EngineNo>
<Fuel>Diesel</Fuel>
<Power>295</Power>
<ZeroToSixty>5.6</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 4;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Gray</Color>
<EngineNo>F488</EngineNo>
<Fuel>Petrol</Fuel>
<Power>278</Power>
<ZeroToSixty>6.5</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>No</Airbags>
</Variant>'
WHERE car_model_id = 5;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>White</Color>
<EngineNo>MX23</EngineNo>
<Fuel>Petrol</Fuel>
<Power>201</Power>
<ZeroToSixty>7.6</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 6;

------------------------------

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Red</Color>
<EngineNo>RX8</EngineNo>
<Fuel>Diesel</Fuel>
<Power>301</Power>
<ZeroToSixty>4.3</ZeroToSixty>
<SeatingCapacity>2</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 7;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>White</Color>
<EngineNo>M123</EngineNo>
<Fuel>Diesel</Fuel>
<Power>301</Power>
<ZeroToSixty>4.6</ZeroToSixty>
<SeatingCapacity>6</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 8;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>White</Color>
<EngineNo>F488</EngineNo>
<Fuel>Petrol</Fuel>
<Power>290</Power>
<ZeroToSixty>4.9</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 9;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>White</Color>
<EngineNo>M123</EngineNo>
<Fuel>Diesel</Fuel>
<Power>276</Power>
<ZeroToSixty>5.8</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 10;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Green</Color>
<EngineNo>R888</EngineNo>
<Fuel>Diesel</Fuel>
<Power>175</Power>
<ZeroToSixty>8.3</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>No</Airbags>
</Variant>'
WHERE car_model_id = 11;

UPDATE Car_Model
SET car_model_variant = '<?xml version="1.0"?>
<Variant>
<Color>Blue</Color>
<EngineNo>M192</EngineNo>
<Fuel>Petrol</Fuel>
<Power>205</Power>
<ZeroToSixty>5.8</ZeroToSixty>
<SeatingCapacity>4</SeatingCapacity>
<Airbags>Yes</Airbags>
</Variant>'
WHERE car_model_id = 12;



