class PolyTreeNode

    attr_reader :value, :parent, :children
        def initialize(value)
            @value = value
            @parent = nil
            @children = []
        end
    
        def parent=(passed_node)
            #delete the relationship between parent and child if parent isn't nil
            self.parent.children.delete(self) if @parent != nil
    
            @parent = passed_node
    
            #if parent exists and if the child isn't already in the children array, then add yourself into the children
            if !@parent.nil? && !@parent.children.include?(self)
                @parent.children << self
            end
        end
      
        def add_child(child)
            child.parent = self
        end
    
        def remove_child(child) 
            if child && self.children.include?(child)
                child.parent = nil
            else 
                raise 'error'
            end
        end
    
        def dfs(target_value)
            return self if @value == target_value
             @children.each do |child| 
                result = child.dfs(target_value)
                return result if result != nil
            end
            nil
        end
        
        def bfs(target_value)
            queue = [self]

            until queue.empty?
                first_ele = queue.shift
                if target_value == first_ele.value
                    return first_ele
                else
                    queue+=first_ele.children
                end
            end
            nil
        end
    end
    
    