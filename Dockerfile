# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

ARG JAVA_VERSION=18
ARG JAVA_REVISION=18.0.2
ARG OS_PLATFORM=al2

FROM public.ecr.aws/aleph0io/lambda/java:${JAVA_REVISION}-${OS_PLATFORM}

COPY target/hello-lambda.jar "${LAMBDA_TASK_ROOT}/lib/"

CMD [ "com.sigpwned.lambda.hello.HelloLambda::handleRequest" ]
