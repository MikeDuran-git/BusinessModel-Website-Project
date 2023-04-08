function toggleLinks() {
  var linksContainer = document.getElementById("links-container");
  if (linksContainer.style.display === "block") {
    linksContainer.style.display = "none";
  } else {
    linksContainer.style.display = "block";
  }
}

function afficherPage(page) {
  var image = document.getElementById("image-center");
  var paragraphe = document.getElementById("paragraphe-center");
  if (page === "page1") {
    image.src = "/images/image1.jpg";
    paragraphe.innerHTML = "Contenu de la page 1";
  } else if (page === "page2") {
    image.src = "/images/image2.jpg";
    paragraphe.innerHTML = "Contenu de la page 2";
  } else {
    // page d'accueil par défaut
    image.src = "/images/test.jpg";
    paragraphe.innerHTML = "Contenu de la page d'accueil";
  }
}
