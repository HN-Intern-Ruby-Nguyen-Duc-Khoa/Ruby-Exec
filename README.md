2. variable
- biến toàn cục: $var, có thể khai báo hoặc truy nhập ở bất cứ đâu
- biến cục bộ: chũ in thường hoặc _var. Biến cục bổ chỉ có nghĩa khi ở trong scope của nó. Chỉ tồn tại trong scope đó. Lưu ý, scope trong fucntion là scope độc lập trong function đó, chỉ có $global mới có nghĩa hoặc param hoặc các scope var được khai báo trong đó
- Biến static class: @@var, -> biến chung trong tất cả instance của class đó, lưu vào 1 ô nhớ duy nhất
- Biến class: @var, chỉ tồn tại trong scope class của 1 instance cụ thể, chỉ thay đổi bởi instance đó
- Biến constant: chữ in hoa,có thể thay đổi được. Sử dụng freeze để ngăn chặn việc thay đổi, thực chất là thay đổi ô nhớ địa chỉ, chỉ dùng cho collection như String
Note: Đây không phải là 1 kiểu biến: #{var} biến nội suy

3. String
- Khởi tạo bằng ""(recommend), ''
- Sử dụng .class để trả về type
- String interpulation: #{var}, chỉ tác dụng với ""
- Access ruby string: [specific], range -> [range1..range2], trường hợp số âm thì truy nhập ngược lại chuỗi
- 4 cách concat: +(phải khởi tạo thêm bộ nhớ ~ unrecommend) , space, << (reconmend), .concat(reconmend)
- Comparing: ==, .eql?(recommend) so sánh cả kiểu dữ liệu
- Chi tiết: docs

4. Symbol
- Giống String nhưng không thể thay đổi từng giá trị trong chuối symbol
- Các object_id(địa chỉ ô nhớ) của symbol không bao giờ thay đổi sau mỗi lần khởi tạo, còn string thì có
- Khai báo:
+ :symbol
+ :"symbol"
+ "string".to_sym
- Dùng làm key trong hash, làm tham số trong hàm get set

5. Numberic
- Integer, Float extends Numberic
- Trong Ruby, integer có thể viết dạng: 100_000
- Các hàm logic số học: docs
- Điểm khác nhau giữa float và interger trong ruby:
+ Thực hiện phép toán với float -> luôn trả về float, kết quả của phép toán float sẽ làm tròn vô cực
-> Nếu muốn so sánh các kết quả của phép toán float phải thực hiện làm tròn trước. Round,...

6. Loop
- while condition [do] end, begin end while condition ~ giống do...while
- until condition [do] end, begin end until condition: Đến khi nào thỏa mãn condition thì dừng vòng lặp, ngược lại với while
- each iterator: collection.each{|item|do}, collection.each do |item| #something end (recommend)
- for in: for i in collection #do end
- Các từ khóa next, break trong loop: next bỏ qua vòng lặp hiện tại, thực hiện vòng lặp tiếp, trả về giá trị nin ~ return; còn break dừng vòng lặp, có thể sử dụng return sớm trong vòng lặp
- redo, retry: redo quay lại block code tại iterator đó, chỉ khi nào đúng thì mới tiếp tục đi tiếp iterator ~ khách hàng nhập dữ liệu
- retry tương tự redo, đặt trong rescure block, khi kích hoạt retry thì chạy lại code từ begin -> rescure, phải giới hạn số lần cho retry (exception)
- Một số method: select, map. Có thể dùng cho hash, inject ~ reduce js. Các hàm này cần truyền vào 1 khối block

7. Conditional
- False, nil ~ false
- 0, anything else ~ true
- If condition then #do end, if condition elsif #do else #do end. Short if: [code] if condition
- Toán tử 3 ngôi ?
- Unless ngược lại với if. Short unless: [code] if unless
- Case when: case expression [when expression, [expression ...] [then] #do [else #do] end, expression có thể là 1 biến (có thể kiểm tra giá trị của nó hoặc kiểu của nó) hoặc 1 expression (biểu thức)
- Case expression in pattern, pattern là một mẫu so sánh với expression (Ruby 3 trở lên)

8. Method
- method (argu = defaultValue,..., *otherValue) #do end, short: method(argu = defaultValue, ..., *otherValue) = expression
- Trong trường hợp ta chưa biết hết tham số của method -> sử dụng *otherValue
- Tham số từ khóa -> giúp việc khai báo tham số cho hàm tường minh ~ RECOMMEND
- Nếu method không có return thì câu lệnh cuối sẽ mặc định là trả về
- Class method, instance Method
+ Có 3 cách tạo Class method: def self.method end, def ClassName.method end, trong trường hợp có nhiều class method -> class <<self def method1 end def method2 end end, Class Method được gọi bởi chính tên Class (static method class)
+ instance method, method được gọi bởi instance của class
- Block, Proc, Lambda
+ Block: khởi tạo bằng do/end hoặc {}. Nếu truyền tham số vào thì tham số được ngăn cách bởi 2 dấu , gọi block bằng "yeild" (Phải kiểm tra block có được truyền vào hay không). Block phải được đặt trong 1 phương thức để thực thi (đứng sau các hàm hoặc là tham số truyền vào 1 hàm khác &block và gọi block bằng yeild)
+ Proc: Block có tính dùng lại khác nhiều  nếu ta muốn lưu kết quả của block vào 1 var, nhưng để dùng lại phải copy code ->Sử dụng Proc
+ Lambda: không có tên, vô danh, tiết kiệm bộ nhớ
+ Proc vs Lambda: Lambda sau khi return block xong thì tiếp tục chạy còn Proc thì dừng lại tại thời điểm .call trong scope cụ thể, lamdba bắt buộc phải chuyền đủ tham số đã định nghĩa trong khối block trong khi Proc thì không cần (khi gọi với .call)

9. Array extend Object, include? Emmurable -> true

- Create array: [], Array.new[], %w(1,2,3) ~ mảng string. Có thể khai báo nhiều kiểu dữ liệu trong array
- Tạo array biết số lượng và cùng 1 giá trị: Array.new length value. VD: Array.new 3 true -> [true, true, true]
- Access array: [a..b] -> truy xuất element[a] -> element[b]
- 1 số phương thức truy xuất: .first, .last, .take 3 (lấy 3 phần tử đầu tiên), .at index
- get information of array: .length, .empty?, .any?, .include? value (kiểm tra chứa value không)
- Manipulate: push hoặc <<, unshift, insert(index, value), pop, shift(index),delete_at(index), uniq! (trả về array gốc có unique value), uniq(trả về copy array có unique value). compact (trả về copy array loại bỏ nin), compact! (trả về array gốc loại bỏ nin). docs
- Interator: .each, .reverse_each, map, map! nếu thay đổi luôn array gốc, select, select!, reject (copy array đã loại bỏ các phần tử thỏa mãn điều kiện), reject!(trả về array gốc)
- Other: .shuffle (xáo trộn mảng), .sort, .reverse, .sample (lấy về phần tử ngẫu nhiên), .max, .min, freeze (đóng băng mảng, không thay đổi được)

10. Hash
- Mảng key-value mà key riêng biệt. Giống array nhưng index có thể là bất kì kiểu gì. Truy cập đến key không tồn tại -> trả về nil, Có thử tự là các key được truyền vào. Key của hash nên là symbol
- Tạo hash: {a: 1, b: 2}, Hash["a": 1, "b": 2], Hash.new
- Access hash: hash[:key]
- Methods: .keys (trả về mảng), .values (trả về mảng), Hash.try_convert (convert object -> hash), nếu convert không phải object -> nil
- So sánh hash: so sánh số lượng, trước, cùng số lượng so sánh từng cặp giá trị về key-value (phải cùng key, nếu khác key -> false), ==, >, <, !=, >=, <=
- Asign value: hash[:key] = value, nếu gán key chưa tốn tại thì tạo luôn cặp key-value đó hoặc thêm bằng hash.store key,value
- Iterator hash: each{|key,value| #do}, each_key{key #do}, each_value{value #do}
- Other: compact (!), any?, empty?, include?, length, merge (!), has_key?, reject (!), has_value?, select (!) ~ giống Array

11. OOP
- Quy tắc đặt tên: good_dog
- Khởi tạo thuộc tính của class ở phương thức initialize
- Các hàm set, get
- Instance method: được gọi bởi instance của class
- CLass Method: được gọi bởi class method. 3 cách đã nói ở method: self, tên Class, << self
- Abstraction
- Encapsulation:
* với instance method
+ Outside class: private, protected method đều không gọi trực tiếp được mà phải gọi thông qua 1 public method của class
+ Inside class: private, protected method có thể gọi được trong public method thông qua từ khóa self
* với class method
+ Outside class: private, protected method đều không gọi trực tiếp được mà phải gọi thông qua 1 public method của method class
+ Inside class:  có thể gọi protected method bằng cả "self" hoặc tên Class nhưng private method chỉ gọi bằng "self"
-> private method chỉ được gọi bằng "self"
- Inheritance:
- extends ~ <, attr_accessor: a,b . Initialize value với self.a = value
- Lớp con không thể gọi được các private, protected method của lớp cha, nhưng có thể gọi được public method của lớp cha và có thể gọi tất cả phương thức của lớp cha(thông qua self) thông qua 1 phương thức public của lớp con (áp dụng cả instance method và class method)
- Polymorphism
+ Overide: lớp con định nghĩa 1 phương thức có tên giống lớp cha
+ Không thể overload


12. Files

- Tạo File: File.new("name.txt", options), các options: r,w, w+ (cả đọc và ghi), a+ (nếu file tồn tại, ghi thêm vào cuối, nếu chưa tồn tại thì tạo file mới)
- Sau khi xử lý với file xong phải đóng file: file.close(), trước khi xử lý thì dùng File.open(url, options)
- Đọc file: File.read(url), File.readlines(url) đọc từng dọc -> trả về 1 mảng, mỗi phần tử là 1 dòng
- Ghi đè file: instance file.puts(value) với chế độ w+
- Ghi vào cuối file: instance file.puts(value) với chế độ a+
- Delete file: File.delete(url), nếu xóa file chưa tồn tại -> error

13. Module
- 1 tập các method, class, var
- Chỉ chứa hành vi chứ không quan tâm bản chất
- Không thể tạo instance, kế thừa, tạo lớp con từ Module
- có tính đa kế thừa gián tiếp(mix)
- Tất cả Class đều là module, nhưng module chưa chắc là class

- Cây phân cấp hierarchy
+ Module là superclass của Class

- Module có thể chứa cả instance method, class method. Với class method thì phải dùng cả tên Module để gọi trong khi instance method có thể dùng kĩ thuật mixin

- Kĩ thuật mixin:
+ include Module -> khi 1 module được include vào bên trong Class thì Class có thể access các method của module (chỉ instance method)
+ extend: giống include nhưng là biến các instance method của module thành class method của nó, ngoài ra có thể dùng instance của 1 class extend Module -> khi đó nó có thể sử dụng instance method của Module đó

- Namespace: 1 cách xây dựng các đối tượng xung đột có thể tồn tại cùng nhau. VD: Namespace::Class

- Module without namespace: sử dụng require "url(Class)" -> có thể tạo được instance của Class vừa require
- Module with namespace: Khởi tạo class bên trong Module. Tạo instance của class trong namespace đó bằng: Namespace::Class.new (Recommend)
- Có thể lồng các module với nhau: Namespace1::Namespace2::... với Namespace là 1 module, class hoặc là 1 biến nào đó. gọi hàm thì dùng "."

- Included callback: định nghĩa module chung sẽ được include vào trong các class khác
- extend callback: định nghĩa module chung sẽ được extend vào trong class khác

14. Exception
- begin #do resuce #do else #n block và dùng lại
do [ensure #do] end. ensure luôn chạy
- Tạo các exceptio
15. Regular expression ~ pattern
- khai báo: /regex/, %r|regex|
- Kiểm tra regex: =~ /.../
- Expression modifier: /.../modifier. modifier có thể là:
+ i: bỏ qua chữ hoa
+ o: khi regex có #{var} chỉ thực hiện phép nội suy với giá trị var đầu tiên
+ x: bỏ qua khoảng trắng, dùng được comment trong regex
+ m: so khớp nhiều dòng văn bản, nhiều chuỗi
+ docs....
- Kiểm tra có match với regex không: a.match? regex
- Search and replace string: sub, sub!, gsub (thay thế cả chuỗi), gsub!. Sử dụng với regex. VD: sub(regex, value)


16. Metaprograming
- Code sinh ra Code
- Xử lý meta data
- Reflection
+ ObjectSpace: object hệ thống
+ methods: list methods. VD "abc".methods
- Nên sử dụng public_send thay vì send
