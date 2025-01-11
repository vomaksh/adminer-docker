# vomaksh/adminer-docker

## ✨ Introduction

This repository provides a Dockerized version of Adminer pre-configured with essential plugins.
The goal is to save time by avoiding repetitive customization for each use.
It is based on a fork of [adminer](https://github.com/adminerevo/adminerevo).

## 🛠️ Features

This Docker image includes the following plugins by default:

- [editor.php](https://github.com/adminerevo/adminerevo/releases/download/v4.8.4/editor-4.8.4.php)
- [edit-calendar.php](https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/edit-calendar.php)
- [tables-filter.php](https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/tables-filter.php)
- [designs.php](https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/designs.php)
- [edit-calendar.php](https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/edit-calendar.php)
- [pretty-json-column.php](https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/pretty-json-column.php)
- [login-servers.php](https://raw.githubusercontent.com/adminerevo/adminerevo/master/plugins/login-servers.php)

## 🚀 Usage

### Using Docker CLI

To run the it using docker cli, run the following command:

```sh
docker run -p 8080:8080 ghcr.io/vomaksh/adminer-docker
```

### Using Docker Compose

To run it via docker-compose, add the following service definition to your docker-compose.yml file:

```yaml
adminer:
  image: ghcr.io/vomaksh/adminer-docker
  ports:
    - 8080:8080
```

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/vomaksh/adminer-docker/blob/master/LICENSE) file for details.
