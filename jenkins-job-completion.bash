_jenkins-job_completions()
{
	COMPREPLY=($(compgen -W "start stop log" "${COMP_WORDS[1]}"))
}

complete -F _jenkins-job_completions jenkins-job
