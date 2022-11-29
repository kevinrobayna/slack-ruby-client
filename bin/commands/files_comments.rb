# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'FilesComments methods.'
      command 'files_comments' do |g|
        g.desc 'Deletes an existing comment on a file.'
        g.long_desc %( Deletes an existing comment on a file. )
        g.command 'delete' do |c|
          c.flag 'file', desc: 'File to delete a comment from.'
          c.flag 'id', desc: 'The comment to delete.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.files_comments_delete(options))
          end
        end
      end
    end
  end
end
