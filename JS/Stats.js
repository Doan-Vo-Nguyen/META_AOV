function sortListName() {
    var list, i, switching, b, shouldSwitch, dir, switchcount = 0;
    list = document.getElementById("name_c");
    // gán biến switching đại diện cho việc có tiếp tục kiểm tra hay không
    switching = true;

    // gán biến switching đại diện cho việc có tiếp tục kiểm tra hay không
    dir = "asc";

    //Sử dụng vòng lặp cho đến khi nào switching = false
    while (switching) {
        // Bắt đầu bằng việc: Không có phần tử nào được đổi vị trí
        switching = false;
        b = list.getElementsByTagName("LI");

        // Lặp qua tất cả các phần tử trong danh sách trừ phần tử cuối cùng
        for (i = 0; i < (b.length - 1); i++) {
            // Bắt đầu bằng việc: Không có phần tử nào được đổi vị trí
            shouldSwitch = false;

            // So sánh hai phần tử liền kề, nếu phần tử đứng trước lớn hơn phần tử đứng sau thì đổi vị trí
            if (dir == "asc") {
                if (b[i].innerHTML.toLowerCase() > b[i + 1].innerHTML.toLowerCase()) {
                    // Nếu điều kiện đúng thì đổi vị trí
                    shouldSwitch = true;
                    break;
                }
            } else if (dir == "desc") {
                if (b[i].innerHTML.toLowerCase() < b[i + 1].innerHTML.toLowerCase()) {
                    // Nếu điều kiện đúng thì đổi vị trí
                    shouldSwitch = true;
                    break;
                }
            }
        }
        if (shouldSwitch) {
            // Nếu điều kiện đúng thì đổi vị trí
            b[i].parentNode.insertBefore(b[i + 1], b[i]);
            switching = true;

            // Mỗi khi đổi vị trí thì tăng biến switchcount lên 1
            switchcount++;
        } else {
            // Nếu không có phần tử nào được đổi vị trí thì kiểm tra xem có đổi chiều sắp xếp hay không
            if (switchcount == 0 && dir == "asc") {
                dir = "desc";
                switching = true;
            }
        }
    }
}