class User
  extend ActiveModel::Naming
  extend ActiveModel::Callbacks

  include ActiveModel::Model
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks
  include ActiveModel::Conversion

  # Paperclip required callbacks
  define_model_callbacks :initialize, :only => :after
  define_model_callbacks :save, only: [:after]
  define_model_callbacks :commit, only: [:after]
  define_model_callbacks :destroy, only: [:before, :after]

  attr_accessor :email, :first_name, :last_name, :workplace, :agree, :C_ID, :id

  validates :first_name, :presence => { :message => 'Поле «Имя» обязательно для заполнения' }
  validates :email, :email_format => { :message => 'Пожалуйста, проверьте правильность написания эл.адреса' }
  validates :agree, :format => { with: /1/, :message => 'Необходимо согласиться с пользовательским соглашением' }

  def save
    run_callbacks :save do
      self.id = Time.now.to_i
    end
  end

  def self.create(params={})
    user = User.new(params)
    user.save
    user
  end
end
