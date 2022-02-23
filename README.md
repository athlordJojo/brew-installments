# brew-installments

## Installieren mit
brew bundle install --file=./Brewfile

## Um es in cron zu triggern
*/5 * * * * PATH=$PATH:/usr/local/bin && export PATH && /Users/joanraychouni/scripts/brewdump.sh