## Preparation
1. Clone this repository
2. `mv jenkins-build/jenkins-job /usr/local/bin/jenkins-job`
3. Create env file with several keys into folder `jenkins/.env`
```
JENKINS_URL=
JENKINS_TOKEN=
JENKINS_USER_ID=
JENKINS_USER_TOKEN=
JENKINS_JOB_{alias}=
```
4. Run `jenkins-job start staging -i -f -m "Test build script"`
<br/>-i: For show log build
<br/>-f: Force build. Cancel running job, and run this job
<br/>-m: Put build message.

### Command
1. `jenkins-job start staging` -> Start job
2. `jenkins-job stop staging` / `jenkins-job stop staging 94` -> Stop last job / Stop job number 94
3. `jenkins-job log staging` / `jenkins-job log staging 94` -> Get log last job / Get log job number 94
