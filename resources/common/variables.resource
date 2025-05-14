*** Variables ***
# Test data
${DEFAULT_PRODUCT}      Sauce Labs Backpack

# Credentials & URLs
${USER}                 standard_user
${PASS}                 secret_sauce
${BASE_URL}             https://www.saucedemo.com
${BROWSER}              Chrome

# Chrome options
&{CHROME_PREFS}
...                     credentials_enable_service=${False}
...                     profile.password_manager_enabled=${False}
...                     password_manager_enabled=${False}
...                     autofill.profile_enabled=${False}
@{CHROME_ARGS}
...                     --disable-features=PasswordLeakDetection
...                     --disable-save-password-bubble
...                     --password-store=basic
