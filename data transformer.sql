create table dt_customers (
    customer_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(100),
    registration_date date
);

insert into dt_customers
(customer_id, first_name, last_name, email, registration_date)
values
(1, 'haruto', 'sato', 'haruto.sato@email.com', '2022-03-15'),
(2, 'yui', 'tanaka', 'yui.tanaka@email.com', '2021-11-02');


create table dt_orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    total_amount decimal(10,2)
);

insert into dt_orders
(order_id, customer_id, order_date, total_amount)
values
(101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03', 200.75);


create table dt_employees (
    employees_id int,
    first_name varchar(50),
    last_name varchar(100),
    department varchar(50),
    hire_date date,
    salary int
);

insert into dt_employees
(employees_id, first_name, last_name, department, hire_date, salary)
values
(1, 'kenji', 'yamada', 'sales', '2020-01-15', 50000),
(2, 'aiko', 'suzuki', 'hr', '2021-03-20', 55000);

select * from dt_customers;
select * from dt_orders;
select * from dt_employees;


# inner join
select *
from dt_orders
inner join dt_customers
on dt_orders.customer_id = dt_customers.customer_id;


#left join
select *
from dt_customers
left join dt_orders
on dt_customers.customer_id = dt_orders.customer_id;


#right join
select *
from dt_customers
right join dt_orders
on dt_customers.customer_id = dt_orders.customer_id;


#full outer join
select *
from dt_customers
left join dt_orders
on dt_customers.customer_id = dt_orders.customer_id
union
select *
from dt_customers
right join dt_orders
on dt_customers.customer_id = dt_orders.customer_id;


#orders above average amount
select *
from dt_orders
where total_amount > 175.625;


# employees above average salary
select *
from dt_employees
where salary > (
    select avg(salary)
    from dt_employees
);


# year and month
select
    order_id,
    order_date,
    year(order_date) as order_year,
    month(order_date) as order_month
from dt_orders;


# date difference
select
    order_id,
    order_date,
    datediff(curdate(), order_date) as days_difference
from dt_orders;


#formatted date
select
    order_id,
    date_format(order_date, '%d-%b-%Y') as formatted_date
from dt_orders;


# full name
select
    customer_id,
    concat(first_name, ' ', last_name) as full_name
from dt_customers;


#replace string
select
    customer_id,
    first_name,
    replace(first_name, 'haruto', 'hiroto') as new_first_name
from dt_customers;


# uppercase and lowercase
select
    customer_id,
    upper(first_name) as uppercase_name,
    lower(last_name) as lowercase_name
from dt_customers;


# trim email
select
    customer_id,
    email,
    trim(email) as clean_email
from dt_customers;


#running total
select
    order_id,
    total_amount,
    sum(total_amount) over (order by order_id) as running_total
from dt_orders;


#rank orders
select
    order_id,
    total_amount,
    rank() over (order by total_amount desc) as order_rank
from dt_orders;


# discount
select
    order_id,
    total_amount,
    case
        when total_amount > 1000 then '10% discount'
        when total_amount > 500 then '5% discount'
        else 'no discount'
    end as discount
from dt_orders;


#salary category
select
    employees_id,
    first_name,
    salary,
    case
        when salary >= 70000 then 'high'
        when salary >= 50000 then 'medium'
        else 'low'
    end as salary_category
from dt_employees;
