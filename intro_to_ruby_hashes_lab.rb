def base_hash
  myHash = {:railroads =>{}}
  return myHash
end

def monopoly_with_second_tier
  myHash = base_hash
  myHash[:railroads] = {:pieces => 4, :rent_in_dollars => {}, :names => {}}
  return myHash
end

def monopoly_with_third_tier
  myHash = monopoly_with_second_tier
  myHash[:railroads][:rent_in_dollars] = {:one_piece_owned => 25, :two_pieces_owned => 50, :three_pieces_owned => 100, :four_pieces_owned => 200}
  myHash[:railroads][:names] = {:reading_railroad => {}, :pennsylvania_railroad => {}, :b_and_o_railroad => {}, :shortline_railroad => {}}
  return myHash
end

def monopoly_with_fourth_tier
   myHash = monopoly_with_third_tier
   myHash[:railroads][:names][:reading_railroad] = {:mortgage_value => 100}
   myHash[:railroads][:names][:pennsylvania_railroad] = {:mortgage_value => 200}
   myHash[:railroads][:names][:b_and_o_railroad] = {:mortgage_value => 400}
   myHash[:railroads][:names][:shortline_railroad] = {:mortgage_value => 800}
   return myHash
end
