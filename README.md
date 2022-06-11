
# my nvim config

[my_nvim_config](https://codeup.teambition.com/5fc4b8e3a3dbf859c88e39bf/study/nvim_config)

## 使用插件 管理器
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

按照 https://zhuanlan.zhihu.com/p/469883743 的描述， 配置以后。 

最后使用 PackerSync  同步。 
所有插件相关的配置都会被同步到  目录下去
~/.local/share/nvim/site/pack/ 
```


## LSP 
LSP相关配置都会被保存到
```bash
~/.local/share/nvim/lsp_servers/  目录下
```
### markdown

```bash
1. 添加 lsp 的文件 zeta_note.lua
2. 在  lua/conf/nvim-lsp-installer.lua 中放开限制， 
3. 最后 使用LspInstall 安装 markdown 的服务器
```
### clangd
https://github.com/clangd/clangd/releases/download/13.0.0/clangd-linux-13.0.0.zip
```bash
# 首先手动下载文件， 原有的连接路劲下载太慢
# wget url /home/zcz/.local/share/nvim/lsp_servers/clangd.tmp/archive.zip

手动直接修改 
/home/zcz/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer/lua/nvim-lsp-installer/servers/clangd/init.lua
的下载路径， unzip_remote

使用下面的命令安装即可
:LspInstall 

然后在 lsp 文件夹下面， 添加一个 clangd.lua 文件 处理配置即可
```

## Vim 常用调试方法

```bash
:set Verbose=9
```
