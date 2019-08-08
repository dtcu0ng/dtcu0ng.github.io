# F.A.Q ( những câu hỏi thường gặp )
+ Khi sử dụng Toolkit, bạn có thể sẽ gặp phải những vấn đề sau ( nếu bạn không gặp bất cứ vấn đề gì thì xin chúc mừng bạn đã làm đúng theo hướng dẫn của mình :D ):
##  Lỗi không chạy được Toolkit ( Self-check báo thành công nhưng Toolkit không hiện )
+ Lỗi này khá phổ biến đối với các bạn sử dụng Toolkit lần đầu.
+ Do mình đã code thêm phần AutoLoader ( tải các thành phần cần thiết trên Server của mình về ) và Self-check ( tự kiểm tra các thành phần có hay không nhờ hàm IfExist, nếu không tải các file còn thiếu trên Server về .)
#### Làm thế nào để sửa lỗi này?
+ Đơn giản thôi, bạn chỉ cần chạy lại file, Self-check sẽ tải các file bị thiếu cho bạn. Đảm bảo rằng bạn không chặn truy cập từ các host như là : " *.github.io, *.github.com, cuongz.github.io/* "


## Lỗi trong Toolkit ( Toolkit cant run without these files. Please re-install Toolkit and try again. )
+ Lỗi này là do AutoLoader chưa tải hết files trong thời gian nhất định ( 8-10s dành cho phàn download và 6s cho phần Self-check )
#### Làm thế nào để sửa lỗi này?
+ Bạn chỉ cần chạy lại Toolkit.exe là xong! Self-check sẽ tải các file bị thiếu cho bạn. Đảm bảo rằng bạn không chặn truy cập từ các host như là : " *.github.io, *.github.com, cuongz.github.io/* "


## Lỗi không thể cài đặt .apk
+ Lỗi này là do file apk của bạn, không phải lỗi do Toolkit.
#### Làm thế nào để sửa lỗi này?
+ Thứ nhất, bạn nên rename lại tên apk lại cho ngắn gọn và tuyệt đối KHÔNG add thêm đuôi .apk khi bạn nhập tên file apk. Toolkit sẽ tự động thêm đuôi cho bạn.
+ Khi bạn cài 1 vài file apk nó sẽ báo là ( memory gì đó quên mất rồi :( )
+ Đây là do apk bạn cài quá nặng, thử tìm kiếm bản rút gọn nhẹ hơn xem sao, mình cũng không thể fix được lỗi này ( hiếm gặp )


## Sau khi chọn chức năng, nhập tên apk thì script tự động tắt ngủm luôn :(
+ Lỗi này là do sai sót ở đâu đó, mình cũng đã cố gắng hết sức để sửa nó và cố cho nó giảm thiểu bớt đi đáng kể
+ Nếu bạn vẫn gặp trường hợp đó hãy thông báo cho mình vào [https://www.facebook.com/F1T.dtcuong/posts/1996160070483694](post FB này) để mình có sự hỗ trợ trực tiếp cho bạn :D


## Sau khi cài đặt app, app không chạy được
+ Đây không phải là lỗi của app, hay của Toolkit. Nó chỉ là chức năng của app khi dev app nó sẽ chạy để cho các bạn không debug app được để phòng tránh bug app, cheat,...
+ Cách Xử lý: Tắt USB Debug và Developer Mode, khi nào cần sử dụng thì bật lại.


### Nếu có các lỗi không được miêu tả ở đây, hãy comment vào post FB mình để [https://www.facebook.com/F1T.dtcuong/posts/1996160070483694]( ở đây) , mình sẽ trực tiếp hỗ trợ cho bạn hoặc các bạn có thể tạo 1 cái issue trên Github giùm mình nhé :D



# Vẫn còn update nha :D
