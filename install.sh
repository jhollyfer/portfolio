#!/usr/bin/env sh
set -e

REPO="https://github.com/jhollyfer/portfolio.git"
DIR="$HOME/portfolio"

echo "==> Limpando instalação anterior"
rm -rf "$DIR"

echo "==> Clonando"
git clone --depth 1 "$REPO" "$DIR"
cd "$DIR"

echo "==> Instalando pnpm"
command -v pnpm >/dev/null 2>&1 || npm install --global pnpm

echo "==> Instalando dependências"
pnpm install

# echo "==> Rodando em http://localhost:5173"
# pnpm dev
