BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE employees';
EXCEPTION
  WHEN OTHERS THEN
    NULL;
END;
/

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER
);

BEGIN
    INSERT INTO employees VALUES (101, 'Aman', 50000);
    INSERT INTO employees VALUES (102, 'Simran', 65000);
    INSERT INTO employees VALUES (103, 'Ommy', 72000);
    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE greet_user(name IN VARCHAR2)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello, ' || name || '!');
END;
/

CREATE OR REPLACE PROCEDURE square_number(n IN NUMBER)
IS
    result NUMBER;
BEGIN
    result := n * n;
    DBMS_OUTPUT.PUT_LINE('Square is: ' || result);
END;
/

CREATE OR REPLACE PROCEDURE get_employee_details(
    p_emp_id IN NUMBER
)
IS
    v_name employees.emp_name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    SELECT emp_name, salary
    INTO v_name, v_salary
    FROM employees
    WHERE emp_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name || ', Salary: ' || v_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID ' || p_emp_id);
END;
/

CREATE OR REPLACE PROCEDURE multiply_by_two(
    input_num IN NUMBER,
    result OUT NUMBER
)
IS
BEGIN
    result := input_num * 2;
END;
/

CREATE OR REPLACE PROCEDURE update_salary(
    p_emp_id IN NUMBER,
    p_increment IN NUMBER
)
IS
BEGIN
    UPDATE employees
    SET salary = salary + p_increment
    WHERE emp_id = p_emp_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID ' || p_emp_id);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary updated successfully.');
    END IF;
END;
/

DECLARE
    doubled NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- Greet User ---');
    greet_user('Ommy');

    DBMS_OUTPUT.PUT_LINE('--- Square Number ---');
    square_number(6);

    DBMS_OUTPUT.PUT_LINE('--- Get Employee Details ---');
    get_employee_details(102);

    DBMS_OUTPUT.PUT_LINE('--- Multiply by Two ---');
    multiply_by_two(8, doubled);
    DBMS_OUTPUT.PUT_LINE('Result: ' || doubled);

    DBMS_OUTPUT.PUT_LINE('--- Update Salary ---');
    update_salary(102, 5000);
END;
/
