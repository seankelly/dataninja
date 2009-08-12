package App::Dataninja::Schema::Nick;
use strict;
use warnings;
use base qw/DBIx::Class::Schema/;

__PACKAGE__->load_components(qw/PK::Auto Core/);
__PACKAGE__->table('nicks');
__PACKAGE__->add_columns(
    id          => {is_auto_increment => 1, data_type => 'bigint'},
    name        => {data_type => 'varchar(64)'},
    network     => {data_type => 'varchar(256)'},
);
__PACKAGE__->set_primary_key(qw/id/);

1;
