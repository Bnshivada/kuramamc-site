function copyIP() {
  navigator.clipboard.writeText("kuramamc.tkmc.net");

  const toast = document.getElementById("toast");
  if (!toast) return;

  toast.classList.add("show");
  setTimeout(() => toast.classList.remove("show"), 2500);
}

document.addEventListener("DOMContentLoaded", () => {
  const statusEl = document.getElementById("server-status");
  if (!statusEl) return;

  fetch("https://api.mcsrvstat.us/2/kuramamc.tkmc.net")
    .then(res => res.json())
    .then(data => {
      if (!data.online) {
        statusEl.innerText = "🔴 Sunucu şu anda aktif değil!";
        statusEl.style.color = "#ff6b6b";
        return;
      }

      const online = data.players.online;
      const max = data.players.max;

      statusEl.innerText = `🟢 ${online} oyuncu şu anda KuramaMC oynuyor!`;
      statusEl.style.color = "#4cff9b";
    })
    .catch(() => {
      statusEl.innerText = "⚠️ Sunucu durumu alınamadı";
      statusEl.style.color = "#ffcc00";
    });
});
