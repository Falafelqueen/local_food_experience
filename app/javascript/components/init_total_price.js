const totalPrice = () => {
  const startDate = document.getElementById("booking_start_date");
  const endDate = document.getElementById("booking_end_date");
  const pricePreview = document.getElementById("price-preview");
  const updatePrice = () => {
    const startDay = new Date(startDate.value);
    const endDay = new Date(endDate.value);
    if (startDay != "" && endDay != "") {
      const priceSpan = document.getElementById("price");
      const price = parseInt(priceSpan.innerHTML);
      const daysBetween = (endDay - startDay) / (24 * 60 * 60 * 1000);
      const total = daysBetween * price;
      pricePreview.innerText = total;
    }
  };
  startDate.addEventListener("change", updatePrice);
  endDate.addEventListener("change", updatePrice);
};

export { totalPrice };
