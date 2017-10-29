# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Usergroups
      #
      # This method is used to create a User Group.
      #
      # @option options [Object] :name
      #   A name for the User Group. Must be unique among User Groups.
      # @option options [Object] :handle
      #   A mention handle. Must be unique among channels, users and User Groups.
      # @option options [Object] :description
      #   A short description of the User Group.
      # @option options [Object] :channels
      #   A comma separated string of encoded channel IDs for which the User Group uses as a default.
      # @option options [Object] :include_count
      #   Include the number of users in each User Group.
      # @see https://api.slack.com/methods/usergroups.create
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.create.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.create.json
      def usergroups_create(options={})
        throw ArgumentError.new("Required arguments :name missing") if options[:name].nil?
        post("usergroups.create", options)
      end

      #
      # This method disables an existing User Group.
      #
      # @option options [Object] :usergroup
      #   The encoded ID of the User Group to disable.
      # @option options [Object] :include_count
      #   Include the number of users in the User Group.
      # @see https://api.slack.com/methods/usergroups.disable
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.disable.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.disable.json
      def usergroups_disable(options={})
        throw ArgumentError.new("Required arguments :usergroup missing") if options[:usergroup].nil?
        post("usergroups.disable", options)
      end

      #
      # This method enables a User Group which was previously disabled.
      #
      # @option options [Object] :usergroup
      #   The encoded ID of the User Group to enable.
      # @option options [Object] :include_count
      #   Include the number of users in the User Group.
      # @see https://api.slack.com/methods/usergroups.enable
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.enable.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.enable.json
      def usergroups_enable(options={})
        throw ArgumentError.new("Required arguments :usergroup missing") if options[:usergroup].nil?
        post("usergroups.enable", options)
      end

      #
      # This method returns a list of all User Groups in the team. This can optionally include disabled User Groups.
      #
      # @option options [Object] :include_disabled
      #   Include disabled User Groups.
      # @option options [Object] :include_count
      #   Include the number of users in each User Group.
      # @option options [Object] :include_users
      #   Include the list of users for each User Group.
      # @see https://api.slack.com/methods/usergroups.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.list.json
      def usergroups_list(options={})
        post("usergroups.list", options)
      end

      #
      # This method updates the properties of an existing User Group.
      #
      # @option options [Object] :usergroup
      #   The encoded ID of the User Group to update.
      # @option options [Object] :name
      #   A name for the User Group. Must be unique among User Groups.
      # @option options [Object] :handle
      #   A mention handle. Must be unique among channels, users and User Groups.
      # @option options [Object] :description
      #   A short description of the User Group.
      # @option options [Object] :channels
      #   A comma separated string of encoded channel IDs for which the User Group uses as a default.
      # @option options [Object] :include_count
      #   Include the number of users in the User Group.
      # @see https://api.slack.com/methods/usergroups.update
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.update.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.update.json
      def usergroups_update(options={})
        throw ArgumentError.new("Required arguments :usergroup missing") if options[:usergroup].nil?
        post("usergroups.update", options)
      end

      #
      # This method returns a list of all users within a User Group.
      #
      # @option options [Object] :usergroup
      #   The encoded ID of the User Group to update.
      # @option options [Object] :include_disabled
      #   Allow results that involve disabled User Groups.
      # @see https://api.slack.com/methods/usergroups.users.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.users.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.users.list.json
      def usergroups_users_list(options={})
        throw ArgumentError.new("Required arguments :usergroup missing") if options[:usergroup].nil?
        post("usergroups.users.list", options)
      end

      #
      # This method updates the list of users that belong to a User Group. This method replaces all users in a User Group with the list of users provided in the users parameter.
      #
      # @option options [Object] :usergroup
      #   The encoded ID of the User Group to update.
      # @option options [Object] :users
      #   A comma separated string of encoded user IDs that represent the entire list of users for the User Group.
      # @option options [Object] :include_count
      #   Include the number of users in the User Group.
      # @see https://api.slack.com/methods/usergroups.users.update
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.users.update.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/usergroups.users.update.json
      def usergroups_users_update(options={})
        throw ArgumentError.new("Required arguments :usergroup missing") if options[:usergroup].nil?
        throw ArgumentError.new("Required arguments :users missing") if options[:users].nil?
        post("usergroups.users.update", options)
      end

    end
  end
end
