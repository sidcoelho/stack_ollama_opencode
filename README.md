# Stack Ollama+OpenCode
Este projeto possui uma configuração para executar localmente o [OpenCode](https://opencode.ai/docs/pt-br), uma aplicação para auxiliar desenvolvimento de software com IA.

Obs: este projeto foi desenvolvido para uso pessoal, então foi criado apenas para uso em Linux.

## Pré-Requisitos
- Se você quiser utilizar uma GPU NVidia:
    - [NVidia Container Tookit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
- Se você não quiser utilizar uma GPU:
    - comentar o bloco de "deploy" do service "ollama" no arquivo `docker-compose.yml`.
- Se quiser utilizar outra GPU:
    - precisará implementar. Como eu não tenho outra GPU, foge ao escopo e propósito do projeto.
- Docker
- Docker Compose

## Modelos configurados por padrão
- PRIMARY_MODEL: ornith:9b
- SMALL_MODEL: qwen3:4b

## Como instalar
Apenas copie os arquivos deste projeto em uma pasta de sua escolha. Não é necessária instalação do projeto, mas existem pré-requisitos

## Como alterar modelos e janela de contexto
Edite o arquivo `.env`, localizado na raiz do projeto.

## Como executar
O arquivo a ser executado é o _script wrapper_ localizado na pasta `bin`. Para facilitar, existem duas opções:
1. adicionar essa pasta `bin` ao `PATH` de sua máquina.
>Eu não gosto dessa solução, pois prefiro não "sujar" meu $PATH.
2. criar um alias para este _script wrapper_.
>Exemplo: `alias opencode='$HOME/.ollama_oc/opencode'`

Com isso, é só ir até a pasta onde seu projeto se encontra e executar `opencode`. Ele será aberto na versão _[TUI](https://opencode.ai/docs/pt-br/tui/)_, já com acesso aos arquivos do seu projeto.
