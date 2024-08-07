#!/bin/bash

function list_issues {
    clear
    echo "List of issues:"
    gh issue list --limit 100 --json number,title,createdAt | jq -r '.[] | "#\(.number) \(.title) \(.createdAt)"'
}

function handle_selection {
    read -n1 -p "Select an issue to [(C)reate / c(L)ose / c(O)mment / (E)dit / (I)nfo]: " action
    case $action in
        C|c)
            gh issue create
            ;;
        L|l)
            gh issue close "$issue_number"
            ;;
        O|o)
            gh issue comment "$issue_number"
            ;;
        E|e)
            gh issue edit "$issue_number"
            ;;
        I|i)
            gh issue view "$issue_number" | less -R
            ;;
        *)
            echo "Invalid selection"
            ;;
    esac
}

while true; do
    list_issues

    read -p "Enter the issue number: " issue_number

    handle_selection

    sleep 2
done
