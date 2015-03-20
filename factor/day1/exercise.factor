USING: kernel prettyprint math math.functions math.ranges math.parser sequences strings ascii ;
IN: exercise

3 3 * 4 4 * + .

3 sq 4 sq + sqrt .

1 2 over swap .s clear

"AS" "Hello, " swap append >upper .

{ 1 4 17 9 11 } 0 [ + ] reduce .

100 [1,b] 0 [ + ] reduce .

10 [1,b] [ sq ] map .

42 [ 10 /i ] [ 10 mod ] bi .s clear

12345 number>string [ 1string string>number ] each .s clear
