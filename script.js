function copyIP() {
  navigator.clipboard.writeText("kuramamc.tkmc.net");

  const toast = document.getElementById("toast");
  toast.classList.add("show");

  setTimeout(() => {
    toast.classList.remove("show");
  }, 2500);
}

// Sahte server status (istersen API bağlarız)
document.getElementById("server-status").innerText =
  "Sunucu şu anda aktif!";
