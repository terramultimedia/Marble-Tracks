$level_height = 0.75;
$level_width=1;
$post_amount = 3;

for(p=[0:1:($post_amount-1)]){
    translate([20*(p-1),0])
    union(){
        for(i=[0:1:12]){
            translate([i*$level_width,0])
            square([$level_width, 2+i*$level_height+p*$level_height/$post_amount]);
        }
    }
}
