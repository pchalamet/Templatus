
config ?= Debug

build:
	dotnet build

test:
	dotnet test

run: build
	dotnet run --project src/Templatus -- -t tests/TestLib/bin/$(config)/net8.0/testTemplate.ttus -p name=Timmy -p age=3
