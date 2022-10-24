from typing import Any, Dict

import sublime
import sublime_plugin


class PasteWithoutNul(sublime_plugin.ViewEventListener):
    def on_text_command(self, command_name: str, args: Dict[str, Any]) -> None:
        if command_name in {"paste", "paste_and_indent"}:
            sublime.set_clipboard(sublime.get_clipboard().replace("\x00", ""))
