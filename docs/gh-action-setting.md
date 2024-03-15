# Github Action 세팅으로 CI/CD 파이프라인 만들기

## 1. manifest yaml 파일 수정하기
`manifest/app.yaml` 파일의 L24 에서 `<registryName>` 부분을 실제로 배포 완료된 Azure Container Registry 이름으로 바꾸어줍니다.

```yaml
...
      containers:
      - name: chatbot-app-container
        image: <registryName>.azurecr.io/chatbot-app:v1
        ports:
        - containerPort: 80
...
```

## 2. Azure Service Principal 만들기
깃헙 액션이 권한을 가지고 ACR(Azure Container Registry)에 이미지를 업로드 & AKS에서 이미지를 pull 받아 올 수 있게 하기 위해 `Service Principal`이라는 걸 만듭니다.

> [!Note]
> Service Principal이란? (Azure의 다양한 identity 옵션)

```bash
az ad sp create-for-rbac --name "<본인이름>-ghActionSP" --scope /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP> --role Contributor --json-auth
```

ouput 값으로 이런 값들이 나옵니다.

```bash
{
  "clientId": <clientId>,
  "clientSecret": <clientSecret>,
  "subscriptionId": <subscriptionId>,
  "tenantId": <tenantId>,
  ...
}
```

## 3. Secret 값 지정하기

포크를 떠서 가져간 레포에서 `Settings > Security > Secrets and Variables > Actions` 에 들어가 output으로 나온 값들과 AKS/ACR 정보를 차례로 입력합니다.

|Secret name  |Secret value  |
|---------|---------|
|AZURE_CREDENTIALS|`az ad sp create-for-rbac` 커맨드 결과 json 값을 모두 넣습니다.|
|service_principal | `<clientId>` 값.|
|service_principal_password| `<clientSecret>` 값.|
|subscription| `<subscriptionId>`.|
|tenant|`<tenantId>`.|
|registry| ACR이름.|
|repository|cloudclub|
|resource_group|Azure에 생성한 리소스 그룹 이름(`variables.tf`에서 수정한 리소스 그룹 이름).|
|cluster_name|AKS 클러스터 이름.|

## Action 테스트하기

- TBD

## [Todo] Github Action 에러 보면서 원인 찾기

