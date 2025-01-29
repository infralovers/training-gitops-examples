# Helm Chart Example

[https://helm.sh/docs/chart_template_guide/getting_started/]

## Installation

```shell
helm upgrade --install guestbook ./
```

## Review installed release

```shell
helm get manifest guestbook
helm get values guestbook
```

## Uinstall release

```shell
helm uninstall guestbook
```

## Template

```shell
helm template guestbook ./
```

## Dry-run

```shell
helm install --debug --dry-run guestbook ./
```