use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME           => 'Gearman::Client::Async',
    VERSION_FROM   => 'lib/Gearman/Client/Async.pm',
    BUILD_REQUIRES => {
        "File::Basename"   => 0,
        "FindBin"          => 0,
        "Getopt::Long"     => 0,
        "IO::Socket::INET" => 0,
        "Storable"         => 0,
        "Test::More"       => 0,
    },
    PREREQ_PM => {
        "Danga::Socket"   => 1.52,
        "Gearman::Client" => 2.004.013,
        "IO::Handle"      => 0,
        "List::Util"      => 0,
        "Scalar::Util"    => 0,
        "Socket"          => 0,
        "fields"          => 0,
    },
    AUTHOR =>
        'Brad Fitzpatrick (brad@danga.org), Jonathan Steinert (hachi@cpan.org)',
    ABSTRACT_FROM => 'lib/Gearman/Client/Async.pm',
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            bugtracker =>
                { web => 'https://github.com/p-alik/Gearman-Client-Async/issues' },
            repository => {
                type => 'git',
                url  => 'https://github.com/p-alik/Gearman-Client-Async.git',
                web  => 'https://github.com/p-alik/Gearman-Client-Async',
            },
        },
    },
    dist  => { COMPRESS => "gzip -9f", SUFFIX => "gz", },
    clean => { FILES    => "Gearman-Client-Async-*" },
);

