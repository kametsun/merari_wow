// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

// すべての投票ボタンを取得
document.addEventListener("turbo:load", function () {
  var counter = document.getElementById("token");
  var count = 0;

  const token = document.getElementById("token").dataset.userToken;
  console.log(token)

  function increase() {
    if (count <= token) {
      counter.innerText = count;
      count++;
    }
  }

  if (token >= 100) {
    setInterval(increase, 1);
  } else {
    setInterval(increase, 100);
  }
  

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
