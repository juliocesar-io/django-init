# django-init

Fresh project template for django 1.8 projects based on the best practices using Docker.

### Get the template

To create a new django project with this template use the `--template` flag.

```bash

$ django-admin startproject --template=https://github.com/juliocesar-io/django-init/zipball/master --extension=py,gitignore your_project_name

```

### Dockerizing

Build and run the Docker image:

```bash

$ docker build -t my-django-app .
$ docker run --name your_project_name -d my-django-app

```

Finally, testing in `http://container-ip:8000`.

TODO:   Dockerfile ready for production.
