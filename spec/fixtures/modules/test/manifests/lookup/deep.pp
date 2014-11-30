class test::lookup::deep (
  $text = get_module_name('any')
) {
  notify { "lookup_deep_$text": }
}

