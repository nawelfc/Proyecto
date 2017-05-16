requirejs.config({
  wrap: true,
  insertRequire: ['proyect'],
  deps: ['proyect'],
  shim: {
  },
  paths: {
    'proyect': 'main',
    'jquery': '../../../../../bower_components/jquery/dist/jquery',

    'jquery-ujs': '../../../../../bower_components/jquery-ujs/src/rails'

  }
})

