class User < ActiveRecord::Base
  # attr_accessible :title, :body

  def User.fetch_all
    return User.where(:friend => true).order(:fname)
  end

  def User.create_user(fname, lname, email, pic_url, password)
    u=User.new
    u.fname = fname.capitalize
    u.lname = lname.capitalize
    u.email = email
    u.photo_url = pic_url
    u.password=password
    u.friend=true
    u.save
  end

  def User.select_user (id)
   return User.find_by_id(id)
  end

  def User.update_user(id, fname, lname, email, pic_url,password)
    u=User.find_by_id(id)
    u.fname=fname.capitalize
    u.lname=lname.capitalize
    u.email=email
    u.photo_url=pic_url
    u.password=password
    u.save
  end

  def User.destroy_user(id)
    u=User.find_by_id(id)
    u.destroy
  end

  def User.user_login(email, password)
     if User.exists?(:email => email)
        u=User.find_by_email(email)
          if u.password== password && u.account ==true
            return true
          else
            return false
          end
     else
     return false
     end
  end

  def User.create_account(fname, lname, email, pic_url, password)
    if User.exists?(:email => email)
        u=User.find_by_email(email)
        u.account = true
        u.save
    else
      u=User.new
      u.fname = fname.capitalize
      u.lname = lname.capitalize
      u.email = email
      u.photo_url = pic_url
      u.password=password
      u.account=true
      u.save
    end
  end

end
