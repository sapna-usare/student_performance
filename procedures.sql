-- PL/SQL Procedure to calculate and display student grade
CREATE OR REPLACE PROCEDURE CALCULATE_GRADE (
    p_student_id IN NUMBER
) AS
    v_avg NUMBER;
    v_grade CHAR(1);
BEGIN
    SELECT AVG(MARKS_OBTAINED)
    INTO v_avg
    FROM MARKS
    WHERE STUDENT_ID = p_student_id;

    IF v_avg >= 85 THEN
        v_grade := 'A';
    ELSIF v_avg >= 70 THEN
        v_grade := 'B';
    ELSE
        v_grade := 'C';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Student ID: ' || p_student_id || ' -> Grade: ' || v_grade);
END;
/
