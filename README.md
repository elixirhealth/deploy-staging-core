# deploy-staging-core
This repo defines the core infrastructure and config for the Elxir staging environment.

### Usage

After updating (and merging) the config, deploy the changes via 
```bash
./deploy-staging-core
```
The script does the following
- decrypts the secrets
- `terraform plan`
- asks for confirmation before applying
- `terraform apply`
- deletes plaintext secrets

If you need to change any of the secrets, first decrypt them
```bash
./secrets decrypt
```
edit the appropriate file(s), re-encrypt
```bash
./secrets encrypt
```
and then commit changed `*.enc` files to the repo. 

If you need to add a new secrets file to be encrypted, add it to 
[secrets.manifest](terraform/secrets.manifest) and then run `./secrets encrypt`.
