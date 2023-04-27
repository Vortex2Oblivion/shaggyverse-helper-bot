package;

import commands.BotCommand;
import tokens.Token;
import hxdiscord.DiscordClient;
import hxdiscord.utils.Intents;
import hxdiscord.types.*;

class Main
{
    static var Bot:DiscordClient;
    static function main()
    {
        Bot = new DiscordClient(Token.token, [Intents.ALL], false);
        Bot.onReady = onReady;
        Bot.onMessageCreate = onMessageCreate;
        
    }

    public static function onReady()
    {
        trace("The bot is ready");
        var commandName = new BotCommand("command", "description");
        Bot.setInteractionCommands([commandName]);
        Bot.onInteractionCreate = (i:Interaction) -> {
            switch(i.name) {
               case "command":
                   i.reply({content:"Hello world!"}, true);
            }
        }
    }

    public static function onMessageCreate(m:Message)
    {
        if (m.content == "hi")
            m.reply({content:"Hello!"}, true);
        else if (m.content == ":doblez:")
            m.reply({content:":doblez:"}, true);
    }
}