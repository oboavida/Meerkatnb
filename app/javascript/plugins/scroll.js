const automaticScroll = function() {
  if (window.location.search) {
    window.scrollTo(0,document.body.scrollHeight);
  }
}

export { automaticScroll }
