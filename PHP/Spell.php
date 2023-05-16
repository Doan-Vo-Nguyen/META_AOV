<?php
                                                                require '../../5v5/connect.php';
                                                                $sql = "SELECT * FROM champions JOIN stats_spell ON champions.ID = stats_spell.id_Champ JOIN spells WHERE stats_spell.id_spell = spells.id AND champions.champ_Name = '$name'";
                                                                $result = mysqli_query($conn, $sql);
                                                                $count = mysqli_num_rows($result);
                                                                $row = mysqli_fetch_assoc($result);
                                                                if ($count > 0) {
                                                                        $spell = $row['spell_name'];
                                                                        $spell_img = $row['spell_image'];
                                                                        $spell_win = $row['win_rate'];
                                                                        $spell_pick = $row['pick_rate'];
                                                                        echo
                                                                        '<div style="margin-left: 48px;">
                                                                            <div style="gap: 3px;display: flex;padding:3px;"
                                                                                class="group-gap">
                                                                                <div class="spell">
                                                                                    <img src="../../../Images/Spell/' . $spell_img . '"
                                                                                        style="width:42px;height:42px">
                                                                                </div>
                                                                            </div>
                                                                            <div style="display:flex;margin-top:6px">
                                                                                <div class="rating" style="margin-left:-50px;">
                                                                                    <div class="rating-inner"
                                                                                        style="text-align:left;">
                                                                                        <span class="win">Win%</span>
                                                                                    </div>
                                                                                    <div class="rating-inner"
                                                                                        style="text-align:left;">
                                                                                        <span class="pick">Pick%</span>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="rating" style="width:48px;">
                                                                                    <div class="rating-inner"
                                                                                        style="text-align:left;">
                                                                                        <span class="win">' . $spell_win . '</span>
                                                                                    </div>
                                                                                    <div class="rating-inner"
                                                                                        style="text-align:left;">
                                                                                        <span class="pick">' . $spell_pick . '</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>';
                                                                        while($row = mysqli_fetch_assoc($result)){
                                                                            $spell = $row['spell_name'];
                                                                            $spell_img = $row['spell_image'];
                                                                            $spell_win = $row['win_rate'];
                                                                            $spell_pick = $row['pick_rate'];
                                                                            echo
                                                                            '<div>
                                                                                <div style="gap: 3px;display: flex;padding:3px;">
                                                                                    <div class="spell">
                                                                                        <img src="../../../Images/Spell/' . $spell_img . '"
                                                                                            style="width:42px;height:42px">
                                                                                    </div>
                                                                                </div>
                                                                                <div style="display:flex;margin-top:6px">
                                                                                    <div class="rating" style="width:48px;">
                                                                                        <div class="rating-inner"
                                                                                            style="text-align:left;">
                                                                                            <span class="win">' . $spell_win . '%</span>
                                                                                        </div>
                                                                                        <div class="rating-inner"
                                                                                            style="text-align:left;">
                                                                                            <span class="pick">' . $spell_pick . '%</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>';
                                                                        }
                                                                    }
                                                                ?>