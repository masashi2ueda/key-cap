$fs = 0.1;
stem_w = 5.5;
stem_d = 5.5;
stem_h = 15;
stem_cross_length = 4.0;
stem_cross_w1= 1.25;
stem_cross_w2 = 1.10;

module create_stem (w, d, h, cross_length, cross_w1, cross_w2) {
    translate([0, 0, h / 2])
        difference () {
            cube([w, d, h], center = true);
            cube([cross_w1, cross_length, h], center = true);
            cube([cross_length, cross_w2, h], center = true);
        }
}
create_stem(w=stem_w, d=stem_d, h=stem_h, cross_length=stem_cross_length, cross_w1=stem_cross_w1, cross_w2=stem_cross_w2);    
