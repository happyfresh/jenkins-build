_jenkins-job_completions()
{
	if [ "${#COMP_WORDS[@]}" != "2" ]; then
    		return
  	fi

	COMPREPLY=($(compgen -W "start stop log" "${COMP_WORDS[1]}"))
}

complete -F _jenkins-job_completions jenkins-job
