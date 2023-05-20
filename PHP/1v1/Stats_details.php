<?php
require 'connect_1v1.php';
function getTierText($tier)
{
    switch ($tier) {
        case 'S+':
            return 'God';
        case 'S':
            return 'Strong';
        case 'S-':
            return 'Quite strong';
        case 'A+':
            return 'Good';
        case 'A':
            return 'Quite good';
        case 'A-':
            return 'A bit good';
        case 'B+':
            return 'Fair';
        case 'B':
            return 'Quite fair';
        case 'B-':
            return 'A bit fair';
        case 'C+':
            return 'Quite Weak';
        case 'C':
            return 'Weak';
        case 'C-':
            return 'Very weak';
        case 'D':
            return 'Bad';
        default:
            return 'Unknown';
    }
}

function setColorLane($lane) {
    if($lane == "Mid") {
        return "colorv-3";
    }
    else
    {
        if($lane == "Top") {
            return "colorv-1";
        }
        else
        {
            if($lane == "Jungle") {
                return "colorv-2";
            }
            else
            {
                if($lane == "ADC") {
                    return "colorv-4";
                }
                else
                {
                    if($lane == "Support") {
                        return "colorv-5";
                    }
                }
            }
        }
    }
}

function setTierColor($tier) {
    switch($tier) {
        case 'S+':
            return 'rate-colorv1';
        case 'S':
            return 'rate-colorv2';
        case 'S-':
            return 'rate-colorv3';
        case 'A+':
            return 'rate-colorv4';
        case 'A':
            return 'rate-colorv5';
        case 'A-':
            return 'rate-colorv6';
        case 'B+':
            return 'rate-colorv7';
        case 'B':
            return 'rate-colorv8';
        case 'B-':
            return 'rate-colorv9';
        case 'C+':
            return 'rate-colorv10';
        case 'C':
            return 'rate-colorv11';
        case 'C-':
            return 'rate-colorv12';
        case 'D':
            return 'rate-colorv13';
        default:
            return 'rate-colorv14';
    }
}

function setTrendColor($trend) {
    // take the first character of the trend
    $trend = substr($trend, 0, 1);
    if($trend == '+') {
        return 'trend-color1';
    }
    else
    {
        if($trend == '-') {
            return 'trend-color2';
        }
    }
}
$sql = "SELECT * FROM champions JOIN stats ON champions.ID = stats.id_champ JOIN lane WHERE stats.id_lane = lane.id";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_assoc($result)) {
    $name = $row['champ_Name'];
    $tier = $row['tier'];
    $trend = $row['trend'];
    $win = $row['win_rate'];
    $pick = $row['pick_rate'];
    $KDA = $row['KDA'];
// Function to get the tier text
    echo '<tr class = "rating-inner" role = "row">
     <td class = "rating-cell rating-st rt-hv">
        <span hidden = "hidden"> ' . $name . '</span>
        <a href = "champion.php?champ_name=' . $name . '" style = "color:inherit;display:block">
            <img src = "../../Images/Champions/' . $name . '.jpg" alt = "' . $name . '" width = "24" height = "24"> ' . $name . '
        </a>
     </td>
    <td class = "rating-cell '.setTierColor($tier).'">
        ' . $tier . ' \ ' .getTierText($tier) .'
    </td>
    <td class = "rating-cell">
        <div class = "' . setTrendColor($trend) . '"> ' . $trend . ' </div>
    </td>
    <td class = "rating-cell"> ' . $win . '%
    </td>
    <td class = "rating-cell"> ' . $pick . '% </td>
    <td class = "rating-cell"> ' . $KDA . '</td>

    </tr>';
}