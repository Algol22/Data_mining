PGDMP                          y            Data_mining    13.2    13.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24576    Data_mining    DATABASE     j   CREATE DATABASE "Data_mining" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Data_mining";
                postgres    false            ?            1259    24580    data_mining    TABLE     ?   CREATE TABLE public.data_mining (
    numar_inregistrare character varying(100),
    data_inregistrare date,
    cif integer,
    denumire character varying(300),
    an_rap integer,
    luna_rap integer,
    dataang date,
    datasf date
);
    DROP TABLE public.data_mining;
       public         heap    postgres    false            ?          0    24580    data_mining 
   TABLE DATA           ~   COPY public.data_mining (numar_inregistrare, data_inregistrare, cif, denumire, an_rap, luna_rap, dataang, datasf) FROM stdin;
    public          postgres    false    200   ?       ?     x?Ř?r? ???S???B?HS?????8NO}??X?I?Y?=??K??D??? ]??C?6 ?Ƃ5?5??GcBP???&@u???kۏ?[??~??C=?b?ź??c7^Ʈ?????}????琕L??1?27i wݏ???҆?
]?`?W??#/?X??Ct??????`(,d1?r?lN?洐??[??sc?????3?G??O^??SV?9I??x?.+o?2????e?1/Óq%﵎ՙ?ru?}[????~<߫o????0??^,??????js?ybH?R?yf6?l?M*??mٌ ???pQ*P?T??,Q
> "7??y؉hY?l?Z?? C???????{b????7E[?T!/?????G?4XX^??6??%?׎g?+???J????k;????I_??t?cW???ĩ?O???]????ˡ?o?O?{?1Ʊ??????????{???p9\??&?k4?k)-T[??e}YZ?????qwG>?a???S?э?qJm1???yfI?????h9q?<ٔoF??i?pE??Ң???LmL??hQ??cV?Z? ??CZN?K;??lD?eiyf^M*O????hɺ??mC????%?j	?9??@?????}?;?&?l???h?-?????y???f? GK?8???A?hO??q?!.$#F?'l????+/Ǥ7IZ?*Z]|?<????????`??q6ᕭ/?L?????????<?ehw?/??M??o?9^?l?/??????2??
+Z_?v???!?c     