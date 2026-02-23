CHART_NAME = rhdh-17-loadtests
NAMESPACE = rhdh-17-loadtests

install:
	helm upgrade --install $(CHART_NAME) . --create-namespace --namespace $(NAMESPACE) --values values.yaml

delete:
	helm uninstall $(CHART_NAME) --namespace $(NAMESPACE)

update-dependencies:
	helm dependency update
