
void main()
{
	server.log("hello world!");
	server.say("Hello!", -1, 0);
}

void playerDeleted(int uid, int crash)
{
	server.log("player " + uid + " got deleted D:");
}


void playerAdded(int uid)
{
	server.log("new player " + uid + " :D");
}

int playerChat(int uid, string msg)
{
	server.log("player " + uid + " said: " + msg);
	server.say("you said: '" + msg + "'", uid, 1);
	if(msg == "!restart")
	{
		server.log("custom command executed!");
		return 0; // 0 = no publish
	}
	return -1; // dont change publish mode
}
