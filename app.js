document.getElementById("transfer-form").addEventListener("submit", async function(e) {
  e.preventDefault();
  const recipient = document.getElementById("recipient").value;
  const amount = document.getElementById("amount").value;

  alert("This is a frontend demo. You would normally integrate Stacks.js here to call your smart contract.");
});