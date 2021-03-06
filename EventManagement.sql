PGDMP     %    4                y           EventManagement    13.1    13.1 2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16587    EventManagement    DATABASE     m   CREATE DATABASE "EventManagement" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
 !   DROP DATABASE "EventManagement";
                postgres    false            �            1259    16731 
   activities    TABLE     �   CREATE TABLE public.activities (
    id_ac integer NOT NULL,
    date_d character varying(255),
    date_f character varying(255),
    id_type integer
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    16729    activities_id_ac_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_ac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.activities_id_ac_seq;
       public          postgres    false    201            �           0    0    activities_id_ac_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.activities_id_ac_seq OWNED BY public.activities.id_ac;
          public          postgres    false    200            �            1259    16740    learner    TABLE     Q   CREATE TABLE public.learner (
    id_user integer NOT NULL,
    id_sp integer
);
    DROP TABLE public.learner;
       public         heap    postgres    false            �            1259    16747    role    TABLE     a   CREATE TABLE public.role (
    id_role integer NOT NULL,
    name_role character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    16745    role_id_role_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.role_id_role_seq;
       public          postgres    false    204            �           0    0    role_id_role_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.role_id_role_seq OWNED BY public.role.id_role;
          public          postgres    false    203            �            1259    16755 
   specialite    TABLE     c   CREATE TABLE public.specialite (
    id_sp integer NOT NULL,
    name_sp character varying(255)
);
    DROP TABLE public.specialite;
       public         heap    postgres    false            �            1259    16753    specialite_id_sp_seq    SEQUENCE     �   CREATE SEQUENCE public.specialite_id_sp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.specialite_id_sp_seq;
       public          postgres    false    206            �           0    0    specialite_id_sp_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.specialite_id_sp_seq OWNED BY public.specialite.id_sp;
          public          postgres    false    205            �            1259    16761    teacher    TABLE     Q   CREATE TABLE public.teacher (
    id_user integer NOT NULL,
    id_sp integer
);
    DROP TABLE public.teacher;
       public         heap    postgres    false            �            1259    16768    typeactivities    TABLE     k   CREATE TABLE public.typeactivities (
    id_type integer NOT NULL,
    name_type character varying(255)
);
 "   DROP TABLE public.typeactivities;
       public         heap    postgres    false            �            1259    16766    typeactivities_id_type_seq    SEQUENCE     �   CREATE SEQUENCE public.typeactivities_id_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.typeactivities_id_type_seq;
       public          postgres    false    209            �           0    0    typeactivities_id_type_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.typeactivities_id_type_seq OWNED BY public.typeactivities.id_type;
          public          postgres    false    208            �            1259    16776 	   useradmin    TABLE     �   CREATE TABLE public.useradmin (
    id_user integer NOT NULL,
    firstname character varying(255),
    email character varying(255),
    lastname character varying(255),
    password character varying(255)
);
    DROP TABLE public.useradmin;
       public         heap    postgres    false            �            1259    16774    useradmin_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public.useradmin_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.useradmin_id_user_seq;
       public          postgres    false    211            �           0    0    useradmin_id_user_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.useradmin_id_user_seq OWNED BY public.useradmin.id_user;
          public          postgres    false    210            D           2604    16734    activities id_ac    DEFAULT     t   ALTER TABLE ONLY public.activities ALTER COLUMN id_ac SET DEFAULT nextval('public.activities_id_ac_seq'::regclass);
 ?   ALTER TABLE public.activities ALTER COLUMN id_ac DROP DEFAULT;
       public          postgres    false    200    201    201            E           2604    16750    role id_role    DEFAULT     l   ALTER TABLE ONLY public.role ALTER COLUMN id_role SET DEFAULT nextval('public.role_id_role_seq'::regclass);
 ;   ALTER TABLE public.role ALTER COLUMN id_role DROP DEFAULT;
       public          postgres    false    203    204    204            F           2604    16758    specialite id_sp    DEFAULT     t   ALTER TABLE ONLY public.specialite ALTER COLUMN id_sp SET DEFAULT nextval('public.specialite_id_sp_seq'::regclass);
 ?   ALTER TABLE public.specialite ALTER COLUMN id_sp DROP DEFAULT;
       public          postgres    false    205    206    206            G           2604    16771    typeactivities id_type    DEFAULT     �   ALTER TABLE ONLY public.typeactivities ALTER COLUMN id_type SET DEFAULT nextval('public.typeactivities_id_type_seq'::regclass);
 E   ALTER TABLE public.typeactivities ALTER COLUMN id_type DROP DEFAULT;
       public          postgres    false    209    208    209            H           2604    16779    useradmin id_user    DEFAULT     v   ALTER TABLE ONLY public.useradmin ALTER COLUMN id_user SET DEFAULT nextval('public.useradmin_id_user_seq'::regclass);
 @   ALTER TABLE public.useradmin ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    210    211    211            �          0    16731 
   activities 
   TABLE DATA           D   COPY public.activities (id_ac, date_d, date_f, id_type) FROM stdin;
    public          postgres    false    201   "7       �          0    16740    learner 
   TABLE DATA           1   COPY public.learner (id_user, id_sp) FROM stdin;
    public          postgres    false    202   T7       �          0    16747    role 
   TABLE DATA           2   COPY public.role (id_role, name_role) FROM stdin;
    public          postgres    false    204   q7       �          0    16755 
   specialite 
   TABLE DATA           4   COPY public.specialite (id_sp, name_sp) FROM stdin;
    public          postgres    false    206   �7       �          0    16761    teacher 
   TABLE DATA           1   COPY public.teacher (id_user, id_sp) FROM stdin;
    public          postgres    false    207   �7       �          0    16768    typeactivities 
   TABLE DATA           <   COPY public.typeactivities (id_type, name_type) FROM stdin;
    public          postgres    false    209   �7       �          0    16776 	   useradmin 
   TABLE DATA           R   COPY public.useradmin (id_user, firstname, email, lastname, password) FROM stdin;
    public          postgres    false    211   �7       �           0    0    activities_id_ac_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activities_id_ac_seq', 1, true);
          public          postgres    false    200            �           0    0    role_id_role_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.role_id_role_seq', 1, false);
          public          postgres    false    203            �           0    0    specialite_id_sp_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.specialite_id_sp_seq', 1, false);
          public          postgres    false    205            �           0    0    typeactivities_id_type_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.typeactivities_id_type_seq', 1, false);
          public          postgres    false    208            �           0    0    useradmin_id_user_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.useradmin_id_user_seq', 1, false);
          public          postgres    false    210            J           2606    16739    activities activities_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id_ac);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    201            L           2606    16744    learner learner_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.learner
    ADD CONSTRAINT learner_pkey PRIMARY KEY (id_user);
 >   ALTER TABLE ONLY public.learner DROP CONSTRAINT learner_pkey;
       public            postgres    false    202            N           2606    16752    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id_role);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    204            P           2606    16760    specialite specialite_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.specialite
    ADD CONSTRAINT specialite_pkey PRIMARY KEY (id_sp);
 D   ALTER TABLE ONLY public.specialite DROP CONSTRAINT specialite_pkey;
       public            postgres    false    206            R           2606    16765    teacher teacher_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id_user);
 >   ALTER TABLE ONLY public.teacher DROP CONSTRAINT teacher_pkey;
       public            postgres    false    207            T           2606    16773 "   typeactivities typeactivities_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.typeactivities
    ADD CONSTRAINT typeactivities_pkey PRIMARY KEY (id_type);
 L   ALTER TABLE ONLY public.typeactivities DROP CONSTRAINT typeactivities_pkey;
       public            postgres    false    209            V           2606    16784    useradmin useradmin_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.useradmin
    ADD CONSTRAINT useradmin_pkey PRIMARY KEY (id_user);
 B   ALTER TABLE ONLY public.useradmin DROP CONSTRAINT useradmin_pkey;
       public            postgres    false    211            W           2606    16785 %   activities fk4ec8nlorco9a9hjsfgg305k8    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT fk4ec8nlorco9a9hjsfgg305k8 FOREIGN KEY (id_type) REFERENCES public.typeactivities(id_type);
 O   ALTER TABLE ONLY public.activities DROP CONSTRAINT fk4ec8nlorco9a9hjsfgg305k8;
       public          postgres    false    209    2900    201            Z           2606    16800 #   teacher fkclaqwxf8gw07nc134m91wm5iu    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT fkclaqwxf8gw07nc134m91wm5iu FOREIGN KEY (id_sp) REFERENCES public.specialite(id_sp);
 M   ALTER TABLE ONLY public.teacher DROP CONSTRAINT fkclaqwxf8gw07nc134m91wm5iu;
       public          postgres    false    206    2896    207            X           2606    16790 #   learner fkgyohxdqmpfef712g5bara9xg6    FK CONSTRAINT     �   ALTER TABLE ONLY public.learner
    ADD CONSTRAINT fkgyohxdqmpfef712g5bara9xg6 FOREIGN KEY (id_sp) REFERENCES public.specialite(id_sp);
 M   ALTER TABLE ONLY public.learner DROP CONSTRAINT fkgyohxdqmpfef712g5bara9xg6;
       public          postgres    false    2896    206    202            [           2606    16805 #   teacher fkinl2t43ifsgcawgwcs73skpko    FK CONSTRAINT     �   ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT fkinl2t43ifsgcawgwcs73skpko FOREIGN KEY (id_user) REFERENCES public.useradmin(id_user);
 M   ALTER TABLE ONLY public.teacher DROP CONSTRAINT fkinl2t43ifsgcawgwcs73skpko;
       public          postgres    false    2902    211    207            Y           2606    16795 #   learner fkr1sxt98n561kw26hetisenlhw    FK CONSTRAINT     �   ALTER TABLE ONLY public.learner
    ADD CONSTRAINT fkr1sxt98n561kw26hetisenlhw FOREIGN KEY (id_user) REFERENCES public.useradmin(id_user);
 M   ALTER TABLE ONLY public.learner DROP CONSTRAINT fkr1sxt98n561kw26hetisenlhw;
       public          postgres    false    2902    211    202            �   "   x�3�42�50�5202 3�ALC�?�=... \s      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     