import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name='mvae',
    version='0.0',
    author='Yang Liu',
    author_email='lya@ethz.ch',
    package_dir={'': 'src'},
    packages=setuptools.find_packages('src'),
    test_suite='tests',
    url='',
    description='Test mvae',
    long_description=long_description,
    long_description_content_type="text/markdown",
    python_requires='>=2.7',
)
