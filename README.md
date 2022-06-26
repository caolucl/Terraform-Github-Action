### Create Service Principle
```
az ad sp create-for-rbac --name "SP-GitHubAction-Blog" --role contributor --scopes /subscriptions/2f858c57-6594-463c-b525-a5d7afec60cf
 --sdk-auth
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
