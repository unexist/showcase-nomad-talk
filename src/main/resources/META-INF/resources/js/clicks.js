function handleNext() {
    var elems= document.getElementsByClassName("hidden");

    if (0 < elems.length) {
        elems[0].classList.remove("hidden");
    } else {
        document.getElementById("next").click();
    }
}

function handlePrev() {
    document.getElementById("prev").click();
}

document.addEventListener("click", function(ev) {
    if (0 === ev.button) {
        handleNext();
    } else if (2 === ev.button) {
        handlePrev();
    }
})

document.addEventListener("keydown", function(ev) {
    switch (ev.keyCode) {
        case 33: handleNext(); break; /* Next */
        case 34: handlePrev(); break; /* Prev */
        case 66: location.reload(); break; /* Square */
    }
});
