module UpdateCustomFieldsOnCommit
    module Hooks
        class FieldsHook < Redmine::Hook::ViewListener

            def model_changeset_scan_commit_for_issue_ids_pre_issue_update (context={ })
                return unless context[:issue]

                issue = context[:issue]

                if issue.tracker[:name] == "Bug":
                    issue.done_ratio = 10
                end

                issue.save
            end

        end
    end
end
