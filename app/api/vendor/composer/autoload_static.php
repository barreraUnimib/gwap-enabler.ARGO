<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit9873e9f35c5be54a1bc9772c33876e47
{
    public static $files = array (
        'a4ecaeafb8cfb009ad0e052c90355e98' => __DIR__ . '/..' . '/beberlei/assert/lib/Assert/functions.php',
        '0e6d7bf4a5811bfa5cf40c5ccd6fae6a' => __DIR__ . '/..' . '/symfony/polyfill-mbstring/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Symfony\\Polyfill\\Mbstring\\' => 26,
        ),
        'P' => 
        array (
            'Psr\\Cache\\' => 10,
        ),
        'M' => 
        array (
            'Mdanter\\Ecc\\' => 12,
        ),
        'J' => 
        array (
            'Jose\\' => 5,
        ),
        'F' => 
        array (
            'FG\\' => 3,
        ),
        'B' => 
        array (
            'Base64Url\\' => 10,
        ),
        'A' => 
        array (
            'Assert\\' => 7,
            'AESKW\\' => 6,
            'AESGCM\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Symfony\\Polyfill\\Mbstring\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-mbstring',
        ),
        'Psr\\Cache\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/cache/src',
        ),
        'Mdanter\\Ecc\\' => 
        array (
            0 => __DIR__ . '/..' . '/mdanter/ecc/src',
        ),
        'Jose\\' => 
        array (
            0 => __DIR__ . '/..' . '/spomky-labs/jose/src',
        ),
        'FG\\' => 
        array (
            0 => __DIR__ . '/..' . '/fgrosse/phpasn1/lib',
        ),
        'Base64Url\\' => 
        array (
            0 => __DIR__ . '/..' . '/spomky-labs/base64url/src',
        ),
        'Assert\\' => 
        array (
            0 => __DIR__ . '/..' . '/beberlei/assert/lib/Assert',
        ),
        'AESKW\\' => 
        array (
            0 => __DIR__ . '/..' . '/spomky-labs/aes-key-wrap/src',
        ),
        'AESGCM\\' => 
        array (
            0 => __DIR__ . '/..' . '/spomky-labs/php-aes-gcm/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit9873e9f35c5be54a1bc9772c33876e47::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit9873e9f35c5be54a1bc9772c33876e47::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
