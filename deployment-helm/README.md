https://helm.sh/docs/chart_template_guide/getting_started/

helm install guestbook ./deployment-helm
helm get manifest guestbook
helm uninstall guestbook

helm install --debug --dry-run guestbook ./deployment-helm