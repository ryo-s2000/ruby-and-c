class ActiveRecordSample
    def initialize
        self.class::COLUMNS.each do |str|
            define_singleton_method str do
                "#{self.class.name}.#{str} = #{str}"
            end
        end
    end

    def find
        p 'find succeed'
    end

    def save
        p 'save succeed'
    end
end

# id
# name
class User < ActiveRecordSample
    COLUMNS = ['id', 'name']
end

# id
# user_id
# content
class Article < ActiveRecordSample
    COLUMNS = ['id', 'user_id', 'content']
end

# 定義をしていないのにメソッドとして定義されている様に使用できる
user = User.new
p user
p user.methods
p user.id
p user.name
user.find

article = Article.new
p article
p article.methods
p article.id
p article.user_id
p article.content
article.save
