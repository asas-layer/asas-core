# Asas Core

Open foundations for container infrastructure.

Asas Core provides secure, minimal, and reproducible container images designed for Kubernetes environments. The project focuses on simplicity, transparency, and consistency—delivering reliable base images without unnecessary complexity.

---

## Overview

Asas Core is a curated set of container images built for platform and DevOps engineers who need predictable, auditable, and production-ready artifacts.

Unlike Bitnami, Asas Core is a smaller curated set of images with a transparent build process and no hidden automation or abstraction layers.

The goal is not to provide every possible image, but to provide **a small set of high-quality, well-defined building blocks**.

---

## Key Principles

- **Minimal images**  
  Only essential components are included—no unnecessary packages or layers.

- **Non-root by default**  
  Containers are designed to run without root privileges whenever possible.

- **Kubernetes-ready**  
  Images are structured for use in real Kubernetes workloads.

- **Security-first**  
  Vulnerability scanning and supply-chain integrity are part of the roadmap.

- **Reproducible builds**  
  Every image is built transparently and can be reproduced.

---

## Current Scope

Asas Core currently provides a minimal PostgreSQL image as a reference implementation.

The focus at this stage is to establish consistent standards for image structure, security, and build processes before expanding the image catalog.

---

## Repository Structure

```text
images/               Image definitions (Dockerfiles, configs)
docs/                 Project documentation
scripts/              Build and utility scripts
.github/workflows/    CI/CD pipelines
```

---

## Getting Started

### Build the Postgres image

```bash
docker build -t asas/postgres images/postgres
```

### Run the image

```bash
docker run --rm asas/postgres
```

Images will be published through a registry such as GHCR in the future, for example:

```bash
docker pull ghcr.io/asas-layer/postgres
```

### Intended Usage

These images are designed to be used as base building blocks for Kubernetes workloads and platform environments.

They can be:

* deployed directly in development environments
* used as base images for application containers
* integrated into CI/CD pipelines for consistent runtime environments

The goal is to provide predictable, minimal, and secure container foundations.

---

## Available Images

* **postgres**  
  Minimal PostgreSQL image designed for Kubernetes and local development.

More images will be added incrementally, following strict consistency and security standards.

---

## Contributing

Contributions are welcome.

To add a new image:

1. Create a new folder under `images/`
2. Include a `Dockerfile`, supporting files, and a `README.md`
3. Follow the project structure and standards

See `CONTRIBUTING.md` for details.

---

## Roadmap

* Expand image catalog (nginx, node, etc.)
* OCI-based Helm charts
* Automated vulnerability scanning (Trivy)
* Image signing (cosign)
* Standardized build pipelines

---

## Project Status

This project is in early development. The initial focus is on defining standards, building the first images, and establishing a reliable build pipeline.

Interfaces and guarantees may evolve as the project matures.

---

## License

MIT
