@echo off
REM ///////////////////////////////////////////////////////////////////
REM // Adiciona, à variável de ambiente "Path", o caminho para 
REM // o executável do 7-Zip. Isso se faz necessário para que, 
REM // quando o programa seja chamado, o sistema saiba onde procurá-lo.
REM /////////////////////////////////////////////////////////////////////
SET PATH=%PATH%;C:\Program Files (x86)\7-Zip
REM /////////////////////////////////////////////////////////////////////
REM // O Comando For instrui o shell a executar o comando 
REM // 7z a -tzip -mx=9 "%%f".zip "%%f" para cada arquivo pdf encontrado 
REM // no diretório onde o batch for executado. O parâmetro %%f é a 
REM // variável que armazena o nome do arquivo a cada execução do comando for. 
REM // Desta forma, digamos que o primeiro arquivo encontrado chame-se "abc.pdf" 
REM // e o segundo arquivo seja o "def.pdf". Na primeira passagem, 
REM // o parâmetro %%f será substituído por "abc.pdf". Na segunda, por "def.pdf" 
REM // e assim por diante. Os arquivos resultantes da operação se chamarão 
REM // "abc.pdf.zip", "def.pdf.zip", etc...
REM // Não se assuste com a quantidade de parâmetros do compactador 7zip. 
REM // Eles apenas definem as configurações de compressão e formato de arquivo. 
REM // Se você não quiser usar o 7zip para realizar a tarefa, você pode usar o 
REM // WinRAR ou qualquer outro compactador que suporte linha de comandos. 
REM // No caso do WinRAR seu batch ficaria assim
REM /////////////////////////////////////////////////////////////////////
FOR %%f IN (*.pdf) DO 7z a -tzip -mx=9 "%%f".zip "%%f"
