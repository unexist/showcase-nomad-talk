window.onclick = function(ev) {
    if (0 === ev.button) {
        var elems= document.getElementsByClassName("hidden");

        if (0 < elems.length) {
            elems[0].classList.remove("hidden");
        } else {
            document.getElementById("next").click();
        }
    } else {
        document.getElementById("prev").click();
    }
};