Vim�UnDo� �W�BS�JM�{(y�L����2�>���e�                                      U"l]     _�                              ����                                                                                                                                                                                                                                                                                                                                                             U"l\     �                  <?php       use Illuminate\Database\Seeder;   use App\User;       '// composer require laracasts/testdummy   -use Laracasts\TestDummy\Factory as TestDummy;       'class UsersTableSeeder extends Seeder {           public function run()       {   %        DB::table('users')->delete();       		User::create([   			'user_name' => 'JohnM',   			'firs_tname' => 'John',   			'last_name' => 'MacTavish',   (			'email' => 'john@techsolutionsx.com',   (			'password' => Hash::make('Only4John')   		]);   		User::create([   			'user_name' => 'Andrew',   			'firs_tname' => 'Andrew',   			'last_name' => 'Gunther',   1			'email' => 'andrew@animalwelfareapproved.org',   *			'password' => Hash::make('4Andrew2Use')   		]);       }       }5��