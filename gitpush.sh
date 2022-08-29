#!/usr/bin/env bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/git_KEY 
echo -e "\033[36mAgentStart\nKeyAdded\033[0m"
