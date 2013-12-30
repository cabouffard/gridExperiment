'use strict';
var LIVERELOAD_PORT = 35729;
var lrSnippet = require('connect-livereload')({port: LIVERELOAD_PORT});
var mountFolder = function (connect, dir) {
    return connect.static(require('path').resolve(dir));
};

// # Globbing
// for performance reasons we're only matching one level down:
// 'test/spec/{,*/}*.js'
// use this if you want to recursively match all subfolders:
// 'test/spec/**/*.js'
module.exports = function (grunt) {

    // load all grunt tasks
    require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);


    grunt.initConfig({
        watch: {
            options: {
                interrupt: true
            },
            compass: {
                files: ['app/styles/*.{scss, sass}'],
                tasks: ['compass:server']
            },
            jade: {
                files: ['app/*.jade'],
                tasks: ['jade:server']
            },
            coffee: {
                files: ['app/scripts/*.coffee'],
                tasks: ['coffee:server']
            },
            files: {
                files: [
                    'app/images/{,*/}*.{png,jpg,jpeg,gif,svg}',
                    'app/components/**',
                    '.tmp/scripts/*.js'
                ],
                tasks: [],
                options: {
                    livereload: LIVERELOAD_PORT
                }
            }
        },
        connect: {
            server: {
                options: {
                    port: 9000,
                    hostname: 'localhost',
                    middleware: function (connect) {
                        return [
                            require('connect-livereload')({
                                port: LIVERELOAD_PORT
                            }),
                            mountFolder(connect, '.tmp'),
                            mountFolder(connect, 'app')
                        ];
                    }
                }
            }
        },
        open: {
            server: {
                path: 'http://<%= connect.server.options.hostname %>:<%= connect.server.options.port %>'
            }
            //   path: 'http://<%= express.server.options.hostname %>:<%= express.server.options.port %>'
    
        },
        jade: {
            server: {
                files: [{
                    expand: true,
                    cwd: 'app/',
                    dest: '.tmp/',
                    src: '*.jade',
                    ext: '.html'
                }] 
            }
        },
        compass: { 
            options: {
                sassDir: ['app/styles'],
                cssDir: ['.tmp/styles'],
                relativeAssets: true
            },
            server: {
                options: {
                    debugInfo: true
                }   
            }
        },
        coffee: {
            server: {
                files: [{
                    expand: true,
                    cwd: 'app/scripts/',
                    dest: '.tmp/scripts/',
                    src: '*.coffee',
                    ext: '.js'
                }]
            }   
        }
        /*
        express: {
            server: {
                options: {
                    hostname: 'localhost',
                    port: 3700,
                },
                myLivereloadServer: {
                    server: 'testServer.js',
                    livereloead: true,
                    serverreload: true
                }
            }
        }
        */
        //http://stackoverflow.com/questions/17158814/grunt-contrib-requirejs-need-a-little-advice
    });

    grunt.registerTask('server', function (target) {

        grunt.task.run([
            'compass:server',
            'jade:server',
            'coffee:server',
            'open:server',
            'connect:server',
            'watch'
        ]);
        // 'express:server',
        //  'watch'
        //  'connect:server',
    });
};