#!/bin/bash
SERVICE="Neovide"
if pgrep -f "$SERVICE" >/dev/null
then
	open /Users/nshv/Repos/neovide/target/release/bundle/osx/Neovide.app
else
	export LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-"$HOME/.local/share/lunarvim"}"
	export LUNARVIM_CONFIG_DIR="${LUNARVIM_CONFIG_DIR:-"$HOME/.config/lvim"}"
	export LUNARVIM_CACHE_DIR="${LUNARVIM_CACHE_DIR:-"$HOME/.cache/lvim"}"

	cd $HOME

	exec /home/linqiankai/Downloads/neovide.AppImage --frame=none -- -u "$LUNARVIM_RUNTIME_DIR/lvim/init.lua" "$@"
fi
