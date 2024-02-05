# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.
require 'reading_time'

RSpec.describe "reading_time method" do
    it "takes a string of 400 words return 2 mins" do 
        result = reading_time('In the fantastical land of Zizzledorp, where polka-dotted clouds danced in the shimmering marshmallow sky, and rivers flowed with liquid rainbows, lived a community of sentient rubber ducks with top hats. These peculiar quackers were known for hosting elaborate tea parties underwater, where jellyfish played the accordion and seashells told jokes in bubbles.

        One day, a mischievous sock puppet named Snigglesnatch arrived riding a unicycle made of spaghetti, declaring himself the mayor of Noodleburg. The residents of Zizzledorp, including the top-hatted rubber ducks, were perplexed by this unexpected turn of events. Snigglesnatch, however, promised to organize a grand parade of flying marshmallows to celebrate the fusion of socks and noodles.
        
        The entire town buzzed with excitement as gummy bears played the trumpet and popcorn kernels tap-danced along the sugary streets. Meanwhile, a group of philosophical squirrels gathered in the acorn square to discuss the existential meaning of glitter. The conclusion? Glitter was, indeed, the universes way of expressing its inner sparkle.
        
        As the parade reached its climax, a gigantic bubblegum dragon descended from the cotton candy clouds, blowing bubbles of laughter that tickled the inhabitants of Zizzledorp. In response, the marshmallow trees erupted in applause, and confetti made of confetti fell from the sky.
        
        Just when everyone thought the festivities couldnt get any more peculiar, a choir of singing rubber chickens emerged from the waffle forest. Their melodic clucks resonated through the air, harmonizing with the rhythmic purring of rainbow-striped kittens riding on the backs of roller-skating turtles.
        
        In the midst of this delightful chaos, the moon, which happened to be a giant disco ball, began to spin, casting glimmering beams of disco light across the land. The residents of Zizzledorp, now adorned with glittery mustaches and noodle hats, joined hands and danced the Macarena with jubilant abandon.
        
        As the sun set behind the lollipop mountains, Snigglesnatch, the sock puppet mayor, proclaimed Zizzledorp as the quirkiest and most whimsical place in the universe. The top-hatted rubber ducks quacked their approval, and the entire town burst into laughter, knowing that in their peculiar world of gibberish and merriment, every day was a celebration of the absurd.  In the midst of this delightful chaos, the moon, which happened to be a giant disco ball, began to spin, casting glimmering beams of disco light across the land. The residents of Zizzledorp, now adorned with glittery mustaches and noodle hats, joined hands and danced')

        expect(result).to eq "2 mins"
    end
end
