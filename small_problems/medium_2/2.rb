
=begin
arrays = [ [B,O], [X,K], [D,Q], [C,P], [N,A],
[G,T], [R,E], [F,S] , [J,W],   [H,U],
[V,I], [L,Y],  [Z,M] ]
take word split it into characters 
iterate through chracters
comparse first letter to all blocks
if block has letter, than remove block from array
if no block has letter than word cannot be spelled

=end

BLOCKS = ['BO', ['X', 'K'], ['D', 'Q'], ['C', 'P'],
          ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
          ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],  ['Z', 'M']]

  
def block_word?(string)
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
          ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], 
          ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],  ['Z', 'M']]

   
      string.upcase.chars.each do |char| 
      if blocks.any? { |block| block.include?(char)}
        used_block = blocks.find_index {|block| block.include?(char)}
        blocks.delete_at(used_block)
      else
        return false
      end
    end
     return true
end
 

    
        
    
p block_word?('BATCH') == true # --> true
p block_word?('BUTCH') == false # --> true
p block_word?('jest') == true # --> true
p block_word?('get') == false # --> true
p block_word?('virginia') == false # --> true
p block_word?('Dairy Queen') == false # --> true
p block_word?('DOT') == true # --> true