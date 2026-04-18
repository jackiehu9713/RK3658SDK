################################################################################
#
# python-ruamel-yaml
#
################################################################################

PYTHON_RUAMEL_YAML_VERSION = 0.17.31
PYTHON_RUAMEL_YAML_SOURCE = ruamel.yaml-$(PYTHON_RUAMEL_YAML_VERSION).tar.gz
PYTHON_RUAMEL_YAML_SITE = https://files.pythonhosted.org/packages/39/97/03674459c459b9b69ef71eba039205a72867e5c6c409df3136858f6836f3
PYTHON_RUAMEL_YAML_SETUP_TYPE = setuptools
PYTHON_RUAMEL_YAML_LICENSE = BSD-3-Clause
PYTHON_RUAMEL_YAML_LICENSE_FILES = LICENSE

$(eval $(python-package))
