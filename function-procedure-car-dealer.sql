CREATE OR REPLACE FUNCTION update_service_due_date(
	_service_id INTEGER,
	_service_date DATE,
	_due_date DATE,
	new_due_date DATE
)
RETURNS DATE AS
$$
	BEGIN
		UPDATE service
		SET due_date = new_due_date
		WHERE service_id = _service_id AND service_date = _service_date AND due_date = _due_date;
		RETURN due_date FROM service WHERE due_date = new_due_date;
	END;
	
$$
LANGUAGE plpgsql;

SELECT *
FROM service

SELECT update_service_due_date(1,'2022-01-01','2022-01-07','2022-01-04');

CREATE OR REPLACE FUNCTION update_car_model(
	_car_make_id INTEGER,
	_make VARCHAR,
	_model VARCHAR,
	new_car_model VARCHAR	
)
RETURNS VARCHAR AS 
$$
	BEGIN
		UPDATE car_make
		SET model = new_car_model
		WHERE car_make_id = _car_make_id AND make = _make AND model = _model;
		RETURN model FROM car_make WHERE model = new_car_model;
	END;
	
$$
LANGUAGE plpgsql;

SELECT *
FROM car_make

SELECT update_car_model(2,'toyota','carola','tacoma');