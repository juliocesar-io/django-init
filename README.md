# django-init

Layout template for Django 1.8 projects based on the best practices using Docker.

### Get the template

To create a new Django project with this template use the `--template` flag.

```bash

$ django-admin startproject --template=https://github.com/juliocesar-io/django-init/zipball/master --extension=py,gitignore your_project_name

```

### The Layout

Is based on the book "Two Scoops of Django" which recommends to put an "apps" folder inside project folder, as well using different config files for dev/prod environment.

```bash
├── Dockerfile
├── manage.py
├── project_name
│   ├── apps
│   │   └── __init__.py
│   ├── __init__.py
│   ├── settings
│   │   ├── base.py
│   │   ├── __init__.py
│   │   ├── local.py
│   │   └── prod.py
│   ├── static
│   ├── templates
│   │   ├── 403.html
│   │   ├── 404.html
│   │   ├── 500.html
│   │   └── base.html
│   ├── urls.py
│   └── wsgi.py
├── README.md
├── requirements.txt
└── setup.py

```

### Virtualenv

You know, is always a good idea to have isolated your project.

```bash
$ pip install virtualenvwrapper
$ mkvirtualenv your_project_name
```

Activate:

```bash
$ workon your_project_name

```


### Dockerizing

Looking for scale your project easily ? Now you can have an full isolated S.O with LXC using Docker.

Build and run the Docker image:

```bash

$ docker build -t my-django-app .
$ docker run --name your_project_name -d my-django-app

```

Finally, testing in `http://container-ip:8000`.

TODO:   Dockerfile ready for production.
