<?php
require 'connect_1v1.php';
$query = "SELECT * FROM champions, role_champions WHERE champions.id_role = role_champions.id_role";
$result = mysqli_query($conn, $query);
$number_of_result = mysqli_num_rows($result);
// Determine number of total pages available
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 10;

// Calculate the page
$number_of_page = ceil($number_of_result / $limit);

// Limit current_page within range 1 to $number_of_page
if ($current_page > $number_of_page) {
$current_page = $number_of_page;
}
else if ($current_page < 1)
{ 
    $current_page = 1;
} 
// find starting page's result
    $start=($current_page - 1) * $limit;
    // SQL query to get data of a range
    $sql_paging="SELECT * FROM champions, role_champions WHERE champions.id_role = role_champions.id_role LIMIT $start, $limit";
    $result_paging = mysqli_query($conn, $sql_paging);
    while ($row=mysqli_fetch_assoc($result_paging)) {
    $id=$row['id_champ'];
    $name=$row['champ_Name'];
    $image=$row['image'];
    $role_name=$row['name_role'];
    $id_role=$row['id_role'];
    echo '<li id="champion-' . $id . '" class="list-champion">
        <span class="serial" tag="' . $id . '"
            type="' . $id_role . '" style="display: none">' . $name . '</span>
        <div class="champions">
            <a class = "champion-items" href="../1v1/Champion/' . $name . '.php" data-search-terms-like="' . $name . '|' . $name . '" data-search-terms-exact = "' . $role_name . '|' .$role_name . '">
                <img src="../../Images/Champions/' . $image . '" alt="champion">
            </a>
            <p style="white-space: nowrap;" class="name">' . $name . '</p>
        </div>
        </li>'; 
    }