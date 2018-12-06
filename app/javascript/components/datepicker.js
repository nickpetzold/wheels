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

// {
//     altInput: true,
//     altFormat: "F j, Y",
//     dateFormat: "Y-m-d",
// }
