@echo off
:: 从script文件夹导航到项目根目录（因为script与src同级，所以上一级就是根目录）
cd ..

:: 设置控制台编码为UTF-8，解决中文显示问题
chcp 65001
echo 正在启动社团网站开发服务器...
echo 当前工作目录：%cd% （应显示项目根目录路径）

:: 执行开发服务器启动命令
npm run dev
