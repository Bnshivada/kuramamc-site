const SERVER_IP = "kuramamc.tkmc.net";
const SERVER_STATUS_URL = `https://api.mcsrvstat.us/2/${SERVER_IP}`;

function copyIP() {
  navigator.clipboard.writeText(SERVER_IP);

  const toast = document.getElementById("toast");
  toast.classList.add("show");

  setTimeout(() => {
    toast.classList.remove("show");
  }, 2500);
}

async function loadServerStatus() {
  const statusText = document.getElementById("server-status");

  try {
    const res = await fetch(SERVER_STATUS_URL);
    const data = await res.json();

    if (data.online) {
      statusText.innerHTML = `🟢 ${data.players.online} / ${data.players.max} oyuncu aktif`;
      statusText.style.color = "#4cff4c";
    } else {
      statusText.innerHTML = "🔴 Sunucu Deaktif!";
      statusText.style.color = "#ff4c4c";
    }
  } catch (err) {
    statusText.innerHTML = "⚠️ Sunucu durumu alınamadı";
    statusText.style.color = "#ffcc00";
  }
}

loadServerStatus();
