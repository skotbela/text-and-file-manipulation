jq -r '(["First Name"] | (., map(length*"-"))), (.employees[] | [.firstName]) | @tsv' employees.json
