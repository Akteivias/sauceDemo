# sauceDemo

Initial implementation of tests using RobotFramework

## Requirements

To run the tests, ensure you have the following installed:

- Python 3.8^

## Running tests

From root project folder `sauceDemo/`

```sh
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
robot --outputdir results tests/purchase_flow.robot
```

## For MacOS

A notification windows might appear on MacOS when running the tests. You can either:

- click `Done` and let it run
- whitelist it in `MacOS apple logo > System Settings > Privacy & Security > Allow Anyway`
