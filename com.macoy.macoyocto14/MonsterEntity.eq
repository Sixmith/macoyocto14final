
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity: SEEntity
{
        SESprite monster2;
        SESprite bg;
        SESprite GAMEOVER;
        
        int px1;
    int py1;
    int speed;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        var w = get_scene_width();
        var h = get_scene_height();
   
        rsc.prepare_image("mymonster", "monster2", w*0.30, h*0.30);
        rsc.prepare_image("myover","GAMEOVER",get_scene_width(),get_scene_height());
        monster2 = add_sprite_for_image(SEImage.for_resource("mymonster"));
       // GAMEOVER = add_sprite_for_image(SEImage.for_resource("myover"));
            monster2.move(Math.random(0,w), Math.random(0,h));

                                var wp = monster2.get_width();
                var wh = monster2.get_height();
                px1 = Math.random(0,w);
                py1 = Math.random(0,h);
                monster2.move(Math.random(0,w), Math.random(0,h));
                speed = Math.random(4,15);
}

public void tick (TimeVal time, double delta) {
                if(px1 < MainScene.px){
                        px1 = px1 + Math.random(speed/-4,speed);
                }
                else if(px1 > MainScene.px){
                        px1 = px1 - Math.random(speed/-4,speed);
                }
                
                if(py1 < MainScene.py){
                        py1 = py1 + Math.random(speed/-4,speed);
                        }
                else if(py1 > MainScene.py){
                        py1 = py1 - Math.random(speed/-4,speed);
                }

                if(px1==MainScene.px&&py1==MainScene.py) {
                        MainScene.bg = add_sprite_for_image(SEImage.for_resource("myover"));

                        MainScene.bg.move(0,0);
                }
               monster2.move(px1,py1);

        }


public void cleanup() {
        base.cleanup();
    }
}
