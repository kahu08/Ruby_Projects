require('sinatra')
  require('sinatra/reloader')
  require('./lib/triangles')
  also_reload('lib/**/*.rb')

  get('/') do
      erb(:index)
    end

    get('/result') do
        length = params.fetch('length')
        width = params.fetch('width')
        height = params.fetch('height')
        test_triangle = Triangle.new(length,width,height)
        @successfl = test_triangle.triangle_type()
        erb(:result)
      end
