module UpdateCustomFieldsOnCommit
    module Hooks
        class FieldsHook < Redmine::Hook::ViewListener

            def model_changeset_scan_commit_for_issue_ids_pre_issue_update (context={ })
                return unless context[:issue]

                issue = context[:issue]

                if issue.status.is_closed?
                    if issue.tracker[:name] == "Bug"
                        issue.custom_field_values[2] = "Done"
                    elsif issue.tracker[:name] == "Feature"
                        issue.custom_field_values[3] = "Done"
                    end
                end
            end

        end
    end
end
