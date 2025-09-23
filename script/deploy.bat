@echo off
:: 1. 设置终端编码为 UTF-8（解决中文乱码核心配置）
chcp 65000 > nul
cls

:: 2. 脚本标题与欢迎提示
echo ==============================================
echo          【Vue/Vite 项目部署到 GitHub Pages】
echo ==============================================
echo 脚本功能：自动执行 依赖检查 → 项目构建 → 部署推送
echo 注意：请先确认已配置 GitHub 身份验证（PAT/SSH）
echo ==============================================
echo.

:: 3. 检查 Node.js 和 npm 是否安装（部署依赖）
echo [1/5] 正在检查 Node.js 和 npm 环境...
call node -v > nul 2>&1
if %errorLevel% neq 0 (
    echo  ❌ 错误：未检测到 Node.js！请先安装 Node.js（推荐 v18+）
    echo      下载地址：https://nodejs.org/zh-cn/download/
    pause
    exit /b 1
)

call npm -v > nul 2>&1
if %errorLevel% neq 0 (
    echo  ❌ 错误：未检测到 npm！可能是 Node.js 安装不完整，请重新安装
    pause
    exit /b 1
)

echo  ✅ 检测通过！Node.js 版本：
call node -v
echo  ✅ npm 版本：
call npm -v
echo.

:: 4. 配置项目路径（关键！请用户修改为自己的项目根目录）
set "PROJECT_PATH=D:\Projects\SCUT-SFA"  :: 示例：你的项目文件夹路径
echo [2/5] 正在定位项目目录...
if not exist "%PROJECT_PATH%" (
    echo  ❌ 错误：项目目录不存在！请修改脚本中的 PROJECT_PATH 为实际路径
    echo      当前配置路径：%PROJECT_PATH%
    pause
    exit /b 1
)

cd /d "%PROJECT_PATH%" > nul 2>&1
if %errorLevel% neq 0 (
    echo  ❌ 错误：无法进入项目目录！请检查路径是否包含特殊字符（如空格、中文全角符号）
    pause
    exit /b 1
)

echo  ✅ 成功进入项目目录：%PROJECT_PATH%
echo.

:: 5. 安装依赖（可选：防止依赖缺失导致构建失败）
echo [3/5] 正在安装项目依赖（若依赖已最新，可跳过此步骤）...
call npm install > nul 2>&1
if %errorLevel% neq 0 (
    echo  ❌ 错误：依赖安装失败！可能是网络问题或 package.json 配置错误
    echo      建议手动执行 `npm install` 查看具体错误
    pause
    exit /b 1
)

echo  ✅ 依赖安装完成！
echo.

:: 6. 执行构建（npm run build，部署前必须生成 dist 目录）
echo [4/5] 正在执行项目构建（生成 dist 目录）...
call npm run build
if %errorLevel% neq 0 (
    echo  ❌ 错误：项目构建失败！请检查 Vite 配置或代码语法错误
    echo      关键检查点：vite.config.js 的 base 配置是否为 "/仓库名/"
    pause
    exit /b 1
)

echo  ✅ 项目构建完成！dist 目录已生成
echo.

:: 7. 执行部署（npm run deploy，核心步骤）
echo [5/5] 正在执行部署（推送 dist 到 gh-pages 分支）...
echo  ⚠️  注意：部署过程可能需要输入 GitHub 身份验证（PAT 或 SSH 密钥）
call npm run deploy
if %errorLevel% neq 0 (
    echo  ❌ 错误：部署失败！常见原因：
    echo      1. GitHub 身份验证失败（PAT 过期或 SSH 配置错误）
    echo      2. gh-pages 分支权限不足（需开启仓库读写权限）
    echo      3. dist 目录路径配置错误（检查 deploy 脚本中的 publish_dir）
    pause
    exit /b 1
)

:: 8. 部署成功提示
echo.
echo ==============================================
echo  🎉 部署成功！
echo  🔗 访问地址：https://你的GitHub用户名.github.io/你的仓库名/
echo  ⚠️  注意：GitHub Pages 可能有 1-5 分钟同步延迟，请耐心等待
echo ==============================================
pause
exit /b 0