require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

 # map '/songs' do
 #   run SongsController
 # end
 #
use GenresController

use ArtistsController

use SongsController






run ApplicationController
