const SERVER_IP = "kuramamc.tkmc.net";
const SERVER_STATUS_URL = `https://api.mcsrvstat.us/2/${SERVER_IP}`;

function copyIP() {
  navigator.clipboard.writeText(SERVER_IP);

  const toast = document.getElementById("toast");
  if (!toast) return;

  toast.classList.add("show");
  setTimeout(() => toast.classList.remove("show"), 2500);
}

async function loadServerStatus() {
  const statusText = document.getElementById("server-status");
  if (!statusText) return;

  try {
    const res = await fetch(SERVER_STATUS_URL);
    const data = await res.json();

    if (data.online) {
      statusText.innerHTML = `🟢 ${data.players.online} / ${data.players.max} oyuncu aktif`;
      statusText.style.color = "#4cff4c";
    } else {
      statusText.innerHTML = "🔴 Sunucu Aktif Değil!";
      statusText.style.color = "#ff4c4c";
    }
  } catch (err) {
    statusText.innerHTML = "⚠️ Sunucu durumu alınamadı";
    statusText.style.color = "#ffcc00";
  }
}

function loadComponent(id, file) {
  fetch(file)
    .then(res => res.text())
    .then(data => {
      const el = document.getElementById(id);
      if (el) el.innerHTML = data;
    });
}

document.addEventListener("DOMContentLoaded", () => {
  loadComponent("navbar", "components/navbar.html");
  loadComponent("footer", "components/footer.html");
  loadServerStatus();
});

window.addEventListener("load", () => {
  document.body.style.minHeight = "100vh";
});
