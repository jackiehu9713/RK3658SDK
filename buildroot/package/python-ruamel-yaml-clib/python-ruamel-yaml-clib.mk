################################################################################
#
# python-ruamel-yaml-clib
#
################################################################################

PYTHON_RUAMEL_YAML_CLIB_VERSION = 0.2.7
PYTHON_RUAMEL_YAML_CLIB_SOURCE = ruamel.yaml.clib-$(PYTHON_RUAMEL_YAML_CLIB_VERSION).tar.gz
PYTHON_RUAMEL_YAML_CLIB_SITE = https://files.pythonhosted.org/packages/d5/31/a3e6411947eb7a4f1c669f887e9e47d61a68f9d117f10c3c620296694a0b
PYTHON_RUAMEL_YAML_CLIB_SETUP_TYPE = setuptools
PYTHON_RUAMEL_YAML_CLIB_LICENSE = BSD-3-Clause
PYTHON_RUAMEL_YAML_CLIB_LICENSE_FILES = LICENSE

$(eval $(python-package))
