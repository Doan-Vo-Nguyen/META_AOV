function searchMatch(e, t, a) {
    Array.isArray(t) || (t = [t]);
    for (var n = 0 === t.length, i = 0; i < t.length; i++) {
        if (a(e, t[i])) {
            n = !0;
            break
        }
    }
    return n
}
function filterSearch(e, t) {
    return "all" === t || exactSearch(e, t, "search-terms-filter")
}

function exactSearch(e, t, a) {
    if ($(e).data(a)) {
        for (var n = $(e).data(a).split("|"), i = 0 === n.length, s = 0; s < n.length; s++)
            if (n[s].toLowerCase() === t.toLowerCase()) {
                i = !0;
                break
            }
        return i
    }
    return !1
}

async function getSearchItems() {
    if (window.Search.request && await window.Search.request,
    window.Search.items.length > 0)
        return Promise.resolve(window.Search.items);
    let e = "/search" + buildUrl(window.defaults.region, mode(), version(), window.defaults.page, window.defaults.map, window.defaults.ranks);
    return window.Search.request = fetch(e).then(e=>e.json()).then(e=>window.Search.items = e).then(()=>window.Search.items),
    window.Search.request
}
function unsearch(e) {
    $(e).each((function() {
        $(this).addClass("search-visible"),
        $(this).show()
    }
    ))
}
function handleNavSearch(e, t) {
    var a = t.split("|");
    for (var n in a) {
        var i = a[n].split(" ");
        for (var s in i)
            if (i[s].trim().replaceAll("_", " ").toLowerCase().startsWith(e.toLowerCase().trim()))
                return !0
    }
    return !1
}
function getCategories(e) {
    var t = [];
    for (var a in e)
        e[a].category && !t.includes(e[a].category) && t.push(e[a].category);
    return t
}

function typeaheadSearch(e, t, a, n) {
    n = n || [],
    Array.isArray(n) || (n = [n]),
    window.Search.timeout && clearTimeout(window.Search.timeout),
    window.Search.timeout = setTimeout((function() {
        unsearch(e),
        search(e, t, a),
        n.forEach(e=>e())
    }
    ), 100)
}
function noInputSearch(e, t, a) {
    window.Search.timeout && clearTimeout(window.Search.timeout),
    unsearch(e),
    search(e, t, a)
}

function setupSearch(e) {
    getSearchItems().then(t=>{
        var a = $(e);
        if (a) {
            var n = a.find(".typeahead")
              , i = ["name", "search-keys", "search-terms"]
              , s = !1
              , r = getCategories(t);
            t[0].category && (s = {
                key: "category",
                template: templates.searchGroupTemplate
            });
            var l = 12;
            s && (l = 4),
            n.typeahead({
                minLength: 1,
                maxItem: 12,
                maxItemPerGroup: l,
                debug: !1,
                emptyTemplate: "No matches found",
                template: templates.searchTemplate("{{name}}", "{{title}}", "{{image}}", "{{tier}}"),
                group: s,
                templateValue: "{{name}}",
                groupOrder: function(e, t, a, n, i) {
                    var s = this
                      , r = [];
                    for (var l in a) {
                        var o = !1
                          , c = !1;
                        for (var d in a[l])
                            a[l][d].category && t.trim().toLowerCase().includes(a[l][d].category.toLowerCase()) && (o = !0),
                            a[l][d]["search-keys"] && handleNavSearch(t, a[l][d]["search-keys"]) && (c = !0);
                        r.push({
                            group: l,
                            category: o,
                            exact: c,
                            length: a[l].length
                        })
                    }
                    return r.sort((function(e, t) {
                        return e.category && !t.category ? -1 : t.category && !e.category ? 1 : e.exact && !t.exact ? -1 : t.exact && !e.exact ? 1 : s.helper.sort(["length"], !0, (function(e) {
                            return e.toString().toUpperCase()
                        }
                        ))(e, t)
                    }
                    )),
                    $.map(r, (function(e, t) {
                        return e.group
                    }
                    ))
                },
                filter: function(e, t) {
                    if ("Typeahead" !== e.name) {
                        var a = n.val().trim().toLowerCase();
                        for (var i in r)
                            a = a.replaceAll(r[i].toLowerCase() + "s", "").replaceAll(r[i].toLowerCase(), "");
                        return handleNavSearch(a, t)
                    }
                },
                source: {
                    item: {
                        display: i,
                        data: t,
                        href: function(e) {
                            return buildGlobalUrl(e.path)
                        }
                    }
                },
                callback: {
                    onCancel: function(e, t, a) {
                        noInputSearch(".champion-items", [".champion-filter", ".cost-filter"], "")
                    },
                    onSubmit: function(e, a, s, r) {
                        if (r.preventDefault(),
                        s)
                            location.href = s.href;
                        else
                            for (var l in i)
                                for (var o in t) {
                                    var c = i[l];
                                    if (handleNavSearch(n.val(), t[o][c]))
                                        return void (location.href = buildGlobalUrl(t[o].path))
                                }
                    }
                }
            }),
            n.on("propertychange input keyup copy paste cut", (function() {
                var t = $(e).find(".typeahead").val()
                  , a = $(".typeahead__item");
                a.hasClass("active") || a.first().addClass("active"),
                typeaheadSearch(".champion-items", [".champion-filter", ".cost-filter"], t)
            }
            ))
        }
    }
    )
}

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
    return n && (a = "all"),
    a
}