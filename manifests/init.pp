class site_foo {
  notify { 'foo': message => hiera('variable') }
}
