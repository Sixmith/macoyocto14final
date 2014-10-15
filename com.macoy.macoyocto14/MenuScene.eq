
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
        SESprite main;
        SESprite play;
                
 
        public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
             var w = get_scene_width(); 
             var h = get_scene_height();
                 AudioClipManager.prepare("zelda3");
             rsc.prepare_image("mymain", "main", w, h);
             rsc.prepare_image("myplay", "play", w*0.3, h*0.3);
             main = add_sprite_for_image(SEImage.for_resource("mymain"));
             play = add_sprite_for_image(SEImage.for_resource("myplay"));        
             main.move(0,0);
             play.move(500,500);
            }
                
                public void on_pointer_press(SEPointerInfo pi) {
             base.on_pointer_press(pi);
             if(pi.is_inside(500,500,get_scene_width()*0.5, get_scene_height()*0.5)) {
             switch_scene(new MainScene());
             } AudioClipManager.play("zelda3");
           }
        
        public void cleanup() {
                base.cleanup();
        }
}