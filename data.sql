-- Insert Custom Users
INSERT INTO custom_user (id, email, name, password, is_staff, is_active, gender) VALUES
(1, 'student1@example.com', 'John Doe', 'hashed_password1', FALSE, TRUE, 'Male'),
(2, 'faculty1@example.com', 'Dr. Smith', 'hashed_password2', TRUE, TRUE, 'Male'),
(3, 'caretaker1@example.com', 'Mike Johnson', 'hashed_password3', TRUE, TRUE, 'Male'),
(4, 'admin1@example.com', 'Jane Admin', 'hashed_password4', TRUE, TRUE, 'Female');

-- Insert Students
INSERT INTO student (student_id, department, student_phone, student_roll, student_year, student_room_no, student_batch) VALUES
(1, 'Computer Science', '9876543210', 'CS2023001', 2, '101', 'Batch2023');

-- Insert Faculty
INSERT INTO faculty (faculty_id, department, faculty_phone, is_hod) VALUES
(2, 'Computer Science', '9123456789', TRUE);

-- Insert Caretaker
INSERT INTO caretaker (caretaker_id, user_id, hostel_no) VALUES
(1, 3, 'HSTL01');

-- Insert Admin
INSERT INTO admin (admin_id, phone) VALUES
(4, '9234567890');

-- Insert Hostels
INSERT INTO hostel (hostel_no, hostel_name, hostel_type, num_floors, capacity) VALUES
('HSTL01', 'Alpha Hostel', 'Boys', 4, 200),
('HSTL02', 'Beta Hostel', 'Girls', 3, 150);

-- Insert Rooms
INSERT INTO room (room_no, floor, hostel_no, room_occupancy, current_occupancy) VALUES
('101', 1, 'HSTL01', 2, 1),
('102', 1, 'HSTL01', 2, 0),
('201', 2, 'HSTL02', 2, 0);

-- Insert Warden
INSERT INTO warden (warden_id, faculty_id, hostel_no, is_chief) VALUES
(1, 2, 'HSTL01', TRUE);

-- Insert Batch
INSERT INTO batch (batch_no, number_of_students, number_of_girls, number_of_boys) VALUES
('Batch2023', 100, 40, 60);

-- Insert Application
INSERT INTO application (application_id, student_id, affiliation, address, phone, faculty_id, arrival, departure, instid, letter, payment_proof, status, comments) VALUES
(1, 1, 'XYZ University', '123 Street, City', '9876543210', 2, '2025-03-01', '2025-06-01', 'XYZ123', 'letter.pdf', 'payment.jpg', 'Pending', 'Waiting for approval');

-- Insert Final Application
INSERT INTO application_final (application_id, hostel_no, room_no) VALUES
(1, 'HSTL01', '101');
