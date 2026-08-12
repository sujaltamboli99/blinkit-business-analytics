create table customers(
    customer_id int primary key,
    customer_name varchar(100) not null,
    email varchar(100) not null unique,
    phone varchar(15),
    address varchar(255) not null,
    area varchar(100) not null,
    pincode varchar(10) not null,
    registration_date date not null,
    customer_segment varchar(50),
    total_orders int default 0,
    avg_order_value decimal(10,2) default 0.00
);


create table orders(
    order_id bigint primary key,
    customer_id int not null,
    order_date datetime not null,
    promised_delivery_date datetime not null,
    actual_delivery_date datetime,
    payment_method varchar(30) not null,
    delivery_status varchar(30) not null,
    order_total decimal(10,2) not null,
    delivery_partner_id bigint not null,
    store_id int not null,

    constraint fk_orders_customer
        foreign key (customer_id)
        references customers(customer_id)
);


create table products(
    product_id int primary key ,
    product_name varchar(100) not null,
    category varchar(100) not null ,
    brand varchar(100) not null,
    price decimal(10,2) not null,
    mrp decimal(10,2) not null ,
    margin_percentage decimal(5,2) not null,
    shelf_life_days int not null,
    min_stock_level int not null,
    max_stock_level int not null 
);

create table order_items(
    order_id bigint not null,
    product_id int not null,
    quantity int not null,
    unit_price decimal(10,2) not null,
    constraint pk_order_items primary key (order_id , product_id),

    constraint fk_order_items_order
        foreign key(order_id)
        references orders(order_id),
    constraint fk_order_items_product
        foreign key(product_id)
        references products(product_id)
);

create table inventory(
    product_id int not null,
    inventory_date date not null,
    stock_received int not null default 0,
    damaged_stock int not null default 0,

    constraint pk_inventory primary key (product_id,inventory_date),
    constraint fk_inventory_product
        foreign key(product_id)
        references products(product_id)
);


CREATE TABLE delivery_performance (
    order_id bigint PRIMARY KEY,
    delivery_partner_id bigint NOT NULL,
    promised_time DATETIME NOT NULL,
    actual_time DATETIME NOT NULL,
    delivery_time_minutes INT NOT NULL,
    distance_km DECIMAL(5,2) NOT NULL,
    delivery_status VARCHAR(30) NOT NULL,
    delay_reason VARCHAR(100),

    CONSTRAINT fk_delivery_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);

CREATE TABLE customer_feedback (
    feedback_id INT NOT NULL,
    order_id BIGINT NOT NULL,
    customer_id INT NOT NULL,
    rating INT NOT NULL,
    feedback_text VARCHAR(200) NOT NULL,
    feedback_category VARCHAR(100) NOT NULL,
    sentiment VARCHAR(50) NOT NULL,
    feedback_date DATE NOT NULL,

    CONSTRAINT pk_customer_feedback
        PRIMARY KEY (feedback_id),

    CONSTRAINT fk_feedback_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_feedback_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);



CREATE TABLE marketing_performance (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(100) NOT NULL,
    campaign_date DATE NOT NULL,
    target_audience VARCHAR(100) NOT NULL,
    channel VARCHAR(100) NOT NULL,
    impressions INT NOT NULL DEFAULT 0,
    clicks INT NOT NULL DEFAULT 0,
    spend DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    revenue_generated DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    roas DECIMAL(5,2) NOT NULL
);