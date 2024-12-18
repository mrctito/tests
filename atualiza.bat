@echo off
:: Define uma mensagem padrao para o commit
set /p commit_msg="Digite a mensagem para o commit (ou pressione Enter para usar 'Atualizacao automatica'): "
if "%commit_msg%"=="" set commit_msg=Atualizacao automatica

:: Adiciona todos os arquivos ao Git
git add .

:: Faz o commit
git commit -m "%commit_msg%"

:: Push para o repositorio remoto
git push origin master

:: Exibe mensagem de sucesso
echo.
echo "Alteracoes enviadas com sucesso!"
git status
pause
