Rails.application.routes.draw do

  # Users

  get("/", { :controller => "users", :action => "new_session_form" })
  get("/user_sign_up", {:controller => "users", :action => "registration_form" })
  get("/user_sign_out", {:controller => "users", :action => "toast_cookies" })
  get("/user_sign_in", {:controller => "users", :action => "new_session_form" })
  post("/verify_credentials", {:controller => "users", :action => "authenticate" })
  get("/insert_user_record", {:controller => "users", :action => "create" })
  get("/users", {:controller => "users", :action => "homepage"})
  get("/users/:the_username", {:controller => "users", :action => "show"})
  get("/update_user/:the_user_id", {:controller => "users", :action => "update" })
  get("/delete_user/:the_user_id", {:controller => "users", :action => "destroy"})



end
