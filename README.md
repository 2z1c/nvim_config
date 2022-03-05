
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
## markdown 

```bash
1. 添加 lsp 的文件 zeta_note.lua
2. 在  lua/conf/nvim-lsp-installer.lua 中放开限制， 
3. 最后 使用LspInstall 安装 markdown 的服务器
```

## Vim 常用调试方法

```bash
:set Verbose=9
```
