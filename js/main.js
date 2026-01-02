function loadComponent(id, file) {
  fetch(file)
    .then(res => res.text())
    .then(data => {
      document.getElementById(id).innerHTML = data;
    });
}

loadComponent("navbar", "components/navbar.html");
loadComponent("hero", "components/hero.html");
