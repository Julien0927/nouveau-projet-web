document.addEventListener('DOMContentLoaded', function () {
    const form = document.querySelector('.ajax-form');

    form.addEventListener('submit', function (e) {
        e.preventDefault();

        fetch(form.action, {
            method: 'POST',
            body: new FormData(form),
        })
        .then(response => response.json())
        .then(data => {
            // Gérer la réponse ici (peut-être mettre à jour le message ou rediriger)
            document.getElementById('ajax-messages').innerHTML = data.message;
        })
        .catch(error => {
            console.error('Erreur lors de la soumission du formulaire:', error);
        });
    });
});