-- default alternative targets
return {
	{
		pattern = "/lib/([a-z_]*)_web/live/(.*)show.ex",
		target = {
			{ context = "index", target = "/lib/%1_web/live/%2index.ex" },
			{ context = "form", target = "/lib/%1_web/live/%2form_component.ex" },
		},
	},
	{
		pattern = "/lib/([a-z_]*)_web/live/(.*)index.ex",
		target = {
			{ context = "show", target = "/lib/%1_web/live/%2show.ex" },
			{ context = "form", target = "/lib/%1_web/live/%2form_component.ex" },
		},
	},
	{
		pattern = "/lib/([a-z_]*)_web/live/(.*)form_component.ex",
		target = {
			{ context = "show", target = "/lib/%1_web/live/%2show.ex" },
			{ context = "index", target = "/lib/%1_web/live/%2index.ex" },
		},
	},
	{
		pattern = "/lib/([a-z_]*)_web/live/(.*)index.ex",
		target = {
			{ context = "index", target = "/lib/%1_web/live/%2index.ex" },
		},
	},
	{
		pattern = "/lib/([a-z_]*)_web/live/(.*).ex",
		target = {
			{ context = "view", target = "/lib/%1_web/live/%2.html.heex" },
		},
	},
	{
		-- generic test mapping for minitest and rspec
		pattern = "/lib/([a-z_]*)_web/live/(.*).html.heex",
		target = {
			{ context = "live", target = "/lib/%1_web/live/%2.ex" },
		},
	},
	{
		pattern = "/lib/(.*)/([^/]+)/(.*).ex",
		target = {
			{ context = "context", target = "/lib/%1/%2.ex" },
		},
	},
	{
		-- generic test mapping
		pattern = "/lib/(.*)/(.*).ex",
		target = {
			{ context = "test", target = "/test/%1/%2_test.exs" },
		},
	},
	-- going back to source from tests
	{
		pattern = "(.+)/test/(.*)/(.*)_test.exs",
		target = {
			{ target = "%1/lib/%2/%3.ex" },
		},
	},
}
