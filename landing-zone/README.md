# Landing Zone

초보자 검증용 Terraform 뼈대입니다. 실제 클라우드 리소스 대신 `terraform_data`만 사용해서
provider credentials 없이 `validate`까지 확인할 수 있습니다.

## 폴더 구조

```text
landing-zone/
  modules/
    network/
    iam/
    logging/
  envs/
    dev/
    prod/
```

## 초보자 실행 순서

아래 명령은 `landing-zone/envs/dev` 또는 `landing-zone/envs/prod`에서 실행하세요.

1. `terraform init`
2. `terraform validate`
3. `terraform fmt`

루트(`landing-zone`)에서는 전체 포맷 확인용으로 아래 명령을 사용할 수 있습니다.

```bash
terraform fmt -recursive
```

## 보안 주의

- 시크릿/액세스 키/개인키 파일은 절대 커밋하지 마세요.
- `.tfvars`에 민감정보를 넣는 경우 `.gitignore`에 포함하세요.
