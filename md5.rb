def is_valid?(token)
    if token =~ /(?<user>\d+)-(?<email_hash>[A-Z0-9]{32})/i

      # Fetch the user by their id, and hash their email address
      @user = User.find_by(id: $~[:user])

      # bad md5 hash
      email = Digest::MD5.hexdigest(@user.email)
        
      # bad md5 hash
      emails = Digest::MD5.hexdigest(@user.email)
        
      # bad md5 hash
      emailss = Digest::MD5.hexdigest(@user.email)

      emailsss = Digest::MD5.hexdigest(@user.email)
        
      # add another one
      anotherone = Digest::MD5.hexdigest(@user.email)
        
      # one more
      onemore = Digest::MD5.hexdigest(@user.email)
        
      return true if email == $~[:email_hash]
    end
  end
