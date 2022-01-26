FROM gitpod/workspace-full:latest

# I encounted the following error.
# error: failed to solve: process "/bin/sh -c sh -c \"$(curl -sSfL https://release.solana.com/v1.9.5/install\"" did not complete successfully: exit code: 2
# {"@type":"type.googleapis.com/google.devtools.clouderrorreporting.v1beta1.ReportedErrorEvent","command":"build","error":"exit status 1","level":"error","message":"build failed","serviceContext":{"service":"bob","version":""},"severity":"ERROR","time":"2022-01-26T00:13:47Z"}
# RUN sh -c "$(curl -sSfL https://release.solana.com/v1.9.5/install"
RUN sudo apt-get update \
    && sudo apt-get install cowsay -y
