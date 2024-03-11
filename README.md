# Cloud-Club-Copilot

클클 5기 핸즈온을 위한 Azure로 클클 전용 코파일럿 만들기

## 사전 준비

- Azure 계정을 한 번도 만들어 본 적 없다면
  - 학생인 분들은 학생 Azure 무료 크레딧을 이용합시다.
  ➡️ [링크](https://azure.microsoft.com/ko-kr/free/students/) 
  - 직장인 도비들은 Azure Free 계정을 만들어서 한 달짜리 크레딧을 사용합시다. 
  ➡️ [링크](https://azure.microsoft.com/ko-kr/free/)
- 이미 학생 크레딧이나 Free 크레딧도 다 썼다고 조사 완료 하신 분들은 신청하실 때 작성한 이메일로 온 초대장으로 제 구독을 사용합니다.

## 아키텍처 & 시나리오 소개

### 아키텍처

![Architecture](docs/images/archi-without-pe.png)

### 시나리오

- 목표: 클라우드 클럽 5기의 노션 데이터를 활용해서 클클 GPT 만들기

## Quick Start

1. 해당 레포를 fork 뜬 뒤, Action 탭에 들어가서 workflow 활성화
2. 포크 뜬 레포를 clone, **`VSCode` 에서 open(중요)**
3. `devcontainer`를 사용해서 개발환경을 구성.

> [!note]
> 만약 VScode가 없다면 최소 `Python3.10`, `Node.js 14+`, `Terraform CLI`, `Azure CLI`가 로컬 환경에 세팅되어 있어야 합니다. (웬만하면 VSCode 씁시다..!)

### 로컬에서 앱 실행하기

1. `.env` 파일 만들기
2. `app/start-dev.sh` 실행

  ```bash
  cd app
  source start.sh
  ```

3. `http://localhost:50505` 로 접속

## 실습 시작

실습은 `docs` 폴더에 있는 문서를 참고해주세요.
[🚀 시작하기 🚀](docs/01-intro.md)
