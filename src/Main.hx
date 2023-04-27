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
		if (sys.FileSystem.exists("src/commands/commands.json"))
			Bot.setInteractionCommands(haxe.Json.parse(sys.io.File.getContent("src/commands/commands.json")));
        else
            haxe.macro.Context.error('Failed to load json', haxe.macro.Context.currentPos());
    }

    public static function onMessageCreate(m:Message)
    {
        if (m.content == "hi")
            m.reply({content:"Hello!"}, true);
        else if (m.content == ":doblez:")
            m.reply({content:":doblez:"}, true);
}
}