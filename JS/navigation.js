function navDropdown(e) {
    for (var a = $("#" + e + "-dropdown"), n = $("#" + e + "-content"), o = $("#" + e + "-arrow"), t = e < 0 ? -1 : 1, s = [], i = [], l = [], r = Math.abs(e); r > 0; r = Math.floor(r / 10)) {
        var c = t * r;
        s.push("#" + c + "-content"),
        i.push("#" + c + "-dropdown"),
        l.push("#" + c + "-arrow")
    }
    s = s.join(","),
    i = i.join(","),
    l = l.join(","),
    $(".dropdown-content").not(s).hide(),
    $(".dropdown-active").not(i).removeClass("dropdown-active"),
    $("#nav-menu .fa").not(l).each((function() {
        var e = $(this)
          , a = e.data("chevron-active")
          , n = e.data("chevron-idle");
        e.removeClass(a).addClass(n)
    }
    )),
    n.toggle(),
    a.toggleClass("dropdown-active");
    var d = o.data("chevron-active")
      , v = o.data("chevron-idle");
    o.toggleClass(v).toggleClass(d)
}

function collapseNav() {
    var e = $("html").toggleClass("nav-collapsed");
    e.css({
        "overflow-x": "hidden"
    }),
    $(".nav-transition").removeClass("nav-transition"),
    resetNavSearch(),
    (small() || mobile()) && $("#nav-menu .nav-item").css({
        display: "none"
    }),
    $(".dropdown-content").hide(),
    $(".dropdown-active").removeClass("dropdown-active"),
    $("#nav-menu .fa").each((function() {
        var e = $(this)
          , a = e.data("chevron-active")
          , n = e.data("chevron-idle");
        e.removeClass(a).addClass(n)
    }
    ));
    var a = window.setInterval((function() {
        handleResponsiveCallbacks()
    }
    ), 1);
    (small() || mobile()) && setTimeout((function() {
        $("#nav-menu .nav-item").css({
            display: ""
        })
    }
    ), 300),
    setTimeout((function() {
        clearInterval(a),
        e.css({
            "overflow-x": ""
        })
    }
    ), 500),
    mobile() || small() || (e.hasClass("nav-collapsed") ? setCookie("nav-state", "closed", "Fri, 31 Dec 9999 23:59:59 GMT") : setCookie("nav-state", "open", "Fri, 31 Dec 9999 23:59:59 GMT"))
}
// function setInitialNavState() {
//     if (small() || mobile())
//         $("html").addClass("nav-collapsed");
//     else {
//         var e = window.matchMedia("only screen and (min-width: 1855px)").matches ? "open" : "closed"
//           , a = getCookie("nav-state");
//         a && (e = a),
//         "open" === e ? ($("html").removeClass("nav-collapsed"),
//         setTimeout((function() {
//             $(".nav-transition").removeClass("nav-transition")
//         }
//         ), 500)) : ($("html").addClass("nav-collapsed"),
//         setTimeout((function() {
//             $(".nav-transition").removeClass("nav-transition")
//         }
//         ), 500))
//     }
//     $("#nav-wrapper").show(),
//     $("#menu-wrapper").show()
// }
// function resetNavSearch() {
//     (small() || mobile()) && ($("#nav-search .typeahead__query").hide(),
//     $("#nav-search-input").val("").trigger("input.typeahead"),
//     $("#nav-search-inner").removeClass("mobile-search-input"),
//     $("#mobile-logo").show(),
//     $("#nav-search-button").addClass("mobile-search-button").off("click").on("click", (function() {
//         $("html").hasClass("nav-collapsed") || collapseNav(),
//         $("#nav-search .typeahead__query").toggle(),
//         $("#mobile-logo").toggle(),
//         $("#nav-search-inner").toggleClass("mobile-search-input"),
//         $("#nav-search-input").val("").trigger("input.typeahead").focus(),
//         $(this).toggleClass("mobile-search-button")
//     }
//     ))),
//     $("#nav-search").css({
//         display: "flex"
//     })
// }
function handleResponsiveCallbacks() {
    for (var e = 0; e < window.responsiveCallbacks.length; e++)
        window.responsiveCallbacks[e]()
}
function handleResponsive() {
    handleResponsiveCallbacks(),
    setTimeout((function() {
        handleResponsiveCallbacks()
    }
    ), 500)
}
function setupPlaceholders() {
    if (adBlocker()) {
        var e = !$("#under_page_title > ._r35p0n51v3").children().first().find("script").length || $("#ac-lre-player").length
          , a = $("#sidebar > .r35p0n51v3").children().first().find("script").length
          , n = $("#bottom_of_page > .r35p0n51v3").children().first().find("script").length;
        e || $("#header_wrapper").html(templates.headerBlocked()),
        a || $("#sidebar").parent().html(templates.sidebarBlocked()),
        n || $("#bottom_of_page").hide()
    }
}
function setupNavMenu() {
    $("#nav-menu").on("mouseleave", (function() {
        mobile() || $("html").hasClass("nav-collapsed") && ($(".dropdown-content").hide(),
        $(".dropdown-active").removeClass("dropdown-active"),
        $("#nav-menu .fa").each((function() {
            var e = $(this)
              , a = e.data("chevron-active")
              , n = e.data("chevron-idle");
            e.removeClass(a).addClass(n)
        }
        )))
    }
    ))
}
window.responsiveCallbacks = window.responsiveCallbacks || [],
window.initialization = window.initialization || [],
window.initialization.push(resetNavSearch, setupNavMenu),
$(window).resize((function() {
    handleResponsive()
}
)),
handleResponsive(),
setInitialNavState();
