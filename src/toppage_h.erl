%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
-module(toppage_h).

-export([init/2]).
-export([content_types_provided/2]).
-export([hello_to_html/2]).
-export([hello_to_json/2]).
-export([hello_to_text/2]).

init(Req, Opts) ->
	{cowboy_rest, Req, Opts}.

content_types_provided(Req, State) ->
	{[
		{<<"text/html">>, hello_to_html},
		{<<"application/json">>, hello_to_json},
		{<<"text/plain">>, hello_to_text}
	], Req, State}.

hello_to_html(Req, State) ->
	Body = <<"<html>
<head>
	<meta charset=\"utf-8\">
	<title>REST Hello World!</title>
</head>
<body>
	<p>REST Hello World as HTML!</p>
</body>
</html>">>,
	{Body, Req, State}.

hello_to_json(Req, State) ->
	% Body = <<"{\"rest\": \"Hello World!\"}">>,
	% {Body, Req, State}.
	L = [{brand,<<"FOX">>},
		{discount,undefined},
		{image_url,<<"http://www.commencalusa.com/Files/106799/Img/12/T19MTMLFOXFLDEOO_675.jpg">>},
		{name,<<"FOX FLEXAIR DELTA LONG SLEEVE JERSEY OPEN ORANGE 2019">>},
		{price,<<"$ 99.90">>},
		{sale_price,undefined},
		{sizes,[<<"S">>,<<"M">>,<<"L">>,<<"XL">>]},
		{type,item}],
	Body = ezwebframe_mochijson2:encode(L),
    {Body, Req, State}.

hello_to_text(Req, State) ->
	{<<"REST Hello World as text!">>, Req, State}.
