# Makefile for setup thingsboard-helm
# include .env

MAKE := make

.PHONY: all
all:
	@echo use parameter
	@exit -1

.PHONY: install.dep
install.dep:
	helm dependency build

.PHONY: install.chart
install.chart:
	helm install --create-namespace -n thingsboard thingsboard .

.PHONY: update.chart
update.chart:
	helm update -n thingsboard thingsboard .

.PHONY: uninstall
uninstall:
	helm uninstall -n thingsboard thingsboard

.PHONY: clean
clean:
	rm -rf ./charts

