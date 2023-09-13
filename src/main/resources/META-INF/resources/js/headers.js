window.onload = function () {
    var req = new XMLHttpRequest();

    req.open('GET', document.location, false);
    req.send(null);

    /* Associate array to store all values */
    var data = new Object();

    /* Get all headers in one call and parse each item */
    var headers = req.getAllResponseHeaders();
    var aHeaders = headers.split('\n');

    for (var i= 0; i < aHeaders.length; i++) {
        var thisItem = aHeaders[i];

        var key = thisItem.substring(0, thisItem.indexOf(':'));
        var value = thisItem.substring(thisItem.indexOf(':') + 1);

        data[key] = value;
    }

    var display = "";

    for(var key in data) {
        if ("" != key) {
            if (-1 != key.toLowerCase().indexOf("talk")) {
                display += "<span class=\"highlight hidden\"><b>" + key + "</b>: " + data[key] + "</span>";
            } else {
                display += "<b>" + key + "</b>: " + data[key];
            }
        }
    }

    document.getElementById("dump").innerHTML =  display;
}