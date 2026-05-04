# Contributing

Contributions are welcome and must follow strict standards for consistency, security, and maintainability.

## Adding a New Image

1. Create a folder under `images/<name>/`
2. Include the required files:
   * `Dockerfile`
   * `README.md`
   * `metadata.yaml`
   * `rootfs/` (if needed)
3. Follow the existing structure and conventions used in `images/postgres`.

## Image Requirements

* Images must be minimal. Do not add unnecessary packages or dependencies.
* Images must run as non-root whenever possible.
* Images must include a healthcheck when applicable.
* Images must follow the existing directory structure.
* Images must not introduce unnecessary complexity.

## File Structure Example

```text
images/<name>/
  Dockerfile
  README.md
  metadata.yaml
  rootfs/
```

## Documentation Requirements

* Each image must include a `README.md`.
* The image README must explain:
  * what the image is
  * how to build it
  * how to run it

## Pull Request Guidelines

* Keep pull requests focused. Prefer one image or one change per PR.
* Ensure builds succeed before submitting the PR.
* Follow repository conventions and existing patterns.
* Do not introduce breaking changes without prior discussion.

## Future Standards

CI validation, security scanning, and signing will be enforced later as standards evolve.
