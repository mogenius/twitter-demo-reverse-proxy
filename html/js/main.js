const load = () => {
    let target = document.getElementById('targetDiv');
    let converter = new showdown.Converter();

    fetch('README.md')
        .then(response => {
            response.text().then(function(text) {
                target.innerHTML = converter.makeHtml(text);
            });
        });
}

window.onload = load;