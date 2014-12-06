class test::lookup_class (
  $text = get_module_name('any')
) {
  notify { "lookup_$text": }
}

