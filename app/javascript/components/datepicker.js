import flatpickr from 'flatpickr';

const startDateinput = document.getElementById('booking_date_from');
const endDateinput = document.getElementById('booking_date_to');

function picker () {

  if (startDateinput && endDateinput) {
    flatpickr(startDateinput, {
    minDate: 'today',
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: 'Y-m-d',
    disable: [
        {
            from: " ",
            to: " "
        }],
    onChange: function(_, selectedDate) {
      if (selectedDate === '') {
        return endDateinput.disabled = true;
      }
      endDateCalendar.set('minDate', selectedDate);
      endDateinput.disabled = false;
    }
  });
    const endDateCalendar =
      flatpickr(endDateinput, {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: 'Y-m-d',
      });
  }
}

export { picker };




// 1. Add event listener to the input
// const romain = document.getElementById("booking_date_from");
// romain.addEventListener("click", (event) => {
//   console.log(event);
//   console.log(event.currentTarget);
// });

// 2. console log the event

// 3. Extract date/values

// 4. Extract car price

// 5. make calculation

// 6. make html with resulting calculation

// 7. Try to target the place on the html to apend (innerHTML)

// 8. actualy apend!!!!!!!!

