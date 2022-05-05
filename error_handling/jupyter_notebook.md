# Jupyter notebook 

#### The kernel failed to start due to the missing module <xyz>. Consider installing this module.

```bash
# if using a non-conda environment
python -m pip install <xyz> -U --force-reinstall
# If using a conda environment
conda install --name <environment name> <xyz> --update-deps --force-reinstall
```

Note: Worked for xyz = dateutil. 

URL: https://github.com/microsoft/vscode-jupyter/wiki/Failure-to-start-Kernel-due-to-Modules-not-installed