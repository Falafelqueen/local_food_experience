const totalPrice = () => {
  const startDate = document.getElementById("booking_start_date");
  const endDate = document.getElementById("booking_end_date");

  startDate.addEventListener("change", () => {
    console.log(startDate.value);
  });
  // startDateValue.addEventListener("onchange", () => {
  //   console.log("Hola");
  // });

  // getDays();
};

export { totalPrice };
