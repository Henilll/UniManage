PGDMP         -            	    {         
   University    15.4    15.4 ;    U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            X           1262    16398 
   University    DATABASE        CREATE DATABASE "University" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "University";
                postgres    false            �            1255    16647    backup_delete_function()    FUNCTION     �  CREATE FUNCTION public.backup_delete_function() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
    -- Insert the deleted data into the backup table
    insert into students_backup (roll_no, firstname, lastname, father_name, mother_name, student_email, student_mobileno, student_dob, student_age, student_gender, department_name, student_city, student_state, mentor_id,enrollment_no)
    values (old.roll_no, old.firstname, old.lastname, old.father_name, old.mother_name, old.student_email, old.student_mobileno, old.student_dob, old.student_age, old.student_gender, old.department_name, old.student_city, old.student_state,old.mentor_id,old.enrollment_no);
    
    -- Delete from the first additional table
    delete from marksheet
    where roll_no = old.roll_no;
    
    -- Delete from the second additional table
    delete from mentor
    where roll_no = old.roll_no;
	
	delete from club_membership
    where roll_no = old.roll_no;

    return old;
end;
$$;
 /   DROP FUNCTION public.backup_delete_function();
       public          postgres    false            �            1255    16622 )   change_club_id(integer, integer, integer)    FUNCTION       CREATE FUNCTION public.change_club_id(p_roll_no integer, p_old_club_id integer, p_new_club_id integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
    v_row_count INT;
BEGIN
    
    SELECT COUNT(*)
    INTO v_row_count
    FROM club_membership
    WHERE roll_no = p_roll_no AND club_id = p_old_club_id;
    
    IF v_row_count > 0 THEN
        UPDATE club_membership
        SET club_id = p_new_club_id
        WHERE roll_no = p_roll_no AND club_id = p_old_club_id;
        
        RETURN TRUE;
		raise notice 'Club_id is successfully changed.';
    ELSE
        RETURN FALSE; -- Roll number with the old club ID not found
		raise notice 'Invalid input';
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions if necessary
        RETURN FALSE;
END;
$$;
 f   DROP FUNCTION public.change_club_id(p_roll_no integer, p_old_club_id integer, p_new_club_id integer);
       public          postgres    false            �            1255    24775 0   change_course_credit(character varying, integer) 	   PROCEDURE     �   CREATE PROCEDURE public.change_course_credit(IN course_short_name character varying, IN new_credit integer)
    LANGUAGE plpgsql
    AS $$
begin
update courses set course_credit=new_credit where course_shortname =course_short_name;
end;
$$;
 k   DROP PROCEDURE public.change_course_credit(IN course_short_name character varying, IN new_credit integer);
       public          postgres    false            �            1255    16657 &   change_enrollment_no(integer, numeric) 	   PROCEDURE     �  CREATE PROCEDURE public.change_enrollment_no(IN old_roll_no integer, IN new_enrollment_no numeric)
    LANGUAGE plpgsql
    AS $$
begin
    -- Temporarily remove foreign key constraints
    alter table marksheet drop constraint if exists marks_enrollmentno;
    alter table mentor drop constraint if exists mentor_enrollment_no_fkey;

    -- Update the enrollment number in all three tables
    update students_information
    set enrollment_no = new_enrollment_no
    where roll_no = old_roll_no;

    update marksheet
    set enrollment_no = new_enrollment_no
    where roll_no = old_roll_no;

    update mentor
    set enrollment_no = new_enrollment_no
    where roll_no = old_roll_no;

    -- Recreate foreign key constraints
    alter table marksheet add constraint marks_enrollmentno foreign key (enrollment_no) references students_information (enrollment_no);
    alter table mentor add constraint mentor_enrollment_no_fkey foreign key (enrollment_no) references students_information (enrollment_no);
end;
$$;
 b   DROP PROCEDURE public.change_enrollment_no(IN old_roll_no integer, IN new_enrollment_no numeric);
       public          postgres    false            �            1255    24777 (   change_faculty_phoneno(integer, numeric) 	   PROCEDURE     �  CREATE PROCEDURE public.change_faculty_phoneno(IN facultyid integer, IN new_phone_no numeric)
    LANGUAGE plpgsql
    AS $$
declare
    existing_phone_no numeric;
begin
    if length(new_phone_no::text) <> 10 then
        raise notice 'Phone number must be exactly 10 digits.';
    else
    select into existing_phone_no faculty_phoneno
    from faculty
    where faculty_id <> facultyid and faculty_phoneno = new_phone_no;

    
    if existing_phone_no is not null then
        raise notice 'Phone number % already exists in the faculty table.', new_phone_no;
    else
        -- Update the phone number for the faculty member
        update faculty
        set faculty_phoneno = new_phone_no
        where faculty_id = facultyid;

    
        update mentor
        set mentor_phoneno = new_phone_no
        where mentor_id=facultyid;

    
        raise notice 'Phone number updated for faculty ID % to %', facultyid, new_phone_no;
    end if;
	end if;
end;
$$;
 ]   DROP PROCEDURE public.change_faculty_phoneno(IN facultyid integer, IN new_phone_no numeric);
       public          postgres    false            �            1255    24783    get_department(integer) 	   PROCEDURE     �  CREATE PROCEDURE public.get_department(IN dept_id integer)
    LANGUAGE plpgsql
    AS $$
declare 
name varchar(10) := (select department_name from departments where department_id = dept_id);
code varchar(10) := (select department_code from departments where department_id = dept_id);
begin
raise notice 'For department id %, Department Name is % and department code is %', dept_id, name, code;
end;
$$;
 :   DROP PROCEDURE public.get_department(IN dept_id integer);
       public          postgres    false            �            1255    16590 -   insert_club(integer, character varying, text) 	   PROCEDURE     )  CREATE PROCEDURE public.insert_club(IN p_club_id integer, IN p_club_name character varying, IN p_description text)
    LANGUAGE plpgsql
    AS $$

BEGIN
    INSERT INTO clubs_organization (club_id, club_name, description)
    VALUES (p_club_id, p_club_name, p_description);

    COMMIT; 
END;
$$;
 r   DROP PROCEDURE public.insert_club(IN p_club_id integer, IN p_club_name character varying, IN p_description text);
       public          postgres    false            �            1255    24872    insert_student_into_mentor()    FUNCTION       CREATE FUNCTION public.insert_student_into_mentor() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO public.mentor (
        department_name,
        roll_no,
        enrollment_no,
        student_firstname,
        student_lastname,
        mentor_id,
        mentor_name,
        mentor_shortname,
        mentor_phoneno
    ) VALUES (
        NEW.department_name,
        NEW.roll_no,
        NEW.enrollment_no,
        NEW.firstname,
        NEW.lastname,
        NEW.roll_no,  -- Assuming mentor_id is the same as roll_no for simplicity
        'Mentor Name', -- Replace with the actual mentor name
        'Mentor Shortname', -- Replace with the actual mentor shortname
        1234567890 -- Replace with the actual mentor phone number
    );
    RETURN NEW;
END;
$$;
 3   DROP FUNCTION public.insert_student_into_mentor();
       public          postgres    false            �            1255    24877 *   search_students_by_city(character varying)    FUNCTION     �  CREATE FUNCTION public.search_students_by_city(city character varying) RETURNS TABLE(roll_no integer, firstname character varying, lastname character varying, student_city character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY SELECT si.roll_no, si.firstname, si.lastname, si.student_city
                 FROM students_information si
                 WHERE si.student_city = city;
END;
$$;
 F   DROP FUNCTION public.search_students_by_city(city character varying);
       public          postgres    false            �            1255    16631    update_marks()    FUNCTION     q  CREATE FUNCTION public.update_marks() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Calculate the new total_marks and percentage for the updated row
    NEW.total_marks = NEW.fee_marks + NEW.ds_marks + NEW.dbms_marks + NEW.maths_marks + NEW.java_marks;
    NEW.percentage = NEW.total_marks / 5.00;

    -- Return the modified row
    RETURN NEW;
END;
$$;
 %   DROP FUNCTION public.update_marks();
       public          postgres    false            �            1259    16606    club_membership    TABLE     �   CREATE TABLE public.club_membership (
    membership_id integer NOT NULL,
    club_id integer,
    roll_no integer,
    join_date date
);
 #   DROP TABLE public.club_membership;
       public         heap    postgres    false            �            1259    16583    clubs_organization    TABLE     �   CREATE TABLE public.clubs_organization (
    club_id integer NOT NULL,
    club_name character varying(100),
    description text
);
 &   DROP TABLE public.clubs_organization;
       public         heap    postgres    false            �            1259    16449    courses    TABLE        CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course_shortname character varying(40),
    course_code character varying(20),
    department_name character varying(10),
    course_name character varying(40),
    course_credit integer
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16419    departments    TABLE     �   CREATE TABLE public.departments (
    department_id integer,
    department_name character varying(10) NOT NULL,
    department_code character varying(20)
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    16459    faculty    TABLE     `  CREATE TABLE public.faculty (
    faculty_id integer NOT NULL,
    faculty_name character varying(40),
    faculty_shortname character varying(10),
    faculty_phoneno numeric,
    faculty_emailid character varying(70),
    course_fullname character varying(50),
    course_shortname character varying(20),
    department_name character varying(40)
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            �            1259    16554 	   marksheet    TABLE     t  CREATE TABLE public.marksheet (
    roll_no integer,
    enrollment_no numeric,
    department_name character varying(10),
    first_name character varying(20),
    last_name character varying(20),
    fee_marks integer,
    ds_marks integer,
    dbms_marks integer,
    maths_marks integer,
    java_marks integer,
    total_marks integer,
    percentage numeric(4,2)
);
    DROP TABLE public.marksheet;
       public         heap    postgres    false            �            1259    16579    failed_students    VIEW     �  CREATE VIEW public.failed_students AS
 SELECT marksheet.roll_no,
    marksheet.first_name,
    marksheet.last_name,
    marksheet.total_marks
   FROM public.marksheet
  WHERE (((marksheet.fee_marks >= 0) AND (marksheet.fee_marks <= 34)) OR ((marksheet.ds_marks >= 0) AND (marksheet.ds_marks <= 34)) OR ((marksheet.dbms_marks >= 0) AND (marksheet.dbms_marks <= 34)) OR ((marksheet.maths_marks >= 0) AND (marksheet.maths_marks <= 34)) OR ((marksheet.java_marks >= 0) AND (marksheet.java_marks <= 34)));
 "   DROP VIEW public.failed_students;
       public          postgres    false    219    219    219    219    219    219    219    219    219            �            1259    16512    mentor    TABLE     Y  CREATE TABLE public.mentor (
    department_name character varying(20),
    roll_no integer,
    enrollment_no numeric,
    student_firstname character varying(20),
    student_lastname character varying(20),
    mentor_id integer,
    mentor_name character varying(40),
    mentor_shortname character varying(20),
    mentor_phoneno numeric
);
    DROP TABLE public.mentor;
       public         heap    postgres    false            �            1259    16636 
   star_batch    VIEW     �  CREATE VIEW public.star_batch AS
 SELECT marksheet.roll_no,
    marksheet.first_name,
    marksheet.last_name,
    marksheet.total_marks,
    marksheet.percentage
   FROM public.marksheet
  WHERE ((marksheet.fee_marks > 34) AND (marksheet.ds_marks > 34) AND (marksheet.dbms_marks > 34) AND (marksheet.maths_marks > 34) AND (marksheet.java_marks > 34) AND (marksheet.total_marks > 400));
    DROP VIEW public.star_batch;
       public          postgres    false    219    219    219    219    219    219    219    219    219    219            �            1259    16649    students_backup    TABLE     +  CREATE TABLE public.students_backup (
    roll_no integer NOT NULL,
    firstname character varying(20),
    lastname character varying(20),
    father_name character varying(20),
    mother_name character varying(20),
    student_email character varying(20),
    student_mobileno numeric,
    student_dob date,
    student_age integer,
    student_gender character varying(15),
    department_name character varying(20),
    student_city character varying(20),
    student_state character varying(20),
    mentor_id integer,
    enrollment_no numeric
);
 #   DROP TABLE public.students_backup;
       public         heap    postgres    false            �            1259    16399    students_information    TABLE     0  CREATE TABLE public.students_information (
    roll_no integer NOT NULL,
    firstname character varying(20),
    lastname character varying(20),
    father_name character varying(20),
    mother_name character varying(20),
    student_email character varying(20),
    student_mobileno numeric,
    student_dob date,
    student_age integer,
    student_gender character varying(15),
    department_name character varying(20),
    student_city character varying(20),
    student_state character varying(20),
    mentor_id integer,
    enrollment_no numeric
);
 (   DROP TABLE public.students_information;
       public         heap    postgres    false            Q          0    16606    club_membership 
   TABLE DATA           U   COPY public.club_membership (membership_id, club_id, roll_no, join_date) FROM stdin;
    public          postgres    false    222   |k       P          0    16583    clubs_organization 
   TABLE DATA           M   COPY public.clubs_organization (club_id, club_name, description) FROM stdin;
    public          postgres    false    221   �l       L          0    16449    courses 
   TABLE DATA           x   COPY public.courses (course_id, course_shortname, course_code, department_name, course_name, course_credit) FROM stdin;
    public          postgres    false    216   nn       K          0    16419    departments 
   TABLE DATA           V   COPY public.departments (department_id, department_name, department_code) FROM stdin;
    public          postgres    false    215   �o       M          0    16459    faculty 
   TABLE DATA           �   COPY public.faculty (faculty_id, faculty_name, faculty_shortname, faculty_phoneno, faculty_emailid, course_fullname, course_shortname, department_name) FROM stdin;
    public          postgres    false    217   0p       O          0    16554 	   marksheet 
   TABLE DATA           �   COPY public.marksheet (roll_no, enrollment_no, department_name, first_name, last_name, fee_marks, ds_marks, dbms_marks, maths_marks, java_marks, total_marks, percentage) FROM stdin;
    public          postgres    false    219   <r       N          0    16512    mentor 
   TABLE DATA           �   COPY public.mentor (department_name, roll_no, enrollment_no, student_firstname, student_lastname, mentor_id, mentor_name, mentor_shortname, mentor_phoneno) FROM stdin;
    public          postgres    false    218   <{       R          0    16649    students_backup 
   TABLE DATA           �   COPY public.students_backup (roll_no, firstname, lastname, father_name, mother_name, student_email, student_mobileno, student_dob, student_age, student_gender, department_name, student_city, student_state, mentor_id, enrollment_no) FROM stdin;
    public          postgres    false    224   ��       J          0    16399    students_information 
   TABLE DATA           �   COPY public.students_information (roll_no, firstname, lastname, father_name, mother_name, student_email, student_mobileno, student_dob, student_age, student_gender, department_name, student_city, student_state, mentor_id, enrollment_no) FROM stdin;
    public          postgres    false    214   �       �           2606    16610 $   club_membership club_membership_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.club_membership
    ADD CONSTRAINT club_membership_pkey PRIMARY KEY (membership_id);
 N   ALTER TABLE ONLY public.club_membership DROP CONSTRAINT club_membership_pkey;
       public            postgres    false    222            �           2606    16589 *   clubs_organization clubs_organization_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.clubs_organization
    ADD CONSTRAINT clubs_organization_pkey PRIMARY KEY (club_id);
 T   ALTER TABLE ONLY public.clubs_organization DROP CONSTRAINT clubs_organization_pkey;
       public            postgres    false    221            �           2606    16458    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    216            �           2606    16423    departments departments_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_name);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    215            �           2606    16465    faculty faculty_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);
 >   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_pkey;
       public            postgres    false    217            �           2606    16655 $   students_backup students_backup_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.students_backup
    ADD CONSTRAINT students_backup_pkey PRIMARY KEY (roll_no);
 N   ALTER TABLE ONLY public.students_backup DROP CONSTRAINT students_backup_pkey;
       public            postgres    false    224            �           2606    16405 .   students_information students_information_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.students_information
    ADD CONSTRAINT students_information_pkey PRIMARY KEY (roll_no);
 X   ALTER TABLE ONLY public.students_information DROP CONSTRAINT students_information_pkey;
       public            postgres    false    214            �           2606    16476 (   students_information unique_enrollmentno 
   CONSTRAINT     l   ALTER TABLE ONLY public.students_information
    ADD CONSTRAINT unique_enrollmentno UNIQUE (enrollment_no);
 R   ALTER TABLE ONLY public.students_information DROP CONSTRAINT unique_enrollmentno;
       public            postgres    false    214            �           2606    16474    faculty unique_name 
   CONSTRAINT     V   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT unique_name UNIQUE (faculty_name);
 =   ALTER TABLE ONLY public.faculty DROP CONSTRAINT unique_name;
       public            postgres    false    217            �           2606    16528    mentor unique_roll_no 
   CONSTRAINT     S   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT unique_roll_no UNIQUE (roll_no);
 ?   ALTER TABLE ONLY public.mentor DROP CONSTRAINT unique_roll_no;
       public            postgres    false    218            �           2606    16472    faculty unique_shortname 
   CONSTRAINT     `   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT unique_shortname UNIQUE (faculty_shortname);
 B   ALTER TABLE ONLY public.faculty DROP CONSTRAINT unique_shortname;
       public            postgres    false    217            �           2620    24873 *   students_information add_student_to_mentor    TRIGGER     �   CREATE TRIGGER add_student_to_mentor AFTER INSERT ON public.students_information FOR EACH ROW EXECUTE FUNCTION public.insert_student_into_mentor();
 C   DROP TRIGGER add_student_to_mentor ON public.students_information;
       public          postgres    false    245    214            �           2620    16656 *   students_information backup_delete_trigger    TRIGGER     �   CREATE TRIGGER backup_delete_trigger BEFORE DELETE ON public.students_information FOR EACH ROW EXECUTE FUNCTION public.backup_delete_function();
 C   DROP TRIGGER backup_delete_trigger ON public.students_information;
       public          postgres    false    214    241            �           2620    16635    marksheet change_marks    TRIGGER     y  CREATE TRIGGER change_marks BEFORE UPDATE ON public.marksheet FOR EACH ROW WHEN (((old.fee_marks IS DISTINCT FROM new.fee_marks) OR (old.ds_marks IS DISTINCT FROM new.ds_marks) OR (old.dbms_marks IS DISTINCT FROM new.dbms_marks) OR (old.maths_marks IS DISTINCT FROM new.maths_marks) OR (old.java_marks IS DISTINCT FROM new.java_marks))) EXECUTE FUNCTION public.update_marks();
 /   DROP TRIGGER change_marks ON public.marksheet;
       public          postgres    false    219    240    219    219    219    219    219            �           2606    16611 ,   club_membership club_membership_club_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_membership
    ADD CONSTRAINT club_membership_club_id_fkey FOREIGN KEY (club_id) REFERENCES public.clubs_organization(club_id);
 V   ALTER TABLE ONLY public.club_membership DROP CONSTRAINT club_membership_club_id_fkey;
       public          postgres    false    221    3239    222            �           2606    16616 ,   club_membership club_membership_roll_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_membership
    ADD CONSTRAINT club_membership_roll_no_fkey FOREIGN KEY (roll_no) REFERENCES public.students_information(roll_no);
 V   ALTER TABLE ONLY public.club_membership DROP CONSTRAINT club_membership_roll_no_fkey;
       public          postgres    false    214    3223    222            �           2606    16452 $   courses courses_department_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_department_name_fkey FOREIGN KEY (department_name) REFERENCES public.departments(department_name);
 N   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_department_name_fkey;
       public          postgres    false    3227    215    216            �           2606    16466    faculty fac_dept    FK CONSTRAINT     �   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT fac_dept FOREIGN KEY (department_name) REFERENCES public.departments(department_name);
 :   ALTER TABLE ONLY public.faculty DROP CONSTRAINT fac_dept;
       public          postgres    false    3227    217    215            �           2606    16434    students_information fk_dept    FK CONSTRAINT     �   ALTER TABLE ONLY public.students_information
    ADD CONSTRAINT fk_dept FOREIGN KEY (department_name) REFERENCES public.departments(department_name);
 F   ALTER TABLE ONLY public.students_information DROP CONSTRAINT fk_dept;
       public          postgres    false    215    214    3227            �           2606    16564    marksheet marks_deptname    FK CONSTRAINT     �   ALTER TABLE ONLY public.marksheet
    ADD CONSTRAINT marks_deptname FOREIGN KEY (department_name) REFERENCES public.departments(department_name);
 B   ALTER TABLE ONLY public.marksheet DROP CONSTRAINT marks_deptname;
       public          postgres    false    3227    215    219            �           2606    16672    marksheet marks_enrollmentno    FK CONSTRAINT     �   ALTER TABLE ONLY public.marksheet
    ADD CONSTRAINT marks_enrollmentno FOREIGN KEY (enrollment_no) REFERENCES public.students_information(enrollment_no);
 F   ALTER TABLE ONLY public.marksheet DROP CONSTRAINT marks_enrollmentno;
       public          postgres    false    219    214    3225            �           2606    16569    marksheet marks_roll    FK CONSTRAINT     �   ALTER TABLE ONLY public.marksheet
    ADD CONSTRAINT marks_roll FOREIGN KEY (roll_no) REFERENCES public.students_information(roll_no);
 >   ALTER TABLE ONLY public.marksheet DROP CONSTRAINT marks_roll;
       public          postgres    false    219    214    3223            �           2606    16677     mentor mentor_enrollment_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT mentor_enrollment_no_fkey FOREIGN KEY (enrollment_no) REFERENCES public.students_information(enrollment_no);
 J   ALTER TABLE ONLY public.mentor DROP CONSTRAINT mentor_enrollment_no_fkey;
       public          postgres    false    218    3225    214            �           2606    16529 #   mentor mentor_mentor_shortname_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT mentor_mentor_shortname_fkey FOREIGN KEY (mentor_shortname) REFERENCES public.faculty(faculty_shortname);
 M   ALTER TABLE ONLY public.mentor DROP CONSTRAINT mentor_mentor_shortname_fkey;
       public          postgres    false    3235    217    218            �           2606    16517    mentor mentor_roll_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mentor
    ADD CONSTRAINT mentor_roll_no_fkey FOREIGN KEY (roll_no) REFERENCES public.students_information(roll_no);
 D   ALTER TABLE ONLY public.mentor DROP CONSTRAINT mentor_roll_no_fkey;
       public          postgres    false    218    214    3223            Q   =  x�U�[�� ��]��L�����6���3-BW�4Ҥ	kSV{X�~ zO���7�~��(�h�8��C��:�?�4�l���g\�F��m��Z��^�Y��٣�D���@�hp�_Њ���V�������@�yQ�׃��e��,S/>L�`�5I��`y��cr���*9���J�W�^qR�^�^�}[�,ȶ��^��2����n�2�n�t�\�0-B�}X�p���-��G��,}t)J�}���1�| Ks�ܷ}x�����X�w�X��RO��go��53`�'Y8_՜�f���,?�������� ��      P   �  x����n�0Eך��84�c�N��v�L�ʆ��Y4Hi�}iO�8{oY�=����}G�����RC�^�G����5C�X	�:��d�T� $�&�t L�"f�����2n�_
Gy�j��>�-�9��U*d%1mAS��������s��h�%�rO�N`Jm�Eh"�ѡ��Ry)�VC��3d_�zZ���Z^�=�7Q�&�S,�槃&�]�����@w��n05T�/�+c���`���p�����s���Ǜ�D�V2��i`ɺLƎ~��g���0z��}���h�)�2�c�~���i��1����{��O
�X��a5�+��И�~�q����h�h�	tnV��v�ɳY��/�:R�`�u$�SJAO���x��ҵ���v���^9�r      L   a  x��SKn�0\?N�	*?�_RB�TE�D�U7.�(R �1�޾�6D"2��xf��X���(�8ߢ�����F��1ph�AJ�-�^l1�ɑ� �z�t��q9�O��>wI	�Ψ �U�%�_b�~%�Jc��Q�b/uҔ�v���s1 D����ɘ�{7�|>����m5H��2ϯ��=)9�6a�mњF��ˈ;��1��[﵂�|znUׂ���RC�BS��G�Bw����d�2�p���Ő ��7fm���/~4��|��G�L����NZ*�]][%��~@�4����m0g��uwX��т�>��W�ܨ�9�G���ǖ�'���C�2�      K   A   x�3�tv�44702��2�Acs.cN���Ђ˄�9�142�2�t����LL��b���� �3,      M   �  x������0E�/_��b�+	%�R�$��Q��%��p"cR�_?6T�.:͢ea���˻fA���jP����QWY)(�-�I�.���sjG��yVҾw��U���UO������VR���`�*}$�;�>�߭V�}��}��� �湺�нQ����x2國0��rP�ų?Z�h�l���7�����^:;ժ�]MvX���DNӘ�4 �E��S�~�Dz]a+�ņ���E#.��=-�Qi)����7>G��v磷*Qjl`�.AaGnuA�/f-���x��a�� �
.�8a��v��[hk٢U�n�w����^�4x��9|p��<�K�����b0�bM���W'hZ4n�K<����*��3'���TEG�����x��S�*�\�]���O�~�ovj��t�W�Q�ِͭ���|V��9#6L���YKd���Hy0M�)tp��_�U�r2.v��x2� ℧!�b���ȇ����+�L&/��M�      O   �  x�UX�nI|n�Q��������K/LiɤAQ���ODf���l(���j���s�W�]L~yw�m���_���p�W�K��T���Ą��ֹ7>�uy������rX�����4�Զ����Ը$���,�G@o�O/'`o����?�ĕ�Բ��Ğ������ۃG�����������6�E�@������{����ht�H	o��BK�Jݯ��#O�s���}?�V<GO�����~[������b��Xh�P$���r�>���﷈�HSI��o��l�y����?�����x@�?~=_����4ǟ�ttJ�6�4����}�������1ZEw=�؟)_g�;��T�|�Cx
f���֍��/�q��>�OP�@/	G>J��S�����iO�nQjD�w�/��n���J��*a�H�e0�`���O�Ҁ=�,��Z{M8���]:�׊Z}ZG�� de��0U��J���Ŗ�l��*����$Ԍ����g�k��N%4*A"��
N+u{8_ۋs���NG�Ft��M�qxX���g$�e���!UX�vC��~�^�&Ь�4ψȪ�6�	*5�֪�j'�I�3H��U�_����.���у���k��?��=C��ސ�:�l��
rъo��nN���:�D.:{�K��2�/�e�(�4(A,t�5dW&��������s62�W�J��je����� ̧���`��q���a�����A_���N�˛⻊��ŕ�����1�#��6E"^+mġhĠ�^e�V�.�Fl�$��j�����c�tN��N���Nt��p��}�*����97���h�怷��pM���p�pm̮T9 Ս�n\�ܬ����t�n�apn^vTέ����fWKL��i#`%�L��R8>0�yh�MM0����(P�[r�τ�"�\�R�6�]�����q]�N���	�*����p���]'@nD�<��P��תlƮp�	�5�A&�A�<ګ�E����$�s����b��ٝ%��I�X����A)5
��j`: ���m�bz����K�{��qw:� -�bF�>�����?��A\�fO�T� Ä�D~�:��y��t_�6�I�F�p��ٚED������e�E4�J��E�/JZd[�ط*�Ǘ�*s�8"�9L
&�F��M�׍̰S���APt��#}G]5O�t�Ȼ����u������xj�	��}�f����uF\
C5���"6������0)�� H���1\zj��H�2Ԥ�V�L=��^��_ITP,1����l���f���ZB���0a���1Ħ��6�d��b-/R^��(-�9�#�L|�J��6e��m�`�d1(�]�%	`1�<�rJw�A)(B���@d����ٶu�p�*%_�n���� ��~�-rv��z���f���U�V*{���'�Ő�G��L�7��W-�s�D�]�Ng�!Q:�;�qI�n��A���O䫷'X'W�ч��XO���Y*%�@$�n�Ht�*���Z�8���������@z�Յz��j��>�PɢcR���~������bR�h��tf��nۢ�t�L������Q��&s�2��k"X�UL�b��O�Z��e\�j}BD�U�-���hnM���W�!V9��:"ݲ=i2�0_؄�Uj[d�e�9�u	�}jm�o$]J
��O��Z�f]*�ͥ(����1O��K�"�G���M��K���[p��qFY�}�d[��bR��M�@��vLx�D^��M�kEd���E�b���z2ʫ��i��A�%bs(L��+��Yd��q��)�ړ6�7���#!s�2oe���k�2=�XQ^�؏�Zov/]��D�����ҫ9x���7V�"�@��uX�pV=_�w�����zqÀ�.�q��V��o�(�܋`�������S��i���*ﷷH�jf3v�N��2�{���ķ��*�N�s��v)i)���XdD�=늙��s�W����E� Qi��"�X�+l�J0sJ��k��P72l����	g��F������3㡰>���8�]�<ѝ��nyP�၆)/H=�B�����V�c��%xt�B��
���y��4&��a�݄G�i��Y�]T�@͋ӏ�И,z��}Rfݔ9f�~��-0N��q�$˦s[^&�(�#�W}���];/{�`P4+A`�xy��mGu�:{D��A<Pn	^M�[��d�>�8A�_�`^������o����A
�?�:��޾y��r�8      N   n  x��Y�N#9}6_�/@���ؐ�lF� ��Wi�&�u:����7�Oc�H\�N�O�S6��gBN+
FuA�"����7�5a��uw�Z���:իG�WG�~"VHm(�]�(�(J��͑ۺ��\��XE^��s����u�U9H����ڑ]���F3�
���d7�a:��d������
:S���ʃ��pçS�e#0^,ǕK�G�ѳ|��`.�Cq����c� )���L5�U�T�.pt�&�ܝ?� #ȶ[m��5������ޓ���I�i;Q�ٌǵ9��.�Cq�-#�;�SMnj��$�r{Z�rGwX��>O�[�_�� �-��p��&��c-'�����4h��/�I��>x�0Ъ�f0�es~[�U��b�х�BM �h���ܑ��T�?#��4����7�FfK w��<v���Ɲ�t�1�)��s�1SL���}Sg��0*Ck^�ח!H��Ș��m�εk�qx4��c}V�����l���]"��d�b0э;�����QX�b��:vu�C]�(<	Fp�a���>&�6��b<\Z����"$�ɳkrMb�Q �U��!T�fʆ�Ҹ0	[��3�d�FJ3'^F ���;z��u��Q��4� ,]��V�I�(̧�[W'�p4�#��w��ᘕ3�E�iIy�B�7�m���x�8����X⪼��(2
����P�U=X���'|�u9sR���V�a�.G� �U;/&T� �)&�U���h%��gl\�u�!A8qLI��Ɩ�J,��I����g��l�4OzJP���1���0b�F�O�ρ	�<
x�^�0-��~;h�D�u��Jab^���Dl�����6�*ŦPX��
c1!��R��M���y�JEQ���sBe5g8�H26L#�'������{!�ǘ�A�,�VKq�����Z�t�%�à\��n\sq�Y�T�j,��뿱)�I �8�ߠ�1�䡺��U���I%'��t{Xl��0'U���~�d1#ŧ-"��6"�C�����6���u}j�8�)k�Cqe�x���|�����i'qǺ����dDb�O�u@?G��-dX�ҶEwa��U���b%f����UJ��|��t�Q�z�Pӳ@�����(�|3b[c�*r�Ė;f
�!��;,T�0	���I�Ĥ�H����sq�T�r�S���,t2&�d�^����U�9��p��o���Іw,����e*��/$���%�좔�2N����7i�
��#��\�(*�xG�e��b"6z���r�8*
ɩ=_ok�86[��_�[y���g��ui�?8v�f�K|�{�E����D�]و6t�i�s}uu�?��      R      x�360��#q���:F��� /fz      J   �  x��Z�r�8}��B?�) xy[%��${S��[[�/p�2iI��"����i\(^`ˢ�*�B�P��>�}�����c��{�K���wWT�e�׋&�ea�m
���%7�u�����K�8!����k?�f��V�3��?�ޝ|�5�\Vr�ו���c�΂�|�'W�E���
{��z*hX�G����k�{A��+�X%>�YY��rS�gwr���~zw��cVm�7/�U/�*ji���@jl���U�ۃw�l�p|��s��8�{�MQ{��|ν{����LP
�5�C=r��B[ �?e�Ń�I��r��2�FV����]X��6�Z(*��ia^��ua�������!��ť^�9y!�W�W��9�wf֋FBK��������. �u^��gu}�p���y��~�:[{7 b9��,��z]ў���ps��F����ޏ����C��P��*��B��.�e��fJ��宂Z��.7	��\ S�{Y�*/�ih�0�1\��߷{��x�Ǚ^k굤=c�+D��o� �V.	��r�a�J.�Ƀ8!TH���`�;�I�af�E��c��s1`~�ֵ��f�^!��d�z�)���C\��m��;YT�����Cz��#7t��`]n�?a�|v=�A,pt���{J/��V6(���Y�(۵T;GΈ�zg�
�0����*���?�ZVg��  x ���F�670���]c�HEcڪ��}Y<�*wC�1R�T��.��"����t�@9"mMp9Y<
��R�껫�&�S>�>��W'DЂ �� ��-PjR���h�h��rӔ ���?Ue�K'f��-n$�	��E�R
B�-��<���6��Z�(=��܊3�Y��7Ȑ��1'�ߒ� �����P�׀ưJǠ
0���7�^�Ҝ�z=��`-7�����x���*�w<r{)�O�<89�trb�Gy��i�]Y��h����RҒ��/Y4���\Ql��zpS�a�:'�������e+�f'e���2��]�0�7�R>�%�����2a[M47B��7���ٜX�ց�=ҍ�˵�>��^ؤ�b���+�Mp��^�S���^�~����0&���<)pı[�{p�w�+��3����,�q��4ӂQ��k�'�-�Cs�-�r�2z9��Ȅm��˺��\"a�%>Eկ�o"w����鄪�R$�І�,��΀p=������G��w�)+�/�������Ca�C
�ػ��_��B�@�j�PѮ�a��íĠ���h �zߏۺ��5Al�;���TuAF���y/�� p�Ŧ��_�(�~CC����M��n(�����R�R��܎�B���~^�� 	�4�7��9�ք�� hhi�b���Ņ��O���!߰�7�"�A�~K7.�,!�ɼ�1���!K,䚸�Z�v��(A�M��C�o��u�����%N�L� �)�N����ty����/7}�pS�S\�1���#��5�l֖7݁iQq��݃�|���3=��BCq�Chਨ�bY���!8�L�.�~(t��IP����΍�qӓx�ŮP��h��(+��3s�m�k1h��O�������8���Z�*"2�"���K�X"Z�CK�hM����}6-���0��T�2��G�<��Ў�HKhH���&G!���gЅ!�C�$�l�(��RU�~U�)P�ܽ�;
ZѾ1�Ɨ�2�dP���՘��O�;���*2��X��z�1x�Z�g6HO�`0���%e����8�� 0{>jH����Y��}+*=3Ҩ���k"z�$���(zt�M�A�ѫ=�y\��Ni2�ECp��q�h[hg�^l�8X�8�}	wk0��ї�a�H����؎F��~8�pH߂9x��"?,�kb�Z@(�ַ�4�N"m��5*��d'�H;9WM�j�5փ"���hT��h��G=��ّ�|KE]M�f��\�J��:;���)�uE$EO�������X���Ž��9�P�^1Ɂ	�]''w�m�`��W�C������aCl�V���\��[����-G�0ncN�7���V'2{�J��J��q|��5�{��y���SK���_&��|.!(e�h\~�-�Gb�4т�(a���� ަ�n?t3W���1R���HL�:GWR�t"��ܰ����J��@��f�������)��g�	7����w��g���t�"�,[�?
X���]nlY㗶<EQ��)�୎o�v����p'�T8�7ub�{V s�Y!������ݧ껧NF�/�޷����	�FD0��{҅�.�H~���zi�h����Z(��T(
'��y`ۮ�S�e˗�h���;���J�Q�d�2sϡ�� ]��p�+U����1���٩���#
)3$f�ƅ����-O
\~��
R����z!���޺]>��q[�,��%�H��I�q�*�|���U�H�	���E�\�1fMC�uGHt�T$�h�c�2�f�n�9��X,�Q�"3��[q�a
Ҩ�R��%W�n4������!��b��սő�>oL�;?�PJ��6�J`��S�L����x(~���)/Jy�񁨋f���m݌ں9�^6
Q@ngE&O둩��TKzR�~�ԾU3���D�
����Jg,�6�Ђ��=�,�����.
� �}גj��ʅ��k�P��$�Q�9��x	��Q���51
\@(�2��6���'QJǺ��HY)�JQ;]�^ډ	�ĩ��'p]���:�����}��	��qs�r6b�=������0����I��)�6����3���'�q� ����c���~����c#���(A-�����!�~:��Q���m�5�8�)�o�6g��4�a#O06=Y��"��t��umJSw�<ی򇡛��`�+w��c/[�љ=�|���k������z��#b�#5z�y�AJ�n�ݙ[MHU�a��^�����_�a�
j<����r��]&$�Gp$���HP�kL0�6{O�\§��0w�G��2����&��<�@x�˹�������)�P$&��1һ&|��8)�w�H�p@��$�@�^��1��Q3-��C-���y8u�%bb�v�d�n�b2:�r�?�UL}�1b[����^w����ȃU!p~����C��pt��Y>PYE�ʚ����ڒƋ��Z�&���%[S拑_A0�Wϑ_�����
�����r��Aւ�Bւ����yq�����]]]�.D�S     