#! /bin/bash
# Dec 1
echo -n "type the branch you would like to push to. [ENTER] to push to master branch"
read branch

echo -n "type the commit message, followed by the [RETURN] key: "
read msg

echo -n "$msg is your commit message. Is that correct?([y/N])"
read resp

default_branch="master";
${branch:-$default_branch}

if (( ($resp == "y") )); then
	git add -A; git commit -m "updated cv"; git push -u origin $branch
elif [[ $resp == "n" || "no" ]]; then
	echo -n "type the commit message, followed by the [RETURN] key: "
	read msg	#statements
else
	echo -n "sorry, $msg is not a valid response"
fi

exit