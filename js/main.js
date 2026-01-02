async function loadComponent(id, file) {
  const res = await fetch(file);
  const html = await res.text();
  document.getElementById(id).innerHTML = html;
}

loadComponent("navbar", "components/navbar.html");
loadComponent("footer", "components/footer.html");
console.log("KuramaMC yüklendi 🐺");
