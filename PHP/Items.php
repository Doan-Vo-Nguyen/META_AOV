<?php                                         
    $sql = "SELECT * FROM champions JOIN stats_items ON champions.ID = stats_items.id_Champ JOIN items WHERE stats_items.id_items = items.id AND champions.champ_Name = '$name'";
    $result = mysqli_query($conn, $sql);
    $count = mysqli_num_rows($result);
    $row = mysqli_fetch_assoc($result);
    if ($count > 0) {
        $item_img = $row['item_img'];
        $item_win = $row['win_rate'];
        $item_pick = $row['pick_rate'];
        echo
    '<div>
        <div style="width:42px;height:52px;">
        </div>
        <div class="rating">
            <div class="rating-inner"
                style="text-align:left;">
                <span class="win">Win%</span>
            </div>
            <div class="rating-inner"
                style="text-align:left;">
                <span class="pick">Pick%</span>
            </div>
        </div>
    </div>
    <div>
        <div class="items group-gap items-bg"
            style="padding:3px">
            <div style="display:flex;">
                <div
                    style="width:42px;display:flex;justify-content:center;align-items:center;">
                    <div class="items-inner">
                        <img src="../../../Images/Items/' . $item_img . '"
                            style="width:42px;height:42px;">
                    </div>
                </div>
            </div>
        </div>
        <div class="rating">
            <div class="rating-inner">
                <span class="win">' . $item_win . '%</span>
            </div>
            <div class="rating-inner">
                <span class="pick">' . $item_pick . '%</span>
            </div>
        </div>
    </div>
</div>
<div style="margin-top:1px">
    <div class="items items-bg">
        <div style="display: flex;">
            <div
                style="width:42px;height:52px;display:flex;justify-content:center;align-items:center">';
                while ($row = mysqli_fetch_assoc($result)){
                $item_img = $row['item_img'];
                $item_win = $row['win_rate'];
                $item_pick = $row['pick_rate'];
                '<div>
                    <div class="items-inner">
                        <img src="../../../Images/Items/' . $item_img . '"
                            style="width:42px;height:42px;"
                            alt="">
                    </div>
                    <div class="rating">
                        <div class="rating-inner">
                            <span class="win">' . $item_win . '%</span>
                        </div>
                        <div class="rating-inner">
                            <span class="pick">' . $item_pick . '%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>';
    }
}
?>