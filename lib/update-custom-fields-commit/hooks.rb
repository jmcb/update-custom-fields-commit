module UpdateCustomFieldsOnCommit
    module Hooks
        class FieldsHook < Redmine::Hook::ViewListener

            def model_changeset_scan_commit_for_issue_ids_pre_issue_update (context={ })
                return unless context[:issue]

                issue = context[:issue]
                tracker = issue.tracker
                project = issue.project

                tracker.custom_fields.each do |field|
                    next unless field.close_default != ""

                    f_value = issue.custom_value_for(field) || issue.custom_values.build(:custom_field => field, :value => 0)

                    if field.field_format == 'bool':
                        if field.close_default == "on":
                            f_value.value = "1"
                        else
                            f_value.value = "0"
                        end
                    else
                        f_value.value = field.close_default
                    end

                    f_value.save!
                end

                issue.save!
            end
        end
    end
end
