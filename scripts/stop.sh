#!/bin/bash
docker stop nginx || true
docker rm nginx || true
