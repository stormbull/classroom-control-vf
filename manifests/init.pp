class users {
user { 'fundamentals':
ensure => present,
# password => 'puppet8#labs', # Windows requires a plain text password
# groups => ['Users'], # Display in Windows Control Panel
}
}
Exercise 9.1: Proposed Solution
VirtualFundamentals
