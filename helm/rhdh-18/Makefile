CHART_NAME = rhdh-18-loadtests
NAMESPACE = rhdh-18-loadtests

install:
	helm upgrade --install $(CHART_NAME) . --create-namespace --namespace $(NAMESPACE) --values values.yaml

delete:
	helm uninstall $(CHART_NAME) --namespace $(NAMESPACE)

update-dependencies:
	helm dependency update
