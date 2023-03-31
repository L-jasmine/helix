#!/bin/sh
echo "install rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

echo "build helix"
cargo install --locked --path helix-term
ln -s $PWD/runtime ~/.config/helix/runtime
cp config.toml ~/.config/helix/

echo "install rust-analyzer"
rustup component add rust-analyzer
ln -s $(rustup which rust-analyzer) /home/csh/.cargo/bin/rust-analyzer