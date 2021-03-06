PGDMP          6                 y         	   Photobase    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24655 	   Photobase    DATABASE     h   CREATE DATABASE "Photobase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Photobase";
                postgres    false            ?            1259    24664    app_data_tmp    TABLE     *  CREATE TABLE public.app_data_tmp (
    app_data_id integer NOT NULL,
    data_id integer,
    created time without time zone,
    deactivated time without time zone,
    check_status_id integer,
    attachment_type_id integer,
    attachment_type_name character varying(255),
    app_id integer
);
     DROP TABLE public.app_data_tmp;
       public         heap    postgres    false            ?            1259    24656    cl_attachment_metadata    TABLE     ?   CREATE TABLE public.cl_attachment_metadata (
    app_id integer NOT NULL,
    data_id integer,
    attachment_type_id integer,
    attachment_type_name character varying(255),
    value character varying(255)
);
 *   DROP TABLE public.cl_attachment_metadata;
       public         heap    postgres    false            ?            1259    24674    dir_attachment_metadata    TABLE     x   CREATE TABLE public.dir_attachment_metadata (
    id integer,
    name character varying(255),
    parent_id integer
);
 +   DROP TABLE public.dir_attachment_metadata;
       public         heap    postgres    false            ?          0    24664    app_data_tmp 
   TABLE DATA           ?   COPY public.app_data_tmp (app_data_id, data_id, created, deactivated, check_status_id, attachment_type_id, attachment_type_name, app_id) FROM stdin;
    public          postgres    false    201   c       ?          0    24656    cl_attachment_metadata 
   TABLE DATA           r   COPY public.cl_attachment_metadata (app_id, data_id, attachment_type_id, attachment_type_name, value) FROM stdin;
    public          postgres    false    200   ?       ?          0    24674    dir_attachment_metadata 
   TABLE DATA           F   COPY public.dir_attachment_metadata (id, name, parent_id) FROM stdin;
    public          postgres    false    202   ?       ,           2606    24668    app_data_tmp app_data_tmp_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.app_data_tmp
    ADD CONSTRAINT app_data_tmp_pkey PRIMARY KEY (app_data_id);
 H   ALTER TABLE ONLY public.app_data_tmp DROP CONSTRAINT app_data_tmp_pkey;
       public            postgres    false    201            *           2606    24663 2   cl_attachment_metadata cl_attachment_metadata_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cl_attachment_metadata
    ADD CONSTRAINT cl_attachment_metadata_pkey PRIMARY KEY (app_id);
 \   ALTER TABLE ONLY public.cl_attachment_metadata DROP CONSTRAINT cl_attachment_metadata_pkey;
       public            postgres    false    200            -           2606    24669 %   app_data_tmp app_data_tmp_app_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app_data_tmp
    ADD CONSTRAINT app_data_tmp_app_id_fkey FOREIGN KEY (app_id) REFERENCES public.cl_attachment_metadata(app_id);
 O   ALTER TABLE ONLY public.app_data_tmp DROP CONSTRAINT app_data_tmp_app_id_fkey;
       public          postgres    false    201    2858    200            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     