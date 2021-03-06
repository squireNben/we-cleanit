create table users (
    user_id serial primary key,
    auth_id text
);

create table open_times (
    time_id serial primary key,
    open_start_time text,
    open_end_time text
);

create table client_appointments (
    appointment_id serial primary key,
    client_name varchar(50),
    client_address varchar(150),
    client_phone varchar(20),
    client_email varchar(100),
    residential_sqft_carpet int,
    residential_sqft_grout int,
    residential_upholstery text,
    residential_extras text,
    start_time text,
    end_time text,
    clean_time int,
    price_estimate int,
    residential_confirmed text default false,
    residential_contacted text default false
);

create table commercial (
    commercial_id serial primary key,
    company_name varchar(100),
    company_address varchar(100),
    company_phone varchar(20),
    company_email varchar(100),
    company_sqft_carpet int,
    company_sqft_grout int,
    company_upholstery text,
    frequency text,
    price_estimate int,    
    company_confirmed text default false,
    company_contacted text default false
);

create table services (
    service_id serial primary key,
    carpet_price int,
    grout_price int,
    /* time in miliseconds */
    floor_ttc int
);

create table upholstery (
    upholstery_id serial primary key,
    upholstery_name text,
    upholstery_price int,
    /* time in minutes */
    upholstery_ttc int
);

create table extra_services (
    extra_id serial primary key,
    extra_name text,
    extra_description text
);

create table promotions (
    promotion_id serial primary key,
    promotion_name text,
    discount int,
    end_date date,
    affecting text
);