
# CI/CD Project

Este é um projeto simples para prática e aprendizagem de um pipeline CI/CD utilizando GitHub Actions, Docker, e AWS com Terraform. 

## Objetivos

- **Automatizar o build e deploy** de uma aplicação simples usando um pipeline CI/CD.
- **Utilizar GitHub Actions** para gerenciar o fluxo de integração contínua.
- **Configurar infraestrutura AWS** usando Terraform.
- **Implementar melhores práticas de segurança** utilizando OpenID Connect (OIDC) para autenticação em vez de credenciais de longa duração.

## Estrutura do Projeto

```
cicd-project/
├── .github/
│   └── workflows/
│       └── main.yml
├── app/
│   ├── main.py
│   ├── Dockerfile
│   └── requirements.txt
├── infra/
│   ├── main.tf
│   └── variables.tf
└── README.md
```

- **app/**: Contém a aplicação exemplo em Flask.
- **infra/**: Contém os arquivos Terraform para configurar a infraestrutura na AWS.
- **.github/workflows/**: Contém o arquivo de configuração do GitHub Actions para o pipeline CI/CD.
- **README.md**: Este arquivo.

## Configuração do Projeto

### 1. Requisitos

- Conta AWS
- GitHub account
- Docker instalado localmente
- Terraform instalado localmente

### 2. Configuração do AWS e GitHub

1. **Criar Role IAM** na AWS com permissões necessárias para deploy e autenticação via OIDC.
2. **Configurar Segredos** no GitHub:
   - `AWS_REGION`: Região AWS onde os recursos serão criados.
   - `AWS_ACCOUNT_ID`: ID da conta AWS.

### 3. Configuração do Ambiente Local

Clone o repositório e configure o ambiente local:

```bash
git clone https://github.com/IzaiasBirth/cicd-project.git
cd cicd-project/app
```

Instale as dependências:

```bash
pip install -r requirements.txt
```

### 4. Build e Deploy da Aplicação

A aplicação e a infraestrutura são gerenciadas pelo pipeline do GitHub Actions. Após um push para o branch `main`, o pipeline será executado automaticamente.

### Comandos Principais

#### Executar Aplicação Localmente

```bash
cd app
python main.py
```

#### Build Docker Localmente

```bash
docker build -t cicd-project:latest .
```

#### Testar Terraform Localmente

```bash
cd infra
terraform init
terraform apply
```


---

**Nota**: Este projeto é um exemplo de aprendizado e prática. 