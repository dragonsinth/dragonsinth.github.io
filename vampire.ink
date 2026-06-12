
One chilly autumn day, you approach the front door of the creepy, abandoned old house at the end of the street. You didn't really want to do this, but you ran your mouth to your friends, and now they are all standing at the edge of the street, eyeing you to see if you're really going to go inside.

The porch boards creak ominiously as you approach the front door and examine the rusty doorknob. It's probably locked or rusted into place, right? You should be able to bow out gracefully if there's no good way inside. With that in mind, you tentatively reach out and give the doorknob a gentle twist. To your surprise and dismay, the knob turns easily and the door swings itself open on its tilted doorframe.

You look back at your friends, who are now looking at you with a mix of expectation and skepticism.

* [Go inside.]
  Against your better judgement, you take a few cautious steps inside and peer around, but before you get a good look, you hear a quiet sound behind you, and the room is suddenly very dim. When your eyes adjust, you discover that the door has somehow closed itself behind you!
  -> entry_hall

* [Chicken out.]
  Exploring an abandoned old house is probably a bad idea. How did you let your friends talk you into this? You turn around and head back towards the street. Your friends are already laughing and pointing. Your face feels a little bit red, but eventually you'll get over the embarrassment.

  THE END

-> END

=== entry_hall ===
Entry Hall

{ stopping: You peer through the gloom and find yourself in an entry hall. A thick layer of dust covers sparse furniture. The rug gives way beneath your shoes; it has nearly decomposed already. Paintings still hang on the walls, but they are so faded and grimy you have no idea what they ever depicted. The air is still and stale. | You are standing in the dim entry hall of the old house. | }

* (tried_front_door) [The front door is shut behind you.]
  You grasp the front door knob firmly and give it a good twist. Unlike before, it doesn't budge an inch.
-> entry_hall
* {tried_front_door} [The front door is still behind you, but you can't get through.]
  You try once more, twisting the doorknob with all your might, yanking and shoving with desperation, but the door is immovable. You won't get out this way.
  -> entry_hall
* (tried_study) [A fancy wooden door is on your left.]
    You approach the thick wooden door and attempt to open it, only to discover that it's locked. There's an obvious keyhole just above the knob.
  { parlor.got_key:
    <> You pull out the iron key you found and slide it into the keyhole. It fits perfectly, and the door swings open with a satisfying click.
    -> study
  - else:
    -> entry_hall
  }
+ {tried_study && !parlor.got_key} [A locked wooden door is on your left.]
  It's still locked.
  -> entry_hall
* {tried_study && parlor.got_key && !study} [Unlock the wooden door on your left.]
  You pull out the iron key you found and slide it into the keyhole. It fits perfectly, and the door swings open with a satisfying click.
  -> study
+ {study} [The study is on your left.]
  You walk back into the study.
  -> study
* [To your right, a doorway opens into a parlor.]
  You walk into the parlor.
  -> parlor
+ {parlor} [The parlor is to your right.]
  You walk back into the parlor.
  -> parlor
* [Down the hall ahead, a plain door blocks your view.]
  You walk down the hall and discover the door opens easily. You find yourself in the kitchen.
  -> kitchen
+ {kitchen} [The kitchen is down the hall ahead.]
  You walk back into the kitchen.
  -> kitchen

-> END

=== parlor ===
Parlor

{stopping: You step into the parlor. Heavy curtains are drawn across the windows, admitting only thin slivers of grey light. A stone fireplace dominates one wall, cold and long dead. The furniture — an antique sofa, a side table, a wingback chair — sit shrouded in dust sheets like a gathering of ghosts. The room smells of mildew and old wood. | You are back in the parlor. | }

* (saw_curtains) [Heavy curtains are drawn across the windows.]
  You grab the nearest curtain and yank it aside, hoping for a way out. What you find instead are iron bars, set deep into the window frame and showing no sign of rust or weakness. The window itself is so caked with grime that pulling back the curtain barely makes a difference — the light that filters through is the same thin, grey murk as before.
  -> parlor
* (saw_bear) [A mounted bear head hangs above the fireplace.]
  The bear's glass eyes catch the dim light with an unsettling gleam. It's enormous — far larger than you'd imagined a bear's head could be — and its lips are drawn back just slightly, as if frozen mid-snarl. You take a few steps toward it before your nerve gives out. Something about the angle of those eyes makes you feel like it's watching you. You back away slowly and decide you'd rather not get any closer.
  -> parlor
* (found_key) [A tall grandfather clock stands against the far wall.]
  You approach the clock. It has long since stopped ticking, but the hands rest on 11:59, although you can't be sure whether that was the middle of the day or night. The pendulum hangs perfectly still behind the glass door, but it's suspended mid-swing as though time itself simply stopped. You peer more closely at the door and notice a small iron key was left in the keyhole.
  -> parlor
* (got_key) {found_key} [Carefully take key from the clock door.]
  You pull the key from the keyhole, and the frozen pendulum suddenly shifts, falling into a neutral position. The minute hand lurches forward, and somehow you know deep down that it was midnight, not noon. The key is both colder and heavier than you expected. You slip it into your right pocket.
  -> parlor
* (saw_portrait) [A portrait hangs on the wall beside the window.]
  Unlike the ruined paintings in the entry hall, this painting seems strangely vibrant and unmarred by time. It depicts a man in in a suit, standing imperiously gazing at the viewer. You can't decide his age, he could be anywhere from thiry to fifty. He is smiling, but there is something a little unsettling about the expression. You have the irrational but persistent feeling that the painted eyes are watching you. You look away.
  -> parlor

+ [Return to the entry hall.]
  -> entry_hall

-> END

=== study ===
Study

{stopping: You step into the study. It's a small, close room — dark wood paneling on every wall, a heavy desk buried under papers gone soft with damp, and a leather reading chair that has caved in on itself with age. A small fireplace still holds some very old ashes. A single bookshelf holds a modest collection of volumes, their spines cracked and faded. Most of the books are in such bad shape that you can't even read the titles anymore, but a couple are still in good condition. | You are in the study. | }

* (read_bible) [A worn, leather-bound Bible sits on on the small table beside the chair.]

  You delicately pry open the Bible. The pages are yellowed and tissue-thin, and the text is dense and small.

  It opens to Psalm 23, and you read "Yea, though I walk through the valley of the shadow of death, I will fear no evil." This must be the King James Version. 
  
  You realize that the book opened to this particular page because someone threaded the chain of a necklace through the pages here. A silver cross hangs off the end of the chain, lost and forgotten.
  -> study

* (got_cross) {read_bible} [Take the silver cross necklace.]
  You lift the necklace free from the pages. It's surpisingly less tarnished than you would have expected. You slip it into your left pocket and close the Bible back up.
  -> study

* (read_odyssey) [The "Odyssey" sits on the shelf.]
  You pull it out and flip to a random page. The translation is archaic, the margins annotated in a crabbed hand you can barely make out. You scan a passage about the land of the dead — shades without memory, wandering a sunless shore — and find that it isn't exactly lifting your spirits. You put it back.
  -> study

* (read_dracula) [A copy of "Dracula" rests on the desk.]
  You almost laugh. Of all the books to find in a house like this. You open it anyway, and the pages fall naturally to a chapter near the end, the spine clearly broken at this spot. Someone read this part more than once. You skim a few lines — something about an old house, locked doors, and a creature that could not be stopped. The hair stands up on your neck, and decide you've read quite enough. You toss it into the fireplace - although with no fire, it won't have the effect you were hoping for
  -> study

* (examined_study_window) [A small window is set high in the wall.]
  You drag the desk chair over and stand on it to get a closer look. The window is grimy but unbarred — and just barely large enough to squeeze through, if you had to. The latch is rusted solid, but the glass is old and thin. You could probably break it. You'd almost certainly cut yourself doing it, though, and you're not desperate enough for that. Not yet. You climb back down.
  -> study

+ [Return to the entry hall.]
  -> entry_hall

-> END

=== kitchen ===
Kitchen

{stopping: You make your way into the kitchen. It's a long, narrow room with a low ceiling. A heavy cast-iron stove squats against one wall, dark with old grease. Cupboards line the opposite wall, most of them hanging slightly open. A wooden counter runs the length of the room, its surface deeply scored from years of use. Everything is coated in the same grey dust as the rest of the house, but the smell here is different — something faintly charred underneath the damp, like a fire that went out a long time ago and was never properly cleaned up. | You are in the kitchen. | }

* (saw_teacup) [The cupboards hang open along one wall.]
  You pick through the nearest cupboard: stacked crockery, mostly chipped or cracked, a few tin canisters with their lids rusted shut. In the back, you find a lone teacup, still upright on its saucer as though someone set it down and simply walked away. You pick it up. There's a dark residue dried in the bottom — deep reddish-brown, thick where it pooled at the rim. You tell yourself it's old tea. It's probably old tea. You set the cup back down carefully.
  -> kitchen
* (saw_bones) [The oven door hangs slightly ajar.]
  You pull the oven door open the rest of the way. Inside you find the charred remains of something small — bones, blackened and brittle, arranged in the rough shape of an animal curled on its side.
  You can't tell what it was. It doesn't seem to be bigger than a breadbox. But then, it doesn't seem smaller than a breadbox, either, and you're pretty sure breadboxes don't leave bones.
  You wrinkle your nose and close the oven door.
  -> kitchen
* (found_knife) [A kitchen drawer sits slightly open beneath the counter.]
  You tug it open and find a jumble of old utensils. Among other things: a wooden spoon, a rusted vegetable peeler, a corkscrew, and a chef's knife lying flat at the back.
  -> kitchen
* (got_knife) {found_knife} [Take the chef's knife.]
  You pick up the knife. The blade is long and, strangely, free of rust. It looks practically new, and when you carefully test the edge with your thumb, you are only a little surprised to find it sharp... sharper than it has any right to be, sitting in an abandoned house. It must be stainless steel. You wonder how it got here.
  You tuck the knife into your belt at the small of your back. The blade slides through easily, but the handle is large enough, that you don't think it's in danger of slipping out. You feel slightly more confident... or at least, maybe slightly less helpless.
  -> kitchen

* (tried_stairs) {!(study.got_cross && kitchen.got_knife)} [A dark doorway opens at the far end of the kitchen.]
  You approach and peer through. Beyond the frame, a staircase drops away into complete darkness. You can't see the bottom.
  A wave of cold dread washes over you — not a chill, exactly, more like a certainty that you should not go down there. Your feet stop moving on their own. You stand frozen in the doorway for a long moment.
  You take a step back, then another. You're not ready for that. Not yet.
  -> kitchen
* (tried_stairs_armed) {study.got_cross && kitchen.got_knife} [A dark doorway beckons at the far end of the kitchen.]
  You approach and peer through. Beyond the frame, a staircase drops away into complete darkness. You can't see the bottom.
  A wave of cold dread washes over you — and with it, sudden and horrible clarity.
  The cross in your left pocket. The knife at your back.
  { study.read_dracula: <> The copy of Dracula, abandoned in the fireplace upstairs. }
  { kitchen.saw_teacup: <> The teacup. }
  { kitchen.saw_bones: <> The bones. }
  { parlor.saw_portrait: <> The portrait, with its weird smile. }
  In one part of your mind, the pieces arrange themselves, while in another part of your mind, swift denial attempts to wash away the clear picture that's forming.
  You take a step back, then another. You are not ready. You may never be ready.
  -> kitchen
* (tried_stairs_again_armed) {tried_stairs && study.got_cross && kitchen.got_knife} [The dark stairwell at the far end of the kitchen beckons.]
  You approach the doorway again, and a now-familiar sense of dread washes over you a second time — and with it, sudden and horrible clarity.
  The cross in your left pocket. The knife at your back.
  { study.read_dracula: <> The copy of Dracula, abandoned in the fireplace upstairs. }
  { kitchen.saw_teacup: <> The teacup. }
  { kitchen.saw_bones: <> The bones. }
  { parlor.saw_portrait: <> The portrait, with its weird smile. }
  In one part of your mind, the pieces arrange themselves, while in another part of your mind, swift denial attempts to wash away the clear picture that's forming.
  You are still not ready. You may never be ready.
  -> kitchen
* {tried_stairs && !(study.got_cross && kitchen.got_knife)} [The dark stairwell waits at the far end of the kitchen.]
  You take a long breath and steel yourself. One step at a time. You duck through the doorway and start down. The stairs are made of rough stone — nothing like the wood floors above, older somehow, as though they predate the rest of the house entirely. The darkness swallows you as you descend.
  -> basement
* {tried_stairs_armed || tried_stairs_again_armed} [The dark doorway at the far end of the kitchen beckons.]
  You take a long breath and steel yourself. You've come this far, and you tell yourself your imagination is running wild. One step at a time. You duck through the doorway and start down. The stairs are made of rough stone — nothing like the wood floors above, older somehow, as though they predate the rest of the house entirely. The darkness swallows you as you descend.
  -> basement
+ {basement} [The stairwell leads back down into the basement.]
  You head back down the stone steps into the dark.
  -> basement

+ [Return to the entry hall.]
  -> entry_hall

-> END

=== basement ===
Basement

You arrive in the basement after what seems like hours, although it must have only been seconds. The stone steps end and the floor beneath your feet becomes hard-packed earth. You stand in the dark in complete silence, the only sound your heavy breathing and pounding heart.

Time passes. You don't know how much. You stand frozen, trying to get control of your mind and decide what to do next. Every direction is the same: pure, absolute darkness. You silently curse the fact that you don't have a light.

And then, as if in answer, light fills your eyes.

For a split second, some desperate part of you thinks that heaven must have heard your silent prayer. But it only takes a moment — one horrible, clarifying moment — to realize that perhaps it was hell that answered.

Standing at the far end of the basement is a man, holding a candelabra. All of its candles are lit — every single one, simultaneously, as though they always were — and the light they cast is wrong somehow, too steady and too bright for bare flames in a dark room. The shadows they throw don't quite behave the way shadows should.

{ parlor.saw_portrait:
You know the face. It's the man from the painting upstairs — the one with the creepy smile. He looks exactly the same, not a day older.
}

The man smiles. The candlelight catches the points of his teeth.

{ study.read_dracula:
The word falls into place like a key into a lock. The teeth.
{ parlor.saw_portrait: <> The painting. }
{ kitchen.saw_teacup: <> The teacup. }
The clock frozen at midnight.
You've read this story. You know exactly what he is.
- else:
There is something deeply, fundamentally wrong with this man, though you cannot yet find the word for it.
}

"It's terribly dangerous," he says, in a voice like old silk, "to trespass in someone else's home. Even one that appears... abandoned."

* [Apologize and back slowly toward the stairs.]
  "I — I'm sorry," you manage. "I didn't know anyone lived here. I'll just — I'll go."
  The man's smile widens. The points of his teeth catch the candlelight.
  "No apologies are needed," he says pleasantly, "for such a delicious gift."
  He moves. You don't see how — one moment he is at the far end of the room, and then the candles go out, all of them, as suddenly as they lit. The darkness is total.
  You never see the rest.

  THE END

-> END

* [Fight.]
  { kitchen.got_knife:
    You reach back and grasp the knife, sliding it out of your belt. It doesn't exactly feel... good in your hands... but it does feel solid. Reliable. Like maybe you have a chance.
    You lunge forward desperately, knife in hand, aimed at this creature's heart. And for a moment, the man seems to freeze in genuine surprise as you begin to strike.
    But the blow never lands. The light vanishes as suddenly as it appeared, and as you pierce through the darkness, you hit nothing but air where the man was just standing. A blow strikes your leg, and you spin, but before you can even think to strike back in the dark, another one hits your arm, and the knife clatters loudly to the floor, ringing like a funeral bell. Your funeral.

    THE END
  - else:
    There is no plan, no strategy — just pure desperate instinct. You hurl yourself across the basement at him with a wordless shout.
    He laughs. It's a short, genuine sound, almost delighted, like a cat that has discovered the mouse is willing to play.
    What follows is brief. He is stronger than anything has a right to be, and fast in ways that don't make sense in the dark. You fight as hard as you have ever fought anything.
    It isn't close.

    THE END

  -> END
  }

* (brandished_cross) {study.got_cross} [Brandish the silver cross.]
  Your hand finds the cross in your left pocket and you thrust it out in front of you, chain wrapped around your fist.
  The effect is immediate. The man recoils — not dramatically, not with a shriek, but with the involuntary flinch of something confronting a genuine threat. His arm comes up to shield his face. The candelabra tumbles from his hand.
  And then, by some agency you cannot explain — magic, or the most improbable luck you have ever witnessed — it lands precisely upright on the earthen floor. Every candle remains lit. The basement stays illuminated.
  In the uncertain light, the creature stands with his face still half-covered, and for the first time since the candles came on, he does not look entirely in control of the situation.
  -> confrontation_stunned

* [Flee in terror.]
  You run. There's no other word for it — no dignity, no plan, just pure animal terror propelling you back toward the stairs.
  You reach them first. Your feet find the stone steps and you fly upward as fast as your legs can carry you, and for one wild moment you think you might actually make it.
  Then you hear him behind you. Not running — something faster than running, something that doesn't make the right sounds on the stairs, closing the distance with an ease that turns your blood to ice water. And somehow, in the way that you sometimes simply know things in dreams, you know with absolute certainty that you are never going to reach—

  THE END

-> END

=== confrontation_stunned ===
* [Fight.]
  { kitchen.got_knife:
    You shift your grip on the knife, grasping it with both hands. You lunge at the vampire with everything you have — your full strength, compounded by the adrenaline flooding your system — one all-out, desperate strike aimed directly at his heart.
    It's not a wooden stake. You're not even sure if this creature can be damaged at all. But what choice do you have?
    So you're almost shocked when, in fact, the blade goes right in.
    The vampire doesn't even have time to move, and not a sound escapes his lips. One moment he's standing there, and the next he's crumpling to the floor — with a lot more weight than you can possibly support. The knife is ripped out of your hands as he collapses.

    * * [Is it finally over?]

    You sink to the floor yourself, and sit there, trembling, in the flickering light of the candelabra. (Wasn't it steady before?)
    You can barely process what just happened. You've never gotten into a fight in your life, or harmed so much as an animal. Your mind is reeling with everything — being trapped here, all the creepy things you found, almost dying... not to mention the fact that vampires are actually real.
    Vampires. You look at the body. It's a lot less scary looking dead than it was alive, that's for sure. It's hard to imagine it was a vampire. Are your friends going to believe you? Is anyone going to believe you?
    The adrenaline fades and you start to come back to your senses. The candelabra is definitely sputtering now — one of the candles has already gone out. In the fading light, you look at the body once more. It's covered in blood. You are covered in blood.
    Slowly, it begins to dawn on you how bad this situation is starting to look. You're an intruder, and you just killed an apparently unarmed man. He _was_ a vampire, right? There's a dead body, a murder weapon, blood everywhere. Your fingerprints and DNA are on everything. Your friends all know you went inside, and they've been waiting outside for quite a long time now. They might have already called the police out of concern for you, oblivious to what actually happened in here.
    But you're alive, right? That's gotta be good, right?
    You sit on the floor for a long time, wondering how all this will turn out.

    THE END

    -> END
  - else:
    You press the advantage while you have it. Your right arm swings in wild punches while your left clutches the cross, driving it toward him whenever you can — part weapon, part ward. For a moment it almost feels like you're winning. He gives ground. He keeps his face turned away.
    But the punches don't seem to do anything that matters. He doesn't bleed. He doesn't flinch from the impact the way a person should. And you are breathing hard now, your arms getting heavy, the desperate energy of the first rush burning away faster than you can afford.
    He stops retreating. He starts kicking — blind, almost casual, like a man swatting at something in the dark. Most of them miss. Then one doesn't.
    It catches you square in the ribs and you crumple to your knees, the cross skittering away across the dirt floor. You try to get up.
    You don't manage it.

    THE END

  -> END
  }
* [Flee in terror.]
  You don't think. You just run — back toward the stairs, cross still clenched in your fist, held out behind you as you go. Whether it's buying you seconds or just something to hold onto, you can't say. But you hear him recovering behind you, and you don't look back.
  -> escape_kitchen

-> END

=== escape_kitchen ===
You burst through the kitchen doorway at a dead run, nearly losing your footing as you cross the threshold. Behind you on the stairs, you hear something ascending — and it doesn't sound happy.

* [Make for the entry hall.]
  You rush across the kitchen for the entry hall, sparing a glance over your shoulder as you reach the doorway-- just in time to see the man reach the top of the stairs behind you. You thrust the cross back over your shoulder without breaking stride. You don't hesitate long enough to know if it helped. 
  -> escape_entry_hall

=== escape_entry_hall ===
Entry Hall

You skid into the entry hall, breathing in ragged gasps. Three ways out. None of them good.

* (tried_escape_door) [The front door!]
  You throw yourself at the front door and wrench the handle with everything you have. It doesn't move.
  {entry_hall.tried_front_door: <> It didn't move before and it doesn't move now, and you have just spent precious seconds finding that out again.}
  Behind you, you sense your pursuer approaching.
  -> escape_entry_hall
* {tried_escape_door} [The front door — one more try!]
  You try again anyway. Of course it doesn't open. Of course it doesn't.
  You don't get a third try.

  THE END

-> END

* [The parlor!]
  -> escape_parlor

* [The study!]
  -> escape_study

=== escape_parlor ===
You run into the parlor. 
{ parlor.saw_curtains:
  There were windows in here, right? Oh wait... there were bars. And no other exit. There's nowhere to go.
  You realize your mistake immediately, and whirl around, but it's already too late. He's standing in the doorway, arm lowered now, watching you with something that looks almost like patience.
  -> parlor_caught
- else:
  There must be windows in here, behind the curtains you saw earlier?
  
  * [Throw open the curtains.]

  You rush for the curtains, ripping them aside with both hands.
  Iron bars. Set deep into the stone, showing no rust, no weakness, no give whatsoever.
  You try the other window. The same.
  By the time you turn around, he is already in the doorway.
  -> parlor_caught
}
= parlor_caught
{ parlor.saw_portrait: He looks exactly like the painting. He has had a very long time to learn how to wait. }
{ parlor.saw_bear: Your eyes find the bear head above the fireplace, and some unhinged corner of your mind feels bad for it... surely the bear would have wanted to join in on the feast that you're about to become. }

THE END

-> END

=== escape_study ===
You throw yourself through the study door.
{ study.examined_study_window:
  The desk chair is still where you left it, pulled under the small window. Behind you, footsteps in the hall.

  * [Smash through the window.]

  You cross the room in three strides and climb up without slowing down. No time to think about the glass.
  You drive your elbow into it. It gives on the second blow. You squeeze through the gap, and the jagged edges find you — your arms, your side — but you don't stop, and then you are through, tumbling out onto the cold ground outside, gasping, bleeding, alive.
  Behind you through the broken window, you hear him stop. A long silence.
  Then, with what sounds almost like genuine frustration: "Another time, perhaps."
  You look up. The sky is grey and brightening. He cannot follow you out here, and you both know it.
  You lie on the cold ground and breathe. Your friends are going to have so many questions.

  YOU SURVIVED

-> END
- else:
  The window. It's your only chance. But it's too high! Maybe if you could get the desk chair under it...

  * [Drag the chair over and climb up.]

  Frantically, you grab the chair from behind the desk and begin dragging it over to the window, while your brain is screaming that you don't have enough time.
  Behind you, the study door swings slowly open.
  Looks like your brain was right, after all.

  THE END

-> END
}

