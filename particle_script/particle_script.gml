/// @function particles(x,y,amount,speed,colour,scatter)
/// @param {real} x
/// @param {real} y
/// @param {real} amount
/// @param {real} speed
/// @param {real} colour
/// @param {real} scatter
function particles(_xx,_yy,_amount,_speed,_colour,_scatter,_type){
repeat(_amount) {
with(instance_create_depth(_xx-(_scatter/2)+random(_scatter*2),_yy-(_scatter/2)+random(_scatter*2),depth-1,_type)) {
image_blend = _colour
speed = _speed-0.5+random(1)
}}}