_jenkins-job_completions()
{
	if [ "${#COMP_WORDS[@]}" -gt "3" ]; then
		return	
	fi
	
	if [ "${#COMP_WORDS[@]}" == "3" ]; then
		COMPREPLY=($(compgen -W "$(_get-job-alias)" "${COMP_WORDS[2]}"))
    		return
  	fi

	COMPREPLY=($(compgen -W "start stop log" "${COMP_WORDS[1]}"))
}

_get-job-alias()
{
	envfile=$HOME/.jenkinsenv
	while IFS= read -r line
	do
        	if [[ $line == *"JENKINS_JOB_"* ]]; then
                	IFS='=' read -ra job <<< "$line"
                	IFS='_' read -ra alias <<< "$job"
			job_alias="$job_alias ${alias[2]}"
        	fi
	done < "$envfile"
	echo $job_alias
}

complete -F _jenkins-job_completions jenkins-job
