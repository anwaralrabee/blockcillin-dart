part of client;

class MainMenu {

  final DivElement _menu;
  final Fader _menuFader;
  final ButtonElement _continueGameButton;
  final ButtonElement _newGameButton;

  bool _continueGameButtonVisible;

  MainMenu(this._menu, this._menuFader, this._continueGameButton, this._newGameButton) {
    _menuFader
        ..onFadeInStartCallback = _onMenuFadeInStart
        ..onFadeOutEndCallback = _onMenuFadeOutEnd;
  }

  ElementStream<MouseEvent> get onContinueGameButtonClick => _continueGameButton.onClick;
  ElementStream<MouseEvent> get onNewGameButtonClick => _newGameButton.onClick;

  void set continueGameButtonVisible(bool visible) {
    _continueGameButtonVisible = visible;
  }

  // TODO(btmura): replace with function since this isn't a quick immediate operation
  void set visible(bool visible) {
    if (visible) {
      _menuFader.fadeIn();
    } else {
      _menuFader.fadeOut();
    }
  }

  /// Centers the main menu. Call this when the window is resized.
  void center() {
    _centerVertically();
  }

  void _centerVertically() {
    var top = math.max(document.body.clientHeight - _menu.clientHeight, 0.0) / 2.0;
    _menu.style.top = "${top}px";
  }

  void _onMenuFadeInStart() {
    // Add menu first to calculate it's height before centering it.
    _continueGameButton.style.display = _continueGameButtonVisible ? "block" : "none";
    document.body.children.add(_menu);
    _centerVertically();
  }

  void _onMenuFadeOutEnd() {
    _menu.remove();
  }
}