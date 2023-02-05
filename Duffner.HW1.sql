use employees;
# question 1, how many employees are there?
Select count(*) from employees;
# There are 300,024 employees

# question 2, list departments 
Select dept_name from departments;
# Customer Service, Development, Finance, Human Resources, Marketing, Production,
# Quality Management, Research, Sales

# question 3, How many employees are in Finance?
Select count(*) from dept_emp where dept_no = 'd002';
# There are 17,346 employees in Finance

# question 4, how many women work in development?
Select count(*) from departments, employees where dept_no = 'd005' && gender = 'F';
# 120,052 women work in development

# question 5, What is the top salary in the company? 
Select max(salary) from salaries;
# The top salary is $158,220

# question 6, What is the average salary for Marketing?
Select avg(salary) from salaries, departments where dept_no = 'd001';
# The average salary for Marketing is $63,810.75

# question 7, What is the lowest salary in the company, who is it and what is their title and department?
Select min(salary) from salaries;
Select emp_no from salaries where salary = 38623;
Select first_name, last_name from employees where emp_no = 253406;
Select title from titles where emp_no = 253406;
Select dept_no from dept_emp where emp_no = 253406;
Select dept_name from departments where dept_no = 'd004';
# The minimum salary is $38,623 from Olivera Baek who is a Technique Leader in Production

# question 8, Who is the oldest person at the company and what is their age?
Select min(birth_date) from employees;
select first_name, last_name from employees where birth_date = '1952-02-01' order by birth_date asc;
Select Datediff(now(), '1952-02-01')/365;
# There are 6 people with the same birthday, making them the oldest people at the company
# These employees are 71.06 years old and the top name in ascending order is Jouni Pocchiola




