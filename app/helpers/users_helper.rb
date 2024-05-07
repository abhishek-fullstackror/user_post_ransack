module UsersHelper
    def user_column_fields
        %i(id name email created_at updated_at).freeze
    end

    def results_limit
        # max number of search results to display
        10
    end

    def display_search_results(objects)
        objects.limit(results_limit).reduce(String.new) do |string, object|
        string << (tag.tr display_search_results_row(object))
        end
    end

    def display_search_results_row(object)
        user_column_fields.reduce(String.new) do |string, field|
        string << (tag.td object.send(field))
        end
        .html_safe 
    end
end
