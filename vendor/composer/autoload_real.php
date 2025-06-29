<?php

// autoload_real.php @generated by Composer

class ComposerAutoloaderInit87274d45ab8de55f39e4eafffc1ee61c
{
    private static $loader;

    public static function loadClassLoader($class)
    {
        if ('Composer\Autoload\ClassLoader' === $class) {
            require __DIR__ . '/ClassLoader.php';
        }
    }

    /**
     * @return \Composer\Autoload\ClassLoader
     */
    public static function getLoader()
    {
        if (null !== self::$loader) {
            return self::$loader;
        }

        spl_autoload_register(array('ComposerAutoloaderInit87274d45ab8de55f39e4eafffc1ee61c', 'loadClassLoader'), true, true);
        self::$loader = $loader = new \Composer\Autoload\ClassLoader(\dirname(__DIR__));
        spl_autoload_unregister(array('ComposerAutoloaderInit87274d45ab8de55f39e4eafffc1ee61c', 'loadClassLoader'));

        require __DIR__ . '/autoload_static.php';
        call_user_func(\Composer\Autoload\ComposerStaticInit87274d45ab8de55f39e4eafffc1ee61c::getInitializer($loader));

        $loader->register(true);

        return $loader;
    }
}
