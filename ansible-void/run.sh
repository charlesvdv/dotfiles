#!/bin/env bash

ansible-playbook --become --ask-become-pass --inventory inventory.yml "$1"
