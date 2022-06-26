### Create Service Principle
```
az ad sp create-for-rbac --name "SP-GitHubAction-Blog" --role contributor --scopes /subscriptions/2f858c57-6594-463c-b525-a5d7afec60cf
 --sdk-auth
```
```
{
  "appId": "7187e2aa-8c9f-4b64-9695-15b32495b224",
  "displayName": "SP-GitHubAction-Blog",
  "password": "xx98Q~cM8iSdteBri0YMQELOpELyt~s_NmMd2a5h",
  "tenant": "75554f84-eb11-467f-88f1-35a706d778ad"
}
```

### Creating required GitHub secrets
To create the secret in GitHub, I go to my repository and then click on ###Settings###, then click on ###Secrets###, ###Actions###, and lastly on ###New repository secret###.
And create four secrets as shown below.
```
AZURE_CLIENT_ID = clientId

AZURE_CLIENT_SECRET = clientSecret

AZURE_TENANT_ID = tenantId

MVP_SUBSCRIPTION = subscriptionId
```
