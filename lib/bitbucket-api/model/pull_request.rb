module BitbucketApi
  module Model
    class PullRequest < BitbucketApi::Model::Base
      attr_accessor :id,
                    :links,
                    :title,
                    :author,
                    :summary,
                    :state,
                    :source,
                    :destrination,
                    :merge_commit,
                    :comment_count,
                    :task_count,
                    :close_source_branch,
                    :closed_by,
                    :reason,
                    :created_on,
                    :updated_on,
                    :reviewers,
                    :participants

      def author=(author)
        @author = BitbucketApi::Model::Account.new(author)
      end
    end
  end
end