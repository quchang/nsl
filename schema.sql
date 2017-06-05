/* banner banner
title string
en_title string
pic_path string
intro text
*/
drop table if exists banners;
create table banners (
        id integer primary key autoincrement,
        title string not null,
        en_title string not null,
        pic_path string not null,
        intro text not null
        );

/* about zh_description, en_description
zh_intro: text
en_intro: text
 */
drop table if exists abouts;
create table abouts (
        id integer primary key autoincrement,
        zh_intro text not null
        en_intro text not null
        );

/* serveices => four service and description
1_intro text
2_intro text
3_intro text
4_intro text
*/
drop table if exists services;
create table services (
        id integer primary key autoincrement,
        1_intro text not null,
        2_intro text not null,
        3_intro text not null,
        4_intro text not null
        );

/* cases => photos
name string
top_path string

one to many: cases_pics
name string
pic_path string
*/
drop table if exists cases;
create table cases (
        id integer primary key autoincrement,
        name string not null,
        top_path string not null
        );

drop table if exists case_pics;
create table case_pics (
        id integer primary key autoincrement,
        case_id integer not null,
        name string not null,
        pic_path string not null
        );


/* teams => members
name string
position string
pic_path string
phone string
qq string
wx string
*/
drop table if exists teams;
create table teams (
        id integer primary key autoincrement,
        position string not null,
        pic_path string not null,
        phone string not null,
        qq string not null,
        wx string not null
        );

/* contacts => form
name string
email string
phone string
content text
*/
drop table if exists contacts;
create table teams (
        id integer primary key autoincrement,
        position string not null,
        pic_path string not null,
        phone string not null,
        qq string not null,
        wx string not null
        );

/* footer => lastest cases
name string
pic_path string
date date
*/
drop table if exists lastest_cases;
create table lastest_cases (
        id integer primary key autoincrement,
        name string not null,
        pic_path string not null,
        date date not null
        );
