param storageAccountName string
param storageAccountType string = 'Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: storageAccountType
  }
  kind: 'Storage'
  properties: {
    supportsHttpsTrafficOnly: true
    minimumTlsVersion: 'TLS1_2'
    defaultToOAuthAuthentication: true
  }
}

output primaryEndpoints object = storageAccount.properties.primaryEndpoints
output storageAccount  object = storageAccount
