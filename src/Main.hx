package;


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
    }

    public static function onMessageCreate(m:Message)
    {
        if (m.content == "hi")
        {
            m.reply({content:"Hello!"}, true); //true or false, the bot will mention the user
        }
    }
}