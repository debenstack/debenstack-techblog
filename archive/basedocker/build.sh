aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/x2q3v6u11
docker build -t debenstack-techblog-base .
docker tag debenstack-techblog-base:latest public.ecr.aws/x2q3v6u1/debenstack-techblog-base:latest
docker push public.ecr.aws/x2q3v6u1/debenstack-techblog-base:latest