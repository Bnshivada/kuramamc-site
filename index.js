const ip = "5.133.100.199";

const copyBtn = document.getElementById("copyIpBtn");
const modal = document.getElementById("successModal");
const closeBtn = document.getElementById("modalOk");

copyBtn.addEventListener("click", async () => {
  await navigator.clipboard.writeText(ip);
  modal.classList.add("active");
});

closeBtn.addEventListener("click", () => {
  modal.classList.remove("active");
});
