bundle exec rubocop
framgia-ci run --local

Thao tác khi thêm file mới vào gitignore:
- Thêm file vào .gitignore
- Chạy git rm -r --cache folderName

Create controller:
- rails generate controller ControllerName <optional> action


Yield
- Để render content theo 1 yield được đặt tên -> sử dụng <% provide :namedYield, value %>. Gọi content của namedYield. <%= yield(:namedYield) %>
- Nếu không có provide thì phần đó sẽ được render vào chỗ khi chỉ có yeild đi 1 mình
- <% code %>: kích hoạt 1 đoạn code
- <%= code %>: trả về kết quả của đoạn code đó
- Các file shared chung phải đặt tên theo dạng: _fileName

Helper: giúp tạo các function sử dụng trong view hoặc controller đó. Nếu tạo trong view cha(layout) thì các view con đều sử dụng được
- Trong trường hợp các function đó chỉ sử dụng cho 1 controller hay 1 view nào đó -> tách ra thành 1 file name_helper.rb

Trong rails không dùng được thẻ a mà phải dùng link_to thay thế

Gem config, i18n: set up content trong file yml
- Set up lookup-layzy:
+ Đối với file view: làm theo kiểu sơ đồ cây: view->parent->child->erb: key:content
+ lookup-lazy chỉ áp dụng cho các file trong views cùng kiểu syntax t(.lazy). Đối với các file khác phải ghi rõ I18n.t và cả cây: I18n.t("models.user.name") 

Routes:
- get "nameUrl", to: "path to view". Gọi path ở bên ngoài với syntax: nameUrl_path 

Generate Controller: rails generate controller Users new
Generate model: rails generate model User name:string email:string
migrate db: rails db:migration
rollback db: rails db:rollback


Một số hàm orm
- find id|[id1,id2]: tìm record có id hoặc nằm trong khoảng [id1,id2]
- find_by key:value,...: tìm record theo các cặp key:value. VD: collection.find_by key:value,..
- update key:value,...: update record theo các cặp key:value. VD: collection.update key:value,..
- 1 cách khác update thông dụng hơn: thay đổi trực tiếp thuộc tính rồi chọn gọi save

Validate và callback
- Sử dụng validate khi insert dữ liệu hay update dữ liệu. Có thể custom message error với các hàm như too_long, too_short, wrong_length (dùng với length)
- Một số thuộc tính validate
+ presence: giống require
+ format: sử dụng với regex, so sánh với pattern
+ length: so sánh độ dài
- Các hàm callback là các hàm được gọi ở các vòng đời khác nhau của 1 object
+ insert/update: before_validate, after_validate, before_save, around_save, before_create/before_update, around_create/around_update, after_create/after_update, after_save, after_commit/after_rollback
+ destroy: before_destroy, around_destroy, after_destroy, after_commit/after_rollback

-> Khi chạy create,update hay destroy thì tất cả các hàm ta đã liệt kê đều chạy. Ta có custom mỗi giai đoạn

- Migrate db:
rails g migration name
rails db:migrate
rails db:rollback


- Các hàm được tạo trong rails
+ form_for(@collection): tạo 1 form để nhập dữ liệu cho @collection, dữ liệu sau khi nhập sẽ được truyền tới hàm trong controller dưới dạng hash
+ Sử  strong parameter để hạn chế tấn công(tấn công quyền): params.require(:collection).permit(key)
+ pluralize(trong helper) để in lỗi: <%= pluralize @user.errors.count, "error" %>
+ redirect_to: để chuyển hướng. redirect_to @collection = redirect_to collection_url (@collection)
+ flash[:key]= ""|html: thông báo đầu tiên, có dạng là 1 hash

8.
- session, cookie: lưu vết thông tin người dùng
+ session: lưu tập tin server, server sinh ra
+ cookie: lưu tập tin trên trình duyệt người dùng, trình duyệt sinh ra

% trong ruby:
- %i (hash_key_1 hash_key_2) = [:hash_key_1, :hash_key_2]

||= mang ý nghĩa. VD: @current_user ||= User.find_by id: session[:user_id]
nếu @current_user = nil, gán = User.find_by id: session[:user_id]
còn không nil dùng luôn giá trị @current_user

10.
Các hàm trong helper mặc định sẽ sử dụng được trong các file views
Trường hợp muốn sử dụng các hàm đó trong controller thì phải include hàm Helper đó với syntax:
include HelperName
attr_accessor: được sử dụng để khởi tạo các thuộc tính có khả năng getter và setter bên ngoài class đó. Thông thường các thuộc tính trong rails sẽ là private và ta không thể access được -> thường phải tạo 1 public method để gọi hay sửa những thuộc tính đó => Khắc phục điều đó, rails tạo ra attr_accessor giúp ta gọi và sửa trực tiếp thuộc tính mà không cần qua public method
- Muốn gọi attr_accessor hay thay đổi nó, phải dùng từ khóa "self": self.attr_accessor

vypbtbtxujthqijd

*
<%= form_for :first, url: ... do |f| %>
  <%= f.label :second %>
=> params[:first][:second]

params.require(:user).permit USER_PARAMS
cần 1 đối tượng @user truyền vào
cho phép các thuộc tính USER_PARAMS

13. Microposts
- Cung cấp các hàm belong_to và has_many để thể hiện các liên kết 1-1, 1-n như ở trong db
- object.errors.full_messages và object.errors.add: hiển thị và thêm lỗi, các errors là 1 thuộc tính của object



14. Ajax
- thêm thuộc tính: remote:true cho form_for để rails để rails biết form này sử dụng ajax
