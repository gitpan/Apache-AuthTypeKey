# $Id: Makefile.PL,v 1.2 2004/08/24 16:39:50 btrott Exp $

use inc::Module::Install;

name('Apache-AuthTypeKey');
abstract('Apache authorization handler using TypeKey');
author('Six Apart <cpan@sixapart.com>');
version_from('lib/Apache/AuthTypeKey.pm');
license('perl');
no_index(directory => 't');
sign(1);

include('ExtUtils::AutoInstall');

requires('Authen::TypeKey' => 0.02);
requires('Apache::AuthCookie' => 3.04);

auto_include();
auto_install();

&WriteAll;
