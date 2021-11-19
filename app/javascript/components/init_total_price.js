const totalPrice = () => {
  const startDate = document.getElementById("booking_start_date");
  const endDate = document.getElementById("booking_end_date");
  const pricePreview = document.getElementById("price-preview");
  pricePreview.innerText = "0€"

  const updatePrice = () => {
    const parsedStartDay = new Date(startDate.value);
    const parsedEndDay = new Date(endDate.value);

    if (startDate.value != "" && endDate.value != "") {
      const priceSpan = document.getElementById("price");
      const price = parseInt(priceSpan.innerHTML);
      const daysBetween = (parsedEndDay - parsedStartDay) / (24 * 60 * 60 * 1000);
      const total = daysBetween * price;
      pricePreview.innerText = total + "€";
    } else {
      pricePreview.innerText = "0€"
    }
  };
  startDate.addEventListener("change", updatePrice);
  endDate.addEventListener("change", updatePrice);
};

export { totalPrice };
