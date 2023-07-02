package;

import tokens.Token;
import hxdiscord.DiscordClient;
import hxdiscord.utils.Intents;
import hxdiscord.types.*;

class Main
{
    static var Bot:DiscordClient;
    
    var doblezValue:Int;
    static function main()
    {
        Bot = new DiscordClient(Token.token, [Intents.ALL], false);
        Bot.onReady = onReady;
        Bot.onMessageCreate = onMessageCreate;
        
    }

    public static function onReady()
    {
        trace("The bot is ready");

        
        var doblez:ApplicationCommand = new ApplicationCommand();
        doblez.setName("doblez");
        doblez.setDescription("Generates a random doblez shaggy");  
        var winis:ApplicationCommand = new ApplicationCommand();
        winis.setName("winis");
        winis.setDescription("Ping winisrecs");  
        var blahaj:ApplicationCommand = new ApplicationCommand();
        blahaj.setName("blahaj");
        blahaj.setDescription("Send a picture of a blahaj"); 
        Bot.setInteractionCommands([doblez, winis, blahaj]);
        Bot.onInteractionCreate = (i:Interaction) -> {
            switch(i.name) {
                case "doblez":
                    i.reply({content:"https://media.discordapp.net/attachments/1047586547068850408/1096317250304229466/lv_0_20230413233608.gif"}, false);
                case "winis":
                    i.reply({content:"<@750845956790026291>"}, false);
                 case "blahaj":
                    i.reply({content:"https://tenor.com/view/blahaj-go-spinny-blahaj-blahaj-spin-spin-shark-spin-gif-25670993"}, false);
            }
      }
    }

    public static function onMessageCreate(m:Message)
    {
        if (m.content == "hi")
            m.reply({content:"Hello!"}, true);
    }
}