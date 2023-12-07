// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

// すべての投票ボタンを取得
document.addEventListener("turbo:load", function () {
  var counter = document.getElementById("token");
  var count = 0;

  function increase() {
    if (count <= 100) {
      counter.innerText = count;
      count++;
    }
  }

  setInterval(increase, 10);

  const voteButtons = document.querySelectorAll(".vote-button");

  // 各ボタンにクリックイベントリスナーを追加
  voteButtons.forEach((button) => {
    button.addEventListener("click", () => {
      const idolId = button.dataset.id;
      const modal = document.querySelector(`#modal-${idolId}`);
      modal.classList.add("is-open");
    });
  });

  // すべてのモーダルクローズボタンを取得
  const modalCloses = document.querySelectorAll(".js-close-button");

  // 各クローズボタンにクリックイベントリスナーを追加
  modalCloses.forEach((button) => {
    button.addEventListener("click", () => {
      const modal = button.closest(".js-modal");
      modal.classList.remove("is-open");
    });
  });
});
