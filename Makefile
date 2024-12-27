help:
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done


local-test-crawler: # Send test command on local to test  the lambda
	curl -X POST "http://localhost:9010/2015-03-31/functions/function/invocations" \
		-d '{"link": "https://www.instagram.com/mcdonalds/"}'

local-test-scheduler: # Send test command on local to test  the lambda
	curl -X POST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
