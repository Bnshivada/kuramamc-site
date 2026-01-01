const SERVER_IP = "kuramamc.tkmc.net";
const SERVER_STATUS_URL = `https://api.mcsrvstat.us/3/${SERVER_IP}`;

function copyIP() {
  navigator.clipboard.writeText(SERVER_IP).then(() => {
    const toast = document.getElementById("toast");
    if (toast) {
      toast.classList.add("show");
      setTimeout(() => toast.classList.remove("show"), 2500);
    }
  }).catch(err => {
    console.error("IP kopyalama hatası:", err);
  });
}

async function loadServerStatus() {
  const statusText = document.getElementById("server-status");
  if (!statusText) return;

  try {
    const res = await fetch(SERVER_STATUS_URL);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);

    const data = await res.json();

    if (data.online) {
      statusText.innerHTML = `🟢 ${data.players.online} / ${data.players.max} oyuncu aktif`;
      statusText.style.color = "#4cff4c";
    } else {
      statusText.innerHTML = "🔴 Sunucu Aktif Değil!";
      statusText.style.color = "#ff4c4c";
    }
  } catch (err) {
    console.error("Sunucu durumu hatası:", err);
    statusText.innerHTML = "⚠️ Sunucu durumu alınamadı";
    statusText.style.color = "#ffcc00";
  }
}

async function loadComponent(id, file) {
  try {
    const res = await fetch(file);
    if (!res.ok) throw new Error(`Component ${file} yüklenemedi: ${res.status}`);

    const data = await res.text();
    const el = document.getElementById(id);
    if (el) el.innerHTML = data;
  } catch (err) {
    console.error(`Component yükleme hatası (${id}):`, err);
  }
}

document.addEventListener("DOMContentLoaded", () => {
  loadComponent("navbar", "components/navbar.html");
  loadComponent("footer", "components/footer.html");
  
  loadServerStatus(); 
  setInterval(loadServerStatus, 45000);  
});
