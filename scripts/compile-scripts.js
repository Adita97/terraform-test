const esbuild = require('esbuild')
const glob = require('glob')
const fs = require('fs')

const file2compile = glob.sync('./src/**/{*.ts,*.js}', {
    ignore: ['./src/**/*.spec.ts', './src/**/*.spec.js']
})

// remove old compiled files before re-compile
fs.rmSync('./dist',{ recursive: true, force: true });
console.log('./dist folder removed before starting new compilation.')

file2compile.forEach(async (file2compile) => {

    const outFile = file2compile
        .replace('src/', 'dist/')
        .replace('.ts', '.js')

    console.log('compile ' + file2compile + ' into ' + outFile)

    await esbuild.build({
        entryPoints: [file2compile],
        bundle: true,
        outfile: outFile,
        platform: 'node',
        target: 'node22',
        external: ['node-fetch', 'jwks-rsa', 'jsonwebtoken', 'undici', 'url', 'auth0'],
        format: 'cjs',
        minify: false
    })
})
console.log('script compilation done.')