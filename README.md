# Cloud-Club-Copilot

- [Cloud-Club-Copilot](#cloud-club-copilot)
  - [사전 준비](#사전-준비)
  - [아키텍처 \& 시나리오 소개](#아키텍처--시나리오-소개)
    - [아키텍처](#아키텍처)
    - [시나리오](#시나리오)
  - [Quick Start](#quick-start)
    - [로컬에서 앱 실행하기](#로컬에서-앱-실행하기)
  - [실습 시작](#실습-시작)
  - [주의 사항](#주의-사항)

클클 5기 핸즈온을 위한 Azure로 클클 전용 코파일럿 만들기

## 사전 준비

- Azure 계정을 한 번도 만들어 본 적 없다면
  - 학생인 분들은 학생 Azure 무료 크레딧을 이용합시다.
  ➡️ [링크](https://azure.microsoft.com/ko-kr/free/students/) 
  - 직장인 도비들은 Azure Free 계정을 만들어서 한 달짜리 크레딧을 사용합시다. 
  ➡️ [링크](https://azure.microsoft.com/ko-kr/free/)

## 아키텍처 & 시나리오 소개

### 아키텍처

![Architecture](docs/images/archi-real.png)

### 시나리오

- 목표: 클라우드 클럽 5기의 노션 데이터를 활용해서 클클 GPT 만들기
- ![start-page](docs/images/Screenshot%202024-03-17%20at%201.52.27 PM.png)
- ![end-page](docs/images/Screenshot%202024-03-17%20at%201.51.21 PM.png)

## Quick Start

1. 해당 레포를 fork 뜬 뒤, Action 탭에 들어가서 workflow 활성화
2. 포크 뜬 레포를 clone, **`VSCode` 에서 open(중요)**
3. `devcontainer`를 사용해서 개발환경을 구성.

> [!note]
> 만약 VScode가 없다면 최소 `Python3.10`, `Node.js 14+`, `Terraform CLI`, `Azure CLI`가 로컬 환경에 세팅되어 있어야 합니다. (웬만하면 VSCode 씁시다..!)

### 로컬에서 앱 실행하기

1. `.env` 파일 만들기
2. 가상환경 `venv` 만들기
3. `app/start-dev.sh` 실행

  ```bash
  virtualenv venv # python3.10 으로!

  cd app

  source venv/bin/activate
  source start-dev.sh
  ```

3. `http://localhost:50505` 로 접속

## 실습 시작

실습은 `docs` 폴더에 있는 문서를 참고해주세요.
[🚀 시작하기 🚀](docs/00-get-ready.md)

## 주의 사항

> [!Note]
> `main` 브랜치는 클클 5기 핸즈온 행사를 위해 만들어져 있습니다. 해당 행사 시에는 Azure OpenAI, AI Search, Storage Account/Blob 을 핸즈온 참가자들이 배포하지 않았습니다. 만약 이 레포를 보고 핸즈온을 따라한다면 `with-aoai` 브랜치를 사용하여 리소스를 배포해주세요. 해당 브랜치에는 GPT 관련 리소스들도 모두 배포할 수 있게 구성되어 있습니다.