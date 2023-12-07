// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

console.log("hi");

const modal = document.querySelector('.js-modal');
const modalButton = document.querySelector('.js-modal-button');

const voteButtons = document.querySelectorAll(".vote-button");

voteButtons.forEach((button) => {
  button.addEventListener('click', () => {
    modal.classList.add('is-open');
  });
});


const modalClose = document.querySelector('.js-close-button');

modalButton.addEventListener('click', () => {
  modal.classList.add('is-open');
});

modalClose.addEventListener('click', () => {
  modal.classList.remove('is-open');
});