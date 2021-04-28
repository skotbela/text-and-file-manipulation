jq -r '(["Name"] | (., map(length*"-"))), (.employees[] | [.firstName]) | @tsv' employees.json
echo " "
jq -r '(["Name", "Phone Numbers"] | (., map(length*"-"))), (.employees[] | [.firstName, .phoneNumbers[].number]) | @tsv' employees.json
echo " "
jq -r '(["Name", "Mobile Number"] | (., map(length*"-"))), (.employees[] | [.firstName,(.phoneNumbers[] | select(.type=="mobile").number)]) | @tsv' employees.json

