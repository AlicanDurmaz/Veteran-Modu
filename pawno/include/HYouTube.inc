/*


															 _   _              YouTube Streamer
															| | | |
															| |_| |_      ____ _ _ __   __ _
															|  _  \ \ /\ / / _` | '_ \ / _` |
															| | | |\ V  V / (_| | | | | (_| |
															\_| |_/ \_/\_/ \__,_|_| |_|\__, |
															                            __/ |
															                           |___/




Basit youtube streamer

API - youtubeinmp3.com

*/

#include a_samp

forward PlayYoutubeLinkForPlayer(playerid, youtubelink[]);
forward PlayYoutubeLinkForAll(youtubelink[]);
new
	muzik_[1000],
	_Youtube_HASH[2024]
;

public PlayYoutubeLinkForPlayer(playerid, youtubelink[])
{
	format(_Youtube_HASH, sizeof _Youtube_HASH, "http://youtubeinmp3.com/fetch/?video=%s",youtubelink[0]);
	PlayAudioStreamForPlayer(playerid, _Youtube_HASH);
	return 1;
}
public PlayYoutubeLinkForAll(youtubelink[])
{
	format(_Youtube_HASH, sizeof _Youtube_HASH, "http://youtubeinmp3.com/fetch/?video=%s",youtubelink[0]);
	for( new hw; hw < MAX_PLAYERS; hw++ )
	{
		PlayAudioStreamForPlayer(hw, _Youtube_HASH);
	}
	return 1;
}
StopYoutubeLink(playerid){ return StopAudioStreamForPlayer(playerid), 1; }
