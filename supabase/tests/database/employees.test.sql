begin;
select plan(6);

SELECT has_column(
    'public',
    'employees',
    'id',
    'id should exist'
);
SELECT has_column(
    'public',
    'employees',
    'email',
    'email should exist'
);
SELECT has_column(
    'public',
    'employees',
    'created_at',
    'created_at should exist'
);

SELECT has_pk('public', 'employees', 'id');

SELECT col_has_default('employees', 'created_at');

select * from finish();
rollback;