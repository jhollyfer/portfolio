# Portfolio

## 1. Limpar instalação anterior (se existir)

```bash
cd ~
sudo rm -rf portfolio
```

## 2. Clonar

```bash
git clone git@github.com:jhollyfer/portfolio.git
cd portfolio
zed .
```

## 3. Configurar nome e cargo

Preenche `<title>`, `<h1>` e `<p>` em todos os `app/*.html`.

```bash
chmod +x ./setup.sh
./setup.sh
```

## 4. Instalar dependências

```bash
npm install --global pnpm
pnpm install
```

## 5. Rodar

```bash
pnpm start
```

Abre em http://localhost:3000
