module UpdateCustomFieldsOnCommit
    class Hooks < Redmine::Hook::ModelListener
        def model_changeset_scan_commit_for_issue_ids_pre_issue_update (context = { })
            if context[:issue]
                if context[:issue][:status].is_closed
                    if context[:issue][:tracker].name == "Bug"
                        context[:issue].custom_field_values[2] = "Done"
                    elsif context[:issue][:tracker].name == "Feature"
                        context[:issue].custom_field_values[3] = "Done"
                    end
                end
            end
        end
    end
end
