CREATE TABLE college (
    college_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    student_count INT CHECK (student_count >= 0),
    city VARCHAR(50),
    admission_date DATE CHECK (admission_date >= DATE '2000-01-01')
);

INSERT INTO college (name, student_count, city, admission_date) VALUES
('National Institute of Technology', 1500, 'Nagpur', '2005-07-01'),
('Delhi Technical University', 2000, 'Delhi', '2003-08-15'),
('Mumbai University', NULL, 'Mumbai', '2010-06-10'),
('Bangalore Institute of Technology', 1800, 'Bangalore', '2002-05-20'),
('Pune University', 2100, 'Pune', '2006-01-01'),
('Chennai Engineering College', 1950, 'Chennai', '2004-09-12'),
('Kolkata State University', NULL, 'Kolkata', '2011-03-05');


SELECT student_count FROM college WHERE student_count IS NOT NULL
ORDER BY student_count DESC
LIMIT 1;