package commands;

import hxdiscord.types.ApplicationCommand;

class BotCommand extends ApplicationCommand
{
    public function new(name:String, description:String) {
        super();
        var command:ApplicationCommand = new ApplicationCommand();
        command.setName(name);
        command.setDescription(description);     
    }
}