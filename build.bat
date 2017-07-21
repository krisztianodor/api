hugo
del /f /tmp/igdb-api/*
xcopy public /tmp/igdb-api
git checkout gh-pages
del /f *
xcopy /tmp/igdb-api/* .