# Nvim Install

I have been using nvim 0.9.5 to be consistent with work. I download the tarball appropriate to my platform and link the compiled nvim binary to my `.local/bin`.

Example below:

```bash
curl https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz > nvim-0.9.5.tar.gz
tar -xvf nvim-0.9.5.tar.gz
ln -s $PWD/nvim-linux/bin/nvim ~/.local/bin/nvim
rm -rf nvim-0.9.5.tar.gz
```
