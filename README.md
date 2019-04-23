## Preparation
1. Clone this repository
2. `mv jenkins-build/jenkins-build /usr/local/bin/jenkins-build
3. Create env file with several keys
	```
		JENKINS_URL=
		JENKINS_TOKEN=
		JENKINS_USER_ID=
		JENKINS_USER_TOKEN=
		JENKINS_JOB=
	```
4. Run `jenkins-build .env -i -f -m "Test build script"
	-i: For show log build
	-f: Force build. Cancel running job, and run this job
	-m: Put build message.
