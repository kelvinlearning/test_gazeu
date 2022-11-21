# Desafio Gazeu
Teste automatizado no site (https://www.jogatina.com.br/) utilizando o Robot Framework + Selenium.

## Starting

### Instalação

Instale o Python+Robot usando as etapas abaixo.

1. Instalar ultima versão Python
```
https://www.python.org/downloads/
```

2. Instalar o Robot Framework
```
pip3 install robotframework
```

3. Instalar Selenium para o Robot Framework
```
pip3 install --upgrade robotframework-seleniumlibrary
```

3. Instalar o driver do Google Chrome (Escolher mesma versão do navegador) e adicionar nas variáveis do sistema.
```
https://chromedriver.chromium.org/downloads
```

### Após a configuração anterior:

1. Clonar esse repositório.
2. Executar o testes através do comando
```
robot -d output automation/tests/JogatinaBDDs.tests.robot
```

### Arquivos por diretórios

|               Diretório | Arquivos na pasta                                                               |
| ----------------------: | ----------------------------------------------------------------------------- |
|                `config` | **config.robot** arquivo de configuração.  |
|            `components` | **components.robot** todos os componentes mapeados utilizados no teste.                            |
|                 `tests` | Arquivo **JogatinaBDDS.tests.robot** contém todos os casos de teste.   |
|                 `pages` | Arquivo **HomeJogatina.pages.robot** contém todos Keywords utilizados (Page Object Pattern).|
|         `pages/commons` | **hooks.pages.commons.robot** contém os setups para inicio e fim utilizados no teste.             |
![image](https://user-images.githubusercontent.com/109600851/203045134-2f535119-b0c9-4f3b-889f-6a72689915ef.png)
