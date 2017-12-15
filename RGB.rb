#The rgb() method is incomplete. Complete the method so that passing in RGB decimal values will result in a hexadecimal representation being returned. The valid decimal values for RGB are 0 - 255. Any (r,g,b) argument values that fall out of that range should be rounded to the closest valid value.
#The following are examples of expected output values:
#rgb(255, 255, 255) # returns FFFFFF
#rgb(255, 255, 300) # returns FFFFFF
#rgb(0,0,0) # returns 000000
#rgb(148, 0, 211) # returns 9400D3

def rgb(r,g,b)
  r = 255 if r > 255; r = 0 if r < 0
  g = 255 if g > 255; g = 0 if g < 0
  b = 255 if r > 255; b = 0 if r < 0
  red = ("%0x" % r).upcase.rjust(2,"0")
  green = ("%0x" % g).upcase.rjust(2,"0")
  blue = ("%0x" % b).upcase.rjust(2,"0")
  r_g_b = "#{red}#{green}#{blue}"
  return r_g_b
end

# a better solution
def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end