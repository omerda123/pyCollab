PGDMP         (                x            callaby    12.1    12.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    29797    callaby    DATABASE     �   CREATE DATABASE callaby WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE callaby;
                postgres    false            �            1259    29829 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    29827    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    29839    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    29837    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    29821    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    29819    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    29847 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    29857    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    29855    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    29845    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    29865    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    29863 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    30004    chat_adminuser    TABLE     �   CREATE TABLE public.chat_adminuser (
    id integer NOT NULL,
    enterprise_id integer NOT NULL,
    role_id integer NOT NULL,
    active_chats integer NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.chat_adminuser;
       public         heap    postgres    false            �            1259    30002    chat_adminuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_adminuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.chat_adminuser_id_seq;
       public          postgres    false    231            �           0    0    chat_adminuser_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.chat_adminuser_id_seq OWNED BY public.chat_adminuser.id;
          public          postgres    false    230            �            1259    29996 
   chat_agent    TABLE     �   CREATE TABLE public.chat_agent (
    id integer NOT NULL,
    private_name character varying(200) NOT NULL,
    last_name character varying(200) NOT NULL,
    enterprise_id integer NOT NULL
);
    DROP TABLE public.chat_agent;
       public         heap    postgres    false            �            1259    29994    chat_agent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.chat_agent_id_seq;
       public          postgres    false    229            �           0    0    chat_agent_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.chat_agent_id_seq OWNED BY public.chat_agent.id;
          public          postgres    false    228            �            1259    29958 	   chat_chat    TABLE     �   CREATE TABLE public.chat_chat (
    id integer NOT NULL,
    originator character varying(200) NOT NULL,
    destination character varying(200) NOT NULL,
    chat_id character varying(200) NOT NULL
);
    DROP TABLE public.chat_chat;
       public         heap    postgres    false            �            1259    29956    chat_chat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.chat_chat_id_seq;
       public          postgres    false    221            �           0    0    chat_chat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.chat_chat_id_seq OWNED BY public.chat_chat.id;
          public          postgres    false    220            �            1259    29969    chat_enterprise    TABLE     k   CREATE TABLE public.chat_enterprise (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);
 #   DROP TABLE public.chat_enterprise;
       public         heap    postgres    false            �            1259    29967    chat_enterprise_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_enterprise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.chat_enterprise_id_seq;
       public          postgres    false    223            �           0    0    chat_enterprise_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chat_enterprise_id_seq OWNED BY public.chat_enterprise.id;
          public          postgres    false    222            �            1259    30085 	   chat_form    TABLE     �   CREATE TABLE public.chat_form (
    id integer NOT NULL,
    fields jsonb NOT NULL,
    name character varying(200) NOT NULL
);
    DROP TABLE public.chat_form;
       public         heap    postgres    false            �            1259    30083    chat_form_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.chat_form_id_seq;
       public          postgres    false    236                        0    0    chat_form_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.chat_form_id_seq OWNED BY public.chat_form.id;
          public          postgres    false    235            �            1259    29977    chat_message    TABLE       CREATE TABLE public.chat_message (
    id integer NOT NULL,
    agent character varying(200) NOT NULL,
    message text NOT NULL,
    "timestamp" time without time zone NOT NULL,
    chat_id character varying(200) NOT NULL,
    customer character varying(200)
);
     DROP TABLE public.chat_message;
       public         heap    postgres    false            �            1259    29975    chat_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.chat_message_id_seq;
       public          postgres    false    225                       0    0    chat_message_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.chat_message_id_seq OWNED BY public.chat_message.id;
          public          postgres    false    224            �            1259    30041    chat_product    TABLE     �   CREATE TABLE public.chat_product (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    price integer NOT NULL,
    enterprise_id integer,
    image character varying(100) NOT NULL
);
     DROP TABLE public.chat_product;
       public         heap    postgres    false            �            1259    30039    chat_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.chat_products_id_seq;
       public          postgres    false    234                       0    0    chat_products_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.chat_products_id_seq OWNED BY public.chat_product.id;
          public          postgres    false    233            �            1259    29988 	   chat_role    TABLE     f   CREATE TABLE public.chat_role (
    id integer NOT NULL,
    title character varying(200) NOT NULL
);
    DROP TABLE public.chat_role;
       public         heap    postgres    false            �            1259    29986    chat_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.chat_roles_id_seq;
       public          postgres    false    227                       0    0    chat_roles_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.chat_roles_id_seq OWNED BY public.chat_role.id;
          public          postgres    false    226            �            1259    29925    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    29923    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    29811    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    29809    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    29800    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    29798    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    30028    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    29832    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    29842    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    29824    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    29850    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    29860    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    29868    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    30007    chat_adminuser id    DEFAULT     v   ALTER TABLE ONLY public.chat_adminuser ALTER COLUMN id SET DEFAULT nextval('public.chat_adminuser_id_seq'::regclass);
 @   ALTER TABLE public.chat_adminuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �
           2604    29999    chat_agent id    DEFAULT     n   ALTER TABLE ONLY public.chat_agent ALTER COLUMN id SET DEFAULT nextval('public.chat_agent_id_seq'::regclass);
 <   ALTER TABLE public.chat_agent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    29961    chat_chat id    DEFAULT     l   ALTER TABLE ONLY public.chat_chat ALTER COLUMN id SET DEFAULT nextval('public.chat_chat_id_seq'::regclass);
 ;   ALTER TABLE public.chat_chat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �
           2604    29972    chat_enterprise id    DEFAULT     x   ALTER TABLE ONLY public.chat_enterprise ALTER COLUMN id SET DEFAULT nextval('public.chat_enterprise_id_seq'::regclass);
 A   ALTER TABLE public.chat_enterprise ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    30088    chat_form id    DEFAULT     l   ALTER TABLE ONLY public.chat_form ALTER COLUMN id SET DEFAULT nextval('public.chat_form_id_seq'::regclass);
 ;   ALTER TABLE public.chat_form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �
           2604    29980    chat_message id    DEFAULT     r   ALTER TABLE ONLY public.chat_message ALTER COLUMN id SET DEFAULT nextval('public.chat_message_id_seq'::regclass);
 >   ALTER TABLE public.chat_message ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    30044    chat_product id    DEFAULT     s   ALTER TABLE ONLY public.chat_product ALTER COLUMN id SET DEFAULT nextval('public.chat_products_id_seq'::regclass);
 >   ALTER TABLE public.chat_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �
           2604    29991    chat_role id    DEFAULT     m   ALTER TABLE ONLY public.chat_role ALTER COLUMN id SET DEFAULT nextval('public.chat_roles_id_seq'::regclass);
 ;   ALTER TABLE public.chat_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �
           2604    29928    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    29814    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    29803    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    29829 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   g�       �          0    29839    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��       �          0    29821    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��       �          0    29847 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    29857    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   _�       �          0    29865    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   |�       �          0    30004    chat_adminuser 
   TABLE DATA           [   COPY public.chat_adminuser (id, enterprise_id, role_id, active_chats, user_id) FROM stdin;
    public          postgres    false    231   ��       �          0    29996 
   chat_agent 
   TABLE DATA           P   COPY public.chat_agent (id, private_name, last_name, enterprise_id) FROM stdin;
    public          postgres    false    229   ��       �          0    29958 	   chat_chat 
   TABLE DATA           I   COPY public.chat_chat (id, originator, destination, chat_id) FROM stdin;
    public          postgres    false    221   ��       �          0    29969    chat_enterprise 
   TABLE DATA           3   COPY public.chat_enterprise (id, name) FROM stdin;
    public          postgres    false    223   ��       �          0    30085 	   chat_form 
   TABLE DATA           5   COPY public.chat_form (id, fields, name) FROM stdin;
    public          postgres    false    236   %�       �          0    29977    chat_message 
   TABLE DATA           Z   COPY public.chat_message (id, agent, message, "timestamp", chat_id, customer) FROM stdin;
    public          postgres    false    225   ��       �          0    30041    chat_product 
   TABLE DATA           M   COPY public.chat_product (id, name, price, enterprise_id, image) FROM stdin;
    public          postgres    false    234   ��       �          0    29988 	   chat_role 
   TABLE DATA           .   COPY public.chat_role (id, title) FROM stdin;
    public          postgres    false    227   4�       �          0    29925    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   a�       �          0    29811    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ~�       �          0    29800    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �       �          0    30028    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   ��                  0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            	           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    206            
           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0    chat_adminuser_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.chat_adminuser_id_seq', 4, true);
          public          postgres    false    230                       0    0    chat_agent_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.chat_agent_id_seq', 1, false);
          public          postgres    false    228                       0    0    chat_chat_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.chat_chat_id_seq', 1, false);
          public          postgres    false    220                       0    0    chat_enterprise_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chat_enterprise_id_seq', 23, true);
          public          postgres    false    222                       0    0    chat_form_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.chat_form_id_seq', 2, true);
          public          postgres    false    235                       0    0    chat_message_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.chat_message_id_seq', 212, true);
          public          postgres    false    224                       0    0    chat_products_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.chat_products_id_seq', 8, true);
          public          postgres    false    233                       0    0    chat_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.chat_roles_id_seq', 2, true);
          public          postgres    false    226                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 36, true);
          public          postgres    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    202            	           2606    29954    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    29881 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    29844 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    29834    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    29872 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    29826 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    29862 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    29896 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    29852    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    29870 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            "           2606    29910 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    29948     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            4           2606    30009 "   chat_adminuser chat_adminuser_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.chat_adminuser
    ADD CONSTRAINT chat_adminuser_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.chat_adminuser DROP CONSTRAINT chat_adminuser_pkey;
       public            postgres    false    231            7           2606    30055 )   chat_adminuser chat_adminuser_user_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.chat_adminuser
    ADD CONSTRAINT chat_adminuser_user_id_key UNIQUE (user_id);
 S   ALTER TABLE ONLY public.chat_adminuser DROP CONSTRAINT chat_adminuser_user_id_key;
       public            postgres    false    231            1           2606    30001    chat_agent chat_agent_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.chat_agent
    ADD CONSTRAINT chat_agent_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.chat_agent DROP CONSTRAINT chat_agent_pkey;
       public            postgres    false    229            (           2606    29966    chat_chat chat_chat_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.chat_chat
    ADD CONSTRAINT chat_chat_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.chat_chat DROP CONSTRAINT chat_chat_pkey;
       public            postgres    false    221            *           2606    29974 $   chat_enterprise chat_enterprise_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.chat_enterprise
    ADD CONSTRAINT chat_enterprise_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.chat_enterprise DROP CONSTRAINT chat_enterprise_pkey;
       public            postgres    false    223            @           2606    30093    chat_form chat_form_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.chat_form
    ADD CONSTRAINT chat_form_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.chat_form DROP CONSTRAINT chat_form_pkey;
       public            postgres    false    236            ,           2606    29985    chat_message chat_message_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.chat_message DROP CONSTRAINT chat_message_pkey;
       public            postgres    false    225            >           2606    30046    chat_product chat_products_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.chat_product
    ADD CONSTRAINT chat_products_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.chat_product DROP CONSTRAINT chat_products_pkey;
       public            postgres    false    234            .           2606    29993    chat_role chat_roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.chat_role
    ADD CONSTRAINT chat_roles_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.chat_role DROP CONSTRAINT chat_roles_pkey;
       public            postgres    false    227            %           2606    29934 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    29818 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    29816 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    29808 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            :           2606    30035 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232                       1259    29955    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    29892 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    29893 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    29878 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    29908 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    29907 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    29922 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                        1259    29921 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    29949     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            2           1259    30026 %   chat_adminuser_enterprise_id_39213c67    INDEX     i   CREATE INDEX chat_adminuser_enterprise_id_39213c67 ON public.chat_adminuser USING btree (enterprise_id);
 9   DROP INDEX public.chat_adminuser_enterprise_id_39213c67;
       public            postgres    false    231            5           1259    30027    chat_adminuser_role_id_69669022    INDEX     ]   CREATE INDEX chat_adminuser_role_id_69669022 ON public.chat_adminuser USING btree (role_id);
 3   DROP INDEX public.chat_adminuser_role_id_69669022;
       public            postgres    false    231            /           1259    30015 !   chat_agent_enterprise_id_4b6b3759    INDEX     a   CREATE INDEX chat_agent_enterprise_id_4b6b3759 ON public.chat_agent USING btree (enterprise_id);
 5   DROP INDEX public.chat_agent_enterprise_id_4b6b3759;
       public            postgres    false    229            <           1259    30052 $   chat_products_enterprise_id_a60ffaca    INDEX     f   CREATE INDEX chat_products_enterprise_id_a60ffaca ON public.chat_product USING btree (enterprise_id);
 8   DROP INDEX public.chat_products_enterprise_id_a60ffaca;
       public            postgres    false    234            #           1259    29945 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            &           1259    29946 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            8           1259    30037 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232            ;           1259    30036 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            C           2606    29887 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2822    207    211            B           2606    29882 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2827    209    211            A           2606    29873 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    205    2817            E           2606    29902 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2827    215    209            D           2606    29897 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2835            G           2606    29916 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    207    217    2822            F           2606    29911 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    217    2835            K           2606    30016 J   chat_adminuser chat_adminuser_enterprise_id_39213c67_fk_chat_enterprise_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_adminuser
    ADD CONSTRAINT chat_adminuser_enterprise_id_39213c67_fk_chat_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES public.chat_enterprise(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.chat_adminuser DROP CONSTRAINT chat_adminuser_enterprise_id_39213c67_fk_chat_enterprise_id;
       public          postgres    false    223    2858    231            L           2606    30061 >   chat_adminuser chat_adminuser_role_id_69669022_fk_chat_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_adminuser
    ADD CONSTRAINT chat_adminuser_role_id_69669022_fk_chat_role_id FOREIGN KEY (role_id) REFERENCES public.chat_role(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.chat_adminuser DROP CONSTRAINT chat_adminuser_role_id_69669022_fk_chat_role_id;
       public          postgres    false    2862    227    231            M           2606    30066 >   chat_adminuser chat_adminuser_user_id_e2a5a6b5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_adminuser
    ADD CONSTRAINT chat_adminuser_user_id_e2a5a6b5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.chat_adminuser DROP CONSTRAINT chat_adminuser_user_id_e2a5a6b5_fk_auth_user_id;
       public          postgres    false    213    2835    231            J           2606    30010 B   chat_agent chat_agent_enterprise_id_4b6b3759_fk_chat_enterprise_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_agent
    ADD CONSTRAINT chat_agent_enterprise_id_4b6b3759_fk_chat_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES public.chat_enterprise(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.chat_agent DROP CONSTRAINT chat_agent_enterprise_id_4b6b3759_fk_chat_enterprise_id;
       public          postgres    false    229    223    2858            N           2606    30100 F   chat_product chat_product_enterprise_id_c7a490d1_fk_chat_enterprise_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat_product
    ADD CONSTRAINT chat_product_enterprise_id_c7a490d1_fk_chat_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES public.chat_enterprise(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.chat_product DROP CONSTRAINT chat_product_enterprise_id_c7a490d1_fk_chat_enterprise_id;
       public          postgres    false    223    234    2858            H           2606    29935 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    219    2817            I           2606    29940 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2835    219    213            �      x������ � �      �      x������ � �      �   -  x�]�A��0E׮S��6`���-�Ppg���̨o?P�vU�î'�����Ս���O��~��:�8���m�K�����{4T��f����Z0m	�0�w���o��+��aY�it���Z΀�S�Y������!�Qq�by�����,���?�\����N��JT2������5,�?�o�����}: ��V�Ƙ�N�s9�6�����֟Wt���h�!�_�ׁ���O�<ЬkX_���~Ֆ�����.<fjzS��V�ҷ3VwN��=Re��4_�i ��P!c����R�v=q~��݅ϗ�Mǆ���M����U�eGJ���ں{tW�ĊjӺ0,�)^0�Lu/KD꟧G\��߾�jS|`�T^�$�Qe�=0������|zy��r`�t\X�Q�-0����9��]��˚w��ј�-��6e[8�	�*�h�P��S��mJzecI�Į��=ɜ�\q�[�9����w$3�iI�D�9�t�B8vtȈBk+2Q������|����L�y��a*�Ng�U�9��ӯ"�H��[      �   q  x�m��N�@�����wƺ�������T���,=h��ZE�����d2�?��|���X�1y޼J¸.C������w|.���e+�p�v8�Os���M/��Ed���]b�k^#�	��䒰:���èN�a��-�������a�A��C�����!�ܫ���}��<[m�㦑�l7�����+l�К�h�	�#�Ž�tg}�7%w�0�ô8�0�a�d�M��e�Dk��}(/�L�\u�K�3Jtlp PQ���g��w�wD0i���fg�>��ޅ�,K��>�޶��ؚE���btuN��`:������fE�lT!U^�+YT��R#�N�?���]�Q�?�Z�Am�      �      x������ � �      �      x������ � �      �      x�3�44�4�4�4����� O      �      x������ � �      �      x������ � �      �      x�34��K-.(J-.������ 3&�      �   {   x�3䌮V*�,HU�RP*I�(Q�QP�ILJ�	����(�%�*��(�Q�X\B�:ǔ����b�\s3sP���&�����-��9?� '�$U!�(%�H!-�(��h�{*1/95�K1z\\\ �炙      �      x������ � �      �   W   x�Uʹ�  ����-�L��!Pm�14���P�� ������m��=�԰Q冀t�-��H�i5��H6Y��"�xu�      �      x�3�LLO�+�2�LL�������� @PJ      �     x����n�@���SXY���9��x�E+!!��XA�1m�&Av`���̌{�ǎQ�HY4J����\f�Q�h<S ��J$�4[��i���fw�������r��V���{ww1��qx�Y!joM�0�×���U{|�s]ݮ������n��v�����e���f��-�h]5���A�z���T�Q�FQ�}��VM��qS]�7�v�����$�ʳiAg�}U���M5Ms&]�R��N4��_�t�Yo�6U�������'�/ �p;�J�'ic|����b�d&.5eXn�Hu�@��t�G莣�PG�R���2�6C��DZ�JgSFD-��Zܺ�����>P� &ĭ�2�Z��= ��C�Q!X��z/'t8'O-�Ph_��
E�|o��z��(ӕK�9��\P<1�~�q�L�0���5dB�.
B�F��0����
�'!%q)����y)�����OU�_�MW��R&F�"�����B����L�ô�����F|At��R��){��:R�I�N�������,�ӬWsX5aV8�)7�hܡE��å�+a7x�|�>��F[#9bJ�XN@�l3��N&#�]�<��q\�]�k����Tb��/��]���XJO���6J��4���,������t�O	b!�7z��H�.�p�x���և͘�������!�=)Q��f$��q!9h7Af��p��m��_s_bz�@C�X��}Ǝ&�Y
�)�ICƑ<���
�ec@�@:N�L� ����赑�(|W���G�2v      �   �   x�M�K�0D��a���.�D�B$Gv����J�X�F3�8�S	V�)ٰ_��$��	{sf�q0�J�79�V+[&�����֟���/����&���eNla?:g�U�/S�׮7'Oul�����ʃ��%����;0K1      �   �  x����n�0���S�~U43>�ͳ�dY	M� d9T�ۯ���T�7��<�X��T����R� �k�����  xzA�#W��䒕d-� �������Z&	Q�cל�#FN�\	rm
u�n����va����q[aS�S��:��aj��{m������tY`�ѥ��E�j�.�qg�՛*���*����T�R]3���Ȼ���>�ªM�/Ĩ2Y%�<�G���}j!d�r��"�-���/�v<��RBv�{G��)F߄/���3�"$c��E�t��͐�M���s����K)�m�~�1�~=��z�釃�R�N��"��f:�b֒9Ō2�췌~�bbI�n*�Eu���;��[T:k�͗Q�.C��yב?�c,�t1��Û��]mS���@S��"�)�L	�y'�e��}_�=�J@��DM,��dF\�F\��Ѐޤ	X-�3-h�PئQ(Hw�(����^i��*�",�4,RH$2���F��TJU�H6�AHf�h���6������:�He�ܒvMnK	�`+
;���X����m	ػ��t�(s�s+��~�n]/�(*����%��cZ�8}��."����(��}��A�o��>����DFcә��O(�Ѩ�б)Th|����[�v���|�       �   A  x��Ko���ݿ����)��'���N	w��D����
2h`p�*��1`��өSU�̮���l���x2�U�N�F���8���w9̮��9�p/68^�⸷WG<��w��ϙw}�.:-�EbO4�PXY�v����ޞ�zʏ�a=�s��a��%ћS����W��TD�{OM���g�LAu^��at�^����\�R'@�"xx�\4Ay����9��=Z0D��ʲ�ZS�K� }��+���l����y��z.�.'h�_��\�]��E��P�_@�;�����2aL�o }M2:)�2��UkР9[f8�~���ь��b�<�ޓ�u��p}����Rg��{��q��"�>��ة����ߑ���k鉗�Qgq���{qO��-��%�v�\����U)�;�CP
)��Ʈ�9�ؐ�\f�K@Y��4��(�+��}��3�A�#lG��M������3_�u���Ϫ@�j�%��H��=eǽ�;J.N�(�����)�}$�O��s�*Gz��������Wv���wΓ���[ͼJg�Ny.��1��	��]\��~�>���L����Q���,`����(M�J���*	3DF��*�d,*՝�Ǝ}�K�R�4�[��u�e:dK4%�5������v�� 2%����+�~�,�s����,T|����Y�l�0{�^�{It������e�g�~:QW�����"��^��KN?>��wdݲ��冉 E�M�'ƆfB�O�b�x�W�ɨ�_6��k3n�����uMS���`�D�VE���������5�LB7�4��%*F�դ�X�f�a/�Z���i[��&��!oڍ?�}��~�!c9�ڢ&� c���S��:��n�KݵKZ˾�j�V�,	��X�R���	6,��L�fS��ԯ�ك>���,� ��s��[_@і��̊U�0���^k=��"�4��O��ķZ�nu
,���WX�!^+դ~����
�hl�t�y������Ӿ÷���L̷��K���Iߵ��vYP���Vq���:��b�Z���z	Y���dD�����%�[��%���� ����19������i��ت��:�H30�ueIv��;;����~���F��Dٴ�! V؎/i��ybkn�X����`�w��01 $������R��:6��]kn;(�6��xs��G���Sw=�V�s�Y�H�����IPd��O�4A��ߙ;��A����f���e���vh31���B��0���}�˫���n ��r���+�
���|���[��9����~a�v��b-�������׿ ��W     