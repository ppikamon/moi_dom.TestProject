--1
select a.accountnum from accounts as a
where status = 'Открыт' and balance > 1200.00;

--2
select a.accountnum from accounts as a
where status = 'Открыт' and address like 'Желябова ул.,%'
order by balance desc;

--3
SELECT AVG(balance) AS average_balance FROM accounts;

--4
select a.address from accounts as a
join trans as t on t.accountnum = a.accountnum
where item = 'Содержание' and amount > 1000.00 
and extract (month FROM period) = 2;

--5
select a.address, sum(amount) from accounts as a
join trans as t on t.accountnum = a.accountnum
where a.status = 'Открыт' 
group by a.address;

--6
select distinct address from accounts 
where accountnum not in (
select accountnum from trans 
where period between '2021-01-01 00:00:00.000' and '2021-01-31 23:59:59.999');



