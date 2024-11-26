# Docker LEMP Stack

A lightweight and portable LEMP (Linux, Nginx, MySQL, PHP) stack powered by Docker for local development and testing.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed
- [Docker Compose](https://docs.docker.com/compose/install/) installed

## Features

- **Nginx**: Handles web requests and serves static files.
- **PHP-FPM**: Executes PHP scripts.
- **MySQL**: Provides the database service.
- **phpMyAdmin**: Database management interface (optional).

## Setup Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/OleGreg/LEMP-docker-composer
   cd LEMP-docker-composer

2. Add your environment variables in example.env, and then save as ".env". compose.yaml will use these .env variables for your container build