function copyIP() {
  navigator.clipboard.writeText("kuramamc.tkmc.net");
  const toast = document.getElementById("toast");
  toast.classList.add("show");

  setTimeout(() => {
    toast.classList.remove("show");
  }, 2200);
}

/* FAKE ONLINE – API BAĞLANIR */
const players = document.getElementById("players");
players.innerText = "● 42 online";
