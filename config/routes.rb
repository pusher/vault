Rails.application.routes.draw do
  root 'vault#all'
  get ':type/' => 'vault#category'

  get ':type/:patternname/raw' => 'vault#raw'
  get ':type/:patternname/' => 'vault#individual'
  get ':type/:patternsub/:patternname/raw' => 'vault#raw'
  get ':type/:patternsub/:patternname' => 'vault#individual'
end
