const totalPrice = () => {
  const startDate = document.getElementById("booking_start_date");
  const endDate = document.getElementById("booking_end_date");
  const updatePrice = () => {
    const startDay = new Date(startDate.value);
    const endDay = new Date(endDate.value);
    const priceSpan = document.getElementById("price");
    const price = parseInt(priceSpan.innerHTML);
    const daysBetween = (endDay - startDay) / (24 * 60 * 60 * 1000);
    const total = daysBetween * price;
  };
  startDate.addEventListener("change", updatePrice);
  endDate.addEventListener("change", updatePrice);
};

export { totalPrice };
