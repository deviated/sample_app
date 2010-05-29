# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simple_aap_session',
  :secret      => 'ffc01d6e0c273fe7569dde537b6fe14d4271a1cdad6a1eb486d298ddca7f71401b4eb2b12e343bc29f40c8e660d61e1483e45320e3a76775ded17c19d8454b8b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
