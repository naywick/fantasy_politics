import "bootstrap";

AlgoliaSearch.configuration = {
  application_id: 'Y6BJDF6ZNO',
  api_key: '79f7cf05865c8da9a5bc525f18c227bd',
  index_name: 'fantasy_politics'
}

search.addWidget(
  instantsearch.widgets.searchBox({
    container: '#search-input'
  })
);

search.addWidget(
  instantsearch.widgets.hits({
    container: '#hits',
    templates: {
      item: document.getElementById('hit-template').innerHTML,
      empty: "We didn't find any results for the search <em>\"{{query}}\"</em>"
    }
  })
);
search.addWidget(
  instantsearch.widgets.pagination({
    container: '#pagination'
  })
);
search.start();
