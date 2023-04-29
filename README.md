### Shaggyverse Helper

A small project to help benefit the Shaggyverse Discord server with various resources

I reccomend building to neko

### Ignored files

I added the Token file to the gitignore for obvious reasons

Just make a file in `/src/tokens` and call it `Token.hx`, and copy & paste this into it

```haxe
package;

class Token
{
    public static var token:String = "Your Token Here";
}
```

### Building

Download haxe 4.2.5+ and make sure to install neko!

Download hxdiscord with ```haxelib install hxdiscord```

After creating the token file you can build the bot with

```haxe build.hxml```

If you did everything right it should create a bot.n file and run it

You can run the bot afterwards by running

```neko bot.n``` or opening the ```runbot.bat``` file