window.onclick = function(ev) {
    if (0 === ev.button) {
        document.getElementById("next").click();
    } else {
        document.getElementById("prev").click();
    }
};