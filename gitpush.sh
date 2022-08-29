#!/usr/bin/env bash
eval SSH_AUTH_SOCK=/tmp/ssh-XXXXXX2553bV/agent.6652; export SSH_AUTH_SOCK;
SSH_AGENT_PID=6653; export SSH_AGENT_PID; 
#echo Agent pid 6653;
ssh-add ~/.ssh/git_KEY 2>/dev/null 
echo -e "\033[36mAgentStart\nKeyAdded\033[0m"
