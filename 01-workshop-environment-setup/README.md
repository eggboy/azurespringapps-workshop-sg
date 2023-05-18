**NOTE** 
You need to give your instructor your personal e-mail id so that they will give you an access to the resource group 'acme-fitness-rg-asaXX', XX is the two digit numbers. Each resource group has following services deployed.
 - 
 - Azure Cache for Redis
 - Azure Database for Postgres
 - Azure Key Vault
 - Log Analytics workspace
 - Application Insights workspace

![Resource Group](images/arm-resourcegroup.png)

## Azure Portal URL
> Note: You will be using the below azure portal url for the workshop. Please make sure you are using the correct url. If you are using the wrong url, you will not be able to see the resources deployed for the workshop.
>
[Azure Portal URL](https://portal.azure.com/178a8599-6632-4140-964d-4c3de509a859)

## Setup your environment for the workshop

   1. * [JDK 17](https://docs.microsoft.com/java/openjdk/download?WT.mc_id=azurespringcloud-github-judubois#openjdk-17)
   2. * VSCode, IntelliJ, Eclipse or any other IDE of your choice
   3. * [Azure CLI version 2.46.0 or higher](https://docs.microsoft.com/cli/azure/install-azure-cli?view=azure-cli-latest) version 2.46.0 or later. You can check the version of your current Azure CLI installation by running:

    ```bash
    az --version
    ```

> Note: You could use Cloud Shell on Azure portal without installing Azure CLI. As all the steps in the workshop are written based on Linux, Cloud Shell could be easier for those of who are not familiar with reading and replacing those with Windows equivalent.

![Cloud Shell](images/CloudShell.jpg)

## Prepare your environment for workshop

Create a bash script with environment variables by making a copy of the supplied template:

Open `./scripts/setup-env-variables.sh` and update the following variables:

```shell
export SPRING_APPS_SERVICE=acme-fitness-asa##
export LOG_ANALYTICS_WORKSPACE=acme-fitness-la-asa##]
```

This env file comes with default values that were provided as part of arm template. It is recommended to leave the values as-is for the purpose of this workshop. If for any reason you updated these default values in the arm template, those values need to be entered in here.

Now, set the environment:

```shell
source ./scripts/setup-env-variables.sh
``` 

### Login to Azure

Login to the Azure CLI and choose your active subscription. 

```shell
az login --tenant 178a8599-6632-4140-964d-4c3de509a859
az account set --subscription 3d1728e9-804b-48f1-b8e6-ed4f87f5b242
```

> Note: Make sure you use the right resource group and spring apps instance to avoid the conflicts with other attendees. 

```shell
az configure --defaults \
    group=${RESOURCE_GROUP} \
    location=${REGION} \
    spring=${SPRING_APPS_SERVICE}
```

---

➡️ Next guide: [01 - Deploy Simple Hello World spring boot app](../02-hol-1-hello-world-app/README.md)