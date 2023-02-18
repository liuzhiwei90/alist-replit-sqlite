# 部署

点击下方 `run on repl.it` 按钮，将alist快速部署到`repl.it`。

<a href="https://repl.it/github/liuzhiwei90/alist-replit-sqlite">
  <img alt="Run on Repl.it" src="https://repl.it/badge/github/liuzhiwei90/alist-replit-sqlite" style="height: 40px; width: 190px;" />
</a>

部署后需要运行两次，第一次使用默认配置自动生成随机密码，第二次修改数据库位置到上级目录使数据库不公开，使用固定密码“password”。

## 说明

需要把数据库的下载链接配置到环境变量，当数据库被删除的时候通过链接重新下载。可以添加一个onedrive存储用来备份数据库，再通过另一个列表程序获取数据库的下载链接，比如OneManager。
