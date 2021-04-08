# NeoVim Configure

## ⚙️ Manually

### 1. Install node

- Ubuntu

```bash
sudo apt install nodejs -y
```

- Mac

```bash
brew install node
```

### 2. Install neovim

- Ubuntu

```bash
sudo apt install neovim -y
```

- Mac

```bash
brew install neovim
```

### 3. Install vim-plug

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### 4. touch init.vim

```
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
```

### 5. Set init.vim

```bash
git clone https://github.com/himitery/configures.git
cd ./configures/neovim
```

```bash
cat ./init.vim >> ~/.config/neovim/init.vim
```

---

## ⚙️ Use Shell Script

```bash
git clone https://github.com/himitery/configures.git
cd ./configures/neovim
```

- Ubuntu

```bash
./set_neovim.sh Ubuntu
```

- Mac

```bash
./set_neovim.sh Mac
```

---
