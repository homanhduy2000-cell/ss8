bài 1
	-- 1. Đếm tổng số sản phẩm
SELECT COUNT(*) AS total_products
FROM Products;

-- 2. Tổng giá trị toàn bộ đơn hàng
SELECT SUM(total_amount) AS total_revenue
FROM Orders;

-- 3. Giá bán trung bình của sản phẩm
SELECT AVG(price) AS average_price
FROM Products;

-- 4. Đơn hàng có giá trị lớn nhất
SELECT MAX(total_amount) AS max_order_amount
FROM Orders;

-- 5. Đơn hàng có giá trị nhỏ nhất
SELECT MIN(total_amount) AS min_order_amount
FROM Orders;

-- 6. Đếm số khách hàng đến từ Hà Nội
SELECT COUNT(*) AS hanoi_customers_count
FROM Customers
WHERE city = 'Hanoi';



BÀI 2
	-- 1. Tổng số nhân viên
SELECT COUNT(*) AS number_of_employees
FROM Employees;

-- 2. Tổng quỹ lương hàng tháng của công ty
SELECT SUM(salary) AS total_monthly_salary
FROM Employees;

-- 3. Lương trung bình của nhân viên
SELECT AVG(salary) AS average_salary
FROM Employees;

-- 4. Mức lương cao nhất công ty
SELECT MAX(salary) AS highest_salary
FROM Employees;

-- 5. Mức lương thấp nhất công ty
SELECT MIN(salary) AS lowest_salary
FROM Employees;

-- 6. Ngày vào làm sớm nhất (nhân viên lâu năm nhất)
SELECT MIN(hire_date) AS earliest_hire_date
FROM Employees;

-- 7. Tổng lương hàng tháng của phòng IT
SELECT SUM(salary) AS it_department_salary
FROM Employees
WHERE department = 'IT';




bài 3 
	-- 1. Đếm tổng số đầu sách
SELECT COUNT(*) AS total_books
FROM Books;

-- 2. Tổng số trang của toàn bộ sách trong thư viện
SELECT SUM(pages) AS total_pages_in_library
FROM Books;

-- 3. Số trang trung bình của một cuốn sách
SELECT AVG(pages) AS average_pages_per_book
FROM Books;

-- 4. Năm xuất bản của cuốn sách cũ nhất
SELECT MIN(publication_year) AS oldest_book_year
FROM Books;

-- 5. Năm xuất bản của cuốn sách mới nhất
SELECT MAX(publication_year) AS newest_book_year
FROM Books;

-- 6. Ngày mượn sách đầu tiên trong lịch sử
SELECT MIN(borrow_date) AS first_borrow_date
FROM BorrowingRecords;

-- 7. Đếm số sách xuất bản sau năm 2000
SELECT COUNT(*) AS books_after_2000
FROM Books
WHERE publication_year > 2000;




bài 4
	-- 1. Đếm số lượng sản phẩm trong mỗi danh mục
SELECT 
    category, 
    COUNT(*) AS number_of_products
FROM Products
GROUP BY category;

-- 2. Tổng doanh thu cho mỗi khách hàng
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM Orders
GROUP BY customer_id;

-- 3. Với mỗi danh mục: số lượng, giá trung bình, giá cao nhất, giá thấp nhất
SELECT 
    category,
    COUNT(*) AS product_count,
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM Products
GROUP BY category;

-- 4. Khách hàng có tổng chi tiêu lớn hơn 1000
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM Orders
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;

-- 5. Các danh mục có nhiều hơn 5 sản phẩm
SELECT 
    category,
    COUNT(*) AS product_count
FROM Products
GROUP BY category
HAVING COUNT(*) > 5;

-- 6. Top 3 khách hàng chi tiêu cao nhất
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM Orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;




bài 5
	-- 1. Tổng doanh thu trong tháng
SELECT SUM(total_amount) AS total_revenue
FROM Sales;

-- 2. Tổng số giao dịch đã thực hiện
SELECT COUNT(*) AS total_transactions
FROM Sales;

-- 3. Giá trị hóa đơn trung bình của một giao dịch
SELECT AVG(total_amount) AS average_transaction_value
FROM Sales;

-- 4. Giá trị hóa đơn cao nhất trong tháng
SELECT MAX(total_amount) AS highest_transaction_value
FROM Sales;

-- 5. Giá trị hóa đơn thấp nhất trong tháng
SELECT MIN(total_amount) AS lowest_transaction_value
FROM Sales;

-- 6. Ngày giao dịch đầu tiên trong tháng
SELECT MIN(transaction_date) AS first_transaction_date
FROM Sales;

-- 7. Ngày giao dịch cuối cùng trong tháng
SELECT MAX(transaction_date) AS last_transaction_date
FROM Sales;
