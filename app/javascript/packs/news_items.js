

function addNewsItem(reviewHTML) {
  const news_items = document.getElementById('news_items');
  news_items.insertAdjacentHTML('beforeend', reviewHTML);
}
