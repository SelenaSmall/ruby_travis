# Ruby, Rspec & Travis-CI
[![Build Status](https://travis-ci.org/SelenaSmall/ruby-travis-example.png)](https://travis-ci.org/SelenaSmall/ruby-travis-example)
[![Code Climate](https://codeclimate.com/github/SelenaSmall/ruby_travis/badges/gpa.svg)](https://codeclimate.com/github/SelenaSmall/ruby_travis)
[![Test Coverage](https://codeclimate.com/github/SelenaSmall/ruby_travis/coverage.svg)](https://codeclimate.com/github/SelenaSmall/ruby_travis/coverage)

***

## Set Up

__Clone Repo__

> $ git clone repo_name
> $ bundle install

__Remove .git__

> $ rm -rf .git


__Create your repo__

https://github.com

Add this project to your repo

> $ git init
> $ git add —all
> $ git commit -m ‘Initial commit’
> $ git remote add origin {remote_url}
> $ git remote -v
> $ git push -u origin master

___Commit changes to your clean app__

> $ git status
> $ git add —all
> $ git commit -m ‘initial commit’
> $ git push

__Travis__

https://travis-ci.org/

- Sign in with Github
- Add your repo 

__CodeClimate__

https://codeclimate.com/

- Sign in with Github
- Add you repo
- Get the token and add it to your .travis.yml
	project > settings > test coverage > test reporter id

__README__

Update the README with your new badges

- Build Status Image
```
[![Build Status](https://travis-ci.org/{your_github_name}/{your_repo_name}.png)](https://travis-ci.org/{your_github_name}/{your_repo_name})
```

- Code climate Image
```
[![Code Climate](https://codeclimate.com/github/{your_github_name}/{your_repo_name}/badges/gpa.svg)](https://codeclimate.com/github/{your_github_name}/{your_repo_name})
```

- Test coverage Image
```
[![Test Coverage](https://codeclimate.com/github/{your_github_name}/{your_repo_name}/coverage.svg)](https://codeclimate.com/github/{your_github_name}/{your_repo_name}/coverage)
```

***

## Write your app

Now you’re set up with a blank ruby project to test builds, code quality and coverage throughout development!

Entry point

> app.rb

Source files

> /lib/main.rb

Test files

> spec/main_spec.rb

## Usage

To run the app

> $ ruby app.rb

## Testing

To run tests before committing changes

> $ rake spec

When committing changes to master branch, your code will automatically build with Travis-CI and CodeClimate and update the badges in your repo’s README.
