Issue 1: 
    I got following error
    C:\xampp2\htdocs\lara\workflow>php artisan migrate
    Migration table created successfully.
    
    
      [Illuminate\Database\QueryException]
      SQLSTATE[42000]: Syntax error or access violation: 1071 Specified key was too long; max key length is 767 bytes (SQL: alter table `users` add unique `users_email_unique`(`email`
      ))
    
    
    
      [PDOException]
      SQLSTATE[42000]: Syntax error or access violation: 1071 Specified key was too long; max key length is 767 bytes
    
    
    Solution:
    https://laravel-news.com/laravel-5-4-key-too-long-error
    
 Issue 2:
    SQLSTATE[HY000] [1045] Access denied for user 'homestead'@'localhost' (using password: YES) (SQL: select count(*) as aggregate from `users` where `email` =
 
     Solution:
     https://stackoverflow.com/questions/28644344/access-denied-for-user-homesteadlocalhost-in-laravel-5
     
     
Issue 3:
    Failed to load http://localhost:8000/api/emp: No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'http://localhost:4200' is therefore not allowed access.
    
    Solution:
    http://en.vedovelli.com.br/2015/web-development/Laravel-5-1-enable-CORS/
    
    > php artisan make:middleware Cors
    ------
    > Now, using your editor of choice, change the newly created /app/Http/Middleware/Cors.php so it look like this:
    
    <?php
    
    namespace App\Http\Middleware;
    
    use Closure;
    
    class Cors {
        public function handle($request, Closure $next)
        {
            return $next($request)
                ->header('Access-Control-Allow-Origin', '*')
                ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        }
    }
    -----
    > 
    Route::get('breweries', ['middleware' => 'cors', function()
    {
        return \Response::json(\App\Brewery::with('beers', 'geocode')->paginate(10), 200);
    }]);
        
    ------
    
    
 Issue 3: https://github.com/barryvdh/laravel-cors