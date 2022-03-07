#
# Run the services for development
tests:
	python app/manage.py test app/ && flake8 --config app/.flake8

tests-into-container:
	docker-compose run app sh -c "python manage.py test && flake8"
