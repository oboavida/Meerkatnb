import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!


flatpickr(".datepicker", {
  altInput: true,
  mode: "range",
  minDate: "today",
  onClose: function(selectedDates) {
          document.querySelector('#total-price').innerHTML = '';

          const dateStart = selectedDates[0];
          const dateEnd = selectedDates[1];

          const moment = require('moment');
          const a = moment(dateEnd);
          const b = moment(dateStart);
          const numberOfDays = a.diff(b, 'days') + 1;

          const price = document.querySelector('.meerkat-price').innerText;
          const pricePerDay = Number.parseInt(price.split(" ")[0], 10);
          document.querySelector('#total-price').insertAdjacentHTML('afterbegin', pricePerDay * numberOfDays);

          const errorMessage = document.querySelector('div#date-error-message');
          const buttonBookNow = document.getElementById('btn-book-now');

          if (selectedDates.length == 1) {
            errorMessage.innerHTML = '<p> Please add your end date </p>';
            buttonBookNow.disabled = true;
          } else {
            errorMessage.innerHTML = '';
            buttonBookNow.disabled = false;
          }
    }
});
