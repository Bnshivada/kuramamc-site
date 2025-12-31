function copyIP() {
  const ip = "kuramamc.tkmc.net";

  navigator.clipboard.writeText(ip);

  const text = document.getElementById("copied-text");
  text.style.opacity = "1";

  setTimeout(() => {
    text.style.opacity = "0";
  }, 2000);
}
