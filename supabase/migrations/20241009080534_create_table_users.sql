-- Migration script to create table

-- create table users
create table
  public.users (
    id bigint generated by default as identity not null,
    username character varying not null,
    wallet character varying not null,
    constraint users_pkey primary key (id),
    constraint users_username_key unique (username),
    constraint users_wallet_key unique (wallet)
  )