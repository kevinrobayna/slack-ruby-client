# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'AdminConversations methods.'
command 'admin_conversations' do |g|
  g.desc 'Archive a public or private channel.'
  g.long_desc %( Archive a public or private channel. )
  g.command 'archive' do |c|
    c.flag 'channel_id', desc: 'The channel to archive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_archive(options))
    end
  end

  g.desc 'Convert a public channel to a private channel.'
  g.long_desc %( Convert a public channel to a private channel. )
  g.command 'convertToPrivate' do |c|
    c.flag 'channel_id', desc: 'The channel to convert to private.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_convertToPrivate(options))
    end
  end

  g.desc 'Create a public or private channel-based conversation.'
  g.long_desc %( Create a public or private channel-based conversation. )
  g.command 'create' do |c|
    c.flag 'is_private', desc: 'When true, creates a private channel instead of a public channel.'
    c.flag 'name', desc: 'Name of the public or private channel to create.'
    c.flag 'description', desc: 'Description of the public or private channel to create.'
    c.flag 'org_wide', desc: 'When true, the channel will be available org-wide. Note: if the channel is not org_wide=true, you must specify a team_id for this channel.'
    c.flag 'team_id', desc: 'The workspace to create the channel in. Note: this argument is required unless you set org_wide=true.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_create(options))
    end
  end

  g.desc 'Delete a public or private channel.'
  g.long_desc %( Delete a public or private channel. )
  g.command 'delete' do |c|
    c.flag 'channel_id', desc: 'The channel to delete.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_delete(options))
    end
  end

  g.desc 'Disconnect a connected channel from one or more workspaces.'
  g.long_desc %( Disconnect a connected channel from one or more workspaces. )
  g.command 'disconnectShared' do |c|
    c.flag 'channel_id', desc: 'The channel to be disconnected from some workspaces.'
    c.flag 'leaving_team_ids', desc: 'The team to be removed from the channel. Currently only a single team id can be specified.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_disconnectShared(options))
    end
  end

  g.desc 'Get conversation preferences for a public or private channel.'
  g.long_desc %( Get conversation preferences for a public or private channel. )
  g.command 'getConversationPrefs' do |c|
    c.flag 'channel_id', desc: 'The channel to get preferences for.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_getConversationPrefs(options))
    end
  end

  g.desc "This API endpoint can be used by any admin to get a channel's retention policy."
  g.long_desc %( This API endpoint can be used by any admin to get a channel's retention policy. )
  g.command 'getCustomRetention' do |c|
    c.flag 'channel_id', desc: 'The channel to get the retention policy for.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_getCustomRetention(options))
    end
  end

  g.desc 'Get all the workspaces a given public or private channel is connected to within this Enterprise org.'
  g.long_desc %( Get all the workspaces a given public or private channel is connected to within this Enterprise org. )
  g.command 'getTeams' do |c|
    c.flag 'channel_id', desc: 'The channel to determine connected workspaces within the organization for.'
    c.flag 'cursor', desc: 'Set cursor to next_cursor returned by the previous call to list items in the next page.'
    c.flag 'limit', desc: 'The maximum number of items to return. Must be between 1 - 1000 both inclusive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_getTeams(options))
    end
  end

  g.desc 'Invite a user to a public or private channel.'
  g.long_desc %( Invite a user to a public or private channel. )
  g.command 'invite' do |c|
    c.flag 'channel_id', desc: 'The channel that the users will be invited to.'
    c.flag 'user_ids', desc: 'The users to invite.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_invite(options))
    end
  end

  g.desc "This API endpoint can be used by any admin to remove a channel's retention policy."
  g.long_desc %( This API endpoint can be used by any admin to remove a channel's retention policy. )
  g.command 'removeCustomRetention' do |c|
    c.flag 'channel_id', desc: 'The channel to set the retention policy for.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_removeCustomRetention(options))
    end
  end

  g.desc 'Rename a public or private channel.'
  g.long_desc %( Rename a public or private channel. )
  g.command 'rename' do |c|
    c.flag 'channel_id', desc: 'The channel to rename.'
    c.flag 'name', desc: '.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_rename(options))
    end
  end

  g.desc 'Search for public or private channels in an Enterprise organization.'
  g.long_desc %( Search for public or private channels in an Enterprise organization. )
  g.command 'search' do |c|
    c.flag 'cursor', desc: 'Set cursor to next_cursor returned by the previous call to list items in the next page.'
    c.flag 'limit', desc: 'Maximum number of items to be returned. Must be between 1 - 20 both inclusive. Default is 10.'
    c.flag 'query', desc: 'Name of the the channel to query by.'
    c.flag 'search_channel_types', desc: 'The type of channel to include or exclude in the search. For example private will search private channels, while private_exclude will exclude them. For a full list of types, check the Types section.'
    c.flag 'sort', desc: 'Possible values are relevant (search ranking based on what we think is closest), name (alphabetical), member_count (number of users in the channel), and created (date channel was created). You can optionally pair this with the sort_dir arg to change how it is sorted.'
    c.flag 'sort_dir', desc: 'Sort direction. Possible values are asc for ascending order like (1, 2, 3) or (a, b, c), and desc for descending order like (3, 2, 1) or (c, b, a).'
    c.flag 'team_ids', desc: 'Comma separated string of team IDs, signifying the workspaces to search through.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_search(options))
    end
  end

  g.desc 'Set the posting permissions for a public or private channel.'
  g.long_desc %( Set the posting permissions for a public or private channel. )
  g.command 'setConversationPrefs' do |c|
    c.flag 'channel_id', desc: 'The channel to set the prefs for.'
    c.flag 'prefs', desc: 'The prefs for this channel in a stringified JSON format.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_setConversationPrefs(options))
    end
  end

  g.desc "This API endpoint can be used by any admin to set a channel's retention policy."
  g.long_desc %( This API endpoint can be used by any admin to set a channel's retention policy. )
  g.command 'setCustomRetention' do |c|
    c.flag 'channel_id', desc: 'The channel to set the retention policy for.'
    c.flag 'duration_days', desc: 'The message retention duration in days to set for this channel.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_setCustomRetention(options))
    end
  end

  g.desc 'Set the workspaces in an Enterprise grid org that connect to a public or private channel.'
  g.long_desc %( Set the workspaces in an Enterprise grid org that connect to a public or private channel. )
  g.command 'setTeams' do |c|
    c.flag 'channel_id', desc: 'The encoded channel_id to add or remove to workspaces.'
    c.flag 'org_channel', desc: 'True if channel has to be converted to an org channel.'
    c.flag 'target_team_ids', desc: 'A comma-separated list of workspaces to which the channel should be shared. Not required if the channel is being shared org-wide.'
    c.flag 'team_id', desc: 'The workspace to which the channel belongs. Omit this argument if the channel is a cross-workspace shared channel.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_setTeams(options))
    end
  end

  g.desc 'Unarchive a public or private channel.'
  g.long_desc %( Unarchive a public or private channel. )
  g.command 'unarchive' do |c|
    c.flag 'channel_id', desc: 'The channel to unarchive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.admin_conversations_unarchive(options))
    end
  end
end
