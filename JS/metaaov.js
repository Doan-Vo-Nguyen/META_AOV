
// function to display the runes when clicking on the rune tab
function tab(e, t) {
    return "#" !== e[0] && (e = "#" + e),
    "#" !== t[0] && (t = "#" + t),
    $(e + " .tab-selected").removeClass("tab-selected"),
    $(e + " .content-selected").removeClass("content-selected").addClass("hidden"),
    $(e + " " + t + "-tab").addClass("tab-selected"),
    $(e + " " + t + "-content").removeClass("hidden").addClass("content-selected"),
    !1
}

function getCheckBoxFilters(e) {
    for (var t = $(e + ":checked").get(), a = [], n = !1, i = 0; i < t.length; i++) {
        var l = $(t[i]).val();
        if (a.push(l),
        n = "all" === l)
            break
    }
    return n && (a = "all"),a
}

