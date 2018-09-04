const widgetCSS = "" +
    "body{font-family: 'Shadows Into Light', cursive;}" +
    ".timeline-Header{background-color: purple; border-top-left-radius: 10px; border-top-right-radius: 10px;}" +
    ".timeline-Header-title{color: white;}" +
    ".timeline-Tweet-text{color: red;}";

function paint(){
  const w = document.getElementById("twitter-widget-0").contentDocument;

  const s = document.createElement("style");
  s.innerHTML = widgetCSS;
  s.type = "text/css";
  w.head.appendChild(s);
}
