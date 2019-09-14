FROM golang:latest

LABEL "com.github.actions.name"="Particle"
LABEL "com.github.actions.description"="Invoke a Particle Function"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/mattdsteele/particle-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="mattdsteele <orphum@gmail.com>"

COPY go.mod particle.go /
RUN go mod download
RUN go build -o main /
ENTRYPOINT ["/main"]