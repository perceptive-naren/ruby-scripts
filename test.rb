# Load all the required libraries
require 'embedr'
require 'json'
require 'dotenv'
Dotenv.load

class Test
  EMBEDR_HASH=
      {
          "content_provider" => "twistage",
          "iframe" => "0",
          "action" => "oembed",
          "controller" => "oembed",
          "frameborder" => 0,
          "url" => ENV['TMBEDR_VIDEO_URL'],
          "viewer_profile" => ENV['VIEWER_PROFILE'],
          "tenant" => ENV['TENANT_SLUG'],
          "embedr_url" => ENV['EMBEDR_API_HOST'],
          "test" => true,

      }
end
test = Embedr.get_embed_code(Test::EMBEDR_HASH)
puts test


