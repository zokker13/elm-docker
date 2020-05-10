build:
	docker build --build-arg elm_version=$(elm_version) -t zokker13/elm-docker .
	docker tag zokker13/elm-docker zokker13/elm-docker:$(elm_version)

push:
	docker push zokker13/elm-docker:latest
	docker push zokker13/elm-docker:$(elm_version)
