const SERVER_IP = "kuramamc.tkmc.net";

async function loadServerStatus() {
  try {
    const res = await fetch(`https://api.mcsrvstat.us/2/${SERVER_IP}`);
    const data = await res.json();

    const el = document.getElementById("server-status");

    if (!data.online) {
      el.innerText = "🔴 Sunucu şu an kapalı";
      return;
    }

    el.innerText = `🟢 ${data.players.online} / ${data.players.max} oyuncu aktif`;
  } catch {
    document.getElementById("server-status").innerText =
      "⚠️ Sunucu bilgisi alınamadı";
  }
}

function copyIP() {
  navigator.clipboard.writeText(SERVER_IP);
  const t = document.getElementById("copied-text");
  t.style.opacity = "1";
  setTimeout(() => t.style.opacity = "0", 2000);
}

loadServerStatus();
