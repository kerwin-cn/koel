\c ibaraki-yuki-acros-fr;
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 10.1

-- Started on 2018-01-25 23:19:52 JST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12393)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2487 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 236 (class 1255 OID 16385)
-- Name: update_t_reserve_parent_address_pref(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION update_t_reserve_parent_address_pref() RETURNS void
    LANGUAGE plpgsql
    AS $$
  DECLARE
    mviews RECORD;
  BEGIN
    
    FOR mviews IN SELECT * FROM t_reserve_parent ORDER BY rp_id LOOP
        
	IF substring(mviews.address1 from 1 for 3) = '茨城県' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET address1 = %, address_pref = "茨城県" WHERE rp_id = %', replace(mviews.address1, '茨城県', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET address1 = replace(mviews.address1, '茨城県', ''), address_pref = '茨城県' WHERE rp_id = mviews.rp_id;
	END IF;

	IF substring(mviews.address1 from 1 for 3) = '栃木県' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET address1 = %, address_pref = "栃木県" WHERE rp_id = %', replace(mviews.address1, '栃木県', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET address1 = replace(mviews.address1, '栃木県', ''), address_pref = '栃木県' WHERE rp_id = mviews.rp_id;
	END IF;

	IF substring(mviews.address1 from 1 for 3) = '東京都' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET address1 = %, address_pref = "東京都" WHERE rp_id = %', replace(mviews.address1, '東京都', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET address1 = replace(mviews.address1, '東京都', ''), address_pref = '東京都' WHERE rp_id = mviews.rp_id;
	END IF;

	IF substring(mviews.address1 from 1 for 3) = '埼玉県' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET address1 = %, address_pref = "埼玉県" WHERE rp_id = %', replace(mviews.address1, '埼玉県', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET address1 = replace(mviews.address1, '埼玉県', ''), address_pref = '埼玉県' WHERE rp_id = mviews.rp_id;
	END IF;
	
	--
	
	IF substring(mviews.living_city_address1 from 1 for 3) = '茨城県' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET living_city_address1 = %, living_city_address_pref = "茨城県" WHERE rp_id = %', replace(mviews.living_city_address1, '茨城県', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET living_city_address1 = replace(mviews.living_city_address1, '茨城県', ''), living_city_address_pref = '茨城県' WHERE rp_id = mviews.rp_id;
	END IF;

	IF substring(mviews.living_city_address1 from 1 for 3) = '栃木県' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET living_city_address1 = %, living_city_address_pref = "栃木県" WHERE rp_id = %', replace(mviews.living_city_address1, '栃木県', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET living_city_address1 = replace(mviews.living_city_address1, '栃木県', ''), living_city_address_pref = '栃木県' WHERE rp_id = mviews.rp_id;
	END IF;

	IF substring(mviews.living_city_address1 from 1 for 3) = '東京都' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET living_city_address1 = %, living_city_address_pref = "東京都" WHERE rp_id = %', replace(mviews.living_city_address1, '東京都', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET living_city_address1 = replace(mviews.living_city_address1, '東京都', ''), living_city_address_pref = '東京都' WHERE rp_id = mviews.rp_id;
	END IF;

	IF substring(mviews.living_city_address1 from 1 for 3) = '埼玉県' THEN
		RAISE NOTICE 'UPDATE t_reserve_parent SET living_city_address1 = %, living_city_address_pref = "埼玉県" WHERE rp_id = %', replace(mviews.living_city_address1, '埼玉県', ''), mviews.rp_id;
		UPDATE t_reserve_parent SET living_city_address1 = replace(mviews.living_city_address1, '埼玉県', ''), living_city_address_pref = '埼玉県' WHERE rp_id = mviews.rp_id;
	END IF;
        
    END LOOP;
  END;
$$;


ALTER FUNCTION public.update_t_reserve_parent_address_pref() OWNER TO postgres;

--
-- TOC entry 237 (class 1255 OID 16386)
-- Name: update_t_reserve_parent_reception_date(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION update_t_reserve_parent_reception_date() RETURNS void
    LANGUAGE plpgsql
    AS $$
  DECLARE
    mviews RECORD;
  BEGIN
    
    FOR mviews IN SELECT * FROM t_reserve_parent ORDER BY rp_id LOOP

	RAISE NOTICE 'UPDATE t_reserve_parent SET reception_date = %-%-%', substring(mviews.reg_date from 1 for 4), substring(mviews.reg_date from 5 for 2), substring(mviews.reg_date from 7 for 2);
	UPDATE t_reserve_parent SET reception_date = (substring(mviews.reg_date from 1 for 4) || '-' || substring(mviews.reg_date from 5 for 2) || '-' || substring(mviews.reg_date from 7 for 2))::Date WHERE rp_id = mviews.rp_id;
        
    END LOOP;
  END;
$$;


ALTER FUNCTION public.update_t_reserve_parent_reception_date() OWNER TO postgres;

--
-- TOC entry 250 (class 1255 OID 16387)
-- Name: update_t_user_address_pref(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION update_t_user_address_pref() RETURNS void
    LANGUAGE plpgsql
    AS $$
  DECLARE
    mviews RECORD;
  BEGIN
    
    FOR mviews IN SELECT * FROM t_user ORDER BY u_id LOOP
        
	IF substring(mviews.address1 from 1 for 3) = '茨城県' THEN
		RAISE NOTICE 'UPDATE t_user SET address1 = %, address_pref = "茨城県" WHERE u_id = %', replace(mviews.address1, '茨城県', ''), mviews.u_id;
		UPDATE t_user SET address1 = replace(mviews.address1, '茨城県', ''), address_pref = '茨城県' WHERE u_id = mviews.u_id;
	END IF;

	IF substring(mviews.address1 from 1 for 3) = '栃木県' THEN
		RAISE NOTICE 'UPDATE t_user SET address1 = %, address_pref = "栃木県" WHERE u_id = %', replace(mviews.address1, '栃木県', ''), mviews.u_id;
		UPDATE t_user SET address1 = replace(mviews.address1, '栃木県', ''), address_pref = '栃木県' WHERE u_id = mviews.u_id;
	END IF;

	IF substring(mviews.address1 from 1 for 3) = '東京都' THEN
		RAISE NOTICE 'UPDATE t_user SET address1 = %, address_pref = "東京都" WHERE u_id = %', replace(mviews.address1, '東京都', ''), mviews.u_id;
		UPDATE t_user SET address1 = replace(mviews.address1, '東京都', ''), address_pref = '東京都' WHERE u_id = mviews.u_id;
	END IF;

	IF substring(mviews.address1 from 1 for 3) = '埼玉県' THEN
		RAISE NOTICE 'UPDATE t_user SET address1 = %, address_pref = "埼玉県" WHERE u_id = %', replace(mviews.address1, '埼玉県', ''), mviews.u_id;
		UPDATE t_user SET address1 = replace(mviews.address1, '埼玉県', ''), address_pref = '埼玉県' WHERE u_id = mviews.u_id;
	END IF;
        
    END LOOP;
  END;
$$;


ALTER FUNCTION public.update_t_user_address_pref() OWNER TO postgres;

--
-- TOC entry 251 (class 1255 OID 16388)
-- Name: update_t_user_u_id(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION update_t_user_u_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
  DECLARE
    mviews RECORD;
    s int := 17000000;
  BEGIN
    
    FOR mviews IN SELECT * FROM t_user ORDER BY u_id LOOP
        RAISE NOTICE 'UPDATE t_user SET u_id = % WHERE u_id = %', s, mviews.u_id;
        UPDATE t_user SET u_id = s WHERE u_id = mviews.u_id;
        s := s + 1;
    END LOOP;
  END;
$$;


ALTER FUNCTION public.update_t_user_u_id() OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16389)
-- Name: m_assortment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_assortment (
    assortment integer NOT NULL,
    name character varying(32),
    disp_order integer,
    applicable integer,
    del_flag integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_assortment OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16392)
-- Name: m_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_attribute (
    attribute integer NOT NULL,
    name character varying(32),
    disp_order integer,
    applicable integer,
    reg_id character varying(20),
    reg_date character(14) NOT NULL,
    upd_date character(14),
    reserve character varying(64)
);


ALTER TABLE m_attribute OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16395)
-- Name: m_calculation_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_calculation_table (
    id integer NOT NULL,
    apply_start_date character varying(8) NOT NULL,
    apply_end_date character varying(8) NOT NULL,
    version smallint NOT NULL
);


ALTER TABLE m_calculation_table OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16398)
-- Name: m_calculation_table_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE m_calculation_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE m_calculation_table_id_seq OWNER TO postgres;

--
-- TOC entry 2488 (class 0 OID 0)
-- Dependencies: 188
-- Name: m_calculation_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE m_calculation_table_id_seq OWNED BY m_calculation_table.id;


--
-- TOC entry 189 (class 1259 OID 16400)
-- Name: m_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_entry (
    entry integer NOT NULL,
    lot_flag integer,
    lot_start_month integer,
    lot_start_day integer,
    lot_start_time character(4),
    lot_end_day integer,
    lot_end_time character(4),
    lot_month integer,
    lot_day integer,
    lot_time character(4),
    lot_mail_time character(4),
    lot_cancel integer,
    disp_month integer,
    use_start_flag integer,
    use_start_day integer,
    use_start_time character(4),
    use_end_day integer,
    use_end_time character(4),
    lot_end_date character(8),
    lot_next_date character(8),
    lot_limit integer,
    use_limit integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_entry OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16403)
-- Name: m_facility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_facility (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    name character varying(64),
    level integer,
    partition integer,
    multi integer,
    capacity integer,
    locked integer,
    disp_order integer,
    applicable integer,
    open_date character(14) NOT NULL,
    closed_date character(14) NOT NULL,
    del_flag integer,
    reg_id character varying(20),
    reg_date character(14) NOT NULL,
    upd_date character(14),
    reserve character varying(64)
);


ALTER TABLE m_facility OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16406)
-- Name: m_fixtures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_fixtures (
    fixtures integer NOT NULL,
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    type integer NOT NULL,
    name character varying(64),
    unit character varying(8),
    quantity integer,
    disp_order integer,
    del_flag integer DEFAULT 0,
    reg_id character varying(20)
);


ALTER TABLE m_fixtures OWNER TO postgres;

--
-- TOC entry 2489 (class 0 OID 0)
-- Dependencies: 191
-- Name: COLUMN m_fixtures.del_flag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN m_fixtures.del_flag IS '0:未削除 1:削除';


--
-- TOC entry 192 (class 1259 OID 16410)
-- Name: m_fixtures_charge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_fixtures_charge (
    fixtures integer NOT NULL,
    apply_id integer NOT NULL,
    credit integer,
    charge integer,
    apply_start_date character(8),
    apply_end_date character(8),
    reg_id character varying(20)
);


ALTER TABLE m_fixtures_charge OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16413)
-- Name: m_fixtures_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_fixtures_type (
    type integer NOT NULL,
    name character varying(50) NOT NULL,
    reg_id character varying(20)
);


ALTER TABLE m_fixtures_type OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16416)
-- Name: m_frame; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_frame (
    i_id integer NOT NULL,
    pattern integer NOT NULL,
    frame integer NOT NULL,
    name character varying(32),
    time1 integer,
    time2 integer,
    time3 integer,
    time4 integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_frame OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16419)
-- Name: m_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_group (
    igroup integer NOT NULL,
    name character varying(32),
    disp_order integer,
    applicable integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_group OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16422)
-- Name: m_institution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_institution (
    i_id integer NOT NULL,
    name character varying(64),
    postal character varying(8),
    address character varying(255),
    tel character varying(20),
    fax character varying(20),
    email character varying(64),
    manager character varying(64),
    assortment integer,
    igroup integer,
    closed character(8),
    commercial integer,
    chain integer,
    plural integer,
    entry integer,
    disp_order integer,
    message text,
    accept character(14),
    del_flag integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_institution OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16428)
-- Name: m_partition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_partition (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    partition integer NOT NULL,
    name character varying(64),
    unit integer,
    unit_info character varying(17),
    occupy integer,
    disp_order integer,
    applicable integer,
    del_flag integer,
    reg_id character varying(20),
    reg_date character(14) NOT NULL,
    upd_date character(14),
    reserve character varying(64)
);


ALTER TABLE m_partition OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16431)
-- Name: m_pattern; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_pattern (
    i_id integer NOT NULL,
    pattern integer NOT NULL,
    name character varying(32),
    unit integer,
    multi_times integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_pattern OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16434)
-- Name: m_purpose; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_purpose (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    purpose integer NOT NULL,
    name character varying(32),
    disp_order integer,
    applicable integer,
    del_flag integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_purpose OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16437)
-- Name: m_reduction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_reduction (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    reduction integer NOT NULL,
    manage integer NOT NULL,
    attribute integer,
    rate integer,
    institute_rate integer,
    aircon_rate integer,
    lighting_rate integer,
    fixtures_rate integer,
    articles character varying(256),
    apply_start_date character(8),
    apply_end_date character(8),
    del_flag integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_reduction OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16440)
-- Name: m_special; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_special (
    special integer NOT NULL,
    name character varying(32),
    color character(7) NOT NULL,
    assort integer,
    disp_order integer,
    applicable integer,
    reg_id character varying(20),
    reg_date character(14) NOT NULL,
    upd_date character(14),
    reserve character varying(64)
);


ALTER TABLE m_special OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16443)
-- Name: m_times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_times (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    manage integer NOT NULL,
    sun_pattern integer,
    sun_failed1 integer,
    sun_failed2 integer,
    sun_failed3 integer,
    sun_failed4 integer,
    mon_pattern integer,
    mon_failed1 integer,
    mon_failed2 integer,
    mon_failed3 integer,
    mon_failed4 integer,
    tue_pattern integer,
    tue_failed1 integer,
    tue_failed2 integer,
    tue_failed3 integer,
    tue_failed4 integer,
    wed_pattern integer,
    wed_failed1 integer,
    wed_failed2 integer,
    wed_failed3 integer,
    wed_failed4 integer,
    thu_pattern integer,
    thu_failed1 integer,
    thu_failed2 integer,
    thu_failed3 integer,
    thu_failed4 integer,
    fri_pattern integer,
    fri_failed1 integer,
    fri_failed2 integer,
    fri_failed3 integer,
    fri_failed4 integer,
    sat_pattern integer,
    sat_failed1 integer,
    sat_failed2 integer,
    sat_failed3 integer,
    sat_failed4 integer,
    hol_pattern integer,
    hol_failed1 integer,
    hol_failed2 integer,
    hol_failed3 integer,
    hol_failed4 integer,
    apply_start_date character(8),
    apply_end_date character(8),
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE m_times OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16446)
-- Name: sysdiagrams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sysdiagrams (
    name character varying NOT NULL,
    principal_id integer NOT NULL,
    diagram_id integer NOT NULL,
    version integer,
    definition bytea
);


ALTER TABLE sysdiagrams OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16452)
-- Name: t_charge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_charge (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    apply_id integer NOT NULL,
    charge_id integer NOT NULL,
    base integer NOT NULL,
    pattern integer NOT NULL,
    pattern_unit integer NOT NULL,
    time1 integer,
    time2 integer,
    time3 integer,
    time4 integer,
    partition_unit character varying(17) NOT NULL,
    occupy integer,
    charge integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE t_charge OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16455)
-- Name: t_charge_apply; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_charge_apply (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    apply_id integer NOT NULL,
    apply_start_date character(8),
    apply_end_date character(8),
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE t_charge_apply OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16458)
-- Name: t_charge_plus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_charge_plus (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    apply_id integer NOT NULL,
    plus_kind integer NOT NULL,
    plus_type integer,
    st_term character(4),
    ed_term character(4),
    attribute integer,
    week character(8),
    st_price integer,
    ed_price integer,
    charge_plus integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE t_charge_plus OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16461)
-- Name: t_closed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_closed (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    closed_month character(6) NOT NULL,
    closed character(32),
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE t_closed OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16464)
-- Name: t_failed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_failed (
    i_id integer NOT NULL,
    f_id integer NOT NULL,
    failed_date character(8) NOT NULL,
    failed1 integer,
    failed2 integer,
    failed3 integer,
    failed4 integer,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE t_failed OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16467)
-- Name: t_holiday; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_holiday (
    holiday_year integer NOT NULL,
    holiday_month_01 character(32),
    holiday_month_02 character(32),
    holiday_month_03 character(32),
    holiday_month_04 character(32),
    holiday_month_05 character(32),
    holiday_month_06 character(32),
    holiday_month_07 character(32),
    holiday_month_08 character(32),
    holiday_month_09 character(32),
    holiday_month_10 character(32),
    holiday_month_11 character(32),
    holiday_month_12 character(32)
);


ALTER TABLE t_holiday OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16470)
-- Name: t_license_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_license_id (
    year integer NOT NULL,
    id integer DEFAULT 0 NOT NULL
);


ALTER TABLE t_license_id OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16474)
-- Name: t_manage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_manage (
    m_id character varying(20) NOT NULL,
    password character varying(14),
    reg_id character varying(20),
    reg_date character(14) NOT NULL,
    upd_date character(14),
    sei_kanji character varying(16),
    mei_kanji character varying(16),
    sei_kana character varying(32),
    mei_kana character varying(32),
    email character varying(64),
    authority integer,
    note character varying(128),
    level integer,
    i_id integer,
    reserve character varying(64)
);


ALTER TABLE t_manage OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16477)
-- Name: t_receipt_charge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_charge (
    c_id character(10) NOT NULL,
    rp_id character(10) NOT NULL,
    history integer NOT NULL,
    career integer NOT NULL,
    institute_base_charge integer,
    institute_charge integer,
    institute_charge_rate integer,
    institute_charge_vary integer,
    institute_charge_claim integer,
    reduction_articles character varying(256),
    refund integer,
    reserve character varying(64),
    is_reason_canceled boolean
);


ALTER TABLE t_receipt_charge OWNER TO postgres;

--
-- TOC entry 2490 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN t_receipt_charge.history; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_receipt_charge.history IS '0:最新 !0:旧<新';


--
-- TOC entry 2491 (class 0 OID 0)
-- Dependencies: 212
-- Name: COLUMN t_receipt_charge.is_reason_canceled; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_receipt_charge.is_reason_canceled IS '0:キャンセルでない
1:キャンセル';


--
-- TOC entry 213 (class 1259 OID 16480)
-- Name: t_receipt_connect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_connect (
    c_id character(10) NOT NULL,
    rp_id character(10) NOT NULL,
    charge_career integer NOT NULL,
    reserve_career integer NOT NULL,
    reserve character varying(64)
);


ALTER TABLE t_receipt_connect OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16483)
-- Name: t_receipt_fixtures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_fixtures (
    c_id integer NOT NULL,
    rp_id character(10) NOT NULL,
    amount_payment integer,
    reg_date character(14) NOT NULL,
    reg_id character varying(20),
    method_date character varying(14) NOT NULL
);


ALTER TABLE t_receipt_fixtures OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16486)
-- Name: t_receipt_fixtures_c_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_receipt_fixtures_c_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_receipt_fixtures_c_id_seq OWNER TO postgres;

--
-- TOC entry 2492 (class 0 OID 0)
-- Dependencies: 215
-- Name: t_receipt_fixtures_c_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_receipt_fixtures_c_id_seq OWNED BY t_receipt_fixtures.c_id;


--
-- TOC entry 216 (class 1259 OID 16488)
-- Name: t_receipt_fixtures_charge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_fixtures_charge (
    c_id integer NOT NULL,
    fixtures integer NOT NULL,
    apply_id integer NOT NULL,
    quantity integer NOT NULL,
    number integer NOT NULL,
    charge integer
);


ALTER TABLE t_receipt_fixtures_charge OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16491)
-- Name: t_receipt_fixtures_note; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_fixtures_note (
    c_id character(10) NOT NULL,
    rp_id character(10) NOT NULL,
    payment_method integer,
    note text
);


ALTER TABLE t_receipt_fixtures_note OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16497)
-- Name: t_receipt_note; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_note (
    c_id character(10) NOT NULL,
    rp_id character(10) NOT NULL,
    payment_method integer,
    note text
);


ALTER TABLE t_receipt_note OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16503)
-- Name: t_receipt_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_payment (
    c_id character(10) NOT NULL,
    amount_payment integer,
    reserve character varying(64)
);


ALTER TABLE t_receipt_payment OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16506)
-- Name: t_receipt_reserve; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_receipt_reserve (
    c_id character(10) NOT NULL,
    rp_id character(10) NOT NULL,
    history integer NOT NULL,
    amount_payment integer,
    method_amount integer,
    method_date character(14) NOT NULL,
    reg_date character(14) NOT NULL,
    reg_id character varying(20),
    reserve character varying(64)
);


ALTER TABLE t_receipt_reserve OWNER TO postgres;

--
-- TOC entry 2493 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN t_receipt_reserve.history; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_receipt_reserve.history IS '0:最新 !0:旧<新';


--
-- TOC entry 221 (class 1259 OID 16509)
-- Name: t_reserve_base; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_base (
    rb_id integer NOT NULL,
    rp_id character(10) NOT NULL,
    career integer NOT NULL,
    g_id character(10) NOT NULL,
    r_div integer NOT NULL,
    i_id integer NOT NULL,
    f_id integer,
    purpose integer,
    purpose_complement character varying(64),
    usage_form smallint DEFAULT 0 NOT NULL,
    site_use smallint DEFAULT 0 NOT NULL,
    commercial integer DEFAULT 0 NOT NULL,
    collect integer,
    charge integer,
    change_payment integer,
    reserve_start_date character varying(8) NOT NULL,
    reserve_end_date character varying(8) NOT NULL
);


ALTER TABLE t_reserve_base OWNER TO postgres;

--
-- TOC entry 2494 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN t_reserve_base.r_div; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_base.r_div IS '0:通常 1:優先';


--
-- TOC entry 2495 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN t_reserve_base.usage_form; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_base.usage_form IS '0:未指定
1:通常使用
2:大会議室';


--
-- TOC entry 2496 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN t_reserve_base.site_use; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_base.site_use IS '0: なし
1: あり';


--
-- TOC entry 2497 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN t_reserve_base.commercial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_base.commercial IS '0:徴収しない 1:徴収する';


--
-- TOC entry 2498 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN t_reserve_base.change_payment; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_base.change_payment IS '0:未変更 or 変更後入金
1:未入金';


--
-- TOC entry 222 (class 1259 OID 16515)
-- Name: t_reserve_base_rb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_reserve_base_rb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_reserve_base_rb_id_seq OWNER TO postgres;

--
-- TOC entry 2499 (class 0 OID 0)
-- Dependencies: 222
-- Name: t_reserve_base_rb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_reserve_base_rb_id_seq OWNED BY t_reserve_base.rb_id;


--
-- TOC entry 223 (class 1259 OID 16517)
-- Name: t_reserve_charge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_charge (
    rp_id character(10) NOT NULL,
    institute_base_charge integer,
    institute_charge integer,
    institute_charge_rate integer,
    institute_charge_vary integer,
    institute_charge_claim integer,
    reduction integer,
    reduction_manage integer,
    reduction_articles character varying(256),
    reserve character varying(64),
    outsider_charge integer
);


ALTER TABLE t_reserve_charge OWNER TO postgres;

--
-- TOC entry 2500 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN t_reserve_charge.outsider_charge; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_charge.outsider_charge IS '市外者料金';


--
-- TOC entry 224 (class 1259 OID 16520)
-- Name: t_reserve_dayly; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_dayly (
    rd_id integer NOT NULL,
    rb_id integer NOT NULL,
    reserve_date character(8),
    charge integer
);


ALTER TABLE t_reserve_dayly OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16523)
-- Name: t_reserve_dayly_rd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_reserve_dayly_rd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_reserve_dayly_rd_id_seq OWNER TO postgres;

--
-- TOC entry 2501 (class 0 OID 0)
-- Dependencies: 225
-- Name: t_reserve_dayly_rd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_reserve_dayly_rd_id_seq OWNED BY t_reserve_dayly.rd_id;


--
-- TOC entry 226 (class 1259 OID 16525)
-- Name: t_reserve_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_detail (
    r_id integer NOT NULL,
    rb_id integer NOT NULL,
    occupy integer,
    unit_info character varying(17),
    reserve_date character(8),
    time1 integer,
    time2 integer,
    time3 integer,
    time4 integer,
    charge integer,
    aircon_time1 integer,
    aircon_time2 integer,
    aircon_time3 integer,
    aircon_time4 integer,
    lighting integer,
    lighting_time1 integer,
    lighting_time2 integer,
    lighting_time3 integer,
    lighting_time4 integer
);


ALTER TABLE t_reserve_detail OWNER TO postgres;

--
-- TOC entry 2502 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.unit_info; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.unit_info IS '[1]=1,[2]=2,[3]:3,[4]=4,[5-6]=6.[7-8]=8,[9-11]=12,[12-17]=24';


--
-- TOC entry 2503 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.time1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.time1 IS '00:00-0600 (1bit->15min | 24bit)';


--
-- TOC entry 2504 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.time2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.time2 IS '06:00-12:00 (1bit->15min | 24bit)';


--
-- TOC entry 2505 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.time3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.time3 IS '12:00-18:00 (1bit->15min | 24bit)';


--
-- TOC entry 2506 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.time4; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.time4 IS '18:00-24:00 (1bit->15min | 24bit)';


--
-- TOC entry 2507 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.aircon_time1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.aircon_time1 IS '00:00-0600 (1bit->15min | 24bit)';


--
-- TOC entry 2508 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.aircon_time2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.aircon_time2 IS '06:00-12:00 (1bit->15min | 24bit)';


--
-- TOC entry 2509 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.aircon_time3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.aircon_time3 IS '12:00-18:00 (1bit->15min | 24bit)';


--
-- TOC entry 2510 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.aircon_time4; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.aircon_time4 IS '18:00-24:00 (1bit->15min | 24bit)';


--
-- TOC entry 2511 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.lighting_time1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.lighting_time1 IS '00:00-0600 (1bit->15min | 24bit)';


--
-- TOC entry 2512 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.lighting_time2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.lighting_time2 IS '06:00-12:00 (1bit->15min | 24bit)';


--
-- TOC entry 2513 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.lighting_time3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.lighting_time3 IS '12:00-18:00 (1bit->15min | 24bit)';


--
-- TOC entry 2514 (class 0 OID 0)
-- Dependencies: 226
-- Name: COLUMN t_reserve_detail.lighting_time4; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_detail.lighting_time4 IS '18:00-24:00 (1bit->15min | 24bit)';


--
-- TOC entry 227 (class 1259 OID 16528)
-- Name: t_reserve_detail_r_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_reserve_detail_r_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_reserve_detail_r_id_seq OWNER TO postgres;

--
-- TOC entry 2515 (class 0 OID 0)
-- Dependencies: 227
-- Name: t_reserve_detail_r_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_reserve_detail_r_id_seq OWNED BY t_reserve_detail.r_id;


--
-- TOC entry 228 (class 1259 OID 16530)
-- Name: t_reserve_fixtures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_fixtures (
    fixtures integer NOT NULL,
    rp_id character(10) NOT NULL,
    fixtures_name character varying(64),
    quantity integer,
    time1 integer,
    time2 integer,
    time3 integer,
    time4 integer,
    fixtures_charge integer,
    reserve character varying(64)
);


ALTER TABLE t_reserve_fixtures OWNER TO postgres;

--
-- TOC entry 2516 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN t_reserve_fixtures.time1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_fixtures.time1 IS '00:00-0600 (1bit->15min | 24bit)';


--
-- TOC entry 2517 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN t_reserve_fixtures.time2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_fixtures.time2 IS '06:00-12:00 (1bit->15min | 24bit)';


--
-- TOC entry 2518 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN t_reserve_fixtures.time3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_fixtures.time3 IS '12:00-18:00 (1bit->15min | 24bit)';


--
-- TOC entry 2519 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN t_reserve_fixtures.time4; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_fixtures.time4 IS '18:00-24:00 (1bit->15min | 24bit)';


--
-- TOC entry 229 (class 1259 OID 16533)
-- Name: t_reserve_fixtures_fixtures_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE t_reserve_fixtures_fixtures_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t_reserve_fixtures_fixtures_seq OWNER TO postgres;

--
-- TOC entry 2520 (class 0 OID 0)
-- Dependencies: 229
-- Name: t_reserve_fixtures_fixtures_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE t_reserve_fixtures_fixtures_seq OWNED BY t_reserve_fixtures.fixtures;


--
-- TOC entry 230 (class 1259 OID 16535)
-- Name: t_reserve_id; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_id (
    year integer NOT NULL,
    id integer DEFAULT 0 NOT NULL
);


ALTER TABLE t_reserve_id OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16539)
-- Name: t_reserve_open_and_start; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_open_and_start (
    rp_id character(10) NOT NULL,
    no integer NOT NULL,
    opening_time time without time zone,
    start_time time without time zone,
    end_time time without time zone
);


ALTER TABLE t_reserve_open_and_start OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16542)
-- Name: t_reserve_parent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_parent (
    rp_id character(10) NOT NULL,
    u_kind integer,
    u_id character(8),
    attribute integer,
    user_kanji character varying(64),
    sei_name character varying(16),
    mei_name character varying(16),
    postal character(8),
    address1 character varying(64),
    address2 character varying(64),
    address3 character varying(64),
    tel character varying(20),
    living_city_sei_name character varying(16),
    living_city_mei_name character varying(16),
    living_city_postal character varying(8),
    living_city_address1 character varying(64),
    living_city_address2 character varying(64),
    living_city_address3 character varying(64),
    cast_name text,
    purpose_use text,
    visitor_number integer,
    use_fixtures integer,
    note text,
    state smallint DEFAULT 0 NOT NULL,
    license_id character(10),
    reg_kind integer,
    reg_date character(14),
    reg_id character varying(20),
    del_flag integer DEFAULT 0,
    del_date character(14),
    del_id character varying(20),
    license_date character(14),
    reserve_start_date character varying(8) NOT NULL,
    reserve_end_date character varying(8) NOT NULL,
    tel2 character varying(20),
    living_city_tel character varying(20),
    is_not_charged boolean,
    address_pref character varying(20) NOT NULL,
    living_city_address_pref character varying(20),
    reception_id character varying(10),
    reception_date date NOT NULL
);


ALTER TABLE t_reserve_parent OWNER TO postgres;

--
-- TOC entry 2521 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN t_reserve_parent.u_kind; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_parent.u_kind IS '0:一般 1:ゲスト';


--
-- TOC entry 2522 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN t_reserve_parent.use_fixtures; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_parent.use_fixtures IS '0:なし 1:あり';


--
-- TOC entry 2523 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN t_reserve_parent.state; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_parent.state IS '0:未許可
1:許可済
';


--
-- TOC entry 2524 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN t_reserve_parent.license_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_parent.license_id IS 'YYxxxxxxxx
YY:年下二桁
xxxxxxxx:連番';


--
-- TOC entry 2525 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN t_reserve_parent.reg_kind; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_parent.reg_kind IS '0:管理者 1:利用者';


--
-- TOC entry 2526 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN t_reserve_parent.del_flag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_parent.del_flag IS '0:未削除 1:削除';


--
-- TOC entry 233 (class 1259 OID 16550)
-- Name: t_reserve_partition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_reserve_partition (
    r_id integer NOT NULL,
    p_no integer NOT NULL,
    partition integer,
    unit_info character varying(17),
    reserve character varying(64)
);


ALTER TABLE t_reserve_partition OWNER TO postgres;

--
-- TOC entry 2527 (class 0 OID 0)
-- Dependencies: 233
-- Name: COLUMN t_reserve_partition.unit_info; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_reserve_partition.unit_info IS '[1]=1,[2]=2,[3]:3,[4]=4,[5-6]=6.[7-8]=8,[9-11]=12,[12-17]=24';


--
-- TOC entry 234 (class 1259 OID 16553)
-- Name: t_system_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_system_info (
    info integer NOT NULL,
    message text,
    apply_start_date character(12),
    apply_end_date character(12),
    reg_id character varying(20),
    reg_date character(14) NOT NULL
);


ALTER TABLE t_system_info OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16559)
-- Name: t_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE t_user (
    u_id character(8) NOT NULL,
    user_kanji character varying(64),
    user_kana character varying(128),
    constituent_sum integer,
    constituent_adult integer,
    constituent_child integer,
    attribute integer,
    igroup integer,
    email character varying(64),
    email_kind integer,
    email_send integer,
    password character varying(8),
    sei_name character varying(16),
    mei_name character varying(16),
    postal character(8),
    address1 character varying(64),
    address2 character varying(64),
    address3 character varying(64),
    tel character varying(20),
    sex integer,
    birthday character(8),
    note text,
    reception integer,
    recognition integer,
    issue character(8) NOT NULL,
    validity character(8) NOT NULL,
    interruption integer,
    message text,
    message_reg_id character varying(20),
    message_date character(14),
    reg_id character varying(20),
    reg_date character(14) NOT NULL,
    upd_date character(14),
    reserve character varying(64),
    living_city_sei_name character varying(16),
    living_city_mei_name character varying(16),
    living_city_postal character varying(8),
    living_city_address1 character varying(64),
    living_city_address2 character varying(64),
    living_city_address3 character varying(64),
    tel2 character varying(20),
    living_city_tel character varying(20),
    is_not_charged boolean,
    address_pref character varying(20) NOT NULL,
    living_city_address_pref character varying(20)
);


ALTER TABLE t_user OWNER TO postgres;

--
-- TOC entry 2528 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN t_user.living_city_sei_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_user.living_city_sei_name IS '市内在住-利用者名(姓)';


--
-- TOC entry 2529 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN t_user.living_city_mei_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_user.living_city_mei_name IS '市内在住-利用者名(名)';


--
-- TOC entry 2530 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN t_user.living_city_postal; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_user.living_city_postal IS '市内在住-郵便番号';


--
-- TOC entry 2531 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN t_user.living_city_address1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_user.living_city_address1 IS '市内在住-住所(市町村)';


--
-- TOC entry 2532 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN t_user.living_city_address2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_user.living_city_address2 IS '市内在住-住所(字番地)';


--
-- TOC entry 2533 (class 0 OID 0)
-- Dependencies: 235
-- Name: COLUMN t_user.living_city_address3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN t_user.living_city_address3 IS '市内在住-住所(アパート等)';


--
-- TOC entry 2202 (class 2604 OID 16565)
-- Name: m_calculation_table id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_calculation_table ALTER COLUMN id SET DEFAULT nextval('m_calculation_table_id_seq'::regclass);


--
-- TOC entry 2205 (class 2604 OID 16566)
-- Name: t_receipt_fixtures c_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_fixtures ALTER COLUMN c_id SET DEFAULT nextval('t_receipt_fixtures_c_id_seq'::regclass);


--
-- TOC entry 2209 (class 2604 OID 16567)
-- Name: t_reserve_base rb_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_base ALTER COLUMN rb_id SET DEFAULT nextval('t_reserve_base_rb_id_seq'::regclass);


--
-- TOC entry 2210 (class 2604 OID 16568)
-- Name: t_reserve_dayly rd_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_dayly ALTER COLUMN rd_id SET DEFAULT nextval('t_reserve_dayly_rd_id_seq'::regclass);


--
-- TOC entry 2211 (class 2604 OID 16569)
-- Name: t_reserve_detail r_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_detail ALTER COLUMN r_id SET DEFAULT nextval('t_reserve_detail_r_id_seq'::regclass);


--
-- TOC entry 2212 (class 2604 OID 16570)
-- Name: t_reserve_fixtures fixtures; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_fixtures ALTER COLUMN fixtures SET DEFAULT nextval('t_reserve_fixtures_fixtures_seq'::regclass);


--
-- TOC entry 2430 (class 0 OID 16389)
-- Dependencies: 185
-- Data for Name: m_assortment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_assortment (assortment, name, disp_order, applicable, del_flag, reg_id, reserve) FROM stdin;
1	文化センター	1	1	0	admin	\N
\.


--
-- TOC entry 2431 (class 0 OID 16392)
-- Dependencies: 186
-- Data for Name: m_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_attribute (attribute, name, disp_order, applicable, reg_id, reg_date, upd_date, reserve) FROM stdin;
1	市内	1	1	admin	20080101000000	\N	\N
16		5	0	admin	20080101000000	\N	\N
32		6	0	admin	20080101000000	\N	\N
64		7	0	\N	20080101000000	\N	\N
128	\N	8	0	\N	20080101000000	\N	\N
256	\N	9	0	\N	20080101000000	\N	\N
512	\N	10	0	\N	20080101000000	\N	\N
1024	\N	11	0	\N	20080101000000	\N	\N
2048	\N	12	0	\N	20080101000000	\N	\N
4096	\N	13	0	\N	20080101000000	\N	\N
8192	\N	14	0	\N	20080101000000	\N	\N
16384	\N	15	0	\N	20080101000000	\N	\N
32768	\N	16	0	\N	20080101000000	\N	\N
65536	\N	17	0	\N	20080101000000	\N	\N
131072	\N	18	0	\N	20080101000000	\N	\N
262144	\N	19	0	\N	20080101000000	\N	\N
524288	\N	20	0	\N	20080101000000	\N	\N
1048576	\N	21	0	\N	20080101000000	\N	\N
2097152	\N	22	0	\N	20080101000000	\N	\N
4194304	\N	23	0	\N	20080101000000	\N	\N
8388608	\N	24	0	\N	20080101000000	\N	\N
16777216	\N	25	0	\N	20080101000000	\N	\N
33554432	\N	26	0	\N	20080101000000	\N	\N
67108864	\N	27	0	\N	20080101000000	\N	\N
134217728	\N	28	0	\N	20080101000000	\N	\N
268435456	\N	29	0	\N	20080101000000	\N	\N
536870912	\N	30	0	\N	20080101000000	\N	\N
1073741824	\N	31	0	\N	20080101000000	\N	\N
4	市外	3	1	admin	20080101000000	\N	\N
2	市外(小山)	4	1	admin	20080101000000	\N	\N
8	市内（市外半数以上）	2	1	admin	20080101000000	\N	\N
\.


--
-- TOC entry 2432 (class 0 OID 16395)
-- Dependencies: 187
-- Data for Name: m_calculation_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_calculation_table (id, apply_start_date, apply_end_date, version) FROM stdin;
1	19000101	99991231	1
\.


--
-- TOC entry 2434 (class 0 OID 16400)
-- Dependencies: 189
-- Data for Name: m_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_entry (entry, lot_flag, lot_start_month, lot_start_day, lot_start_time, lot_end_day, lot_end_time, lot_month, lot_day, lot_time, lot_mail_time, lot_cancel, disp_month, use_start_flag, use_start_day, use_start_time, use_end_day, use_end_time, lot_end_date, lot_next_date, lot_limit, use_limit, reg_id, reserve) FROM stdin;
1	0	0	0	0000	0	0000	0	0	0000	0000	0	3	2	2	0900	3	2100	\N	\N	0	1000	admin	\N
\.


--
-- TOC entry 2435 (class 0 OID 16403)
-- Dependencies: 190
-- Data for Name: m_facility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_facility (i_id, f_id, name, level, partition, multi, capacity, locked, disp_order, applicable, open_date, closed_date, del_flag, reg_id, reg_date, upd_date, reserve) FROM stdin;
1	1	大ホール	1	0	1	30	0	1	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	2	楽屋１	1	0	1	30	0	2	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	3	楽屋２	1	0	1	30	0	3	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	4	楽屋３	1	0	1	30	0	4	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	5	楽屋５	1	0	1	30	0	5	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	6	シャワー室１	1	0	1	30	0	6	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	7	シャワー室２	1	0	1	30	0	7	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	14	練習室	1	0	1	30	0	14	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	15	会議室A	1	0	1	30	0	15	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	16	会議室B	1	0	1	30	0	16	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	17	和室	1	0	1	30	0	17	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	18	展示室	1	0	1	30	0	18	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	8	小ホール	1	0	1	30	0	8	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	9	楽屋６	1	0	1	30	0	9	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	10	楽屋７	1	0	1	30	0	10	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	11	楽屋８	1	0	1	30	0	11	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	12	シャワー室３	1	0	1	30	0	12	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	13	リハーサル室	1	0	1	30	0	13	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	19	展示室(大会議室)	1	0	1	30	0	19	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	20	展示室(敷地利用)	1	0	1	30	0	20	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
1	21	屋外展示場	1	0	1	30	0	21	1	20120801000000	99991231235959	0	admin	20000101000000	\N	\N
\.


--
-- TOC entry 2436 (class 0 OID 16406)
-- Dependencies: 191
-- Data for Name: m_fixtures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_fixtures (fixtures, i_id, f_id, type, name, unit, quantity, disp_order, del_flag, reg_id) FROM stdin;
2	1	1	1	小迫り	式	0	2	0	\N
3	1	1	1	竹羽目	式	0	3	0	\N
4	1	1	1	花道所作台	式	0	4	0	\N
53	1	14	1	移動用スクリーン	台	0	53	0	admin
55	1	1	2	フットライト	列	0	55	0	admin
9	1	1	1	高所作業台	台	0	9	0	admin
1	1	1	1	オーケストラピット	式	0	1	0	\N
5	1	1	1	鳥屋囲い	式	0	5	0	admin
6	1	1	1	バレエシート(テープ別)	式	0	6	0	admin
7	1	1	1	スクリーン	式	0	7	0	admin
8	1	1	1	音響反射板	式	0	8	0	admin
10	1	1	1	ﾋﾟｱﾉ・ｽﾀﾝｳｪｲ\rD-274(椅子1脚含む)	台	0	10	0	admin
50	1	18	1	移動用スクリーン	台	0	50	0	admin
54	1	14	1	ﾋﾟｱﾉ・ｱｯﾌﾟﾗｲﾄ\r\nUX50A(椅子1脚含む。)	台	0	54	0	admin
56	1	1	2	花道フットライト	列	0	56	0	admin
57	1	1	2	トーメンタルライト	台	0	57	0	admin
58	1	1	2	ボーダーライト	列	0	58	0	admin
59	1	1	2	アッパーホリゾント	列	0	59	0	admin
60	1	1	2	ローアーホリゾント	列	0	60	0	admin
61	1	1	2	クセノンピンスポット	台	0	61	0	admin
62	1	1	2	天反ライト	式	0	62	0	admin
63	1	1	2	タワースタンド	台	0	63	0	admin
15	1	9999	1	松羽目	式	0	15	0	admin
16	1	9999	1	所作台	台	0	16	0	admin
17	1	9999	1	平台	台	0	17	0	admin
128	1	14	3	マイクスタンド	本	0	128	0	admin
97	1	18	2	持込器具電源	1kw	0	97	0	admin
98	1	18	2	移動ライト	台	0	98	0	admin
99	1	1	3	拡声装置	式	0	99	0	admin
100	1	1	3	三点吊りマイク装置\r\n(マイク別)	式	0	100	0	admin
101	1	1	3	エレベーターマイク装置\r\n(マイク別)	式	0	101	0	admin
121	1	9999	3	マルチコード・ボックス	各	0	121	0	admin
122	1	9999	3	音響用持込器具電源	1kw	0	122	0	admin
127	1	14	3	拡声装置	式	0	127	0	admin
124	1	18	3	マイクスタンド	本	0	124	0	admin
123	1	18	3	拡声装置	式	0	123	0	admin
18	1	9999	1	開き足	本	0	18	0	admin
19	1	9999	1	箱足	個	0	19	0	admin
20	1	9999	1	講演台	式	0	20	0	admin
21	1	9999	1	司会者台	台	0	21	0	admin
22	1	9999	1	指揮者台	台	0	22	0	admin
23	1	9999	1	指揮者用譜面台	台	0	23	0	admin
24	1	9999	1	楽団用譜面台	台	0	24	0	admin
25	1	9999	1	毛氈	枚	0	25	0	admin
26	1	9999	1	長座布団	枚	0	26	0	admin
28	1	9999	1	人形立て	本	0	28	0	admin
27	1	9999	1	金屏風	半双	0	27	0	admin
29	1	9999	1	木支木	本	0	29	0	admin
30	1	9999	1	金支木	本	0	30	0	admin
31	1	9999	1	上敷ござ	枚	0	31	0	admin
32	1	9999	1	地絣り	枚	0	32	0	admin
33	1	9999	1	紗幕	枚	0	33	0	admin
34	1	9999	1	めくり台	台	0	34	0	admin
35	1	9999	1	国旗・市旗	枚	0	35	0	admin
36	1	9999	1	高座用座布団	枚	0	36	0	admin
37	1	9999	1	浅黄幕	枚	0	37	0	admin
38	1	9999	1	吊りバトン	本	0	38	0	admin
39	1	9999	1	テレビ	台	0	39	0	admin
79	1	9999	2	プロジェクタースポット一式	台	0	79	0	admin
80	1	9999	2	オーロラマシン	台	0	80	0	admin
81	1	9999	2	ファイヤーマシン	台	0	81	0	admin
82	1	9999	2	波マシン	台	0	82	0	admin
83	1	9999	2	ミラーボール1尺	台	0	83	0	admin
84	1	9999	2	ミラーボール2尺	台	0	84	0	admin
85	1	9999	2	丸スタンド	台	0	85	0	admin
86	1	9999	2	平ベース	台	0	86	0	admin
40	1	9999	1	ビデオ・DVDデッキ	台	0	40	0	admin
41	1	9999	1	プロジェクター	台	0	41	0	admin
42	1	9999	1	大太鼓	台	0	42	0	admin
43	1	9999	1	コントラバス用椅子	台	0	43	0	admin
44	1	9999	1	ピアノ用椅子	台	0	44	0	admin
45	1	9999	1	ピアノ用足台	台	0	45	0	admin
46	1	9999	1	姿見	台	0	46	0	admin
12	1	8	1	音響反射板	式	0	12	0	admin
14	1	8	1	ﾋﾟｱﾉ・ﾔﾏﾊCFⅢ\r\n(椅子1脚含む。)	台	0	14	0	admin
51	1	13	1	移動用スクリーン	台	0	51	0	admin
52	1	13	1	ﾋﾟｱﾉ・ｱｯﾌﾟﾗｲﾄ\r\nUX50A(椅子1脚含む。)	台	0	52	0	admin
64	1	8	2	ボーダーライト	列	0	64	0	admin
65	1	8	2	アッパーホリゾント	列	0	65	0	admin
66	1	8	2	ローアーホリゾント	列	0	66	0	admin
67	1	8	2	クセノンピンスポット	台	0	67	0	admin
68	1	8	2	天反ライト	式	0	68	0	admin
102	1	8	3	拡声装置	式	0	102	0	admin
103	1	8	3	二点吊りマイク装置\r\n(マイク別)	式	0	103	0	admin
125	1	13	3	拡声装置	式	0	125	0	admin
126	1	13	3	マイクスタンド	本	0	126	0	admin
47	1	9999	1	表彰盆	器	0	47	0	admin
48	1	9999	1	レーザーポインター	個	0	48	0	admin
49	1	9999	1	手元明かり	個	0	49	0	admin
69	1	9999	2	シーリングライト1.5Kw	台	0	69	0	admin
70	1	9999	2	シーリングライト1Kw	台	0	70	0	admin
71	1	9999	2	サスペンションライト	台	0	71	0	admin
73	1	9999	2	スポットライト1.5Kw	台	0	73	0	admin
74	1	9999	2	スポットライト1Kw	台	0	74	0	admin
72	1	9999	2	フロントサイドライト	台	0	72	0	admin
75	1	9999	2	スポットライト500w	台	0	75	0	admin
76	1	9999	2	エリアスポットライト	台	0	76	0	admin
77	1	9999	2	パーライト1Kw	台	0	77	0	admin
78	1	9999	2	パーライト500w	台	0	78	0	admin
87	1	9999	2	ハンガー	個	0	87	0	admin
88	1	9999	2	特殊ハンガー	個	0	88	0	admin
89	1	9999	2	二連アーム	個	0	89	0	admin
90	1	9999	2	ストロボ	台	0	90	0	admin
91	1	9999	2	ストリップライト12灯	台	0	91	0	admin
92	1	9999	2	ストリップライト6灯	台	0	92	0	admin
93	1	9999	2	フィルターフォルダー	枚	0	93	0	admin
94	1	9999	2	バンドアー	枚	0	94	0	admin
95	1	9999	2	スモークマシン(液別)	台	0	95	0	admin
96	1	9999	2	照明用持込器具電源	1kw	0	96	0	admin
104	1	9999	3	マイク・ダイナミック型	本	0	104	0	admin
105	1	9999	3	マイク・コンデンサー型	本	0	105	0	admin
106	1	9999	3	ワイヤレスマイク	本	0	106	0	admin
107	1	9999	3	マイクスタンド	本	0	107	0	admin
108	1	9999	3	ミキサー(A)	台	0	108	0	admin
109	1	9999	3	ミキサー(B)	台	0	109	0	admin
110	1	9999	3	CDデッキ	台	0	110	0	admin
111	1	9999	3	カセットデッキ	台	0	111	0	admin
112	1	9999	3	MDデッキ	台	0	112	0	admin
113	1	9999	3	ダイレクトボックス	台	0	113	0	admin
114	1	9999	3	ギター・ベースアンプ	台	0	114	0	admin
115	1	9999	3	移動型スピーカー(A)	組	0	115	0	admin
116	1	9999	3	移動型スピーカー(B)	組	0	116	0	admin
117	1	9999	3	移動型スピーカ(C)	組	0	117	0	admin
118	1	9999	3	サイドスピーカー	組	0	118	0	admin
119	1	9999	3	跳ね返りスピーカー	台	0	119	0	admin
120	1	9999	3	マルチエフェクター	台	0	120	0	admin
11	1	8	1	スクリーン	式	0	11	0	admin
13	1	8	1	張り出しステージ(平台別)	式	0	13	0	admin
\.


--
-- TOC entry 2437 (class 0 OID 16410)
-- Dependencies: 192
-- Data for Name: m_fixtures_charge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_fixtures_charge (fixtures, apply_id, credit, charge, apply_start_date, apply_end_date, reg_id) FROM stdin;
1	1	0	8230	19000101	99991231	admin
2	1	0	3090	19000101	99991231	admin
3	1	0	3090	19000101	99991231	admin
4	1	0	2060	19000101	99991231	admin
5	1	0	1030	19000101	99991231	admin
6	1	0	4120	19000101	99991231	admin
7	1	0	2060	19000101	99991231	admin
8	1	0	8230	19000101	99991231	admin
9	1	0	1030	19000101	99991231	admin
10	1	0	10290	19000101	99991231	admin
11	1	0	1030	19000101	99991231	admin
12	1	0	4120	19000101	99991231	admin
13	1	0	4120	19000101	99991231	admin
14	1	0	5150	19000101	99991231	admin
15	1	0	3090	19000101	99991231	admin
16	1	0	1030	19000101	99991231	admin
17	1	0	210	19000101	99991231	admin
18	1	0	110	19000101	99991231	admin
19	1	0	110	19000101	99991231	admin
20	1	0	1030	19000101	99991231	admin
21	1	0	520	19000101	99991231	admin
22	1	0	310	19000101	99991231	admin
23	1	0	210	19000101	99991231	admin
24	1	0	110	19000101	99991231	admin
25	1	0	520	19000101	99991231	admin
26	1	0	620	19000101	99991231	admin
27	1	0	2060	19000101	99991231	admin
28	1	0	110	19000101	99991231	admin
29	1	0	110	19000101	99991231	admin
30	1	0	110	19000101	99991231	admin
31	1	0	310	19000101	99991231	admin
32	1	0	3090	19000101	99991231	admin
33	1	0	2060	19000101	99991231	admin
34	1	0	520	19000101	99991231	admin
35	1	0	520	19000101	99991231	admin
36	1	0	210	19000101	99991231	admin
37	1	0	1030	19000101	99991231	admin
38	1	0	210	19000101	99991231	admin
39	1	0	1030	19000101	99991231	admin
40	1	0	1030	19000101	99991231	admin
41	1	0	3090	19000101	99991231	admin
42	1	0	4120	19000101	99991231	admin
43	1	0	210	19000101	99991231	admin
44	1	0	210	19000101	99991231	admin
45	1	0	210	19000101	99991231	admin
46	1	0	210	19000101	99991231	admin
47	1	0	110	19000101	99991231	admin
48	1	0	210	19000101	99991231	admin
49	1	0	210	19000101	99991231	admin
50	1	0	520	19000101	99991231	admin
51	1	0	520	19000101	99991231	admin
52	1	0	1030	19000101	99991231	admin
53	1	0	520	19000101	99991231	admin
54	1	0	1030	19000101	99991231	admin
55	1	0	2060	19000101	99991231	admin
56	1	0	1030	19000101	99991231	admin
57	1	0	210	19000101	99991231	admin
58	1	0	1550	19000101	99991231	admin
59	1	0	2060	19000101	99991231	admin
60	1	0	1550	19000101	99991231	admin
61	1	0	2060	19000101	99991231	admin
62	1	0	2060	19000101	99991231	admin
63	1	0	2060	19000101	99991231	admin
64	1	0	1030	19000101	99991231	admin
65	1	0	1030	19000101	99991231	admin
66	1	0	1030	19000101	99991231	admin
67	1	0	1550	19000101	99991231	admin
68	1	0	1030	19000101	99991231	admin
69	1	0	310	19000101	99991231	admin
70	1	0	210	19000101	99991231	admin
71	1	0	210	19000101	99991231	admin
72	1	0	210	19000101	99991231	admin
73	1	0	420	19000101	99991231	admin
74	1	0	310	19000101	99991231	admin
75	1	0	210	19000101	99991231	admin
76	1	0	310	19000101	99991231	admin
77	1	0	310	19000101	99991231	admin
78	1	0	210	19000101	99991231	admin
79	1	0	1550	19000101	99991231	admin
80	1	0	1550	19000101	99991231	admin
81	1	0	1550	19000101	99991231	admin
82	1	0	1550	19000101	99991231	admin
83	1	0	1030	19000101	99991231	admin
84	1	0	2060	19000101	99991231	admin
85	1	0	210	19000101	99991231	admin
86	1	0	110	19000101	99991231	admin
87	1	0	110	19000101	99991231	admin
88	1	0	210	19000101	99991231	admin
89	1	0	210	19000101	99991231	admin
90	1	0	1550	19000101	99991231	admin
91	1	0	1030	19000101	99991231	admin
92	1	0	520	19000101	99991231	admin
93	1	0	60	19000101	99991231	admin
94	1	0	210	19000101	99991231	admin
95	1	0	5150	19000101	99991231	admin
96	1	0	210	19000101	99991231	admin
97	1	0	210	19000101	99991231	admin
98	1	0	110	19000101	99991231	admin
99	1	0	6180	19000101	99991231	admin
100	1	0	3090	19000101	99991231	admin
101	1	0	1550	19000101	99991231	admin
102	1	0	4120	19000101	99991231	admin
103	1	0	2060	19000101	99991231	admin
104	1	0	1030	19000101	99991231	admin
105	1	0	1550	19000101	99991231	admin
106	1	0	1550	19000101	99991231	admin
107	1	0	110	19000101	99991231	admin
108	1	0	5150	19000101	99991231	admin
109	1	0	3090	19000101	99991231	admin
110	1	0	1030	19000101	99991231	admin
111	1	0	1030	19000101	99991231	admin
112	1	0	1030	19000101	99991231	admin
113	1	0	1030	19000101	99991231	admin
114	1	0	2060	19000101	99991231	admin
115	1	0	5150	19000101	99991231	admin
116	1	0	3090	19000101	99991231	admin
117	1	0	2060	19000101	99991231	admin
118	1	0	1030	19000101	99991231	admin
119	1	0	520	19000101	99991231	admin
120	1	0	1030	19000101	99991231	admin
121	1	0	1030	19000101	99991231	admin
122	1	0	210	19000101	99991231	admin
123	1	0	4120	19000101	99991231	admin
124	1	0	110	19000101	99991231	admin
125	1	0	2060	19000101	99991231	admin
126	1	0	110	19000101	99991231	admin
127	1	0	2060	19000101	99991231	admin
128	1	0	110	19000101	99991231	admin
\.


--
-- TOC entry 2438 (class 0 OID 16413)
-- Dependencies: 193
-- Data for Name: m_fixtures_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_fixtures_type (type, name, reg_id) FROM stdin;
1	舞台設備	admin
2	照明設備	admin
3	音響設備	admin
\.


--
-- TOC entry 2439 (class 0 OID 16416)
-- Dependencies: 194
-- Data for Name: m_frame; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_frame (i_id, pattern, frame, name, time1, time2, time3, time4, reg_id, reserve) FROM stdin;
1	1	1	\N	0	3072	0	0	admin	\N
1	1	2	\N	0	16773120	0	0	admin	\N
1	1	4	\N	0	0	1048560	0	admin	\N
1	1	3	\N	0	0	15	0	admin	\N
1	2	1	\N	0	16773120	16777215	65535	amidn	\N
1	1	6	\N	0	0	0	65535	amidn	\N
1	1	5	\N	0	0	15728640	\N	amidn	\N
1	1	8	\N	0	0	0	15728640	amidn	\N
1	1	7	\N	0	0	0	983040	amidn	\N
\.


--
-- TOC entry 2440 (class 0 OID 16419)
-- Dependencies: 195
-- Data for Name: m_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_group (igroup, name, disp_order, applicable, reg_id, reserve) FROM stdin;
1	文化センター	1	1	admin	\N
\.


--
-- TOC entry 2441 (class 0 OID 16422)
-- Dependencies: 196
-- Data for Name: m_institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_institution (i_id, name, postal, address, tel, fax, email, manager, assortment, igroup, closed, commercial, chain, plural, entry, disp_order, message, accept, del_flag, reg_id, reserve) FROM stdin;
1	結城市民文化センター（アクロス）	307-0052	結中央町2-2	0296-33-2001	0296-33-1811	\N	施設管理者	1	1	00100000	1	0	0	1	1	\N	20120801000000	0	admin	\N
\.


--
-- TOC entry 2442 (class 0 OID 16428)
-- Dependencies: 197
-- Data for Name: m_partition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_partition (i_id, f_id, partition, name, unit, unit_info, occupy, disp_order, applicable, del_flag, reg_id, reg_date, upd_date, reserve) FROM stdin;
1	1	1	大ホール	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	2	1	楽屋１	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	3	1	楽屋２	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	4	1	楽屋３	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	5	1	楽屋５	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	6	1	シャワー室１	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	7	1	シャワー室２	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	14	1	練習室	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	15	1	会議室A	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	16	1	会議室B	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	17	1	和室	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	18	1	展示室	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	8	1	小ホール	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	9	1	楽屋６	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	10	1	楽屋７	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	11	1	楽屋８	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	12	1	シャワー室３	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	13	1	リハーサル室	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	21	1	屋外展示場	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	19	1	展示室(大会議室)	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
1	20	1	展示室(敷地利用)	0	00000000000000000	1	1	1	0	admin	20161201000000	\N	\N
\.


--
-- TOC entry 2443 (class 0 OID 16431)
-- Dependencies: 198
-- Data for Name: m_pattern; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_pattern (i_id, pattern, name, unit, multi_times, reg_id, reserve) FROM stdin;
1	1	基本	0	4	admin	\N
1	2	屋外展示室	0	1	admin	\N
\.


--
-- TOC entry 2444 (class 0 OID 16434)
-- Dependencies: 199
-- Data for Name: m_purpose; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_purpose (i_id, f_id, purpose, name, disp_order, applicable, del_flag, reg_id, reserve) FROM stdin;
1	18	1	営利・販売以外	1	1	0	admin	20161222000000
1	18	2	営利目的	2	1	0	admin	20161222000000
1	18	3	展示販売	3	1	0	admin	20161222000000
1	19	1	営利・販売以外	1	1	0	admin	20161222000000
1	19	2	営利目的	2	1	0	admin	20161222000000
1	19	3	展示販売	3	1	0	admin	20161222000000
1	20	1	営利・販売以外	1	1	0	admin	20161222000000
1	20	2	営利目的	2	1	0	admin	20161222000000
1	20	3	展示販売	3	1	0	admin	20161222000000
1	21	1	営利・販売以外	1	1	0	admin	20161222000000
1	21	2	営利目的	2	1	0	admin	20161222000000
1	21	3	展示販売	3	1	0	admin	20161222000000
1	1	1	有料催事	4	1	0	admin	20161222000000
1	1	2	催事使用	1	1	0	admin	20161222000000
1	1	3	練習・準備	2	1	0	admin	20161222000000
1	1	4	営利宣伝	3	1	0	admin	20161222000000
1	8	1	有料催事	4	1	0	admin	20161222000000
1	8	2	催事使用	1	1	0	admin	20161222000000
1	8	3	練習・準備	2	1	0	admin	20161222000000
1	8	4	営利宣伝	3	1	0	admin	20161222000000
1	14	1	営利・販売以外	1	1	0	admin	20171121000000
1	14	2	営利目的	2	1	0	admin	20171121000000
1	14	3	展示販売	3	1	0	admin	20171121000000
1	15	1	営利・販売以外	1	1	0	admin	20171121000000
1	15	2	営利目的	2	1	0	admin	20171121000000
1	15	3	展示販売	3	1	0	admin	20171121000000
1	16	1	営利・販売以外	1	1	0	admin	20171121000000
1	16	2	営利目的	2	1	0	admin	20171121000000
1	16	3	展示販売	3	1	0	admin	20171121000000
1	17	1	営利・販売以外	1	1	0	admin	20171121000000
1	17	2	営利目的	2	1	0	admin	20171121000000
1	17	3	展示販売	3	1	0	admin	20171121000000
\.


--
-- TOC entry 2445 (class 0 OID 16437)
-- Dependencies: 200
-- Data for Name: m_reduction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_reduction (i_id, f_id, reduction, manage, attribute, rate, institute_rate, aircon_rate, lighting_rate, fixtures_rate, articles, apply_start_date, apply_end_date, del_flag, reg_id, reserve) FROM stdin;
1	1	1	1	0	8	100	100	100	100	 	20161201	99991231	0	admin	\N
\.


--
-- TOC entry 2446 (class 0 OID 16440)
-- Dependencies: 201
-- Data for Name: m_special; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_special (special, name, color, assort, disp_order, applicable, reg_id, reg_date, upd_date, reserve) FROM stdin;
1	施設休館日	#FFCCFF	0	1	1	comusen1234	20080101000000	20121211135230	\N
2	年末年始	#CCFFFF	0	2	1	comusen1234	20080101000000	20121219123912	\N
4	特定日04	#FFFFCC	0	4	0	admin	20080101000000	\N	\N
5	いいい	#99FF99	0	5	0	admin	20080101000000	20141010110325	\N
6	特定日06	#FFCC99	0	6	0	admin	20080101000000	\N	\N
7	特定日07	#EEEEEE	0	7	0	admin	20080101000000	\N	\N
8	特定日08	#99CCCC	0	8	0	admin	20080101000000	\N	\N
9	特定日09	#9999CC	0	9	0	admin	20080101000000	\N	\N
10	特定日10	#FFCC33	0	10	0	admin	20080101000000	\N	\N
11	特定日11	#CC99CC	0	11	0	admin	20080101000000	\N	\N
12	特定日12	#CCFF66	0	12	0	admin	20080101000000	\N	\N
13	特定日13	#FF6699	0	13	0	admin	20080101000000	\N	\N
14	特定日14	#99FF33	0	14	0	admin	20080101000000	\N	\N
15	特定日15	#CC9933	0	15	0	admin	20080101000000	\N	\N
3	祝日	#CCCCFF	0	3	1	admin	20080101000000	20171106132756	\N
\.


--
-- TOC entry 2447 (class 0 OID 16443)
-- Dependencies: 202
-- Data for Name: m_times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY m_times (i_id, f_id, manage, sun_pattern, sun_failed1, sun_failed2, sun_failed3, sun_failed4, mon_pattern, mon_failed1, mon_failed2, mon_failed3, mon_failed4, tue_pattern, tue_failed1, tue_failed2, tue_failed3, tue_failed4, wed_pattern, wed_failed1, wed_failed2, wed_failed3, wed_failed4, thu_pattern, thu_failed1, thu_failed2, thu_failed3, thu_failed4, fri_pattern, fri_failed1, fri_failed2, fri_failed3, fri_failed4, sat_pattern, sat_failed1, sat_failed2, sat_failed3, sat_failed4, hol_pattern, hol_failed1, hol_failed2, hol_failed3, hol_failed4, apply_start_date, apply_end_date, reg_id, reserve) FROM stdin;
1	1	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	2	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	6	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	3	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	5	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	7	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	12	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	4	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	8	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	10	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	9	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	11	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	13	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	15	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	14	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	16	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	17	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	20	1	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	21	1	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	18	1	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	2	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
1	19	1	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	20000101	99991231	admin	\N
\.


--
-- TOC entry 2448 (class 0 OID 16446)
-- Dependencies: 203
-- Data for Name: sysdiagrams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sysdiagrams (name, principal_id, diagram_id, version, definition) FROM stdin;
\.


--
-- TOC entry 2449 (class 0 OID 16452)
-- Dependencies: 204
-- Data for Name: t_charge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_charge (i_id, f_id, apply_id, charge_id, base, pattern, pattern_unit, time1, time2, time3, time4, partition_unit, occupy, charge, reg_id, reserve) FROM stdin;
7	1	1	2	0	1	0	0	0	1048560	0	00000000000000000	1	27780	admin	\N
7	1	1	3	0	1	0	0	0	0	65535	00000000000000000	1	39090	admin	\N
7	2	1	1	0	2	0	0	3072	0	0	00000000000000000	1	4120	admin	\N
7	2	1	2	0	2	0	0	16773120	0	0	00000000000000000	1	10290	admin	\N
7	2	1	3	0	2	0	0	0	1048560	0	00000000000000000	1	16460	admin	\N
7	2	1	4	0	2	0	0	0	0	65535	00000000000000000	1	23660	admin	\N
7	2	1	5	1	2	0	0	16773120	1048560	0	00000000000000000	1	25720	admin	\N
7	2	1	6	1	2	0	0	0	1048560	65535	00000000000000000	1	38060	admin	\N
7	2	1	7	1	2	0	0	16773120	1048560	65535	00000000000000000	1	46290	admin	\N
11	1	1	1	0	1	0	0	61440	0	0	00000000000000000	1	130	admin	\N
11	1	1	2	0	1	0	0	983040	0	0	00000000000000000	1	130	admin	\N
11	1	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	130	admin	\N
11	1	1	4	0	1	0	0	0	15	0	00000000000000000	1	130	admin	\N
11	1	1	5	0	1	0	0	0	240	0	00000000000000000	1	130	admin	\N
11	1	1	6	0	1	0	0	0	3840	0	00000000000000000	1	130	admin	\N
11	1	1	7	0	1	0	0	0	61440	0	00000000000000000	1	130	admin	\N
11	1	1	8	0	1	0	0	0	983040	0	00000000000000000	1	130	admin	\N
11	1	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	200	admin	\N
11	1	1	10	0	1	0	0	0	0	15	00000000000000000	1	200	admin	\N
11	1	1	11	0	1	0	0	0	0	240	00000000000000000	1	200	admin	\N
11	1	1	12	0	1	0	0	0	0	3840	00000000000000000	1	200	admin	\N
11	1	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	1500	admin	\N
11	2	1	1	0	1	0	0	61440	0	0	00000000000000000	1	130	admin	\N
11	2	1	2	0	1	0	0	983040	0	0	00000000000000000	1	130	admin	\N
11	2	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	130	admin	\N
11	2	1	4	0	1	0	0	0	15	0	00000000000000000	1	130	admin	\N
11	2	1	5	0	1	0	0	0	240	0	00000000000000000	1	130	admin	\N
11	2	1	6	0	1	0	0	0	3840	0	00000000000000000	1	130	admin	\N
11	2	1	7	0	1	0	0	0	61440	0	00000000000000000	1	130	admin	\N
11	2	1	8	0	1	0	0	0	983040	0	00000000000000000	1	130	admin	\N
11	2	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	200	admin	\N
11	2	1	10	0	1	0	0	0	0	15	00000000000000000	1	200	admin	\N
11	2	1	11	0	1	0	0	0	0	240	00000000000000000	1	200	admin	\N
11	2	1	12	0	1	0	0	0	0	3840	00000000000000000	1	200	admin	\N
11	2	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	1500	admin	\N
11	3	1	1	0	1	0	0	61440	0	0	00000000000000000	1	130	admin	\N
11	3	1	2	0	1	0	0	983040	0	0	00000000000000000	1	130	admin	\N
11	3	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	130	admin	\N
11	3	1	4	0	1	0	0	0	15	0	00000000000000000	1	130	admin	\N
11	3	1	5	0	1	0	0	0	240	0	00000000000000000	1	130	admin	\N
11	3	1	6	0	1	0	0	0	3840	0	00000000000000000	1	130	admin	\N
11	3	1	7	0	1	0	0	0	61440	0	00000000000000000	1	130	admin	\N
11	3	1	8	0	1	0	0	0	983040	0	00000000000000000	1	130	admin	\N
11	3	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	200	admin	\N
11	3	1	10	0	1	0	0	0	0	15	00000000000000000	1	200	admin	\N
11	3	1	11	0	1	0	0	0	0	240	00000000000000000	1	200	admin	\N
11	3	1	12	0	1	0	0	0	0	3840	00000000000000000	1	200	admin	\N
11	3	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	1500	admin	\N
11	4	1	1	0	1	0	0	61440	0	0	00000000000000000	1	130	admin	\N
11	4	1	2	0	1	0	0	983040	0	0	00000000000000000	1	130	admin	\N
11	4	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	130	admin	\N
11	4	1	4	0	1	0	0	0	15	0	00000000000000000	1	130	admin	\N
11	4	1	5	0	1	0	0	0	240	0	00000000000000000	1	130	admin	\N
11	4	1	6	0	1	0	0	0	3840	0	00000000000000000	1	130	admin	\N
11	4	1	7	0	1	0	0	0	61440	0	00000000000000000	1	130	admin	\N
11	4	1	8	0	1	0	0	0	983040	0	00000000000000000	1	130	admin	\N
11	4	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	200	admin	\N
11	4	1	10	0	1	0	0	0	0	15	00000000000000000	1	200	admin	\N
11	4	1	11	0	1	0	0	0	0	240	00000000000000000	1	200	admin	\N
11	4	1	12	0	1	0	0	0	0	3840	00000000000000000	1	200	admin	\N
11	4	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	1500	admin	\N
11	5	1	1	0	1	0	0	61440	0	0	00000000000000000	1	130	admin	\N
11	5	1	2	0	1	0	0	983040	0	0	00000000000000000	1	130	admin	\N
11	5	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	130	admin	\N
11	5	1	4	0	1	0	0	0	15	0	00000000000000000	1	130	admin	\N
11	5	1	5	0	1	0	0	0	240	0	00000000000000000	1	130	admin	\N
11	5	1	6	0	1	0	0	0	3840	0	00000000000000000	1	130	admin	\N
11	5	1	7	0	1	0	0	0	61440	0	00000000000000000	1	130	admin	\N
11	5	1	8	0	1	0	0	0	983040	0	00000000000000000	1	130	admin	\N
11	5	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	200	admin	\N
11	5	1	10	0	1	0	0	0	0	15	00000000000000000	1	200	admin	\N
11	5	1	11	0	1	0	0	0	0	240	00000000000000000	1	200	admin	\N
11	5	1	12	0	1	0	0	0	0	3840	00000000000000000	1	200	admin	\N
11	5	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	1500	admin	\N
11	6	1	1	0	1	0	0	61440	0	0	00000000000000000	1	250	admin	\N
11	6	1	2	0	1	0	0	983040	0	0	00000000000000000	1	250	admin	\N
11	6	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	250	admin	\N
11	6	1	4	0	1	0	0	0	15	0	00000000000000000	1	250	admin	\N
11	6	1	5	0	1	0	0	0	240	0	00000000000000000	1	250	admin	\N
11	6	1	6	0	1	0	0	0	3840	0	00000000000000000	1	250	admin	\N
11	6	1	7	0	1	0	0	0	61440	0	00000000000000000	1	250	admin	\N
11	6	1	8	0	1	0	0	0	983040	0	00000000000000000	1	250	admin	\N
11	6	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	500	admin	\N
11	6	1	10	0	1	0	0	0	0	15	00000000000000000	1	500	admin	\N
11	6	1	11	0	1	0	0	0	0	240	00000000000000000	1	500	admin	\N
11	6	1	12	0	1	0	0	0	0	3840	00000000000000000	1	500	admin	\N
11	6	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	3000	admin	\N
11	7	1	1	0	1	0	0	61440	0	0	00000000000000000	1	250	admin	\N
11	7	1	2	0	1	0	0	983040	0	0	00000000000000000	1	250	admin	\N
11	7	1	3	0	1	0	0	15728640	0	0	00000000000000000	1	250	admin	\N
11	7	1	4	0	1	0	0	0	15	0	00000000000000000	1	250	admin	\N
11	7	1	5	0	1	0	0	0	240	0	00000000000000000	1	250	admin	\N
11	7	1	6	0	1	0	0	0	3840	0	00000000000000000	1	250	admin	\N
11	7	1	7	0	1	0	0	0	61440	0	00000000000000000	1	250	admin	\N
11	7	1	8	0	1	0	0	0	983040	0	00000000000000000	1	250	admin	\N
11	7	1	9	0	1	0	0	0	15728640	0	00000000000000000	1	500	admin	\N
11	7	1	10	0	1	0	0	0	0	15	00000000000000000	1	500	admin	\N
11	7	1	11	0	1	0	0	0	0	240	00000000000000000	1	500	admin	\N
11	7	1	12	0	1	0	0	0	0	3840	00000000000000000	1	500	admin	\N
11	7	1	13	1	1	0	0	16773120	16777215	4095	00000000000000000	1	3000	admin	\N
7	1	1	1	0	1	0	0	16773120	0	0	00000000000000000	1	17490	admin	\N
\.


--
-- TOC entry 2450 (class 0 OID 16455)
-- Dependencies: 205
-- Data for Name: t_charge_apply; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_charge_apply (i_id, f_id, apply_id, apply_start_date, apply_end_date, reg_id, reserve) FROM stdin;
7	1	1	20160901	99991231	admin	\N
7	1	2	20160901	99991231	admin	\N
7	1	3	20160901	99991231	admin	\N
7	2	1	20161101	99991231	admin	\N
11	1	1	20000101	99991231	admin	\N
11	2	1	20000101	99991231	admin	\N
11	3	1	20000101	99991231	admin	\N
11	4	1	20000101	99991231	admin	\N
11	5	1	20000101	99991231	admin	\N
11	6	1	20000101	99991231	admin	\N
11	7	1	20000101	99991231	admin	\N
\.


--
-- TOC entry 2451 (class 0 OID 16458)
-- Dependencies: 206
-- Data for Name: t_charge_plus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_charge_plus (i_id, f_id, apply_id, plus_kind, plus_type, st_term, ed_term, attribute, week, st_price, ed_price, charge_plus, reg_id, reserve) FROM stdin;
7	1	1	3	0	\N	\N	0	\N	0	0	200	admin	\N
11	1	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	1	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
11	2	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	2	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
11	3	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	3	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
11	4	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	4	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
11	5	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	5	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
11	6	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	6	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
11	7	1	1	0	\N	\N	2	\N	0	0	100	admin	\N
11	7	1	3	0	\N	\N	0	\N	0	0	900	admin	\N
\.


--
-- TOC entry 2452 (class 0 OID 16461)
-- Dependencies: 207
-- Data for Name: t_closed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_closed (i_id, f_id, closed_month, closed, reg_id, reserve) FROM stdin;
1	1	201711	00300010000001000000103000010000	across	\N
1	2	201711	00300010000001000000103000010000	across	\N
1	3	201711	00300010000001000000103000010000	across	\N
1	4	201711	00300010000001000000103000010000	across	\N
1	5	201711	00300010000001000000103000010000	across	\N
1	6	201711	00300010000001000000103000010000	across	\N
1	7	201711	00300010000001000000103000010000	across	\N
1	14	201711	00300010000001000000103000010000	across	\N
1	15	201711	00300010000001000000103000010000	across	\N
1	16	201711	00300010000001000000103000010000	across	\N
1	17	201711	00300010000001000000103000010000	across	\N
1	18	201711	00300010000001000000103000010000	across	\N
1	8	201711	00300010000001000000103000010000	across	\N
1	9	201711	00300010000001000000103000010000	across	\N
1	10	201711	00300010000001000000103000010000	across	\N
1	11	201711	00300010000001000000103000010000	across	\N
1	12	201711	00300010000001000000103000010000	across	\N
1	13	201711	00300010000001000000103000010000	across	\N
1	19	201711	00300010000001000000103000010000	across	\N
1	20	201711	00300010000001000000103000010000	across	\N
1	21	201711	00300010000001000000103000010000	across	\N
1	1	201802	00000100000310000001000000100000	across	\N
1	2	201802	00000100000310000001000000100000	across	\N
1	3	201802	00000100000310000001000000100000	across	\N
1	4	201802	00000100000310000001000000100000	across	\N
1	5	201802	00000100000310000001000000100000	across	\N
1	6	201802	00000100000310000001000000100000	across	\N
1	7	201802	00000100000310000001000000100000	across	\N
1	14	201802	00000100000310000001000000100000	across	\N
1	15	201802	00000100000310000001000000100000	across	\N
1	16	201802	00000100000310000001000000100000	across	\N
1	17	201802	00000100000310000001000000100000	across	\N
1	18	201802	00000100000310000001000000100000	across	\N
1	8	201802	00000100000310000001000000100000	across	\N
1	9	201802	00000100000310000001000000100000	across	\N
1	10	201802	00000100000310000001000000100000	across	\N
1	11	201802	00000100000310000001000000100000	across	\N
1	12	201802	00000100000310000001000000100000	across	\N
1	13	201802	00000100000310000001000000100000	across	\N
1	19	201802	00000100000310000001000000100000	across	\N
1	20	201802	00000100000310000001000000100000	across	\N
1	21	201802	00000100000310000001000000100000	across	\N
1	1	201712	00001000000100000010000001002220	across	\N
1	2	201712	00001000000100000010000001002220	across	\N
1	3	201712	00001000000100000010000001002220	across	\N
1	4	201712	00001000000100000010000001002220	across	\N
1	5	201712	00001000000100000010000001002220	across	\N
1	6	201712	00001000000100000010000001002220	across	\N
1	7	201712	00001000000100000010000001002220	across	\N
1	14	201712	00001000000100000010000001002220	across	\N
1	15	201712	00001000000100000010000001002220	across	\N
1	16	201712	00001000000100000010000001002220	across	\N
1	17	201712	00001000000100000010000001002220	across	\N
1	18	201712	00001000000100000010000001002220	across	\N
1	8	201712	00001000000100000010000001002220	across	\N
1	9	201712	00001000000100000010000001002220	across	\N
1	10	201712	00001000000100000010000001002220	across	\N
1	11	201712	00001000000100000010000001002220	across	\N
1	12	201712	00001000000100000010000001002220	across	\N
1	13	201712	00001000000100000010000001002220	across	\N
1	19	201712	00001000000100000010000001002220	across	\N
1	20	201712	00001000000100000010000001002220	across	\N
1	21	201712	00001000000100000010000001002220	across	\N
1	1	201804	00100000010000001000000100000300	across	\N
1	2	201804	00100000010000001000000100000300	across	\N
1	3	201804	00100000010000001000000100000300	across	\N
1	4	201804	00100000010000001000000100000300	across	\N
1	5	201804	00100000010000001000000100000300	across	\N
1	6	201804	00100000010000001000000100000300	across	\N
1	7	201804	00100000010000001000000100000300	across	\N
1	14	201804	00100000010000001000000100000300	across	\N
1	15	201804	00100000010000001000000100000300	across	\N
1	16	201804	00100000010000001000000100000300	across	\N
1	17	201804	00100000010000001000000100000300	across	\N
1	18	201804	00100000010000001000000100000300	across	\N
1	8	201804	00100000010000001000000100000300	across	\N
1	9	201804	00100000010000001000000100000300	across	\N
1	10	201804	00100000010000001000000100000300	across	\N
1	11	201804	00100000010000001000000100000300	across	\N
1	12	201804	00100000010000001000000100000300	across	\N
1	13	201804	00100000010000001000000100000300	across	\N
1	19	201804	00100000010000001000000100000300	across	\N
1	20	201804	00100000010000001000000100000300	across	\N
1	21	201804	00100000010000001000000100000300	across	\N
1	1	201807	00100000010000031000000100000010	across	\N
1	2	201807	00100000010000031000000100000010	across	\N
1	3	201807	00100000010000031000000100000010	across	\N
1	4	201807	00100000010000031000000100000010	across	\N
1	5	201807	00100000010000031000000100000010	across	\N
1	6	201807	00100000010000031000000100000010	across	\N
1	7	201807	00100000010000031000000100000010	across	\N
1	14	201807	00100000010000031000000100000010	across	\N
1	15	201807	00100000010000031000000100000010	across	\N
1	16	201807	00100000010000031000000100000010	across	\N
1	17	201807	00100000010000031000000100000010	across	\N
1	18	201807	00100000010000031000000100000010	across	\N
1	8	201807	00100000010000031000000100000010	across	\N
1	1	201803	00000100000010000001300000100000	across	\N
1	2	201803	00000100000010000001300000100000	across	\N
1	3	201803	00000100000010000001300000100000	across	\N
1	4	201803	00000100000010000001300000100000	across	\N
1	5	201803	00000100000010000001300000100000	across	\N
1	6	201803	00000100000010000001300000100000	across	\N
1	7	201803	00000100000010000001300000100000	across	\N
1	14	201803	00000100000010000001300000100000	across	\N
1	15	201803	00000100000010000001300000100000	across	\N
1	16	201803	00000100000010000001300000100000	across	\N
1	17	201803	00000100000010000001300000100000	across	\N
1	18	201803	00000100000010000001300000100000	across	\N
1	8	201803	00000100000010000001300000100000	across	\N
1	9	201803	00000100000010000001300000100000	across	\N
1	10	201803	00000100000010000001300000100000	across	\N
1	11	201803	00000100000010000001300000100000	across	\N
1	12	201803	00000100000010000001300000100000	across	\N
1	13	201803	00000100000010000001300000100000	across	\N
1	19	201803	00000100000010000001300000100000	across	\N
1	20	201803	00000100000010000001300000100000	across	\N
1	21	201803	00000100000010000001300000100000	across	\N
1	1	201805	10333001000000100000010000001000	across	\N
1	2	201805	10333001000000100000010000001000	across	\N
1	3	201805	10333001000000100000010000001000	across	\N
1	4	201805	10333001000000100000010000001000	across	\N
1	5	201805	10333001000000100000010000001000	across	\N
1	6	201805	10333001000000100000010000001000	across	\N
1	7	201805	10333001000000100000010000001000	across	\N
1	14	201805	10333001000000100000010000001000	across	\N
1	15	201805	10333001000000100000010000001000	across	\N
1	16	201805	10333001000000100000010000001000	across	\N
1	17	201805	10333001000000100000010000001000	across	\N
1	18	201805	10333001000000100000010000001000	across	\N
1	8	201805	10333001000000100000010000001000	across	\N
1	9	201805	10333001000000100000010000001000	across	\N
1	10	201805	10333001000000100000010000001000	across	\N
1	11	201805	10333001000000100000010000001000	across	\N
1	12	201805	10333001000000100000010000001000	across	\N
1	13	201805	10333001000000100000010000001000	across	\N
1	19	201805	10333001000000100000010000001000	across	\N
1	20	201805	10333001000000100000010000001000	across	\N
1	21	201805	10333001000000100000010000001000	across	\N
1	9	201807	00100000010000031000000100000010	across	\N
1	10	201807	00100000010000031000000100000010	across	\N
1	11	201807	00100000010000031000000100000010	across	\N
1	12	201807	00100000010000031000000100000010	across	\N
1	13	201807	00100000010000031000000100000010	across	\N
1	19	201807	00100000010000031000000100000010	across	\N
1	20	201807	00100000010000031000000100000010	across	\N
1	21	201807	00100000010000031000000100000010	across	\N
1	1	201808	00000010003001000000100000010000	across	\N
1	2	201808	00000010003001000000100000010000	across	\N
1	3	201808	00000010003001000000100000010000	across	\N
1	4	201808	00000010003001000000100000010000	across	\N
1	5	201808	00000010003001000000100000010000	across	\N
1	6	201808	00000010003001000000100000010000	across	\N
1	7	201808	00000010003001000000100000010000	across	\N
1	14	201808	00000010003001000000100000010000	across	\N
1	15	201808	00000010003001000000100000010000	across	\N
1	16	201808	00000010003001000000100000010000	across	\N
1	17	201808	00000010003001000000100000010000	across	\N
1	18	201808	00000010003001000000100000010000	across	\N
1	8	201808	00000010003001000000100000010000	across	\N
1	9	201808	00000010003001000000100000010000	across	\N
1	10	201808	00000010003001000000100000010000	across	\N
1	11	201808	00000010003001000000100000010000	across	\N
1	12	201808	00000010003001000000100000010000	across	\N
1	13	201808	00000010003001000000100000010000	across	\N
1	19	201808	00000010003001000000100000010000	across	\N
1	20	201808	00000010003001000000100000010000	across	\N
1	21	201808	00000010003001000000100000010000	across	\N
1	1	201809	00010000001000003100000310000000	across	\N
1	2	201809	00010000001000003100000310000000	across	\N
1	3	201809	00010000001000003100000310000000	across	\N
1	4	201809	00010000001000003100000310000000	across	\N
1	5	201809	00010000001000003100000310000000	across	\N
1	6	201809	00010000001000003100000310000000	across	\N
1	7	201809	00010000001000003100000310000000	across	\N
1	14	201809	00010000001000003100000310000000	across	\N
1	15	201809	00010000001000003100000310000000	across	\N
1	16	201809	00010000001000003100000310000000	across	\N
1	17	201809	00010000001000003100000310000000	across	\N
1	18	201809	00010000001000003100000310000000	across	\N
1	8	201809	00010000001000003100000310000000	across	\N
1	9	201809	00010000001000003100000310000000	across	\N
1	10	201809	00010000001000003100000310000000	across	\N
1	11	201809	00010000001000003100000310000000	across	\N
1	12	201809	00010000001000003100000310000000	across	\N
1	13	201809	00010000001000003100000310000000	across	\N
1	19	201809	00010000001000003100000310000000	across	\N
1	20	201809	00010000001000003100000310000000	across	\N
1	21	201809	00010000001000003100000310000000	across	\N
1	1	201810	01000003100000010000001000000100	across	\N
1	2	201810	01000003100000010000001000000100	across	\N
1	3	201810	01000003100000010000001000000100	across	\N
1	4	201810	01000003100000010000001000000100	across	\N
1	5	201810	01000003100000010000001000000100	across	\N
1	6	201810	01000003100000010000001000000100	across	\N
1	7	201810	01000003100000010000001000000100	across	\N
1	14	201810	01000003100000010000001000000100	across	\N
1	15	201810	01000003100000010000001000000100	across	\N
1	16	201810	01000003100000010000001000000100	across	\N
1	17	201810	01000003100000010000001000000100	across	\N
1	18	201810	01000003100000010000001000000100	across	\N
1	8	201810	01000003100000010000001000000100	across	\N
1	9	201810	01000003100000010000001000000100	across	\N
1	10	201810	01000003100000010000001000000100	across	\N
1	11	201810	01000003100000010000001000000100	across	\N
1	12	201810	01000003100000010000001000000100	across	\N
1	13	201810	01000003100000010000001000000100	across	\N
1	19	201810	01000003100000010000001000000100	across	\N
1	20	201810	01000003100000010000001000000100	across	\N
1	21	201810	01000003100000010000001000000100	across	\N
1	1	201811	00300100000010000001003000100000	across	\N
1	2	201811	00300100000010000001003000100000	across	\N
1	3	201811	00300100000010000001003000100000	across	\N
1	4	201811	00300100000010000001003000100000	across	\N
1	5	201811	00300100000010000001003000100000	across	\N
1	6	201811	00300100000010000001003000100000	across	\N
1	7	201811	00300100000010000001003000100000	across	\N
1	14	201811	00300100000010000001003000100000	across	\N
1	15	201811	00300100000010000001003000100000	across	\N
1	16	201811	00300100000010000001003000100000	across	\N
1	17	201811	00300100000010000001003000100000	across	\N
1	18	201811	00300100000010000001003000100000	across	\N
1	8	201811	00300100000010000001003000100000	across	\N
1	9	201811	00300100000010000001003000100000	across	\N
1	10	201811	00300100000010000001003000100000	across	\N
1	11	201811	00300100000010000001003000100000	across	\N
1	12	201811	00300100000010000001003000100000	across	\N
1	13	201811	00300100000010000001003000100000	across	\N
1	19	201811	00300100000010000001003000100000	across	\N
1	20	201811	00300100000010000001003000100000	across	\N
1	21	201811	00300100000010000001003000100000	across	\N
1	1	201801	22200003100000010000001000000100	across	\N
1	2	201801	22200003100000010000001000000100	across	\N
1	3	201801	22200003100000010000001000000100	across	\N
1	4	201801	22200003100000010000001000000100	across	\N
1	5	201801	22200003100000010000001000000100	across	\N
1	6	201801	22200003100000010000001000000100	across	\N
1	7	201801	22200003100000010000001000000100	across	\N
1	14	201801	22200003100000010000001000000100	across	\N
1	15	201801	22200003100000010000001000000100	across	\N
1	16	201801	22200003100000010000001000000100	across	\N
1	17	201801	22200003100000010000001000000100	across	\N
1	18	201801	22200003100000010000001000000100	across	\N
1	8	201801	22200003100000010000001000000100	across	\N
1	9	201801	22200003100000010000001000000100	across	\N
1	10	201801	22200003100000010000001000000100	across	\N
1	11	201801	22200003100000010000001000000100	across	\N
1	12	201801	22200003100000010000001000000100	across	\N
1	13	201801	22200003100000010000001000000100	across	\N
1	19	201801	22200003100000010000001000000100	across	\N
1	20	201801	22200003100000010000001000000100	across	\N
1	21	201801	22200003100000010000001000000100	across	\N
1	1	201812	00010000001000000100000310002220	across	\N
1	2	201812	00010000001000000100000310002220	across	\N
1	3	201812	00010000001000000100000310002220	across	\N
1	4	201812	00010000001000000100000310002220	across	\N
1	5	201812	00010000001000000100000310002220	across	\N
1	6	201812	00010000001000000100000310002220	across	\N
1	7	201812	00010000001000000100000310002220	across	\N
1	14	201812	00010000001000000100000310002220	across	\N
1	15	201812	00010000001000000100000310002220	across	\N
1	16	201812	00010000001000000100000310002220	across	\N
1	17	201812	00010000001000000100000310002220	across	\N
1	18	201812	00010000001000000100000310002220	across	\N
1	8	201812	00010000001000000100000310002220	across	\N
1	9	201812	00010000001000000100000310002220	across	\N
1	10	201812	00010000001000000100000310002220	across	\N
1	11	201812	00010000001000000100000310002220	across	\N
1	12	201812	00010000001000000100000310002220	across	\N
1	13	201812	00010000001000000100000310002220	across	\N
1	19	201812	00010000001000000100000310002220	across	\N
1	20	201812	00010000001000000100000310002220	across	\N
1	21	201812	00010000001000000100000310002220	across	\N
1	1	201901	22200001000003100000010000001000	across	\N
1	2	201901	22200001000003100000010000001000	across	\N
1	3	201901	22200001000003100000010000001000	across	\N
1	4	201901	22200001000003100000010000001000	across	\N
1	5	201901	22200001000003100000010000001000	across	\N
1	6	201901	22200001000003100000010000001000	across	\N
1	7	201901	22200001000003100000010000001000	across	\N
1	14	201901	22200001000003100000010000001000	across	\N
1	15	201901	22200001000003100000010000001000	across	\N
1	16	201901	22200001000003100000010000001000	across	\N
1	17	201901	22200001000003100000010000001000	across	\N
1	18	201901	22200001000003100000010000001000	across	\N
1	8	201901	22200001000003100000010000001000	across	\N
1	9	201901	22200001000003100000010000001000	across	\N
1	10	201901	22200001000003100000010000001000	across	\N
1	11	201901	22200001000003100000010000001000	across	\N
1	12	201901	22200001000003100000010000001000	across	\N
1	13	201901	22200001000003100000010000001000	across	\N
1	19	201901	22200001000003100000010000001000	across	\N
1	20	201901	22200001000003100000010000001000	across	\N
1	21	201901	22200001000003100000010000001000	across	\N
1	1	201902	00001000003100000010000001000000	across	\N
1	2	201902	00001000003100000010000001000000	across	\N
1	3	201902	00001000003100000010000001000000	across	\N
1	4	201902	00001000003100000010000001000000	across	\N
1	5	201902	00001000003100000010000001000000	across	\N
1	6	201902	00001000003100000010000001000000	across	\N
1	7	201902	00001000003100000010000001000000	across	\N
1	14	201902	00001000003100000010000001000000	across	\N
1	15	201902	00001000003100000010000001000000	across	\N
1	16	201902	00001000003100000010000001000000	across	\N
1	17	201902	00001000003100000010000001000000	across	\N
1	18	201902	00001000003100000010000001000000	across	\N
1	8	201902	00001000003100000010000001000000	across	\N
1	9	201902	00001000003100000010000001000000	across	\N
1	10	201902	00001000003100000010000001000000	across	\N
1	11	201902	00001000003100000010000001000000	across	\N
1	12	201902	00001000003100000010000001000000	across	\N
1	13	201902	00001000003100000010000001000000	across	\N
1	19	201902	00001000003100000010000001000000	across	\N
1	20	201902	00001000003100000010000001000000	across	\N
1	21	201902	00001000003100000010000001000000	across	\N
1	1	201903	00001000000100000010300001000000	across	\N
1	2	201903	00001000000100000010300001000000	across	\N
1	3	201903	00001000000100000010300001000000	across	\N
1	4	201903	00001000000100000010300001000000	across	\N
1	5	201903	00001000000100000010300001000000	across	\N
1	6	201903	00001000000100000010300001000000	across	\N
1	7	201903	00001000000100000010300001000000	across	\N
1	14	201903	00001000000100000010300001000000	across	\N
1	15	201903	00001000000100000010300001000000	across	\N
1	16	201903	00001000000100000010300001000000	across	\N
1	17	201903	00001000000100000010300001000000	across	\N
1	18	201903	00001000000100000010300001000000	across	\N
1	8	201903	00001000000100000010300001000000	across	\N
1	9	201903	00001000000100000010300001000000	across	\N
1	10	201903	00001000000100000010300001000000	across	\N
1	11	201903	00001000000100000010300001000000	across	\N
1	12	201903	00001000000100000010300001000000	across	\N
1	13	201903	00001000000100000010300001000000	across	\N
1	19	201903	00001000000100000010300001000000	across	\N
1	20	201903	00001000000100000010300001000000	across	\N
1	21	201903	00001000000100000010300001000000	across	\N
\.


--
-- TOC entry 2453 (class 0 OID 16464)
-- Dependencies: 208
-- Data for Name: t_failed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_failed (i_id, f_id, failed_date, failed1, failed2, failed3, failed4, reg_id, reserve) FROM stdin;
\.


--
-- TOC entry 2454 (class 0 OID 16467)
-- Dependencies: 209
-- Data for Name: t_holiday; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_holiday (holiday_year, holiday_month_01, holiday_month_02, holiday_month_03, holiday_month_04, holiday_month_05, holiday_month_06, holiday_month_07, holiday_month_08, holiday_month_09, holiday_month_10, holiday_month_11, holiday_month_12) FROM stdin;
\.


--
-- TOC entry 2455 (class 0 OID 16470)
-- Dependencies: 210
-- Data for Name: t_license_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_license_id (year, id) FROM stdin;
2016	2
2017	22
\.


--
-- TOC entry 2456 (class 0 OID 16474)
-- Dependencies: 211
-- Data for Name: t_manage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_manage (m_id, password, reg_id, reg_date, upd_date, sei_kanji, mei_kanji, sei_kana, mei_kana, email, authority, note, level, i_id, reserve) FROM stdin;
admin	adminadmin	admin	20080101000000	\N	システム	管理者	システム	カンリシャ	\N	3	\N	1	0	\N
across	across	admin	20170322180532	\N	アクロス	管理者	アクロス	カンリシャ		3		2	0	\N
\.


--
-- TOC entry 2457 (class 0 OID 16477)
-- Dependencies: 212
-- Data for Name: t_receipt_charge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_charge (c_id, rp_id, history, career, institute_base_charge, institute_charge, institute_charge_rate, institute_charge_vary, institute_charge_claim, reduction_articles, refund, reserve, is_reason_canceled) FROM stdin;
1759420247	2016000001	0	1	177298	177298	100	0	177298	\N	0	\N	\N
1706644787	2016000003	0	1	170690	170690	100	0	170690	\N	0	\N	\N
1703922559	2017000166	0	1	252950	252950	100	0	252950	\N	0	\N	\N
1759261357	2017000173	1	1	57600	57600	100	0	57600	\N	0	\N	\N
1759261357	2017000173	2	2	0	0	100	0	0	\N	0	\N	\N
1759261357	2017000173	4	1	0	0	100	0	0	\N	0	\N	\N
1760545558	2017000173	1	1	57600	57600	100	0	57600	\N	0	\N	\N
1760545558	2017000173	2	2	0	0	100	0	0	\N	0	\N	\N
1706665022	2017000173	0	1	57600	57600	100	0	57600	\N	0	\N	\N
1706440811	2017000178	0	1	420	420	100	0	420	\N	0	\N	\N
1764442396	2017000149	0	1	11840	11840	100	0	11840	\N	0	\N	\N
1710707802	2017000177	1	1	43200	43200	100	0	43200	\N	0	\N	\N
1710707802	2017000177	2	2	0	0	100	0	0	\N	0	\N	\N
1705528553	2017000177	1	1	43200	43200	100	0	43200	\N	0	\N	\N
1725932953	2017000177	1	1	43200	43200	100	0	43200	\N	0	\N	\N
1725932953	2017000177	0	2	43200	43200	110	4320	47520		0	\N	\N
1739402918	2017000176	1	1	420	420	100	0	420	\N	0	\N	\N
1788625415	2017000177	1	1	43200	43200	100	0	43200	\N	0	\N	\N
1788625415	2017000177	0	2	43200	43200	110	4320	47520		0	\N	\N
1718613751	2017000152	1	1	89500	89500	100	0	89500	\N	0	\N	\N
1718613751	2017000152	0	2	89500	89500	110	8950	98450		0	\N	\N
1712877111	2017000150	0	1	41090	41090	100	0	41090	\N	0	\N	\N
1778861648	2017000177	1	1	43200	43200	100	0	43200	\N	0	\N	\N
1778861648	2017000177	2	2	0	0	100	0	0	\N	0	\N	\N
1712488579	2017000177	0	1	43200	43200	100	0	43200	\N	0	\N	\N
1784457173	2017000175	1	1	420	420	100	0	420	\N	0	\N	\N
1784457173	2017000175	2	2	0	0	100	0	0	\N	0	\N	\N
1739402918	2017000176	2	2	420	420	110	42	462		0	\N	\N
1739402918	2017000176	3	3	0	0	100	0	0	\N	0	\N	\N
1705528553	2017000177	2	2	43200	43200	110	4320	47520		0	\N	\N
1705528553	2017000177	3	3	0	0	100	0	0	\N	0	\N	\N
1779790418	2017000174	1	1	47520	47520	100	0	47520	\N	0	\N	\N
1779790418	2017000174	2	2	0	0	100	0	0	\N	0	\N	\N
1717911883	2017000163	1	1	36910	36910	100	0	36910	\N	0	\N	\N
1717911883	2017000163	2	2	0	0	100	0	0	\N	0	\N	\N
1763251945	2017000179	1	1	19230	19230	100	0	19230	\N	0	\N	\N
1763251945	2017000179	2	2	0	0	100	0	0	\N	0	\N	\N
1719947220	2017000179	0	1	19230	19230	100	0	19230	\N	0	\N	\N
1764690170	2017000174	0	1	47520	47520	100	0	47520	\N	0	\N	\N
1771127684	2017000174	1	1	47520	47520	100	0	47520	\N	0	\N	\N
1771127684	2017000174	2	2	0	0	100	0	0	\N	0	\N	\N
\.


--
-- TOC entry 2458 (class 0 OID 16480)
-- Dependencies: 213
-- Data for Name: t_receipt_connect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_connect (c_id, rp_id, charge_career, reserve_career, reserve) FROM stdin;
1759420247	2016000001	1	1	\N
1706644787	2016000003	1	1	\N
1703922559	2017000166	1	1	\N
1759261357	2017000173	1	1	\N
1760545558	2017000173	1	1	\N
1706665022	2017000173	1	1	\N
1779790418	2017000174	1	1	\N
1706440811	2017000178	1	1	\N
1717911883	2017000163	1	1	\N
1764442396	2017000149	1	1	\N
1710707802	2017000177	1	1	\N
1784457173	2017000175	1	1	\N
1705528553	2017000177	1	1	\N
1725932953	2017000177	1	1	\N
1788625415	2017000177	1	1	\N
1739402918	2017000176	1	1	\N
1771127684	2017000174	1	1	\N
1778861648	2017000177	1	1	\N
1705528553	2017000177	2	0	\N
1725932953	2017000177	2	0	\N
1739402918	2017000176	2	0	\N
1788625415	2017000177	2	0	\N
1718613751	2017000152	1	1	\N
1718613751	2017000152	2	0	\N
1712877111	2017000150	1	1	\N
1712488579	2017000177	1	1	\N
1763251945	2017000179	1	1	\N
1719947220	2017000179	1	1	\N
1764690170	2017000174	1	1	\N
\.


--
-- TOC entry 2459 (class 0 OID 16483)
-- Dependencies: 214
-- Data for Name: t_receipt_fixtures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_fixtures (c_id, rp_id, amount_payment, reg_date, reg_id, method_date) FROM stdin;
18	2016000001	11320	20170324134738	across	201703241340
19	2016000003	11320	20170328150013	across	201703281500
20	2017000166	8230	20171211145634	admin	201712111450
25	2017000174	8230	20171213163937	admin	201712140000
26	2017000179	8230	20171214101152	admin	201712140000
\.


--
-- TOC entry 2461 (class 0 OID 16488)
-- Dependencies: 216
-- Data for Name: t_receipt_fixtures_charge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_fixtures_charge (c_id, fixtures, apply_id, quantity, number, charge) FROM stdin;
18	1	1	1	1	8230
18	15	1	1	1	3090
19	1	1	1	1	8230
19	2	1	1	1	3090
20	1	1	1	1	8230
25	1	1	1	1	8230
26	1	1	1	1	8230
\.


--
-- TOC entry 2462 (class 0 OID 16491)
-- Dependencies: 217
-- Data for Name: t_receipt_fixtures_note; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_fixtures_note (c_id, rp_id, payment_method, note) FROM stdin;
25        	2017000174	2	aaa\r\nbbb\r\nccc
26        	2017000179	1	
\.


--
-- TOC entry 2463 (class 0 OID 16497)
-- Dependencies: 218
-- Data for Name: t_receipt_note; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_note (c_id, rp_id, payment_method, note) FROM stdin;
1718613751	2017000152	1	
1712877111	2017000150	1	
1719947220	2017000179	1	
\.


--
-- TOC entry 2464 (class 0 OID 16503)
-- Dependencies: 219
-- Data for Name: t_receipt_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_payment (c_id, amount_payment, reserve) FROM stdin;
1759420247	177298	\N
1706644787	170690	\N
1703922559	252950	\N
1759261357	0	\N
1760545558	0	\N
1706665022	57600	\N
1706440811	420	\N
1764442396	11840	\N
1710707802	0	\N
1725932953	47520	\N
1788625415	47520	\N
1718613751	98450	\N
1712877111	41090	\N
1778861648	0	\N
1712488579	43200	\N
1784457173	0	\N
1739402918	0	\N
1705528553	0	\N
1779790418	0	\N
1717911883	0	\N
1763251945	0	\N
1719947220	19230	\N
1764690170	47520	\N
1771127684	0	\N
\.


--
-- TOC entry 2465 (class 0 OID 16506)
-- Dependencies: 220
-- Data for Name: t_receipt_reserve; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_receipt_reserve (c_id, rp_id, history, amount_payment, method_amount, method_date, reg_date, reg_id, reserve) FROM stdin;
1759420247	2016000001	0	177298	177298	20170324134000	20170324134448	across	\N
1706644787	2016000003	0	170690	170690	20170328145000	20170328145945	across	\N
1703922559	2017000166	0	252950	252950	20171211145000	20171211145614	admin	\N
1759261357	2017000173	1	57600	57600	20171211174000	20171211174333	admin	\N
1759261357	2017000173	2	0	-57600	20171211174000	20171211174755	admin	\N
1759261357	2017000173	4	0	0	20171211174000	20171211174817	admin	\N
1760545558	2017000173	1	57600	57600	20171211174000	20171211174847	admin	\N
1760545558	2017000173	2	0	-57600	20171211174000	20171211174858	admin	\N
1706665022	2017000173	0	57600	57600	20171211174000	20171211174912	admin	\N
1706440811	2017000178	0	420	420	20171212165000	20171212165254	admin	\N
1764442396	2017000149	0	11840	11840	20171213103000	20171213103335	admin	\N
1710707802	2017000177	1	43200	43200	20171213000000	20171213140332	admin	\N
1710707802	2017000177	2	0	-43200	20171213153000	20171213153032	admin	\N
1705528553	2017000177	1	43200	43200	20171213000000	20171213151632	admin	\N
1725932953	2017000177	1	43200	43200	20171213000000	20171213151807	admin	\N
1725932953	2017000177	0	47520	4320	20171213153000	20171213153754	admin	\N
1739402918	2017000176	1	420	420	20171214000000	20171213151951	admin	\N
1788625415	2017000177	1	43200	43200	20171213000000	20171213151926	admin	\N
1788625415	2017000177	0	47520	4320	20171213154000	20171213154317	admin	\N
1718613751	2017000152	1	89500	89500	20171213000000	20171213154544	admin	\N
1718613751	2017000152	0	98450	8950	20171213154000	20171213154650	admin	\N
1712877111	2017000150	0	41090	41090	20171213000000	20171213155016	admin	\N
1778861648	2017000177	1	43200	43200	20171214000000	20171213153522	admin	\N
1778861648	2017000177	2	0	-43200	20171213163000	20171213163425	admin	\N
1712488579	2017000177	0	43200	43200	20171213000000	20171213164311	admin	\N
1784457173	2017000175	1	420	420	20171216000000	20171213140543	admin	\N
1784457173	2017000175	2	0	-420	20171213164000	20171213164704	admin	\N
1739402918	2017000176	2	462	42	20171213153000	20171213154156	admin	\N
1739402918	2017000176	3	0	-462	20171213164000	20171213164719	admin	\N
1705528553	2017000177	2	47520	4320	20171213153000	20171213153715	admin	\N
1705528553	2017000177	3	0	-47520	20171213164000	20171213164726	admin	\N
1779790418	2017000174	1	47520	47520	20171212151000	20171212151913	admin	\N
1779790418	2017000174	2	0	-47520	20171213164000	20171213164733	admin	\N
1717911883	2017000163	1	36910	36910	20171213103000	20171213103325	admin	\N
1717911883	2017000163	2	0	-36910	20171213164000	20171213164746	admin	\N
1763251945	2017000179	1	19230	19230	20171214000000	20171214100734	admin	\N
1763251945	2017000179	2	0	-19230	20171214101000	20171214101031	admin	\N
1719947220	2017000179	0	19230	19230	20171214000000	20171214101127	admin	\N
1764690170	2017000174	0	47520	47520	20171214000000	20171214182815	admin	\N
1771127684	2017000174	1	47520	47520	20171213000000	20171213153051	admin	\N
1771127684	2017000174	2	0	-47520	20171214183000	20171214183409	admin	\N
\.


--
-- TOC entry 2466 (class 0 OID 16509)
-- Dependencies: 221
-- Data for Name: t_reserve_base; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_base (rb_id, rp_id, career, g_id, r_div, i_id, f_id, purpose, purpose_complement, usage_form, site_use, commercial, collect, charge, change_payment, reserve_start_date, reserve_end_date) FROM stdin;
96	2016000001	1	0         	0	1	1	1	\N	0	0	0	5000	159430	\N	20170324	20170324
97	2016000001	1	0         	0	1	2	0	\N	0	0	0	0	1750	\N	20170324	20170324
100	2016000002	1	0         	0	1	8	2	\N	0	0	0	0	13380	\N	20170324	20170324
101	2016000002	1	0         	0	1	9	0	\N	0	0	0	0	1750	\N	20170324	20170324
102	2016000002	1	0         	0	1	8	3	\N	0	0	0	0	3090	\N	20170324	20170324
103	2016000003	1	0         	0	1	1	2	\N	0	0	0	0	115200	\N	20170329	20170329
104	2016000003	1	0         	0	1	18	1	\N	0	0	0	0	7200	\N	20170329	20170329
105	2016000003	1	0         	0	1	19	1	\N	0	0	0	0	22460	\N	20170329	20170329
106	2016000003	1	0         	0	1	20	1	\N	0	0	0	0	10320	\N	20170329	20170329
107	2017000001	1	0         	0	1	1	3	\N	0	0	0	0	89500	\N	20170902	20170902
108	2017000001	1	0         	0	1	1	2	\N	0	0	0	0	57600	\N	20170902	20170902
115	2017000002	1	0         	0	1	2	0	\N	0	0	0	0	2170	\N	20170902	20170902
116	2017000002	1	0         	0	1	3	0	\N	0	0	0	0	5980	\N	20170902	20170902
117	2017000002	1	0         	0	1	4	0	\N	0	0	0	0	4650	\N	20170902	20170902
118	2017000002	1	0         	0	1	5	0	\N	0	0	0	0	3400	\N	20170902	20170902
119	2017000002	1	0         	0	1	13	0	\N	0	0	0	0	5980	\N	20170902	20170902
120	2017000002	1	0         	0	1	17	0	\N	0	0	0	0	11840	\N	20170902	20170902
121	2017000002	1	0         	0	1	1	3	\N	0	0	0	0	79210	\N	20170902	20170902
122	2017000002	1	0         	0	1	1	2	\N	0	0	0	0	67890	\N	20170902	20170902
131	2017000003	1	0         	0	1	8	3	\N	0	0	0	0	12350	\N	20170902	20170902
132	2017000003	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20170903	20170903
133	2017000003	1	0         	0	1	9	0	\N	0	0	0	0	2380	\N	20170903	20170903
134	2017000003	1	0         	0	1	8	3	\N	0	0	0	0	14410	\N	20170903	20170903
135	2017000003	1	0         	0	1	10	0	\N	0	0	0	0	4650	\N	20170903	20170903
136	2017000003	1	0         	0	1	11	0	\N	0	0	0	0	3400	\N	20170903	20170903
139	2017000005	1	0         	0	1	19	1	\N	0	0	0	0	27490	\N	20170902	20170903
140	2017000006	1	0         	0	1	1	3	\N	0	0	0	0	106980	\N	20170903	20170903
141	2017000004	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20170902	20170902
142	2017000007	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20170903	20170903
144	2017000008	1	0         	0	1	14	0	\N	0	0	0	0	1750	\N	20170903	20170903
145	2017000009	1	0         	0	1	8	2	\N	0	0	0	0	8230	\N	20170904	20170904
146	2017000010	1	0         	0	1	14	0	\N	0	0	0	0	2470	\N	20170904	20170904
147	2017000011	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20170906	20170906
148	2017000012	1	0         	0	1	18	3	\N	0	0	0	0	21600	\N	20170906	20170906
151	2017000013	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20170907	20170907
152	2017000014	1	0         	0	1	1	1	\N	0	0	0	1000	69950	\N	20171022	20171022
153	2017000014	1	0         	0	1	1	3	\N	0	0	0	0	95670	\N	20171021	20171022
154	2017000014	1	0         	0	1	2	0	\N	0	0	0	0	2280	\N	20171021	20171022
714	2017000052	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171108	20171108
732	2017000057	1	0         	0	1	18	1	\N	0	0	0	0	27720	\N	20171127	20171201
186	2017000021	1	0         	0	1	19	1	\N	0	0	0	0	5250	\N	20171104	20171104
733	2017000057	1	0         	0	1	18	3	\N	0	0	0	0	41040	\N	20171202	20171203
734	2017000057	1	0         	0	1	21	1	\N	0	0	0	0	9930	\N	20171127	20171201
735	2017000057	1	0         	0	1	21	3	\N	0	0	0	0	14700	\N	20171202	20171203
768	2017000070	1	0         	0	1	14	0	\N	0	0	0	0	2470	\N	20171214	20171214
777	2017000077	1	0         	0	1	8	3	\N	0	0	0	0	4120	\N	20171222	20171222
778	2017000077	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171223	20171223
779	2017000077	1	0         	0	1	9	0	\N	0	0	0	0	1140	\N	20171223	20171223
780	2017000077	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171223	20171223
781	2017000077	1	0         	0	1	13	0	\N	0	0	0	0	5670	\N	20171222	20171223
793	2017000089	1	0         	0	1	8	3	\N	0	0	0	0	6180	\N	20171117	20171117
816	2017000094	1	0         	0	1	1	3	\N	0	0	0	0	119360	\N	20171214	20171216
817	2017000094	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171216	20171216
818	2017000094	1	0         	0	1	2	0	\N	0	0	0	0	5900	\N	20171214	20171216
819	2017000094	1	0         	0	1	3	0	\N	0	0	0	0	16200	\N	20171214	20171216
820	2017000094	1	0         	0	1	4	0	\N	0	0	0	0	12620	\N	20171214	20171216
249	2017000040	1	0         	0	1	1	3	\N	0	0	0	0	39090	\N	20171115	20171115
821	2017000094	1	0         	0	1	5	0	\N	0	0	0	0	9280	\N	20171214	20171216
822	2017000094	1	0         	0	1	19	1	\N	0	0	0	0	48400	\N	20171214	20171216
838	2017000097	1	0         	0	1	8	3	\N	0	0	0	0	3090	\N	20171227	20171227
715	2017000053	1	0         	0	1	19	1	\N	0	0	0	0	9680	\N	20171109	20171109
257	2017000047	1	0         	0	1	1	3	\N	0	0	0	0	58630	\N	20171117	20171117
262	2017000049	1	0         	0	1	8	3	\N	0	0	0	0	10810	\N	20171117	20171117
263	2017000050	1	0         	0	1	9	0	\N	0	0	0	0	2790	\N	20171201	20171202
264	2017000050	1	0         	0	1	10	0	\N	0	0	0	0	5990	\N	20171201	20171202
265	2017000050	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171202	20171202
340	2017000066	1	0         	0	1	1	3	\N	0	0	0	0	151220	\N	20171210	20171210
341	2017000066	1	0         	0	1	1	2	\N	0	0	0	0	43200	\N	20171210	20171210
342	2017000066	1	0         	0	1	2	0	\N	0	0	0	0	2380	\N	20171210	20171210
343	2017000066	1	0         	0	1	3	0	\N	0	0	0	0	6500	\N	20171210	20171210
344	2017000066	1	0         	0	1	5	0	\N	0	0	0	0	3710	\N	20171210	20171210
345	2017000066	1	0         	0	1	13	0	\N	0	0	0	0	6500	\N	20171210	20171210
352	2017000068	1	0         	0	1	1	3	\N	0	0	0	0	204690	\N	20171214	20171216
353	2017000068	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171216	20171216
354	2017000068	1	0         	0	1	2	0	\N	0	0	0	0	5900	\N	20171214	20171216
355	2017000068	1	0         	0	1	3	0	\N	0	0	0	0	16200	\N	20171214	20171216
356	2017000068	1	0         	0	1	4	0	\N	0	0	0	0	12620	\N	20171214	20171216
357	2017000068	1	0         	0	1	5	0	\N	0	0	0	0	9280	\N	20171214	20171216
358	2017000068	1	0         	0	1	19	1	\N	0	0	0	0	48400	\N	20171214	20171216
769	2017000072	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171215	20171215
782	2017000078	1	0         	0	1	8	3	\N	0	0	0	0	1550	\N	20171224	20171224
783	2017000078	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171224	20171224
784	2017000078	1	0         	0	1	9	0	\N	0	0	0	0	1140	\N	20171224	20171224
789	2017000085	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171221	20171221
794	2017000090	1	0         	0	1	8	3	\N	0	0	0	0	38080	\N	20171127	20171201
795	2017000090	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171202	20171202
796	2017000090	1	0         	0	1	9	0	\N	0	0	0	0	2790	\N	20171201	20171202
797	2017000090	1	0         	0	1	10	0	\N	0	0	0	0	5990	\N	20171201	20171202
798	2017000090	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171202	20171202
799	2017000090	1	0         	0	1	13	0	\N	0	0	0	0	26390	\N	20171127	20171202
361	2017000071	1	0         	0	1	8	3	\N	0	0	0	0	53510	\N	20171215	20171217
362	2017000071	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171217	20171217
363	2017000071	1	0         	0	1	9	0	\N	0	0	0	0	2170	\N	20171217	20171217
364	2017000071	1	0         	0	1	10	0	\N	0	0	0	0	4650	\N	20171217	20171217
365	2017000071	1	0         	0	1	11	0	\N	0	0	0	0	3400	\N	20171217	20171217
367	2017000073	1	0         	0	1	1	3	\N	0	0	0	0	67890	\N	20171216	20171217
368	2017000073	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171217	20171217
369	2017000073	1	0         	0	1	2	0	\N	0	0	0	0	2280	\N	20171216	20171217
370	2017000073	1	0         	0	1	3	0	\N	0	0	0	0	6190	\N	20171216	20171217
371	2017000073	1	0         	0	1	4	0	\N	0	0	0	0	2900	\N	20171217	20171217
372	2017000073	1	0         	0	1	5	0	\N	0	0	0	0	3610	\N	20171216	20171217
373	2017000073	1	0         	0	1	13	0	\N	0	0	0	0	6190	\N	20171216	20171217
390	2017000080	1	0         	0	1	8	3	\N	0	0	0	0	4640	\N	20171227	20171227
391	2017000080	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20171227	20171227
392	2017000080	1	0         	0	1	10	0	\N	0	0	0	0	2480	\N	20171227	20171227
393	2017000080	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171228	20171228
753	2017000065	1	0         	0	1	1	3	\N	0	0	0	0	104960	\N	20171208	20171209
754	2017000065	1	0         	0	1	1	1	\N	0	0	0	1000	128580	\N	20171209	20171209
755	2017000065	1	0         	0	1	2	0	\N	0	0	0	0	4760	\N	20171208	20171209
756	2017000065	1	0         	0	1	3	0	\N	0	0	0	0	13000	\N	20171208	20171209
757	2017000065	1	0         	0	1	4	0	\N	0	0	0	0	10140	\N	20171208	20171209
758	2017000065	1	0         	0	1	5	0	\N	0	0	0	0	7420	\N	20171208	20171209
759	2017000065	1	0         	0	1	13	0	\N	0	0	0	0	13000	\N	20171208	20171209
760	2017000065	1	0         	0	1	14	0	\N	0	0	0	0	13000	\N	20171208	20171209
770	2017000074	1	0         	0	1	15	0	\N	0	0	0	0	11840	\N	20171216	20171216
785	2017000079	1	0         	0	1	8	2	\N	0	0	0	0	8230	\N	20171225	20171225
800	2017000091	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171202	20171202
801	2017000091	1	0         	0	1	1	3	\N	0	0	0	0	78190	\N	20171130	20171201
802	2017000091	1	0         	0	1	2	0	\N	0	0	0	0	3310	\N	20171201	20171202
803	2017000091	1	0         	0	1	3	0	\N	0	0	0	0	9180	\N	20171201	20171202
804	2017000091	1	0         	0	1	4	0	\N	0	0	0	0	7130	\N	20171201	20171202
805	2017000091	1	0         	0	1	14	0	\N	0	0	0	0	11650	\N	20171130	20171202
828	2017000096	1	0         	0	1	1	3	\N	0	0	0	0	40130	\N	20171216	20171217
829	2017000096	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171217	20171217
830	2017000096	1	0         	0	1	2	0	\N	0	0	0	0	2280	\N	20171216	20171217
831	2017000096	1	0         	0	1	3	0	\N	0	0	0	0	6190	\N	20171202	20171203
832	2017000096	1	0         	0	1	5	0	\N	0	0	0	0	3610	\N	20171216	20171217
833	2017000096	1	0         	0	1	13	0	\N	0	0	0	0	6190	\N	20171216	20171217
834	2017000096	1	0         	0	1	4	0	\N	0	0	0	0	2900	\N	20171217	20171217
723	2017000055	1	0         	0	1	1	3	\N	0	0	0	0	191380	\N	20171124	20171126
724	2017000055	1	0         	0	1	8	3	\N	0	0	0	0	41180	\N	20171124	20171126
725	2017000055	1	0         	0	1	21	1	\N	0	0	0	0	4900	\N	20171125	20171126
726	2017000055	1	0         	0	1	14	0	\N	0	0	0	0	3720	\N	20171126	20171126
727	2017000055	1	0         	0	1	15	0	\N	0	0	0	0	7520	\N	20171126	20171126
728	2017000055	1	0         	0	1	16	0	\N	0	0	0	0	7520	\N	20171126	20171126
729	2017000055	1	0         	0	1	19	1	\N	0	0	0	0	46850	\N	20171124	20171126
771	2017000075	1	0         	0	1	19	1	\N	0	0	0	0	5250	\N	20171217	20171217
786	2017000081	1	0         	0	1	14	0	\N	0	0	0	0	2470	\N	20171206	20171206
835	2017000097	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20171227	20171227
836	2017000097	1	0         	0	1	10	0	\N	0	0	0	0	2480	\N	20171227	20171227
837	2017000097	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171227	20171227
508	2017000048	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171202	20171202
509	2017000048	1	0         	0	1	8	3	\N	0	0	0	0	70000	\N	20171127	20171201
510	2017000048	1	0         	0	1	13	0	\N	0	0	0	0	23610	\N	20171127	20171202
511	2017000048	1	0         	0	1	9	0	\N	0	0	0	0	2790	\N	20171201	20171202
512	2017000048	1	0         	0	1	10	0	\N	0	0	0	0	5990	\N	20171201	20171202
513	2017000048	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171202	20171202
516	2017000058	1	0         	0	1	1	3	\N	0	0	0	0	132690	\N	20171130	20171201
517	2017000058	1	0         	0	1	14	0	\N	0	0	0	0	11650	\N	20171130	20171202
518	2017000058	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171202	20171202
519	2017000058	1	0         	0	1	2	0	\N	0	0	0	0	3310	\N	20171201	20171202
520	2017000058	1	0         	0	1	3	0	\N	0	0	0	0	9180	\N	20171201	20171202
521	2017000058	1	0         	0	1	4	0	\N	0	0	0	0	7130	\N	20171201	20171202
526	2017000083	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20171209	20171209
527	2017000083	1	0         	0	1	8	3	\N	0	0	0	0	95740	\N	20171204	20171209
528	2017000083	1	0         	0	1	9	0	\N	0	0	0	0	1050	\N	20171207	20171209
529	2017000083	1	0         	0	1	10	0	\N	0	0	0	0	5590	\N	20171207	20171209
597	2017000015	1	0         	0	1	8	3	\N	0	0	0	0	4120	\N	20171101	20171101
601	2017000016	1	0         	0	1	8	3	\N	0	0	0	0	3090	\N	20171102	20171102
602	2017000016	1	0         	0	1	8	2	\N	0	0	0	0	14930	\N	20171102	20171102
603	2017000016	1	0         	0	1	9	0	\N	0	0	0	0	2170	\N	20171102	20171102
604	2017000017	1	0         	0	1	1	3	\N	0	0	0	0	38070	\N	20171102	20171103
605	2017000017	1	0         	0	1	1	2	\N	0	0	0	0	27780	\N	20171103	20171103
606	2017000017	1	0         	0	1	2	0	\N	0	0	0	0	1140	\N	20171103	20171103
607	2017000017	1	0         	0	1	3	0	\N	0	0	0	0	3200	\N	20171103	20171103
608	2017000017	1	0         	0	1	4	0	\N	0	0	0	0	2480	\N	20171103	20171103
609	2017000017	1	0         	0	1	5	0	\N	0	0	0	0	1860	\N	20171103	20171103
610	2017000017	1	0         	0	1	13	0	\N	0	0	0	0	3200	\N	20171103	20171103
611	2017000017	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171103	20171103
612	2017000017	1	0         	0	1	15	0	\N	0	0	0	0	6490	\N	20171103	20171103
613	2017000017	1	0         	0	1	16	0	\N	0	0	0	0	6490	\N	20171103	20171103
614	2017000017	1	0         	0	1	19	1	\N	0	0	0	0	9680	\N	20171103	20171103
615	2017000018	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171102	20171102
639	2017000025	1	0         	0	1	14	0	\N	0	0	0	0	1750	\N	20171109	20171109
657	2017000029	1	0         	0	1	8	3	\N	0	0	0	0	31400	\N	20171110	20171112
658	2017000029	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171112	20171112
659	2017000029	1	0         	0	1	9	0	\N	0	0	0	0	2170	\N	20171112	20171112
660	2017000029	1	0         	0	1	10	0	\N	0	0	0	0	4650	\N	20171112	20171112
661	2017000030	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171110	20171110
662	2017000031	1	0         	0	1	19	2	\N	0	0	0	0	9680	\N	20171110	20171110
663	2017000031	1	0         	0	1	20	2	\N	0	0	0	0	20640	\N	20171110	20171110
664	2017000032	1	0         	0	1	17	0	\N	0	0	0	0	2160	\N	20171120	20171120
665	2017000032	1	0         	0	1	18	3	\N	0	0	0	0	21600	\N	20171120	20171120
666	2017000032	1	0         	0	1	19	1	\N	0	0	0	0	1550	\N	20171120	20171120
670	2017000036	1	0         	0	1	1	3	\N	0	0	0	0	14410	\N	20171113	20171113
671	2017000036	1	0         	0	1	1	2	\N	0	0	0	0	27780	\N	20171113	20171113
672	2017000036	1	0         	0	1	2	0	\N	0	0	0	0	1140	\N	20171113	20171113
673	2017000036	1	0         	0	1	3	0	\N	0	0	0	0	3200	\N	20171113	20171113
674	2017000036	1	0         	0	1	4	0	\N	0	0	0	0	2480	\N	20171113	20171113
675	2017000036	1	0         	0	1	5	0	\N	0	0	0	0	1860	\N	20171113	20171113
676	2017000036	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171113	20171113
677	2017000036	1	0         	0	1	15	0	\N	0	0	0	0	6490	\N	20171113	20171113
678	2017000037	1	0         	0	1	8	3	\N	0	0	0	0	3090	\N	20171113	20171113
679	2017000037	1	0         	0	1	8	1	\N	0	0	0	1000	9260	\N	20171113	20171113
680	2017000037	1	0         	0	1	10	0	\N	0	0	0	0	2480	\N	20171113	20171113
681	2017000037	1	0         	0	1	17	0	\N	0	0	0	0	2160	\N	20171113	20171113
682	2017000038	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171113	20171113
767	2017000069	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171214	20171214
772	2017000076	1	0         	0	1	1	3	\N	0	0	0	0	20580	\N	20171222	20171222
773	2017000076	1	0         	0	1	1	1	\N	0	0	0	3500	79200	\N	20171222	20171222
774	2017000076	1	0         	0	1	2	0	\N	0	0	0	0	1650	\N	20171222	20171222
775	2017000076	1	0         	0	1	3	0	\N	0	0	0	0	4430	\N	20171222	20171222
776	2017000076	1	0         	0	1	4	0	\N	0	0	0	0	3510	\N	20171222	20171222
787	2017000082	1	0         	0	1	14	0	\N	0	0	0	0	2470	\N	20171227	20171227
792	2017000088	1	0         	0	1	1	3	\N	0	0	0	0	33960	\N	20171117	20171117
864	2017000019	1	0         	0	1	1	3	\N	0	0	0	0	53510	\N	20171104	20171104
865	2017000019	1	0         	0	1	1	1	\N	0	0	0	5500	116230	\N	20171104	20171104
866	2017000019	1	0         	0	1	13	0	\N	0	0	0	0	5980	\N	20171104	20171104
867	2017000019	1	0         	0	1	2	0	\N	0	0	0	0	2170	\N	20171104	20171104
868	2017000019	1	0         	0	1	3	0	\N	0	0	0	0	5980	\N	20171104	20171104
869	2017000019	1	0         	0	1	4	0	\N	0	0	0	0	4650	\N	20171104	20171104
870	2017000019	1	0         	0	1	5	0	\N	0	0	0	0	3400	\N	20171104	20171104
871	2017000019	1	0         	0	1	17	0	\N	0	0	0	0	11840	\N	20171104	20171104
874	2017000099	1	0         	0	1	8	3	\N	0	0	0	0	4120	\N	20171102	20171102
875	2017000100	1	0         	0	1	8	3	\N	0	0	0	0	4640	\N	20171104	20171104
876	2017000100	1	0         	0	1	8	2	\N	0	0	0	0	22640	\N	20171104	20171104
877	2017000100	1	0         	0	1	9	0	\N	0	0	0	0	2170	\N	20171104	20171104
878	2017000098	1	0         	0	1	19	1	\N	0	0	0	0	5250	\N	20171104	20171104
892	2017000102	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171117	20171117
893	2017000101	1	0         	0	1	14	0	\N	0	0	0	0	1750	\N	20171110	20171110
894	2017000103	1	0         	0	1	1	1	\N	0	0	0	5500	284920	\N	20171104	20171104
895	2017000104	1	0         	0	1	8	2	\N	0	0	0	0	30870	\N	20171104	20171104
896	2017000092	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20171209	20171209
897	2017000092	1	0         	0	1	8	3	\N	0	0	0	0	56610	\N	20171204	20171209
898	2017000092	1	0         	0	1	9	0	\N	0	0	0	0	1050	\N	20171207	20171209
899	2017000092	1	0         	0	1	10	0	\N	0	0	0	0	5590	\N	20171207	20171209
908	2017000093	1	0         	0	1	1	2	\N	0	0	0	0	43200	\N	20171210	20171210
909	2017000093	1	0         	0	1	1	3	\N	0	0	0	0	77160	\N	20171210	20171210
910	2017000093	1	0         	0	1	2	0	\N	0	0	0	0	2380	\N	20171210	20171210
911	2017000093	1	0         	0	1	3	0	\N	0	0	0	0	6500	\N	20171210	20171210
912	2017000093	1	0         	0	1	5	0	\N	0	0	0	0	3710	\N	20171210	20171210
913	2017000093	1	0         	0	1	13	0	\N	0	0	0	0	6500	\N	20171210	20171210
914	2017000086	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171211	20171211
915	2017000084	1	0         	0	1	14	0	\N	0	0	0	0	1750	\N	20171214	20171214
916	2017000095	1	0         	0	1	8	3	\N	0	0	0	0	29850	\N	20171215	20171217
917	2017000095	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171217	20171217
918	2017000095	1	0         	0	1	9	0	\N	0	0	0	0	2170	\N	20171217	20171217
919	2017000095	1	0         	0	1	10	0	\N	0	0	0	0	4650	\N	20171217	20171217
920	2017000095	1	0         	0	1	11	0	\N	0	0	0	0	3400	\N	20171217	20171217
921	2017000061	1	0         	0	1	1	1	\N	0	0	0	7500	284920	\N	20171105	20171105
922	2017000106	1	0         	0	1	8	2	\N	0	0	0	0	30870	\N	20171105	20171105
923	2017000107	1	0         	0	1	13	0	\N	0	0	0	0	5980	\N	20171105	20171105
924	2017000108	1	0         	0	1	17	0	\N	0	0	0	0	11840	\N	20171105	20171105
925	2017000022	1	0         	0	1	8	1	\N	0	0	0	2000	19550	\N	20171106	20171106
926	2017000022	1	0         	0	1	10	0	\N	0	0	0	0	1340	\N	20171106	20171106
928	2017000109	1	0         	0	1	13	0	\N	0	0	0	0	3720	\N	20171108	20171108
929	2017000110	1	0         	0	1	19	1	\N	0	0	0	0	9680	\N	20171109	20171109
941	2017000111	1	0         	0	1	1	3	\N	0	0	0	0	42180	\N	20171110	20171110
948	2017000117	1	0         	0	1	8	3	\N	0	0	0	0	4120	\N	20171110	20171110
951	2017000033	1	0         	0	1	19	1	\N	0	0	0	0	5250	\N	20171112	20171112
952	2017000120	1	0         	0	1	1	1	\N	0	0	0	7500	284920	\N	20171105	20171105
954	2017000122	1	0         	0	1	19	1	\N	0	0	0	0	5250	\N	20171217	20171217
960	2017000024	1	0         	0	1	1	2	\N	0	0	0	0	58630	\N	20171108	20171108
961	2017000024	1	0         	0	1	2	0	\N	0	0	0	0	1350	\N	20171108	20171108
962	2017000024	1	0         	0	1	3	0	\N	0	0	0	0	3720	\N	20171108	20171108
963	2017000024	1	0         	0	1	13	0	\N	0	0	0	0	3720	\N	20171108	20171108
964	2017000023	1	0         	0	1	19	2	\N	0	0	0	0	11230	\N	20171108	20171108
965	2017000124	1	0         	0	1	20	1	\N	0	0	0	0	10320	\N	20171108	20171108
979	2017000123	1	0         	0	1	8	3	\N	0	0	0	0	4120	\N	20171222	20171222
980	2017000123	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171223	20171223
981	2017000123	1	0         	0	1	9	0	\N	0	0	0	0	1140	\N	20171223	20171223
982	2017000123	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171223	20171223
983	2017000123	1	0         	0	1	13	0	\N	0	0	0	0	5670	\N	20171222	20171223
991	2017000112	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171111	20171111
992	2017000113	1	0         	0	1	15	0	\N	0	0	0	0	6490	\N	20171111	20171111
993	2017000114	1	0         	0	1	16	0	\N	0	0	0	0	6490	\N	20171111	20171111
994	2017000115	1	0         	0	1	17	0	\N	0	0	0	0	6490	\N	20171111	20171111
995	2017000116	1	0         	0	1	19	1	\N	0	0	0	0	9680	\N	20171111	20171111
996	2017000118	1	0         	0	1	8	3	\N	0	0	0	0	18530	\N	20171111	20171111
997	2017000027	1	0         	0	1	1	2	\N	0	0	0	0	89500	\N	20171111	20171111
998	2017000119	1	0         	0	1	8	2	\N	0	0	0	0	30870	\N	20171112	20171112
999	2017000121	1	0         	0	1	19	1	\N	0	0	0	0	5250	\N	20171112	20171112
1001	2017000062	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171112	20171112
1002	2017000125	1	0         	0	1	1	2	\N	0	0	0	0	51430	\N	20171113	20171113
1003	2017000126	1	0         	0	1	8	2	\N	0	0	0	0	10810	\N	20171113	20171113
1004	2017000127	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171113	20171113
1005	2017000128	1	0         	0	1	15	0	\N	0	0	0	0	6490	\N	20171113	20171113
1006	2017000129	1	0         	0	1	17	0	\N	0	0	0	0	2160	\N	20171113	20171113
1007	2017000130	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171113	20171113
1008	2017000060	1	0         	0	1	8	2	\N	0	0	0	0	8230	\N	20171115	20171115
1009	2017000043	1	0         	0	1	19	2	\N	0	0	0	0	11230	\N	20171115	20171115
1010	2017000041	1	0         	0	1	8	2	\N	0	0	0	0	10810	\N	20171115	20171115
1011	2017000042	1	0         	0	1	14	0	\N	0	0	0	0	2470	\N	20171115	20171115
1012	2017000087	1	0         	0	1	1	3	\N	0	0	0	0	23660	\N	20171115	20171115
1023	2017000132	1	0         	0	1	1	3	\N	0	0	0	0	77160	\N	20171210	20171210
1024	2017000132	1	0         	0	1	1	2	\N	0	0	0	0	43200	\N	20171210	20171210
1025	2017000132	1	0         	0	1	2	0	\N	0	0	0	0	2380	\N	20171210	20171210
1026	2017000132	1	0         	0	1	3	0	\N	0	0	0	0	6500	\N	20171210	20171210
1027	2017000132	1	0         	0	1	5	0	\N	0	0	0	0	3710	\N	20171210	20171210
1028	2017000132	1	0         	0	1	13	0	\N	0	0	0	0	6500	\N	20171210	20171210
1029	2017000133	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171211	20171211
1030	2017000134	1	0         	0	1	1	3	\N	0	0	0	0	119360	\N	20171214	20171216
1031	2017000134	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171216	20171216
1032	2017000134	1	0         	0	1	2	0	\N	0	0	0	0	5900	\N	20171214	20171216
1033	2017000134	1	0         	0	1	3	0	\N	0	0	0	0	16200	\N	20171214	20171216
1034	2017000134	1	0         	0	1	5	0	\N	0	0	0	0	9280	\N	20171214	20171216
1035	2017000134	1	0         	0	1	19	1	\N	0	0	0	0	48400	\N	20171214	20171216
1042	2017000135	1	0         	0	1	1	3	\N	0	0	0	0	40130	\N	20171216	20171217
1043	2017000135	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171217	20171217
1044	2017000135	1	0         	0	1	13	0	\N	0	0	0	0	6190	\N	20171216	20171217
1045	2017000135	1	0         	0	1	2	0	\N	0	0	0	0	2280	\N	20171216	20171217
1046	2017000135	1	0         	0	1	3	0	\N	0	0	0	0	6190	\N	20171216	20171217
1047	2017000135	1	0         	0	1	4	0	\N	0	0	0	0	2900	\N	20171217	20171217
1048	2017000135	1	0         	0	1	5	0	\N	0	0	0	0	3610	\N	20171216	20171217
1049	2017000046	1	0         	0	1	19	3	\N	0	0	0	0	37170	\N	20171116	20171117
1050	2017000045	1	0         	0	1	14	0	\N	0	0	0	0	1030	\N	20171116	20171116
1051	2017000044	1	0         	0	1	8	1	\N	0	0	0	1300	31910	\N	20171116	20171116
1052	2017000136	1	0         	0	1	1	3	\N	0	0	0	0	33960	\N	20171117	20171117
1054	2017000137	1	0         	0	1	8	3	\N	0	0	0	0	6180	\N	20171117	20171117
1056	2017000051	1	0         	0	1	1	1	\N	0	0	0	900	409380	\N	20171118	20171119
1057	2017000051	1	0         	0	1	2	0	\N	0	0	0	0	4550	\N	20171118	20171119
1058	2017000051	1	0         	0	1	3	0	\N	0	0	0	0	12480	\N	20171118	20171119
1059	2017000051	1	0         	0	1	4	0	\N	0	0	0	0	9720	\N	20171118	20171119
1060	2017000051	1	0         	0	1	5	0	\N	0	0	0	0	7110	\N	20171118	20171119
1061	2017000051	1	0         	0	1	9	0	\N	0	0	0	0	4550	\N	20171118	20171119
1062	2017000051	1	0         	0	1	10	0	\N	0	0	0	0	9720	\N	20171118	20171119
1063	2017000051	1	0         	0	1	11	0	\N	0	0	0	0	7110	\N	20171118	20171119
1064	2017000051	1	0         	0	1	13	0	\N	0	0	0	0	12480	\N	20171118	20171119
1065	2017000139	1	0         	0	1	8	3	\N	0	0	0	0	38610	\N	20171118	20171119
1066	2017000140	1	0         	0	1	14	0	\N	0	0	0	0	12480	\N	20171118	20171119
1067	2017000141	1	0         	0	1	15	0	\N	0	0	0	0	24710	\N	20171118	20171119
1068	2017000142	1	0         	0	1	16	0	\N	0	0	0	0	24710	\N	20171118	20171119
1069	2017000143	1	0         	0	1	17	0	\N	0	0	0	0	24710	\N	20171118	20171119
1070	2017000144	1	0         	0	1	19	1	\N	0	0	0	0	37170	\N	20171118	20171119
1071	2017000145	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171117	20171117
1073	2017000138	1	0         	0	1	15	0	\N	0	0	0	0	6490	\N	20171117	20171117
1076	2017000146	1	0         	0	1	19	3	\N	0	0	0	0	19360	\N	20171120	20171120
1077	2017000026	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20171120	20171120
1078	2017000028	1	0         	0	1	8	3	\N	0	0	0	0	15440	\N	20171120	20171122
1079	2017000147	1	0         	0	1	17	0	\N	0	0	0	0	2160	\N	20171120	20171120
1081	2017000034	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171122	20171122
1082	2017000035	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171122	20171122
1083	2017000148	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171122	20171122
1084	2017000039	1	0         	0	1	1	1	\N	0	0	0	6500	284920	\N	20171123	20171123
1085	2017000039	1	0         	0	1	13	0	\N	0	0	0	0	5980	\N	20171123	20171123
1086	2017000039	1	0         	0	1	2	0	\N	0	0	0	0	2170	\N	20171123	20171123
1087	2017000039	1	0         	0	1	3	0	\N	0	0	0	0	5980	\N	20171123	20171123
1088	2017000039	1	0         	0	1	4	0	\N	0	0	0	0	4650	\N	20171123	20171123
1089	2017000039	1	0         	0	1	5	0	\N	0	0	0	0	3400	\N	20171123	20171123
1090	2017000149	1	0         	0	1	17	0	\N	0	0	0	0	11840	\N	20171123	20171123
1091	2017000150	1	0         	0	1	8	2	\N	0	0	0	0	30870	\N	20171123	20171123
1092	2017000150	1	0         	0	1	9	0	\N	0	0	0	0	2170	\N	20171123	20171123
1093	2017000150	1	0         	0	1	10	0	\N	0	0	0	0	4650	\N	20171123	20171123
1094	2017000150	1	0         	0	1	11	0	\N	0	0	0	0	3400	\N	20171123	20171123
1106	2017000056	1	0         	0	1	8	2	\N	0	0	0	0	12360	\N	20171127	20171127
1107	2017000056	1	0         	0	1	10	0	\N	0	0	0	0	2900	\N	20171127	20171127
1112	2017000154	1	0         	0	1	8	3	\N	0	0	0	0	33960	\N	20171129	20171201
1113	2017000154	1	0         	0	1	13	0	\N	0	0	0	0	17940	\N	20171129	20171201
1114	2017000154	1	0         	0	1	9	0	\N	0	0	0	0	1650	\N	20171201	20171201
1115	2017000154	1	0         	0	1	10	0	\N	0	0	0	0	3510	\N	20171201	20171201
1116	2017000155	1	0         	0	1	8	3	\N	0	0	0	0	4120	\N	20171127	20171127
1117	2017000155	1	0         	0	1	13	0	\N	0	0	0	0	2470	\N	20171127	20171127
1118	2017000156	1	0         	0	1	8	2	\N	0	0	0	0	17490	\N	20171202	20171202
1119	2017000156	1	0         	0	1	9	0	\N	0	0	0	0	1140	\N	20171202	20171202
1120	2017000156	1	0         	0	1	10	0	\N	0	0	0	0	2480	\N	20171202	20171202
1121	2017000156	1	0         	0	1	11	0	\N	0	0	0	0	1860	\N	20171202	20171202
1122	2017000156	1	0         	0	1	13	0	\N	0	0	0	0	3200	\N	20171202	20171202
1123	2017000157	1	0         	0	1	18	3	\N	0	0	0	0	83160	\N	20171127	20171201
1124	2017000158	1	0         	0	1	18	3	\N	0	0	0	0	41040	\N	20171202	20171203
1127	2017000159	1	0         	0	1	1	3	\N	0	0	0	0	78190	\N	20171130	20171201
1128	2017000159	1	0         	0	1	2	0	\N	0	0	0	0	2170	\N	20171201	20171201
1129	2017000159	1	0         	0	1	3	0	\N	0	0	0	0	5980	\N	20171201	20171201
1130	2017000159	1	0         	0	1	4	0	\N	0	0	0	0	4650	\N	20171201	20171201
1131	2017000160	1	0         	0	1	14	0	\N	0	0	0	0	11650	\N	20171130	20171202
1132	2017000151	1	0         	0	1	1	3	\N	0	0	0	0	137870	\N	20171124	20171125
1133	2017000151	1	0         	0	1	8	3	\N	0	0	0	0	29850	\N	20171124	20171125
1134	2017000151	1	0         	0	1	19	1	\N	0	0	0	0	35620	\N	20171124	20171125
1135	2017000152	1	0         	0	1	1	2	\N	0	0	0	0	89500	\N	20171126	20171126
1136	2017000153	1	0         	0	1	8	3	\N	0	0	0	0	11330	\N	20171126	20171126
1137	2017000153	1	0         	0	1	14	0	\N	0	0	0	0	3720	\N	20171126	20171126
1138	2017000153	1	0         	0	1	15	0	\N	0	0	0	0	7520	\N	20171126	20171126
1139	2017000153	1	0         	0	1	16	0	\N	0	0	0	0	7520	\N	20171126	20171126
1140	2017000153	1	0         	0	1	17	0	\N	0	0	0	0	7520	\N	20171126	20171126
1141	2017000153	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171126	20171126
1142	2017000153	1	0         	0	1	21	1	\N	0	0	0	0	2580	\N	20171126	20171126
1143	2017000059	1	0         	0	1	14	0	\N	0	0	0	0	1750	\N	20171130	20171130
1149	2017000161	1	0         	0	1	8	2	\N	0	0	0	0	12350	\N	20171202	20171202
1150	2017000162	1	0         	0	1	14	0	\N	0	0	0	0	3200	\N	20171203	20171203
1151	2017000063	1	0         	0	1	18	1	\N	0	0	0	0	41400	\N	20171204	20171210
1160	2017000164	1	0         	0	1	8	2	\N	0	0	0	0	19550	\N	20171209	20171209
1161	2017000164	1	0         	0	1	9	0	\N	0	0	0	0	1350	\N	20171209	20171209
1162	2017000164	1	0         	0	1	10	0	\N	0	0	0	0	2900	\N	20171209	20171209
1163	2017000105	1	0         	0	1	1	3	\N	0	0	0	0	58650	\N	20171208	20171208
1164	2017000105	1	0         	0	1	13	0	\N	0	0	0	0	6500	\N	20171208	20171208
1165	2017000105	1	0         	0	1	2	0	\N	0	0	0	0	2380	\N	20171208	20171208
1166	2017000105	1	0         	0	1	3	0	\N	0	0	0	0	6500	\N	20171208	20171208
1167	2017000105	1	0         	0	1	4	0	\N	0	0	0	0	5070	\N	20171208	20171208
1168	2017000105	1	0         	0	1	5	0	\N	0	0	0	0	3710	\N	20171208	20171208
1169	2017000165	1	0         	0	1	14	0	\N	0	0	0	0	13000	\N	20171208	20171209
1176	2017000167	1	0         	0	1	1	2	\N	0	0	0	0	0	\N	20171128	20171130
1177	2017000064	1	0         	0	1	14	3	\N	0	0	0	0	9600	\N	20171207	20171207
1178	2017000168	1	0         	0	1	19	1	\N	0	0	0	0	7410	\N	20171220	20171220
1180	2017000169	1	0         	0	1	19	1	\N	0	0	0	0	11230	\N	20171221	20171221
1182	2017000171	1	0         	0	1	1	2	\N	0	0	0	0	79210	\N	20171203	20171203
1183	2017000171	1	0         	0	1	2	0	\N	0	0	0	0	1140	\N	20171203	20171203
1184	2017000171	1	0         	0	1	3	0	\N	0	0	0	0	3200	\N	20171203	20171203
1185	2017000171	1	0         	0	1	4	0	\N	0	0	0	0	2480	\N	20171203	20171203
1195	2017000054	1	0         	0	1	8	2	\N	0	0	0	0	15430	\N	20171203	20171203
1196	2017000054	1	0         	0	1	9	0	\N	0	0	0	0	1860	\N	20171202	20171203
1197	2017000054	1	0         	0	1	10	0	\N	0	0	0	0	4020	\N	20171202	20171203
1198	2017000054	1	0         	0	1	11	0	\N	0	0	0	0	2990	\N	20171202	20171203
1199	2017000054	1	0         	0	1	13	0	\N	0	0	0	0	2680	\N	20171203	20171203
1200	2017000054	1	0         	0	1	8	3	\N	0	0	0	0	7200	\N	20171202	20171202
1201	2017000054	1	0         	0	1	14	1	\N	0	0	0	0	5150	\N	20171202	20171203
1206	2017000131	1	0         	0	1	8	3	\N	0	0	0	0	43740	\N	20171204	20171209
1207	2017000131	1	0         	0	1	9	0	\N	0	0	0	0	1050	\N	20171207	20171209
1208	2017000131	1	0         	0	1	10	0	\N	0	0	0	0	5170	\N	20171207	20171209
1209	2017000131	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20171209	20171209
1218	2017000172	1	0         	0	1	1	2	\N	0	0	0	0	0	\N	20171202	20171202
1219	2017000172	1	0         	0	1	14	1	\N	0	0	0	0	0	\N	20171202	20171202
1222	2017000170	1	0         	0	1	14	1	\N	0	0	0	0	1750	\N	20171228	20171228
1225	2017000173	1	0         	0	1	1	2	\N	0	0	0	0	57600	\N	20171202	20171202
1227	2017000175	1	0         	0	1	6	0	\N	0	0	0	0	420	\N	20171201	20171201
1228	2017000176	1	0         	0	1	12	0	\N	0	0	0	0	420	\N	20171203	20171203
1229	2017000163	1	0         	0	1	1	3	\N	0	0	0	0	25720	\N	20171204	20171204
1230	2017000163	1	0         	0	1	2	0	\N	0	0	0	0	930	\N	20171204	20171204
1231	2017000163	1	0         	0	1	3	0	\N	0	0	0	0	2680	\N	20171204	20171204
1232	2017000163	1	0         	0	1	5	0	\N	0	0	0	0	1550	\N	20171204	20171204
1233	2017000163	1	0         	0	1	13	0	\N	0	0	0	0	2680	\N	20171204	20171204
1234	2017000166	1	0         	0	1	1	1	\N	0	0	0	1000	111090	\N	20171209	20171209
1235	2017000166	1	0         	0	1	2	0	\N	0	0	0	0	3920	\N	20171208	20171209
1236	2017000166	1	0         	0	1	3	0	\N	0	0	0	0	10920	\N	20171208	20171209
1237	2017000166	1	0         	0	1	4	0	\N	0	0	0	0	8460	\N	20171208	20171209
1238	2017000166	1	0         	0	1	5	0	\N	0	0	0	0	6180	\N	20171208	20171209
1239	2017000166	1	0         	0	1	13	0	\N	0	0	0	0	10920	\N	20171208	20171209
1240	2017000166	1	0         	0	1	14	1	\N	0	0	0	0	10920	\N	20171208	20171209
1241	2017000166	1	0         	0	1	1	3	\N	0	0	0	0	90540	\N	20171208	20171209
1242	2017000174	1	0         	0	1	1	2	\N	0	0	0	0	43200	\N	20171202	20171202
1243	2017000177	1	0         	0	1	1	2	\N	0	0	0	0	43200	\N	20171203	20171203
1246	2017000178	1	0         	0	1	12	0	\N	0	0	0	0	420	\N	20171202	20171202
1251	2017000183	1	0         	0	1	6	0	\N	0	0	0	0	420	\N	20171201	20171201
1256	2017000184	1	0         	0	1	14	1	\N	0	0	0	0	1750	\N	20171202	20171202
1257	2017000180	1	0         	0	1	8	2	\N	0	0	0	0	6180	\N	20180208	20180208
1259	2017000185	1	0         	0	1	16	1	\N	0	0	0	0	4940	\N	20171202	20171202
1260	2017000179	1	0         	0	1	1	2	\N	0	0	0	0	17490	\N	20180202	20180202
\.


--
-- TOC entry 2468 (class 0 OID 16517)
-- Dependencies: 223
-- Data for Name: t_reserve_charge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_charge (rp_id, institute_base_charge, institute_charge, institute_charge_rate, institute_charge_vary, institute_charge_claim, reduction, reduction_manage, reduction_articles, reserve, outsider_charge) FROM stdin;
2016000001	161180	161180	100	0	161180	0	0	\N	\N	16118
2016000002	18220	18220	100	0	18220	0	0	\N	\N	1822
2016000003	155180	155180	100	0	155180	0	0	\N	\N	15510
2017000001	147100	147100	100	0	147100	0	0	\N	\N	0
2017000002	181120	181120	100	0	181120	0	0	\N	\N	0
2017000003	54680	54680	100	0	54680	0	0	\N	\N	0
2017000005	27490	27490	100	0	27490	0	0	\N	\N	0
2017000006	106980	106980	100	0	106980	0	0	\N	\N	0
2017000004	3200	3200	100	0	3200	0	0	\N	\N	0
2017000007	1030	1030	100	0	1030	0	0	\N	\N	0
2017000008	1750	1750	100	0	1750	0	0	\N	\N	0
2017000009	8230	8230	100	0	8230	0	0	\N	\N	820
2017000010	2470	2470	100	0	2470	0	0	\N	\N	0
2017000011	3200	3200	100	0	3200	0	0	\N	\N	320
2017000012	21600	21600	100	0	21600	0	0	\N	\N	2160
2017000013	3200	3200	100	0	3200	0	0	\N	\N	0
2017000014	167900	167900	100	0	167900	0	0	\N	\N	16790
2017000094	226160	226160	100	0	226160	0	0	\N	\N	0
2017000096	140510	140510	100	0	140510	0	0	\N	\N	14050
2017000021	5250	5250	100	0	5250	0	0	\N	\N	0
2017000040	39090	39090	100	0	39090	0	0	\N	\N	3900
2017000047	58630	58630	100	0	58630	0	0	\N	\N	5860
2017000049	10810	10810	100	0	10810	0	0	\N	\N	0
2017000050	10640	10640	100	0	10640	0	0	\N	\N	0
2017000066	213510	213510	100	0	213510	0	0	\N	\N	21350
2017000068	311490	311490	100	0	311490	0	0	\N	\N	0
2017000071	81220	81220	100	0	81220	0	0	\N	\N	8120
2017000073	168270	168270	100	0	168270	0	0	\N	\N	16820
2017000080	15160	15160	100	0	15160	0	0	\N	\N	1510
2017000048	121740	121740	100	0	121740	0	0	\N	\N	0
2017000058	243170	243170	100	0	243170	0	0	\N	\N	0
2017000083	108560	108560	100	0	108560	0	0	\N	\N	0
2017000097	13610	13610	100	0	13610	0	0	\N	\N	1360
2017000015	4120	4120	100	0	4120	0	0	\N	\N	0
2017000016	20190	20190	100	0	20190	0	0	\N	\N	0
2017000017	103590	103590	100	0	103590	0	0	\N	\N	0
2017000018	1030	1030	100	0	1030	0	0	\N	\N	0
2017000025	1750	1750	100	0	1750	0	0	\N	\N	0
2017000029	55710	55710	100	0	55710	0	0	\N	\N	0
2017000030	1030	1030	100	0	1030	0	0	\N	\N	0
2017000031	30320	30320	100	0	30320	0	0	\N	\N	3030
2017000032	25310	25310	100	0	25310	0	0	\N	\N	0
2017000036	60560	60560	100	0	60560	0	0	\N	\N	0
2017000037	16990	16990	100	0	16990	0	0	\N	\N	0
2017000038	11230	11230	100	0	11230	0	0	\N	\N	0
2017000052	3200	3200	100	0	3200	0	0	\N	\N	0
2017000053	9680	9680	100	0	9680	0	0	\N	\N	0
2017000055	293390	293390	100	0	293390	0	0	\N	\N	0
2017000057	93390	93390	100	0	93390	0	0	\N	\N	9330
2017000065	262060	262060	100	0	262060	0	0	\N	\N	0
2017000069	1030	1030	100	0	1030	0	0	\N	\N	0
2017000070	2470	2470	100	0	2470	0	0	\N	\N	0
2017000072	1030	1030	100	0	1030	0	0	\N	\N	0
2017000074	11840	11840	100	0	11840	0	0	\N	\N	1180
2017000075	5250	5250	100	0	5250	0	0	\N	\N	520
2017000076	109370	109370	100	0	109370	0	0	\N	\N	10930
2017000077	30280	30280	100	0	30280	0	0	\N	\N	3020
2017000078	20180	20180	100	0	20180	0	0	\N	\N	2010
2017000079	8230	8230	100	0	8230	0	0	\N	\N	820
2017000081	2470	2470	100	0	2470	0	0	\N	\N	0
2017000082	2470	2470	100	0	2470	0	0	\N	\N	0
2017000085	1030	1030	100	0	1030	0	0	\N	\N	0
2017000088	33960	33960	100	0	33960	0	0	\N	\N	3390
2017000089	6180	6180	100	0	6180	0	0	\N	\N	0
2017000090	92600	92600	100	0	92600	0	0	\N	\N	0
2017000091	188670	188670	100	0	188670	0	0	\N	\N	0
2017000019	203760	203760	100	0	203760	0	0	\N	\N	20370
2017000099	4120	4120	100	0	4120	0	0	\N	\N	0
2017000100	29450	29450	100	0	29450	0	0	\N	\N	0
2017000098	5250	5250	100	0	5250	0	0	\N	\N	0
2017000102	3200	3200	100	0	3200	0	0	\N	\N	0
2017000101	1750	1750	100	0	1750	0	0	\N	\N	0
2017000103	284920	284920	100	0	284920	0	0	\N	\N	28490
2017000104	30870	30870	100	0	30870	0	0	\N	\N	0
2017000092	69430	69430	100	0	69430	0	0	\N	\N	0
2017000093	139450	139450	100	0	139450	0	0	\N	\N	13940
2017000086	11230	11230	100	0	11230	0	0	\N	\N	0
2017000084	1750	1750	100	0	1750	0	0	\N	\N	0
2017000095	57560	57560	100	0	57560	0	0	\N	\N	5750
2017000061	284920	284920	100	0	284920	0	0	\N	\N	0
2017000106	30870	30870	100	0	30870	0	0	\N	\N	0
2017000107	5980	5980	100	0	5980	0	0	\N	\N	0
2017000108	11840	11840	100	0	11840	0	0	\N	\N	0
2017000022	20890	20890	100	0	20890	0	0	\N	\N	2080
2017000109	3720	3720	100	0	3720	0	0	\N	\N	0
2017000110	9680	9680	100	0	9680	0	0	\N	\N	0
2017000111	42180	42180	100	0	42180	0	0	\N	\N	4210
2017000117	4120	4120	100	0	4120	0	0	\N	\N	0
2017000033	5250	5250	100	0	5250	0	0	\N	\N	520
2017000120	284920	284920	100	0	284920	0	0	\N	\N	0
2017000122	5250	5250	100	0	5250	0	0	\N	\N	520
2017000024	67420	67420	100	0	67420	0	0	\N	\N	0
2017000023	11230	11230	100	0	11230	0	0	\N	\N	1120
2017000124	10320	10320	100	0	10320	0	0	\N	\N	1030
2017000123	30280	30280	100	0	30280	0	0	\N	\N	3020
2017000112	3200	3200	100	0	3200	0	0	\N	\N	320
2017000113	6490	6490	100	0	6490	0	0	\N	\N	640
2017000114	6490	6490	100	0	6490	0	0	\N	\N	640
2017000115	6490	6490	100	0	6490	0	0	\N	\N	640
2017000116	9680	9680	100	0	9680	0	0	\N	\N	960
2017000118	18530	18530	100	0	18530	0	0	\N	\N	0
2017000027	89500	89500	100	0	89500	0	0	\N	\N	8950
2017000119	30870	30870	100	0	30870	0	0	\N	\N	0
2017000121	5250	5250	100	0	5250	0	0	\N	\N	520
2017000062	1030	1030	100	0	1030	0	0	\N	\N	0
2017000125	51430	51430	100	0	51430	0	0	\N	\N	0
2017000126	10810	10810	100	0	10810	0	0	\N	\N	0
2017000127	3200	3200	100	0	3200	0	0	\N	\N	0
2017000128	6490	6490	100	0	6490	0	0	\N	\N	0
2017000129	2160	2160	100	0	2160	0	0	\N	\N	0
2017000130	11230	11230	100	0	11230	0	0	\N	\N	0
2017000060	8230	8230	100	0	8230	0	0	\N	\N	820
2017000043	11230	11230	100	0	11230	0	0	\N	\N	0
2017000041	10810	10810	100	0	10810	0	0	\N	\N	1080
2017000042	2470	2470	100	0	2470	0	0	\N	\N	0
2017000087	23660	23660	100	0	23660	0	0	\N	\N	2360
2017000132	139450	139450	100	0	139450	0	0	\N	\N	13940
2017000133	11230	11230	100	0	11230	0	0	\N	\N	0
2017000134	224690	224690	100	0	224690	0	0	\N	\N	0
2017000135	140510	140510	100	0	140510	0	0	\N	\N	14050
2017000046	37170	37170	100	0	37170	0	0	\N	\N	0
2017000045	1030	1030	100	0	1030	0	0	\N	\N	0
2017000044	31910	31910	100	0	31910	0	0	\N	\N	3190
2017000136	33960	33960	100	0	33960	0	0	\N	\N	3390
2017000137	6180	6180	100	0	6180	0	0	\N	\N	0
2017000051	443240	443240	100	0	443240	0	0	\N	\N	44320
2017000139	38610	38610	100	0	38610	0	0	\N	\N	3860
2017000140	12480	12480	100	0	12480	0	0	\N	\N	1240
2017000141	24710	24710	100	0	24710	0	0	\N	\N	2470
2017000142	24710	24710	100	0	24710	0	0	\N	\N	2470
2017000143	24710	24710	100	0	24710	0	0	\N	\N	2470
2017000144	37170	37170	100	0	37170	0	0	\N	\N	3710
2017000145	3200	3200	100	0	3200	0	0	\N	\N	0
2017000138	6490	6490	100	0	6490	0	0	\N	\N	640
2017000146	19360	19360	100	0	19360	0	0	\N	\N	0
2017000026	6180	6180	100	0	6180	0	0	\N	\N	610
2017000028	15440	15440	100	0	15440	0	0	\N	\N	0
2017000147	2160	2160	100	0	2160	0	0	\N	\N	0
2017000034	3200	3200	100	0	3200	0	0	\N	\N	320
2017000035	11230	11230	100	0	11230	0	0	\N	\N	0
2017000148	11230	11230	100	0	11230	0	0	\N	\N	0
2017000039	307100	307100	100	0	307100	0	0	\N	\N	0
2017000149	11840	11840	100	0	11840	0	0	\N	\N	0
2017000150	41090	41090	100	0	41090	0	0	\N	\N	0
2017000056	15260	15260	100	0	15260	0	0	\N	\N	1520
2017000154	57060	57060	100	0	57060	0	0	\N	\N	0
2017000155	6590	6590	100	0	6590	0	0	\N	\N	0
2017000156	26170	26170	100	0	26170	0	0	\N	\N	0
2017000157	83160	83160	100	0	83160	0	0	\N	\N	8310
2017000158	41040	41040	100	0	41040	0	0	\N	\N	4100
2017000159	90990	90990	100	0	90990	0	0	\N	\N	0
2017000160	11650	11650	100	0	11650	0	0	\N	\N	0
2017000151	203340	203340	100	0	203340	0	0	\N	\N	0
2017000152	89500	89500	100	0	89500	0	0	\N	\N	0
2017000153	51420	51420	100	0	51420	0	0	\N	\N	0
2017000059	1750	1750	100	0	1750	0	0	\N	\N	0
2017000161	12350	12350	100	0	12350	0	0	\N	\N	0
2017000162	3200	3200	100	0	3200	0	0	\N	\N	0
2017000063	41400	41400	100	0	41400	0	0	\N	\N	4140
2017000164	23800	23800	100	0	23800	0	0	\N	\N	0
2017000105	82810	82810	100	0	82810	0	0	\N	\N	0
2017000165	13000	13000	100	0	13000	0	0	\N	\N	0
2017000167	0	0	100	0	0	0	0	\N	\N	0
2017000064	9600	9600	100	0	9600	0	0	\N	\N	960
2017000168	7410	7410	100	0	7410	0	0	\N	\N	0
2017000169	11230	11230	100	0	11230	0	0	\N	\N	0
2017000171	86030	86030	100	0	86030	0	0	\N	\N	0
2017000054	39330	39330	100	0	39330	0	0	\N	\N	0
2017000131	56140	56140	100	0	56140	0	0	\N	\N	0
2017000172	0	0	100	0	0	0	0	\N	\N	0
2017000170	1750	1750	100	0	1750	0	0	\N	\N	0
2017000173	57600	57600	100	0	57600	0	0	\N	\N	0
2017000175	420	420	100	0	420	0	0	\N	\N	0
2017000176	420	420	100	0	420	0	0	\N	\N	0
2017000163	33560	33560	100	0	33560	0	0	\N	\N	3350
2017000166	252950	252950	100	0	252950	0	0	\N	\N	0
2017000174	43200	43200	100	0	43200	0	0	\N	\N	4320
2017000177	43200	43200	100	0	43200	0	0	\N	\N	0
2017000178	420	420	100	0	420	0	0	\N	\N	0
2017000183	420	420	100	0	420	0	0	\N	\N	0
2017000184	1750	1750	100	0	1750	0	0	\N	\N	170
2017000180	6180	6180	100	0	6180	0	0	\N	\N	610
2017000185	4940	4940	100	0	4940	0	0	\N	\N	0
2017000179	17490	17490	100	0	17490	0	0	\N	\N	1740
\.


--
-- TOC entry 2469 (class 0 OID 16520)
-- Dependencies: 224
-- Data for Name: t_reserve_dayly; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_dayly (rd_id, rb_id, reserve_date, charge) FROM stdin;
135	96	20170324	159430
136	97	20170324	1750
139	100	20170324	13380
140	101	20170324	1750
141	102	20170324	3090
142	103	20170329	7200
143	103	20170329	7200
144	103	20170329	7200
145	103	20170329	7200
146	103	20170329	7200
147	103	20170329	79200
148	104	20170329	7200
149	105	20170329	1550
150	105	20170329	1550
151	105	20170329	1550
152	105	20170329	1550
153	105	20170329	1550
154	105	20170329	14710
155	106	20170329	10320
156	107	20170902	10290
157	107	20170902	10290
158	107	20170902	68920
159	108	20170902	57600
178	115	20170902	210
179	115	20170902	210
180	115	20170902	1750
181	116	20170902	520
182	116	20170902	520
183	116	20170902	4940
184	117	20170902	420
185	117	20170902	420
186	117	20170902	3810
187	118	20170902	310
188	118	20170902	310
189	118	20170902	2780
190	119	20170902	520
191	119	20170902	520
192	119	20170902	4940
193	120	20170902	1030
194	120	20170902	1030
195	120	20170902	9780
196	121	20170902	10290
197	121	20170902	68920
198	122	20170902	10290
199	122	20170902	57600
220	131	20170902	12350
221	132	20170903	2060
222	132	20170903	15430
223	133	20170903	210
224	133	20170903	210
225	133	20170903	210
226	133	20170903	1750
227	134	20170903	2060
228	134	20170903	12350
229	135	20170903	420
230	135	20170903	420
231	135	20170903	3810
232	136	20170903	310
233	136	20170903	310
234	136	20170903	2780
240	139	20170902	1550
241	139	20170902	1550
242	139	20170902	14710
243	139	20170903	1550
244	139	20170903	8130
245	140	20170903	10290
246	140	20170903	96690
247	141	20170902	520
248	141	20170902	2680
249	142	20170903	1030
251	144	20170903	1750
252	145	20170904	8230
253	146	20170904	2470
254	147	20170906	520
255	147	20170906	2680
256	148	20170906	21600
260	151	20170907	520
261	151	20170907	2680
262	152	20171022	69950
263	153	20171021	57600
264	153	20171022	10290
265	153	20171022	27780
266	154	20171021	930
267	154	20171022	210
268	154	20171022	210
269	154	20171022	930
2047	714	20171108	520
2048	714	20171108	2680
335	186	20171104	5250
2155	753	20171208	4120
2156	753	20171208	4120
2157	753	20171208	4120
2158	753	20171208	46290
2159	753	20171209	6180
2160	753	20171209	6180
2161	753	20171209	33950
2162	754	20171209	17490
2163	754	20171209	111090
2164	755	20171208	210
2165	755	20171208	210
2166	755	20171208	210
2167	755	20171208	1750
2377	816	20171214	4120
2168	755	20171209	210
2169	755	20171209	210
2170	755	20171209	210
2171	755	20171209	1750
2172	756	20171208	520
2173	756	20171208	520
2174	756	20171208	520
2175	756	20171208	4940
2176	756	20171209	520
2177	756	20171209	520
2178	756	20171209	520
2179	756	20171209	4940
2180	757	20171208	420
2181	757	20171208	420
2182	757	20171208	420
2183	757	20171208	3810
466	249	20171115	39090
2184	757	20171209	420
2185	757	20171209	420
2186	757	20171209	420
2187	757	20171209	3810
2188	758	20171208	310
2189	758	20171208	310
2190	758	20171208	310
2191	758	20171208	2780
2192	758	20171209	310
2193	758	20171209	310
2194	758	20171209	310
2195	758	20171209	2780
2196	759	20171208	520
2197	759	20171208	520
2198	759	20171208	520
484	257	20171117	7200
485	257	20171117	7200
486	257	20171117	44230
2378	816	20171214	4120
2379	816	20171214	4120
2380	816	20171214	46290
2381	816	20171215	4120
2382	816	20171215	4120
2383	816	20171215	46290
521	262	20171117	1550
522	262	20171117	9260
523	263	20171201	210
524	263	20171201	1440
525	263	20171202	210
526	263	20171202	930
527	264	20171201	420
528	264	20171201	3090
529	264	20171202	420
530	264	20171202	2060
531	265	20171202	310
532	265	20171202	1550
2384	816	20171216	6180
2385	817	20171216	10290
2386	817	20171216	68920
2387	818	20171214	210
2388	818	20171214	210
2389	818	20171214	210
2390	818	20171214	1750
2391	818	20171215	210
2392	818	20171215	210
2393	818	20171215	1750
2394	818	20171216	210
2395	818	20171216	210
2396	818	20171216	930
2397	819	20171214	520
2398	819	20171214	520
2399	819	20171214	520
2400	819	20171214	4940
2401	819	20171215	520
2402	819	20171215	520
2403	819	20171215	4940
2404	819	20171216	520
2405	819	20171216	520
2406	819	20171216	2680
2407	820	20171214	420
2408	820	20171214	420
2409	820	20171214	420
2410	820	20171214	3810
2411	820	20171215	420
2412	820	20171215	420
2413	820	20171215	3810
2414	820	20171216	420
2415	820	20171216	420
2416	820	20171216	2060
2417	821	20171214	310
2418	821	20171214	310
2419	821	20171214	310
2420	821	20171214	2780
2421	821	20171215	310
2422	821	20171215	310
2423	821	20171215	2780
2424	821	20171216	310
2425	821	20171216	310
2426	821	20171216	1550
2427	822	20171214	1550
2428	822	20171214	1550
2429	822	20171214	1550
2430	822	20171214	14710
2431	822	20171215	1550
2432	822	20171215	1550
2433	822	20171215	14710
2434	822	20171216	1550
2435	822	20171216	1550
2436	822	20171216	8130
773	340	20171210	10290
774	340	20171210	10290
775	340	20171210	10290
776	340	20171210	120350
777	341	20171210	43200
778	342	20171210	210
779	342	20171210	210
780	342	20171210	210
781	342	20171210	1750
782	343	20171210	520
783	343	20171210	520
784	343	20171210	520
785	343	20171210	4940
786	344	20171210	310
787	344	20171210	310
788	344	20171210	310
789	344	20171210	2780
790	345	20171210	520
791	345	20171210	520
792	345	20171210	520
793	345	20171210	4940
810	352	20171214	7200
811	352	20171214	7200
812	352	20171214	7200
813	352	20171214	79200
814	352	20171215	7200
815	352	20171215	7200
816	352	20171215	79200
817	352	20171216	10290
818	353	20171216	10290
819	353	20171216	68920
820	354	20171214	210
821	354	20171214	210
822	354	20171214	210
823	354	20171214	1750
824	354	20171215	210
825	354	20171215	210
826	354	20171215	1750
827	354	20171216	210
828	354	20171216	210
829	354	20171216	930
830	355	20171214	520
831	355	20171214	520
832	355	20171214	520
833	355	20171214	4940
834	355	20171215	520
835	355	20171215	520
836	355	20171215	4940
837	355	20171216	520
838	355	20171216	520
839	355	20171216	2680
840	356	20171214	420
841	356	20171214	420
842	356	20171214	420
843	356	20171214	3810
844	356	20171215	420
845	356	20171215	420
846	356	20171215	3810
847	356	20171216	420
848	356	20171216	420
849	356	20171216	2060
850	357	20171214	310
851	357	20171214	310
852	357	20171214	310
853	357	20171214	2780
854	357	20171215	310
855	357	20171215	310
856	357	20171215	2780
857	357	20171216	310
858	357	20171216	310
859	357	20171216	1550
860	358	20171214	1550
861	358	20171214	1550
862	358	20171214	1550
863	358	20171214	14710
864	358	20171215	1550
865	358	20171215	1550
866	358	20171215	14710
867	358	20171216	1550
868	358	20171216	1550
869	358	20171216	8130
872	361	20171215	8230
873	361	20171216	2060
874	361	20171216	2060
875	361	20171216	26750
876	361	20171217	2060
877	361	20171217	12350
878	362	20171217	2060
879	362	20171217	15430
880	363	20171217	210
881	363	20171217	210
882	363	20171217	1750
883	364	20171217	420
884	364	20171217	420
885	364	20171217	3810
886	365	20171217	310
887	365	20171217	310
888	365	20171217	2780
890	367	20171216	57600
891	367	20171217	10290
892	368	20171217	10290
893	368	20171217	68920
894	369	20171216	930
895	369	20171217	210
896	369	20171217	210
897	369	20171217	930
898	370	20171216	2470
899	370	20171217	520
900	370	20171217	520
901	370	20171217	2680
902	371	20171217	420
903	371	20171217	420
904	371	20171217	2060
905	372	20171216	1440
906	372	20171217	310
907	372	20171217	310
908	372	20171217	1550
909	373	20171216	2470
910	373	20171217	520
911	373	20171217	520
912	373	20171217	2680
942	390	20171227	1550
943	390	20171227	3090
944	391	20171227	6180
945	392	20171227	420
946	392	20171227	2060
947	393	20171228	310
948	393	20171228	1550
2049	715	20171109	1550
2050	715	20171109	8130
2199	759	20171208	4940
2200	759	20171209	520
2201	759	20171209	520
2202	759	20171209	520
2203	759	20171209	4940
2204	760	20171208	520
2205	760	20171208	520
2206	760	20171208	520
2207	760	20171208	4940
2208	760	20171209	520
2209	760	20171209	520
2210	760	20171209	520
2211	760	20171209	4940
2230	769	20171215	1030
2244	777	20171222	4120
2245	778	20171223	2060
2246	778	20171223	15430
2247	779	20171223	210
2248	779	20171223	930
2249	780	20171223	310
2250	780	20171223	1550
2251	781	20171222	2470
2252	781	20171223	520
2253	781	20171223	2680
2261	787	20171227	2470
2269	792	20171117	4120
2270	792	20171117	25720
2273	794	20171127	4120
2274	794	20171129	1030
2275	794	20171129	1030
2276	794	20171129	9260
2277	794	20171130	1030
2278	794	20171130	1030
2279	794	20171130	9260
2280	794	20171201	1030
2281	794	20171201	1030
2282	794	20171201	9260
2283	795	20171202	2060
2284	795	20171202	15430
2285	796	20171201	210
2286	796	20171201	1440
2287	796	20171202	210
2288	796	20171202	930
2289	797	20171201	420
2290	797	20171201	3090
2291	797	20171202	420
2292	797	20171202	2060
2293	798	20171202	310
2294	798	20171202	1550
2295	799	20171127	2470
2296	799	20171129	520
2297	799	20171129	520
2298	799	20171129	4940
2299	799	20171130	520
2300	799	20171130	520
2301	799	20171130	4940
2302	799	20171201	520
2303	799	20171201	520
2304	799	20171201	4940
2305	799	20171202	520
2306	799	20171202	520
2307	799	20171202	4940
2332	805	20171201	4940
2333	805	20171202	520
2334	805	20171202	2680
2454	828	20171216	33950
2455	828	20171217	6180
2456	829	20171217	10290
2457	829	20171217	68920
2458	830	20171216	930
2459	830	20171217	210
2460	830	20171217	210
2461	830	20171217	930
2462	831	20171202	2470
2463	831	20171203	520
2464	831	20171203	520
2067	723	20171124	4120
2068	723	20171124	4120
2069	723	20171124	46290
2070	723	20171125	6180
2071	723	20171125	6180
2072	723	20171125	70980
2073	723	20171126	6180
2074	723	20171126	6180
2075	723	20171126	41150
2076	724	20171124	1030
2077	724	20171124	1030
2078	724	20171124	9260
2079	724	20171125	1550
2080	724	20171125	1550
2081	724	20171125	15430
2082	724	20171126	1550
2083	724	20171126	1550
2084	724	20171126	8230
2085	725	20171125	4900
2086	726	20171126	520
2087	726	20171126	520
2088	726	20171126	2680
2089	727	20171126	1030
2090	727	20171126	1030
2091	727	20171126	5460
2092	728	20171126	1030
2093	728	20171126	1030
2094	728	20171126	5460
2095	729	20171124	1550
2096	729	20171124	1550
2097	729	20171124	14710
2098	729	20171125	1550
2099	729	20171125	1550
2100	729	20171125	14710
2101	729	20171126	1550
2102	729	20171126	1550
2103	729	20171126	8130
2231	770	20171216	1030
2232	770	20171216	1030
2233	770	20171216	9780
2254	782	20171224	1550
2255	783	20171224	2060
2256	783	20171224	15430
2257	784	20171224	210
2258	784	20171224	930
2271	793	20171117	1030
2272	793	20171117	5150
2308	800	20171202	10290
2309	800	20171202	68920
2310	801	20171130	23660
2311	801	20171201	4120
2312	801	20171201	4120
2313	801	20171201	46290
2314	802	20171201	210
2315	802	20171201	210
2316	802	20171201	1750
2317	802	20171202	210
2318	802	20171202	930
2319	803	20171201	520
2320	803	20171201	520
2321	803	20171201	4940
2322	803	20171202	520
2323	803	20171202	2680
2324	804	20171201	420
2325	804	20171201	420
2326	804	20171201	3810
2327	804	20171202	420
2328	804	20171202	2060
2329	805	20171130	2470
2330	805	20171201	520
2331	805	20171201	520
2465	831	20171203	2680
2466	832	20171216	1440
2467	832	20171217	310
2468	832	20171217	310
2469	832	20171217	1550
2470	833	20171216	2470
2471	833	20171217	520
2472	833	20171217	520
2473	833	20171217	2680
2474	834	20171217	420
2475	834	20171217	420
2476	834	20171217	2060
1326	508	20171202	2060
1327	508	20171202	15430
1328	509	20171127	8230
1329	509	20171129	1550
1330	509	20171129	1550
1331	509	20171129	17490
1332	509	20171130	1550
1333	509	20171130	1550
1334	509	20171130	17490
1335	509	20171201	1550
1336	509	20171201	1550
1337	509	20171201	17490
1338	510	20171127	2470
1339	510	20171129	520
1340	510	20171129	520
1341	510	20171129	4940
1342	510	20171130	520
1343	510	20171130	520
1344	510	20171130	4940
1345	510	20171201	520
1346	510	20171201	520
1347	510	20171201	4940
1348	510	20171202	520
1349	510	20171202	2680
1350	511	20171201	210
1351	511	20171201	1440
1352	511	20171202	210
1353	511	20171202	930
1354	512	20171201	420
1355	512	20171201	3090
1356	512	20171202	420
1357	512	20171202	2060
1358	513	20171202	310
1359	513	20171202	1550
2477	835	20171227	6180
2478	836	20171227	420
2479	836	20171227	2060
2480	837	20171227	310
2481	837	20171227	1550
1365	516	20171130	39090
1366	516	20171201	7200
1367	516	20171201	7200
1368	516	20171201	79200
1369	517	20171130	2470
1370	517	20171201	520
1371	517	20171201	520
1372	517	20171201	4940
1373	517	20171202	520
1374	517	20171202	2680
1375	518	20171202	10290
1376	518	20171202	68920
1377	519	20171201	210
1378	519	20171201	210
1379	519	20171201	1750
1380	519	20171202	210
1381	519	20171202	930
1382	520	20171201	520
1383	520	20171201	520
1384	520	20171201	4940
1385	520	20171202	520
1386	520	20171202	2680
1387	521	20171201	420
1388	521	20171201	420
1389	521	20171201	3810
1390	521	20171202	420
1391	521	20171202	2060
1418	526	20171209	6180
1419	527	20171204	1550
1420	527	20171204	1550
1421	527	20171204	17490
1422	527	20171206	1550
1423	527	20171206	1550
1424	527	20171206	17490
1425	527	20171207	1550
1426	527	20171207	1550
1427	527	20171207	17490
1428	527	20171208	1550
1429	527	20171208	1550
1430	527	20171208	17490
1431	527	20171209	2060
1432	527	20171209	2060
1433	527	20171209	9260
1434	528	20171207	420
1435	528	20171209	210
1436	528	20171209	420
1437	529	20171207	830
1438	529	20171208	420
1439	529	20171208	3090
1440	529	20171209	420
1441	529	20171209	830
2482	838	20171227	1030
2483	838	20171227	2060
2228	767	20171214	1030
2234	771	20171217	5250
2259	785	20171225	8230
2263	789	20171221	1030
2268	792	20171117	4120
1719	597	20171101	4120
1727	601	20171102	1030
1728	601	20171102	2060
1729	602	20171102	1550
1730	602	20171102	13380
1731	603	20171102	210
1732	603	20171102	210
1733	603	20171102	1750
1734	604	20171102	23660
1735	604	20171103	4120
1736	604	20171103	10290
1737	605	20171103	27780
1738	606	20171103	210
1739	606	20171103	930
1740	607	20171103	520
1741	607	20171103	2680
1742	608	20171103	420
1743	608	20171103	2060
1744	609	20171103	310
1745	609	20171103	1550
1746	610	20171103	520
1747	610	20171103	2680
1748	611	20171103	520
1749	611	20171103	2680
1750	612	20171103	1030
1751	612	20171103	5460
1752	613	20171103	1030
1753	613	20171103	5460
1754	614	20171103	1550
1755	614	20171103	8130
1756	615	20171102	1030
1809	639	20171109	1750
1850	657	20171110	4120
1851	657	20171111	1550
1852	657	20171111	1550
1853	657	20171111	15430
1854	657	20171112	1550
1855	657	20171112	7200
1856	658	20171112	2060
1857	658	20171112	15430
1858	659	20171112	210
1859	659	20171112	210
1860	659	20171112	1750
1861	660	20171112	420
1862	660	20171112	420
1863	660	20171112	3810
1864	661	20171110	1030
1865	662	20171110	1550
1866	662	20171110	8130
1867	663	20171110	20640
1868	664	20171120	2160
1869	665	20171120	21600
1870	666	20171120	1550
1877	670	20171113	4120
1878	670	20171113	10290
1879	671	20171113	27780
1880	672	20171113	210
1881	672	20171113	930
1882	673	20171113	520
1883	673	20171113	2680
1884	674	20171113	420
1885	674	20171113	2060
1886	675	20171113	310
1887	675	20171113	1550
1888	676	20171113	520
1889	676	20171113	2680
1890	677	20171113	1030
1891	677	20171113	5460
1892	678	20171113	1030
1893	678	20171113	2060
1894	679	20171113	9260
1895	680	20171113	420
1896	680	20171113	2060
1897	681	20171113	2160
1898	682	20171113	1550
1899	682	20171113	1550
1900	682	20171113	8130
2109	732	20171127	7200
2110	732	20171129	20520
2111	733	20171202	41040
2112	734	20171127	2580
2113	734	20171129	7350
2114	735	20171202	14700
2229	768	20171214	2470
2235	772	20171222	4120
2236	772	20171222	16460
2237	773	20171222	79200
2238	774	20171222	210
2239	774	20171222	1440
2240	775	20171222	520
2241	775	20171222	3910
2242	776	20171222	420
2243	776	20171222	3090
2260	786	20171206	2470
2541	864	20171104	6180
2542	864	20171104	6180
2543	864	20171104	41150
2544	865	20171104	116230
2545	866	20171104	520
2546	866	20171104	520
2547	866	20171104	4940
2548	867	20171104	210
2549	867	20171104	210
2550	867	20171104	1750
2551	868	20171104	520
2552	868	20171104	520
2553	868	20171104	4940
2554	869	20171104	420
2555	869	20171104	420
2556	869	20171104	3810
2557	870	20171104	310
2558	870	20171104	310
2559	870	20171104	2780
2560	871	20171104	1030
2561	871	20171104	1030
2562	871	20171104	9780
2565	874	20171102	4120
2566	875	20171104	1550
2567	875	20171104	3090
2568	876	20171104	2060
2569	876	20171104	20580
2570	877	20171104	210
2571	877	20171104	210
2572	877	20171104	1750
2573	878	20171104	5250
2608	892	20171117	520
2609	892	20171117	2680
2610	893	20171110	1750
2611	894	20171104	21600
2612	894	20171104	21600
2613	894	20171104	241720
2614	895	20171104	2060
2615	895	20171104	2060
2616	895	20171104	26750
2617	896	20171209	6180
2618	897	20171204	1030
2619	897	20171204	1030
2620	897	20171204	9260
2621	897	20171206	1030
2622	897	20171206	1030
2623	897	20171206	9260
2624	897	20171207	1030
2625	897	20171207	1030
2626	897	20171207	9260
2627	897	20171208	1030
2628	897	20171208	1030
2629	897	20171208	9260
2630	897	20171209	1550
2631	897	20171209	1550
2632	897	20171209	8230
2633	898	20171207	420
2634	898	20171209	210
2635	898	20171209	420
2636	899	20171207	830
2637	899	20171208	420
2638	899	20171208	3090
2639	899	20171209	420
2640	899	20171209	830
2697	908	20171210	43200
2698	909	20171210	6180
2699	909	20171210	70980
2700	910	20171210	210
2701	910	20171210	210
2702	910	20171210	210
2703	910	20171210	1750
2704	911	20171210	520
2705	911	20171210	520
2706	911	20171210	520
2707	911	20171210	4940
2708	912	20171210	310
2709	912	20171210	310
2710	912	20171210	310
2711	912	20171210	2780
2712	913	20171210	520
2713	913	20171210	520
2714	913	20171210	520
2715	913	20171210	4940
2716	914	20171211	1550
2717	914	20171211	1550
2718	914	20171211	8130
2719	915	20171214	1750
2720	916	20171215	4120
2721	916	20171216	1550
2722	916	20171216	1550
2723	916	20171216	15430
2724	916	20171217	7200
2725	917	20171217	2060
2726	917	20171217	15430
2727	918	20171217	210
2728	918	20171217	210
2729	918	20171217	1750
2730	919	20171217	420
2731	919	20171217	420
2732	919	20171217	3810
2733	920	20171217	310
2734	920	20171217	310
2735	920	20171217	2780
2736	921	20171105	21600
2737	921	20171105	21600
2738	921	20171105	241720
2739	922	20171105	2060
2740	922	20171105	2060
2741	922	20171105	26750
2742	923	20171105	520
2743	923	20171105	520
2744	923	20171105	4940
2745	924	20171105	1030
2746	924	20171105	1030
2747	924	20171105	9780
2748	925	20171106	3090
2749	925	20171106	16460
2750	926	20171106	1340
2754	928	20171108	520
2755	928	20171108	520
2756	928	20171108	2680
2757	929	20171109	1550
2758	929	20171109	8130
2787	941	20171110	4120
2788	941	20171110	38060
2802	948	20171110	4120
2809	951	20171112	5250
2810	952	20171105	21600
2811	952	20171105	21600
2812	952	20171105	241720
2814	954	20171217	5250
2825	960	20171108	7200
2826	960	20171108	7200
2827	960	20171108	44230
2828	961	20171108	210
2829	961	20171108	210
2830	961	20171108	930
2831	962	20171108	520
2832	962	20171108	520
2833	962	20171108	2680
2834	963	20171108	520
2835	963	20171108	520
2836	963	20171108	2680
2837	964	20171108	1550
2838	964	20171108	1550
2839	964	20171108	8130
2840	965	20171108	10320
2879	979	20171222	4120
2880	980	20171223	2060
2881	980	20171223	15430
2882	981	20171223	210
2883	981	20171223	930
2884	982	20171223	310
2885	982	20171223	1550
2886	983	20171222	2470
2887	983	20171223	520
2888	983	20171223	2680
2911	991	20171111	520
2912	991	20171111	2680
2913	992	20171111	1030
2914	992	20171111	5460
2915	993	20171111	1030
2916	993	20171111	5460
2917	994	20171111	1030
2918	994	20171111	5460
2919	995	20171111	1550
2920	995	20171111	8130
2921	996	20171111	1550
2922	996	20171111	1550
2923	996	20171111	15430
2924	997	20171111	10290
2925	997	20171111	10290
2926	997	20171111	68920
2927	998	20171112	2060
2928	998	20171112	2060
2929	998	20171112	26750
2930	999	20171112	5250
2932	1001	20171112	1030
2933	1002	20171113	7200
2934	1002	20171113	44230
2935	1003	20171113	1550
2936	1003	20171113	9260
2937	1004	20171113	520
2938	1004	20171113	2680
2939	1005	20171113	1030
2940	1005	20171113	5460
2941	1006	20171113	2160
2942	1007	20171113	1550
2943	1007	20171113	1550
2944	1007	20171113	8130
2945	1008	20171115	8230
2946	1009	20171115	1550
2947	1009	20171115	1550
2948	1009	20171115	8130
2949	1010	20171115	1550
2950	1010	20171115	9260
2951	1011	20171115	2470
2952	1012	20171115	23660
2996	1023	20171210	6180
2997	1023	20171210	70980
2998	1024	20171210	43200
2999	1025	20171210	210
3000	1025	20171210	210
3001	1025	20171210	210
3002	1025	20171210	1750
3003	1026	20171210	520
3004	1026	20171210	520
3005	1026	20171210	520
3006	1026	20171210	4940
3007	1027	20171210	310
3008	1027	20171210	310
3009	1027	20171210	310
3010	1027	20171210	2780
3011	1028	20171210	520
3012	1028	20171210	520
3013	1028	20171210	520
3014	1028	20171210	4940
3015	1029	20171211	1550
3016	1029	20171211	1550
3017	1029	20171211	8130
3018	1030	20171214	4120
3019	1030	20171214	4120
3020	1030	20171214	4120
3021	1030	20171214	46290
3022	1030	20171215	4120
3023	1030	20171215	4120
3024	1030	20171215	46290
3025	1030	20171216	6180
3026	1031	20171216	10290
3027	1031	20171216	68920
3028	1032	20171214	210
3029	1032	20171214	210
3030	1032	20171214	210
3031	1032	20171214	1750
3032	1032	20171215	210
3033	1032	20171215	210
3034	1032	20171215	1750
3035	1032	20171216	210
3036	1032	20171216	210
3037	1032	20171216	930
3038	1033	20171214	520
3039	1033	20171214	520
3040	1033	20171214	520
3041	1033	20171214	4940
3042	1033	20171215	520
3043	1033	20171215	520
3044	1033	20171215	4940
3045	1033	20171216	520
3046	1033	20171216	520
3047	1033	20171216	2680
3048	1034	20171214	310
3049	1034	20171214	310
3050	1034	20171214	310
3051	1034	20171214	2780
3052	1034	20171215	310
3053	1034	20171215	310
3054	1034	20171215	2780
3055	1034	20171216	310
3056	1034	20171216	310
3057	1034	20171216	1550
3058	1035	20171214	1550
3059	1035	20171214	1550
3060	1035	20171214	1550
3061	1035	20171214	14710
3062	1035	20171215	1550
3063	1035	20171215	1550
3064	1035	20171215	14710
3065	1035	20171216	1550
3066	1035	20171216	1550
3067	1035	20171216	8130
3087	1042	20171216	33950
3088	1042	20171217	6180
3089	1043	20171217	10290
3090	1043	20171217	68920
3091	1044	20171216	2470
3092	1044	20171217	520
3093	1044	20171217	520
3094	1044	20171217	2680
3095	1045	20171216	930
3096	1045	20171217	210
3097	1045	20171217	210
3098	1045	20171217	930
3099	1046	20171216	2470
3100	1046	20171217	520
3101	1046	20171217	520
3102	1046	20171217	2680
3103	1047	20171217	420
3104	1047	20171217	420
3105	1047	20171217	2060
3106	1048	20171216	1440
3107	1048	20171217	310
3108	1048	20171217	310
3109	1048	20171217	1550
3110	1049	20171116	1550
3111	1049	20171116	1550
3112	1049	20171116	1550
3113	1049	20171116	14710
3114	1049	20171117	1550
3115	1049	20171117	1550
3116	1049	20171117	14710
3117	1050	20171116	1030
3118	1051	20171116	2580
3119	1051	20171116	2580
3120	1051	20171116	26750
3121	1052	20171117	4120
3122	1052	20171117	4120
3123	1052	20171117	25720
3126	1054	20171117	1030
3127	1054	20171117	5150
3130	1056	20171118	14400
3131	1056	20171118	14400
3132	1056	20171118	168690
3133	1056	20171119	14400
3134	1056	20171119	14400
3135	1056	20171119	14400
3136	1056	20171119	168690
3137	1057	20171118	210
3138	1057	20171118	210
3139	1057	20171118	1750
3140	1057	20171119	210
3141	1057	20171119	210
3142	1057	20171119	210
3143	1057	20171119	1750
3144	1058	20171118	520
3145	1058	20171118	520
3146	1058	20171118	4940
3147	1058	20171119	520
3148	1058	20171119	520
3149	1058	20171119	520
3150	1058	20171119	4940
3151	1059	20171118	420
3152	1059	20171118	420
3153	1059	20171118	3810
3154	1059	20171119	420
3155	1059	20171119	420
3156	1059	20171119	420
3157	1059	20171119	3810
3158	1060	20171118	310
3159	1060	20171118	310
3160	1060	20171118	2780
3161	1060	20171119	310
3162	1060	20171119	310
3163	1060	20171119	310
3164	1060	20171119	2780
3165	1061	20171118	210
3166	1061	20171118	210
3167	1061	20171118	1750
3168	1061	20171119	210
3169	1061	20171119	210
3170	1061	20171119	210
3171	1061	20171119	1750
3172	1062	20171118	420
3173	1062	20171118	420
3174	1062	20171118	3810
3175	1062	20171119	420
3176	1062	20171119	420
3177	1062	20171119	420
3178	1062	20171119	3810
3179	1063	20171118	310
3180	1063	20171118	310
3181	1063	20171118	2780
3182	1063	20171119	310
3183	1063	20171119	310
3184	1063	20171119	310
3185	1063	20171119	2780
3186	1064	20171118	520
3187	1064	20171118	520
3188	1064	20171118	4940
3189	1064	20171119	520
3190	1064	20171119	520
3191	1064	20171119	520
3192	1064	20171119	4940
3193	1065	20171118	1550
3194	1065	20171118	1550
3195	1065	20171118	15430
3196	1065	20171119	1550
3197	1065	20171119	1550
3198	1065	20171119	1550
3199	1065	20171119	15430
3200	1066	20171118	520
3201	1066	20171118	520
3202	1066	20171118	4940
3203	1066	20171119	520
3204	1066	20171119	520
3205	1066	20171119	520
3206	1066	20171119	4940
3207	1067	20171118	1030
3208	1067	20171118	1030
3209	1067	20171118	9780
3210	1067	20171119	1030
3211	1067	20171119	1030
3212	1067	20171119	1030
3213	1067	20171119	9780
3214	1068	20171118	1030
3215	1068	20171118	1030
3216	1068	20171118	9780
3217	1068	20171119	1030
3218	1068	20171119	1030
3219	1068	20171119	1030
3220	1068	20171119	9780
3221	1069	20171118	1030
3222	1069	20171118	1030
3223	1069	20171118	9780
3224	1069	20171119	1030
3225	1069	20171119	1030
3226	1069	20171119	1030
3227	1069	20171119	9780
3228	1070	20171118	1550
3229	1070	20171118	1550
3230	1070	20171118	14710
3231	1070	20171119	1550
3232	1070	20171119	1550
3233	1070	20171119	1550
3234	1070	20171119	14710
3235	1071	20171117	520
3236	1071	20171117	2680
3239	1073	20171117	1030
3240	1073	20171117	5460
3246	1076	20171120	1550
3247	1076	20171120	1550
3248	1076	20171120	1550
3249	1076	20171120	14710
3250	1077	20171120	6180
3251	1078	20171120	4120
3252	1078	20171122	1030
3253	1078	20171122	1030
3254	1078	20171122	9260
3255	1079	20171120	2160
3258	1081	20171122	520
3259	1081	20171122	2680
3260	1082	20171122	1550
3261	1082	20171122	1550
3262	1082	20171122	8130
3263	1083	20171122	1550
3264	1083	20171122	1550
3265	1083	20171122	8130
3266	1084	20171123	21600
3267	1084	20171123	21600
3268	1084	20171123	241720
3269	1085	20171123	520
3270	1085	20171123	520
3271	1085	20171123	4940
3272	1086	20171123	210
3273	1086	20171123	210
3274	1086	20171123	1750
3275	1087	20171123	520
3276	1087	20171123	520
3277	1087	20171123	4940
3278	1088	20171123	420
3279	1088	20171123	420
3280	1088	20171123	3810
3281	1089	20171123	310
3282	1089	20171123	310
3283	1089	20171123	2780
3284	1090	20171123	1030
3285	1090	20171123	1030
3286	1090	20171123	9780
3287	1091	20171123	2060
3288	1091	20171123	2060
3289	1091	20171123	26750
3290	1092	20171123	210
3291	1092	20171123	210
3292	1092	20171123	1750
3293	1093	20171123	420
3294	1093	20171123	420
3295	1093	20171123	3810
3296	1094	20171123	310
3297	1094	20171123	310
3298	1094	20171123	2780
3339	1106	20171127	1550
3340	1106	20171127	1550
3341	1106	20171127	9260
3342	1107	20171127	420
3343	1107	20171127	420
3344	1107	20171127	2060
3369	1112	20171129	1030
3370	1112	20171129	1030
3371	1112	20171129	9260
3372	1112	20171130	1030
3373	1112	20171130	1030
3374	1112	20171130	9260
3375	1112	20171201	1030
3376	1112	20171201	1030
3377	1112	20171201	9260
3378	1113	20171129	520
3379	1113	20171129	520
3380	1113	20171129	4940
3381	1113	20171130	520
3382	1113	20171130	520
3383	1113	20171130	4940
3384	1113	20171201	520
3385	1113	20171201	520
3386	1113	20171201	4940
3387	1114	20171201	210
3388	1114	20171201	1440
3389	1115	20171201	420
3390	1115	20171201	3090
3391	1116	20171127	4120
3392	1117	20171127	2470
3393	1118	20171202	2060
3394	1118	20171202	15430
3395	1119	20171202	210
3396	1119	20171202	930
3397	1120	20171202	420
3398	1120	20171202	2060
3399	1121	20171202	310
3400	1121	20171202	1550
3401	1122	20171202	520
3402	1122	20171202	2680
3403	1123	20171127	21600
3404	1123	20171129	61560
3405	1124	20171202	41040
3411	1127	20171130	23660
3412	1127	20171201	4120
3413	1127	20171201	4120
3414	1127	20171201	46290
3415	1128	20171201	210
3416	1128	20171201	210
3417	1128	20171201	1750
3418	1129	20171201	520
3419	1129	20171201	520
3420	1129	20171201	4940
3421	1130	20171201	420
3422	1130	20171201	420
3423	1130	20171201	3810
3424	1131	20171130	2470
3425	1131	20171201	520
3426	1131	20171201	520
3427	1131	20171201	4940
3428	1131	20171202	520
3429	1131	20171202	2680
3430	1132	20171124	4120
3431	1132	20171124	4120
3432	1132	20171124	46290
3433	1132	20171125	6180
3434	1132	20171125	6180
3435	1132	20171125	70980
3436	1133	20171124	1030
3437	1133	20171124	1030
3438	1133	20171124	9260
3439	1133	20171125	1550
3440	1133	20171125	1550
3441	1133	20171125	15430
3442	1134	20171124	1550
3443	1134	20171124	1550
3444	1134	20171124	14710
3445	1134	20171125	1550
3446	1134	20171125	1550
3447	1134	20171125	14710
3448	1135	20171126	10290
3449	1135	20171126	10290
3450	1135	20171126	68920
3451	1136	20171126	1550
3452	1136	20171126	1550
3453	1136	20171126	8230
3454	1137	20171126	520
3455	1137	20171126	520
3456	1137	20171126	2680
3457	1138	20171126	1030
3458	1138	20171126	1030
3459	1138	20171126	5460
3460	1139	20171126	1030
3461	1139	20171126	1030
3462	1139	20171126	5460
3463	1140	20171126	1030
3464	1140	20171126	1030
3465	1140	20171126	5460
3466	1141	20171126	1550
3467	1141	20171126	1550
3468	1141	20171126	8130
3469	1142	20171126	2580
3470	1143	20171130	1750
3484	1149	20171202	12350
3485	1150	20171203	520
3486	1150	20171203	2680
3487	1151	20171204	7200
3488	1151	20171206	34200
3513	1160	20171209	2060
3514	1160	20171209	2060
3515	1160	20171209	15430
3516	1161	20171209	210
3517	1161	20171209	210
3518	1161	20171209	930
3519	1162	20171209	420
3520	1162	20171209	420
3521	1162	20171209	2060
3522	1163	20171208	4120
3523	1163	20171208	4120
3524	1163	20171208	4120
3525	1163	20171208	46290
3526	1164	20171208	520
3527	1164	20171208	520
3528	1164	20171208	520
3529	1164	20171208	4940
3530	1165	20171208	210
3531	1165	20171208	210
3532	1165	20171208	210
3533	1165	20171208	1750
3534	1166	20171208	520
3535	1166	20171208	520
3536	1166	20171208	520
3537	1166	20171208	4940
3538	1167	20171208	420
3539	1167	20171208	420
3540	1167	20171208	420
3541	1167	20171208	3810
3542	1168	20171208	310
3543	1168	20171208	310
3544	1168	20171208	310
3545	1168	20171208	2780
3546	1169	20171208	520
3547	1169	20171208	520
3548	1169	20171208	520
3549	1169	20171208	4940
3550	1169	20171209	520
3551	1169	20171209	520
3552	1169	20171209	520
3553	1169	20171209	4940
3578	1176	20171128	0
3579	1176	20171129	0
3580	1176	20171130	0
3581	1177	20171207	1560
3582	1177	20171207	8040
3583	1178	20171220	7410
3587	1180	20171221	1550
3588	1180	20171221	1550
3589	1180	20171221	8130
3591	1182	20171203	10290
3592	1182	20171203	68920
3593	1183	20171203	210
3594	1183	20171203	930
3595	1184	20171203	520
3596	1184	20171203	2680
3597	1185	20171203	420
3598	1185	20171203	2060
3624	1195	20171203	15430
3625	1196	20171202	930
3626	1196	20171203	930
3627	1197	20171202	1960
3628	1197	20171203	2060
3629	1198	20171202	1440
3630	1198	20171203	1550
3631	1199	20171203	2680
3632	1200	20171202	7200
3633	1201	20171202	2470
3634	1201	20171203	2680
3649	1206	20171204	9260
3650	1206	20171206	9260
3651	1206	20171207	9260
3652	1206	20171208	9260
3653	1206	20171209	1550
3654	1206	20171209	5150
3655	1207	20171207	420
3656	1207	20171209	210
3657	1207	20171209	420
3658	1208	20171207	830
3659	1208	20171208	3090
3660	1208	20171209	420
3661	1208	20171209	830
3662	1209	20171209	6180
3692	1218	20171202	0
3693	1219	20171202	0
3696	1222	20171228	1750
3699	1225	20171202	57600
3701	1227	20171201	420
3702	1228	20171203	420
3703	1229	20171204	25720
3704	1230	20171204	930
3705	1231	20171204	2680
3706	1232	20171204	1550
3707	1233	20171204	2680
3708	1234	20171209	111090
3709	1235	20171208	210
3710	1235	20171208	1750
3711	1235	20171209	210
3712	1235	20171209	1750
3713	1236	20171208	520
3714	1236	20171208	4940
3715	1236	20171209	520
3716	1236	20171209	4940
3717	1237	20171208	420
3718	1237	20171208	3810
3719	1237	20171209	420
3720	1237	20171209	3810
3721	1238	20171208	310
3722	1238	20171208	2780
3723	1238	20171209	310
3724	1238	20171209	2780
3725	1239	20171208	520
3726	1239	20171208	4940
3727	1239	20171209	520
3728	1239	20171209	4940
3729	1240	20171208	520
3730	1240	20171208	4940
3731	1240	20171209	520
3732	1240	20171209	4940
3733	1241	20171208	4120
3734	1241	20171208	46290
3735	1241	20171209	6180
3736	1241	20171209	33950
3737	1242	20171202	43200
3738	1243	20171203	43200
3741	1246	20171202	420
3746	1251	20171201	420
3751	1256	20171202	1750
3752	1257	20180208	6180
3754	1259	20171202	4940
3755	1260	20180202	17490
\.


--
-- TOC entry 2471 (class 0 OID 16525)
-- Dependencies: 226
-- Data for Name: t_reserve_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_detail (r_id, rb_id, occupy, unit_info, reserve_date, time1, time2, time3, time4, charge, aircon_time1, aircon_time2, aircon_time3, aircon_time4, lighting, lighting_time1, lighting_time2, lighting_time3, lighting_time4) FROM stdin;
230	96	1	00000000000000000	20170324	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
231	96	1	00000000000000000	20170324	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
232	96	1	00000000000000000	20170324	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
233	97	1	00000000000000000	20170324	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
234	97	1	00000000000000000	20170324	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
235	97	1	00000000000000000	20170324	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
242	100	1	00000000000000000	20170324	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
243	100	1	00000000000000000	20170324	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
244	101	1	00000000000000000	20170324	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
245	101	1	00000000000000000	20170324	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
246	101	1	00000000000000000	20170324	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
247	102	1	00000000000000000	20170324	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
248	103	1	00000000000000000	20170329	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
249	103	1	00000000000000000	20170329	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
250	103	1	00000000000000000	20170329	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
251	103	1	00000000000000000	20170329	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
252	103	1	00000000000000000	20170329	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
253	103	1	00000000000000000	20170329	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
254	103	1	00000000000000000	20170329	0	0	0	983040	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
255	103	1	00000000000000000	20170329	0	0	0	15728640	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
256	104	1	00000000000000000	20170329	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
257	105	1	00000000000000000	20170329	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
258	105	1	00000000000000000	20170329	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
259	105	1	00000000000000000	20170329	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
260	105	1	00000000000000000	20170329	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
261	105	1	00000000000000000	20170329	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
262	105	1	00000000000000000	20170329	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
263	105	1	00000000000000000	20170329	0	0	0	983040	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
264	105	1	00000000000000000	20170329	0	0	0	15728640	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
265	106	1	00000000000000000	20170329	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
266	107	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
267	107	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
268	107	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
269	107	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
270	108	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
301	115	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
302	115	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
303	115	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
304	115	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
305	115	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
306	116	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
307	116	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
308	116	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
309	116	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
310	116	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
311	117	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
312	117	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
313	117	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
314	117	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
315	117	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
316	118	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
317	118	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
318	118	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
319	118	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
320	118	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
321	119	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
322	119	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
323	119	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
324	119	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
325	119	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
326	120	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327	120	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
328	120	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
329	120	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
330	120	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
331	121	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
332	121	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
333	121	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
334	122	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
335	122	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
362	131	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
363	132	1	00000000000000000	20170903	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
364	132	1	00000000000000000	20170903	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
365	132	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
366	133	1	00000000000000000	20170903	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
367	133	1	00000000000000000	20170903	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
368	133	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
369	133	1	00000000000000000	20170903	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
370	133	1	00000000000000000	20170903	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
371	133	1	00000000000000000	20170903	0	0	0	983040	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
372	134	1	00000000000000000	20170903	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
373	134	1	00000000000000000	20170903	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
374	135	1	00000000000000000	20170903	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
375	135	1	00000000000000000	20170903	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
376	135	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
377	135	1	00000000000000000	20170903	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
378	135	1	00000000000000000	20170903	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
379	136	1	00000000000000000	20170903	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
380	136	1	00000000000000000	20170903	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
381	136	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
382	136	1	00000000000000000	20170903	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
383	136	1	00000000000000000	20170903	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
392	139	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
393	139	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
394	139	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
395	139	1	00000000000000000	20170902	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
396	139	1	00000000000000000	20170902	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
397	139	1	00000000000000000	20170903	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
398	139	1	00000000000000000	20170903	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
399	139	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
400	140	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
401	140	1	00000000000000000	20170903	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
402	140	1	00000000000000000	20170903	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
403	141	1	00000000000000000	20170902	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
404	141	1	00000000000000000	20170902	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
405	141	1	00000000000000000	20170902	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
406	142	1	00000000000000000	20170903	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
408	144	1	00000000000000000	20170903	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
409	145	1	00000000000000000	20170904	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
410	146	1	00000000000000000	20170904	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
411	147	1	00000000000000000	20170906	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
412	147	1	00000000000000000	20170906	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
413	147	1	00000000000000000	20170906	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
414	148	1	00000000000000000	20170906	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
420	151	1	00000000000000000	20170907	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
421	151	1	00000000000000000	20170907	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
422	151	1	00000000000000000	20170907	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
423	152	1	00000000000000000	20171022	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
424	153	1	00000000000000000	20171021	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
425	153	1	00000000000000000	20171022	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
426	153	1	00000000000000000	20171022	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
427	154	1	00000000000000000	20171021	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
428	154	1	00000000000000000	20171022	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
429	154	1	00000000000000000	20171022	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
430	154	1	00000000000000000	20171022	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
431	154	1	00000000000000000	20171022	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3031	714	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3523	816	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3032	714	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
522	186	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3033	714	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3312	770	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3313	770	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3314	770	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3315	770	1	00000000000000000	20171216	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3316	770	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3395	797	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3396	797	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3397	797	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3398	797	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3399	798	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3400	798	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3401	798	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3402	799	1	00000000000000000	20171127	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3403	799	1	00000000000000000	20171129	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3404	799	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3524	816	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3525	816	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3526	816	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3527	816	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3528	816	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3405	799	1	00000000000000000	20171129	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3406	799	1	00000000000000000	20171129	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3407	799	1	00000000000000000	20171129	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3408	799	1	00000000000000000	20171130	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3409	799	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3410	799	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3411	799	1	00000000000000000	20171130	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3412	799	1	00000000000000000	20171130	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3413	799	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3414	799	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3415	799	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3416	799	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3417	799	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3418	799	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3419	799	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3420	799	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3421	799	1	00000000000000000	20171202	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3422	799	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3034	715	1	00000000000000000	20171109	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3035	715	1	00000000000000000	20171109	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3036	715	1	00000000000000000	20171109	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
705	249	1	00000000000000000	20171115	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3317	771	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3355	789	1	00000000000000000	20171221	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3423	800	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3424	800	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3425	800	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3426	801	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3427	801	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3428	801	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3429	801	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3430	801	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3431	801	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3432	802	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3433	802	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3434	802	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3435	802	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3436	802	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3437	802	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3438	802	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3439	802	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3440	803	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
730	257	1	00000000000000000	20171117	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
731	257	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
732	257	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
733	257	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3529	816	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3530	816	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
775	262	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
776	262	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
777	262	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
778	263	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
779	263	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
780	263	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
781	263	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
782	263	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
783	263	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
784	264	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
785	264	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
786	264	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
787	264	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
788	264	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
789	264	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
790	265	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
791	265	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
792	265	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3531	816	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3532	816	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3533	816	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3534	816	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3535	817	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3536	817	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3537	817	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3538	818	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3539	818	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3441	803	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3442	803	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3443	803	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3444	803	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3445	803	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3446	803	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3447	803	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3448	804	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3449	804	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3450	804	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3451	804	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3452	804	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3453	804	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3454	804	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3455	804	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3456	805	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3457	805	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3458	805	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3459	805	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3460	805	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3461	805	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3462	805	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3463	805	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3464	805	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3540	818	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3541	818	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3542	818	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3543	818	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3544	818	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3545	818	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3546	818	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3547	818	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3548	818	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3549	818	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3550	818	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3551	818	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3552	818	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3553	819	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3554	819	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3555	819	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3556	819	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3557	819	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3558	819	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3559	819	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3560	819	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3561	819	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3562	819	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3563	819	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3564	819	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3565	819	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3566	819	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3567	819	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3568	820	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3569	820	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3570	820	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3571	820	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3572	820	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3573	820	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3574	820	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3575	820	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3576	820	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3577	820	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3578	820	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3579	820	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3580	820	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3581	820	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3582	820	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3583	821	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3584	821	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3585	821	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3586	821	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3587	821	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3588	821	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3589	821	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3590	821	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3591	821	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3592	821	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3593	821	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3594	821	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3595	821	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3596	821	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3597	821	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3598	822	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3599	822	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3600	822	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3601	822	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3602	822	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3603	822	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3604	822	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3605	822	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3606	822	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3607	822	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3608	822	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3609	822	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3610	822	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3611	822	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3612	822	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1154	340	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1155	340	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1156	340	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1157	340	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1158	340	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1159	341	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1160	342	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1161	342	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1162	342	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1163	342	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1164	342	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1165	342	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1166	343	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1167	343	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1168	343	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1169	343	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1170	343	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1171	343	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1172	344	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1173	344	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1174	344	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1175	344	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1176	344	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1177	344	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1178	345	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1179	345	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1180	345	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1181	345	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1182	345	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1183	345	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3639	828	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3640	828	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3641	829	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3642	829	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3643	829	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3644	830	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3645	830	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3646	830	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3647	830	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3648	830	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3649	831	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3650	831	1	00000000000000000	20171203	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3651	831	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3652	831	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3653	831	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3654	832	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3655	832	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3656	832	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3657	832	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3658	832	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3659	833	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3660	833	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1209	352	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1210	352	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1211	352	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1212	352	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1213	352	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1214	352	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1215	352	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1216	352	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1217	352	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1218	352	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1219	352	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1220	352	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1221	353	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1222	353	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1223	353	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1224	354	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1225	354	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1226	354	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1227	354	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1228	354	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1229	354	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1230	354	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1231	354	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1232	354	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1233	354	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1234	354	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1235	354	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1236	354	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1237	354	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1238	354	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1239	355	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1240	355	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1241	355	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1242	355	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1243	355	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1244	355	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1245	355	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1246	355	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1247	355	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1248	355	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1249	355	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1250	355	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1251	355	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1252	355	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1253	355	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1254	356	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1255	356	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1256	356	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1257	356	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1258	356	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1259	356	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1260	356	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1261	356	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1262	356	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1263	356	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1264	356	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1265	356	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1266	356	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1267	356	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1268	356	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1269	357	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1270	357	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1271	357	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1272	357	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1273	357	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1274	357	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1275	357	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1276	357	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1277	357	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1278	357	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1279	357	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1280	357	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1281	357	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1282	357	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1283	357	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1284	358	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1285	358	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1286	358	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1287	358	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1288	358	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1289	358	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1290	358	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1291	358	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1292	358	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1293	358	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1294	358	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1295	358	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1296	358	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1297	358	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1298	358	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3661	833	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3662	833	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1301	361	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1302	361	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1303	361	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1304	361	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1305	361	1	00000000000000000	20171216	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1306	361	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1307	361	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1308	361	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1309	362	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1310	362	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1311	362	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1312	363	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1313	363	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1314	363	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1315	363	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1316	363	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1317	364	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1318	364	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1319	364	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1320	364	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1321	364	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1322	365	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1323	365	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1324	365	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1325	365	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1326	365	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3663	833	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1328	367	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1329	367	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1330	368	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1331	368	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1332	368	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1333	369	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1334	369	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1335	369	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1336	369	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1337	369	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1338	370	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1339	370	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1340	370	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1341	370	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1342	370	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1343	371	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1344	371	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1345	371	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1346	371	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1347	372	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1348	372	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1349	372	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1350	372	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1351	372	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1352	373	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1353	373	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1354	373	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1355	373	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1356	373	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3664	834	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3665	834	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3666	834	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3667	834	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3668	835	1	00000000000000000	20171227	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3669	836	1	00000000000000000	20171227	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3670	836	1	00000000000000000	20171227	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3671	836	1	00000000000000000	20171227	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3672	837	1	00000000000000000	20171227	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3673	837	1	00000000000000000	20171227	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3674	837	1	00000000000000000	20171227	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1397	390	1	00000000000000000	20171227	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1398	390	1	00000000000000000	20171227	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1399	391	1	00000000000000000	20171227	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1400	392	1	00000000000000000	20171227	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1401	392	1	00000000000000000	20171227	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1402	392	1	00000000000000000	20171227	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1403	393	1	00000000000000000	20171228	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1404	393	1	00000000000000000	20171228	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1405	393	1	00000000000000000	20171228	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3318	772	1	00000000000000000	20171222	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3319	772	1	00000000000000000	20171222	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3320	773	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3321	774	1	00000000000000000	20171222	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3322	774	1	00000000000000000	20171222	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3323	774	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3324	775	1	00000000000000000	20171222	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3325	775	1	00000000000000000	20171222	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3326	775	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3327	776	1	00000000000000000	20171222	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3328	776	1	00000000000000000	20171222	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3329	776	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3059	723	1	00000000000000000	20171124	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3060	723	1	00000000000000000	20171124	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3061	723	1	00000000000000000	20171124	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3062	723	1	00000000000000000	20171124	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3063	723	1	00000000000000000	20171124	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3064	723	1	00000000000000000	20171125	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3065	723	1	00000000000000000	20171125	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3066	723	1	00000000000000000	20171125	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3067	723	1	00000000000000000	20171125	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3068	723	1	00000000000000000	20171125	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3069	723	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3070	723	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3071	723	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3072	723	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3073	724	1	00000000000000000	20171124	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3074	724	1	00000000000000000	20171124	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3075	724	1	00000000000000000	20171124	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3076	724	1	00000000000000000	20171124	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3077	724	1	00000000000000000	20171124	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3078	724	1	00000000000000000	20171125	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3079	724	1	00000000000000000	20171125	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3080	724	1	00000000000000000	20171125	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3081	724	1	00000000000000000	20171125	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3082	724	1	00000000000000000	20171125	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3083	724	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3084	724	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3085	724	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3086	724	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3087	725	1	00000000000000000	20171125	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3088	725	1	00000000000000000	20171126	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3089	726	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3090	726	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3091	726	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3092	726	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3093	727	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3094	727	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3095	727	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3096	727	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3097	728	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3098	728	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3099	728	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3100	728	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3101	729	1	00000000000000000	20171124	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3102	729	1	00000000000000000	20171124	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3103	729	1	00000000000000000	20171124	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3104	729	1	00000000000000000	20171124	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3105	729	1	00000000000000000	20171124	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3106	729	1	00000000000000000	20171125	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3107	729	1	00000000000000000	20171125	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3108	729	1	00000000000000000	20171125	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3109	729	1	00000000000000000	20171125	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3110	729	1	00000000000000000	20171125	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3111	729	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3112	729	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3113	729	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3114	729	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3200	753	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3201	753	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3202	753	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3203	753	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3204	753	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3205	753	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3206	753	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3207	753	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3208	753	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3209	754	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3210	754	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3211	754	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3212	755	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3213	755	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3214	755	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3215	755	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3216	755	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3217	755	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3218	755	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3219	755	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3220	755	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3221	755	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3222	755	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3223	755	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3224	756	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3225	756	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3226	756	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3227	756	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3228	756	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3229	756	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3230	756	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3231	756	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3232	756	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3233	756	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3234	756	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3235	756	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3236	757	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3237	757	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3238	757	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3239	757	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3240	757	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3241	757	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3242	757	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3243	757	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3244	757	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3245	757	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3246	757	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3247	757	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3248	758	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3249	758	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3250	758	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3251	758	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3252	758	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3253	758	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3254	758	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3255	758	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3256	758	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3257	758	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3258	758	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3259	758	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3260	759	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3261	759	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3262	759	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3263	759	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3264	759	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3265	759	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3266	759	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3267	759	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3268	759	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3269	759	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3270	759	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3271	759	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3272	760	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3273	760	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3274	760	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3275	760	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3276	760	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3277	760	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3278	760	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3279	760	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3280	760	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3281	760	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3282	760	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3283	760	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3330	777	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3331	778	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3332	778	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3333	778	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3334	779	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3335	779	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3336	779	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3337	780	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3338	780	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3339	780	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3340	781	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3341	781	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3342	781	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3343	781	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3122	732	1	00000000000000000	20171127	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3123	732	1	00000000000000000	20171129	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3124	732	1	00000000000000000	20171130	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3125	732	1	00000000000000000	20171201	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3126	733	1	00000000000000000	20171202	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3127	733	1	00000000000000000	20171203	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3128	734	1	00000000000000000	20171127	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3129	734	1	00000000000000000	20171129	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3130	734	1	00000000000000000	20171130	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3131	734	1	00000000000000000	20171201	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3132	735	1	00000000000000000	20171202	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3133	735	1	00000000000000000	20171203	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3344	782	1	00000000000000000	20171224	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3345	783	1	00000000000000000	20171224	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3346	783	1	00000000000000000	20171224	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3347	783	1	00000000000000000	20171224	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3348	784	1	00000000000000000	20171224	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3349	784	1	00000000000000000	20171224	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3350	784	1	00000000000000000	20171224	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3361	792	1	00000000000000000	20171117	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3362	792	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3363	792	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3364	792	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3675	838	1	00000000000000000	20171227	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3676	838	1	00000000000000000	20171227	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3309	767	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3351	785	1	00000000000000000	20171225	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3365	793	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3366	793	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3367	793	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1975	508	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1976	508	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1977	508	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1978	509	1	00000000000000000	20171127	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1979	509	1	00000000000000000	20171129	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1980	509	1	00000000000000000	20171129	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1981	509	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1982	509	1	00000000000000000	20171129	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1983	509	1	00000000000000000	20171129	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1984	509	1	00000000000000000	20171130	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1985	509	1	00000000000000000	20171130	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1986	509	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1987	509	1	00000000000000000	20171130	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1988	509	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1989	509	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1990	509	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1991	509	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1992	509	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1993	509	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1994	510	1	00000000000000000	20171127	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1995	510	1	00000000000000000	20171129	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1996	510	1	00000000000000000	20171129	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1997	510	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1998	510	1	00000000000000000	20171129	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1999	510	1	00000000000000000	20171129	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2000	510	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2001	510	1	00000000000000000	20171130	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2002	510	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2003	510	1	00000000000000000	20171130	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2004	510	1	00000000000000000	20171130	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2005	510	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2006	510	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2007	510	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2008	510	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2009	510	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2010	510	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2011	510	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2012	510	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2013	511	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2014	511	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2015	511	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2016	511	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2017	511	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2018	511	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2019	512	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2020	512	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2021	512	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2022	512	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2023	512	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2024	512	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2025	513	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2026	513	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2027	513	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2035	516	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2036	516	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2037	516	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2038	516	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2039	516	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2040	516	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2041	517	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2042	517	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2043	517	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2044	517	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2045	517	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2046	517	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2047	517	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2048	517	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2049	517	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2050	518	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2051	518	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2052	518	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2053	519	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2054	519	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2055	519	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2056	519	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2057	519	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2058	519	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2059	519	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2060	519	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2061	520	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2062	520	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2063	520	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2064	520	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2065	520	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2066	520	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2067	520	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2068	520	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2069	521	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2070	521	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2071	521	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2072	521	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2073	521	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2074	521	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2075	521	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2076	521	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2114	526	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2115	527	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2116	527	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2117	527	1	00000000000000000	20171204	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2118	527	1	00000000000000000	20171204	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2119	527	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2120	527	1	00000000000000000	20171206	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2121	527	1	00000000000000000	20171206	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2122	527	1	00000000000000000	20171206	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2123	527	1	00000000000000000	20171206	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2124	527	1	00000000000000000	20171206	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2125	527	1	00000000000000000	20171207	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2126	527	1	00000000000000000	20171207	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2127	527	1	00000000000000000	20171207	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2128	527	1	00000000000000000	20171207	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2129	527	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2130	527	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2131	527	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2132	527	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2133	527	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2134	527	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2135	527	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2136	527	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2137	527	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2138	528	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2139	528	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2140	528	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2141	529	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2142	529	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2143	529	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2144	529	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2145	529	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2146	529	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3310	768	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3352	786	1	00000000000000000	20171206	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3368	794	1	00000000000000000	20171127	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3369	794	1	00000000000000000	20171129	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3370	794	1	00000000000000000	20171129	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3371	794	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3372	794	1	00000000000000000	20171129	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3373	794	1	00000000000000000	20171129	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3374	794	1	00000000000000000	20171130	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3375	794	1	00000000000000000	20171130	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3376	794	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3377	794	1	00000000000000000	20171130	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3378	794	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2548	597	1	00000000000000000	20171101	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2559	601	1	00000000000000000	20171102	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2560	601	1	00000000000000000	20171102	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2561	602	1	00000000000000000	20171102	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2562	602	1	00000000000000000	20171102	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2563	602	1	00000000000000000	20171102	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2564	603	1	00000000000000000	20171102	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2565	603	1	00000000000000000	20171102	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2566	603	1	00000000000000000	20171102	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2567	603	1	00000000000000000	20171102	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2568	603	1	00000000000000000	20171102	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2569	604	1	00000000000000000	20171102	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2570	604	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2571	604	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2572	605	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2573	606	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2574	606	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2575	606	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2576	607	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2577	607	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2578	607	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2579	608	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2580	608	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2581	608	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2582	609	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2583	609	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2584	609	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2585	610	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2586	610	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2587	610	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2588	611	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2589	611	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2590	611	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2591	612	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2592	612	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2593	612	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2594	613	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2595	613	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2596	613	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2597	614	1	00000000000000000	20171103	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2598	614	1	00000000000000000	20171103	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2599	614	1	00000000000000000	20171103	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2600	615	1	00000000000000000	20171102	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2674	639	1	00000000000000000	20171109	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2737	657	1	00000000000000000	20171110	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2738	657	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2739	657	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2740	657	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2741	657	1	00000000000000000	20171111	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2742	657	1	00000000000000000	20171111	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2743	657	1	00000000000000000	20171112	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2744	657	1	00000000000000000	20171112	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2745	658	1	00000000000000000	20171112	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2746	658	1	00000000000000000	20171112	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2747	658	1	00000000000000000	20171112	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2748	659	1	00000000000000000	20171112	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2749	659	1	00000000000000000	20171112	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2750	659	1	00000000000000000	20171112	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2751	659	1	00000000000000000	20171112	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2752	659	1	00000000000000000	20171112	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2753	660	1	00000000000000000	20171112	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2754	660	1	00000000000000000	20171112	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2755	660	1	00000000000000000	20171112	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2756	660	1	00000000000000000	20171112	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2757	660	1	00000000000000000	20171112	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2758	661	1	00000000000000000	20171110	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2759	662	1	00000000000000000	20171110	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2760	662	1	00000000000000000	20171110	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2761	662	1	00000000000000000	20171110	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2762	663	1	00000000000000000	20171110	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2763	664	1	00000000000000000	20171120	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2764	665	1	00000000000000000	20171120	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2765	666	1	00000000000000000	20171120	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2774	670	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2775	670	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2776	671	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2777	672	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2778	672	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2779	672	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2780	673	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2781	673	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2782	673	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2783	674	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2784	674	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2785	674	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2786	675	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2787	675	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2788	675	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2789	676	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2790	676	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2791	676	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2792	677	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2793	677	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2794	677	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2795	678	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2796	678	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2797	679	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2798	680	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2799	680	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2800	680	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2801	681	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2802	682	1	00000000000000000	20171113	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2803	682	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2804	682	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2805	682	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3311	769	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3353	787	1	00000000000000000	20171227	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3379	794	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3380	794	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3381	794	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3382	794	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3383	794	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3384	795	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3385	795	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3386	795	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3387	796	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3388	796	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3389	796	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3390	796	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3391	796	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3392	796	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3393	797	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3394	797	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3756	864	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3757	864	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3758	864	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3759	864	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3760	865	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3761	866	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3762	866	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3763	866	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3764	866	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3765	866	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3766	867	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3767	867	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3768	867	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3769	867	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3770	867	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3771	868	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3772	868	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3773	868	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3774	868	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3775	868	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3776	869	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3777	869	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3778	869	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3779	869	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3780	869	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3781	870	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3782	870	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3783	870	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3784	870	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3785	870	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3786	871	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3787	871	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3788	871	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3789	871	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3790	871	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3793	874	1	00000000000000000	20171102	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3794	875	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3795	875	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3796	876	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3797	876	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3798	876	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3799	877	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3800	877	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3801	877	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3802	877	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3803	877	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3804	878	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3860	892	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3861	892	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3862	892	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3863	893	1	00000000000000000	20171110	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3864	894	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3865	894	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3866	894	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3867	894	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3868	894	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3869	895	1	00000000000000000	20171104	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3870	895	1	00000000000000000	20171104	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3871	895	1	00000000000000000	20171104	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3872	895	1	00000000000000000	20171104	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3873	895	1	00000000000000000	20171104	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3874	896	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3875	897	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3876	897	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3877	897	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3878	897	1	00000000000000000	20171204	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3879	897	1	00000000000000000	20171204	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3880	897	1	00000000000000000	20171206	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3881	897	1	00000000000000000	20171206	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3882	897	1	00000000000000000	20171206	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3883	897	1	00000000000000000	20171206	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3884	897	1	00000000000000000	20171206	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3885	897	1	00000000000000000	20171207	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3886	897	1	00000000000000000	20171207	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3887	897	1	00000000000000000	20171207	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3888	897	1	00000000000000000	20171207	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3889	897	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3890	897	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3891	897	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3892	897	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3893	897	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3894	897	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3895	897	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3896	897	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3897	897	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3898	898	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3899	898	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3900	898	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3901	899	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3902	899	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3903	899	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3904	899	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3905	899	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3906	899	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3991	908	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3992	909	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3993	909	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3994	909	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3995	910	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3996	910	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3997	910	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3998	910	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3999	910	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4000	910	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4001	911	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4002	911	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4003	911	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4004	911	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4005	911	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4006	911	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4007	912	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4008	912	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4009	912	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4010	912	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4011	912	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4012	912	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4013	913	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4014	913	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4015	913	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4016	913	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4017	913	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4018	913	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4019	914	1	00000000000000000	20171211	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4020	914	1	00000000000000000	20171211	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4021	914	1	00000000000000000	20171211	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4022	914	1	00000000000000000	20171211	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4023	915	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4024	916	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4025	916	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4026	916	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4027	916	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4028	916	1	00000000000000000	20171216	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4029	916	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4030	916	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4031	917	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4032	917	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4033	917	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4034	918	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4035	918	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4036	918	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4037	918	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4038	918	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4039	919	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4040	919	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4041	919	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4042	919	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4043	919	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4044	920	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4045	920	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4046	920	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4047	920	1	00000000000000000	20171217	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4048	920	1	00000000000000000	20171217	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4049	921	1	00000000000000000	20171105	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4050	921	1	00000000000000000	20171105	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4051	921	1	00000000000000000	20171105	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4052	921	1	00000000000000000	20171105	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4053	921	1	00000000000000000	20171105	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4054	922	1	00000000000000000	20171105	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4055	922	1	00000000000000000	20171105	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4056	922	1	00000000000000000	20171105	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4057	922	1	00000000000000000	20171105	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4058	922	1	00000000000000000	20171105	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4059	923	1	00000000000000000	20171105	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4060	923	1	00000000000000000	20171105	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4061	923	1	00000000000000000	20171105	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4062	923	1	00000000000000000	20171105	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4063	923	1	00000000000000000	20171105	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4064	924	1	00000000000000000	20171105	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4065	924	1	00000000000000000	20171105	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4066	924	1	00000000000000000	20171105	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4067	924	1	00000000000000000	20171105	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4068	924	1	00000000000000000	20171105	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4069	925	1	00000000000000000	20171106	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4070	925	1	00000000000000000	20171106	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4071	925	1	00000000000000000	20171106	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4072	926	1	00000000000000000	20171106	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4077	928	1	00000000000000000	20171108	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4078	928	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4079	928	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4080	928	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4081	929	1	00000000000000000	20171109	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4082	929	1	00000000000000000	20171109	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4083	929	1	00000000000000000	20171109	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4123	941	1	00000000000000000	20171110	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4124	941	1	00000000000000000	20171110	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4125	941	1	00000000000000000	20171110	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4145	948	1	00000000000000000	20171110	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4156	951	1	00000000000000000	20171112	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4157	952	1	00000000000000000	20171105	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4158	952	1	00000000000000000	20171105	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4159	952	1	00000000000000000	20171105	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4160	952	1	00000000000000000	20171105	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4161	952	1	00000000000000000	20171105	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4163	954	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4178	960	1	00000000000000000	20171108	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4179	960	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4180	960	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4181	960	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4182	961	1	00000000000000000	20171108	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4183	961	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4184	961	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4185	961	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4186	962	1	00000000000000000	20171108	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4187	962	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4188	962	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4189	962	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4190	963	1	00000000000000000	20171108	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4191	963	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4192	963	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4193	963	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4194	964	1	00000000000000000	20171108	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4195	964	1	00000000000000000	20171108	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4196	964	1	00000000000000000	20171108	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4197	964	1	00000000000000000	20171108	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4198	965	1	00000000000000000	20171108	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4260	979	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4261	980	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4262	980	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4263	980	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4264	981	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4265	981	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4266	981	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4267	982	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4268	982	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4269	982	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4270	983	1	00000000000000000	20171222	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4271	983	1	00000000000000000	20171223	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4272	983	1	00000000000000000	20171223	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4273	983	1	00000000000000000	20171223	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4309	991	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4310	991	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4311	991	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4312	992	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4313	992	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4314	992	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4315	993	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4316	993	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4317	993	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4318	994	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4319	994	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4320	994	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4321	995	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4322	995	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4323	995	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4324	996	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4325	996	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4326	996	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4327	996	1	00000000000000000	20171111	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4328	996	1	00000000000000000	20171111	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4329	997	1	00000000000000000	20171111	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4330	997	1	00000000000000000	20171111	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4331	997	1	00000000000000000	20171111	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4332	997	1	00000000000000000	20171111	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4333	998	1	00000000000000000	20171112	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4334	998	1	00000000000000000	20171112	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4335	998	1	00000000000000000	20171112	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4336	998	1	00000000000000000	20171112	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4337	998	1	00000000000000000	20171112	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4338	999	1	00000000000000000	20171112	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4340	1001	1	00000000000000000	20171112	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4341	1002	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4342	1002	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4343	1002	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4344	1003	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4345	1003	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4346	1003	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4347	1004	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4348	1004	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4349	1004	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4350	1005	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4351	1005	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4352	1005	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4353	1006	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4354	1007	1	00000000000000000	20171113	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4355	1007	1	00000000000000000	20171113	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4356	1007	1	00000000000000000	20171113	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4357	1007	1	00000000000000000	20171113	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4358	1008	1	00000000000000000	20171115	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4359	1009	1	00000000000000000	20171115	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4360	1009	1	00000000000000000	20171115	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4361	1009	1	00000000000000000	20171115	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4362	1009	1	00000000000000000	20171115	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4363	1010	1	00000000000000000	20171115	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4364	1010	1	00000000000000000	20171115	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4365	1010	1	00000000000000000	20171115	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4366	1011	1	00000000000000000	20171115	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4367	1012	1	00000000000000000	20171115	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4430	1023	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4431	1023	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4432	1023	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4433	1024	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4434	1025	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4435	1025	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4436	1025	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4437	1025	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4438	1025	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4439	1025	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4440	1026	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4441	1026	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4442	1026	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4443	1026	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4444	1026	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4445	1026	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4446	1027	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4447	1027	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4448	1027	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4449	1027	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4450	1027	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4451	1027	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4452	1028	1	00000000000000000	20171210	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4453	1028	1	00000000000000000	20171210	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4454	1028	1	00000000000000000	20171210	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4455	1028	1	00000000000000000	20171210	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4456	1028	1	00000000000000000	20171210	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4457	1028	1	00000000000000000	20171210	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4458	1029	1	00000000000000000	20171211	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4459	1029	1	00000000000000000	20171211	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4460	1029	1	00000000000000000	20171211	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4461	1029	1	00000000000000000	20171211	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4462	1030	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4463	1030	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4464	1030	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4465	1030	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4466	1030	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4467	1030	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4468	1030	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4469	1030	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4470	1030	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4471	1030	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4472	1030	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4473	1030	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4474	1031	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4475	1031	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4476	1031	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4477	1032	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4478	1032	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4479	1032	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4480	1032	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4481	1032	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4482	1032	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4483	1032	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4484	1032	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4485	1032	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4486	1032	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4487	1032	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4488	1032	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4489	1032	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4490	1032	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4491	1032	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4492	1033	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4493	1033	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4494	1033	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4495	1033	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4496	1033	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4497	1033	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4498	1033	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4499	1033	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4500	1033	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4501	1033	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4502	1033	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4503	1033	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4504	1033	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4505	1033	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4506	1033	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4507	1034	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4508	1034	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4509	1034	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4510	1034	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4511	1034	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4512	1034	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4513	1034	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4514	1034	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4515	1034	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4516	1034	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4517	1034	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4518	1034	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4519	1034	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4520	1034	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4521	1034	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4522	1035	1	00000000000000000	20171214	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4523	1035	1	00000000000000000	20171214	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4524	1035	1	00000000000000000	20171214	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4525	1035	1	00000000000000000	20171214	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4526	1035	1	00000000000000000	20171214	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4527	1035	1	00000000000000000	20171214	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4528	1035	1	00000000000000000	20171215	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4529	1035	1	00000000000000000	20171215	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4530	1035	1	00000000000000000	20171215	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4531	1035	1	00000000000000000	20171215	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4532	1035	1	00000000000000000	20171215	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4533	1035	1	00000000000000000	20171216	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4534	1035	1	00000000000000000	20171216	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4535	1035	1	00000000000000000	20171216	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4536	1035	1	00000000000000000	20171216	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4561	1042	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4562	1042	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4563	1043	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4564	1043	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4565	1043	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4566	1044	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4567	1044	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4568	1044	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4569	1044	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4570	1044	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4571	1045	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4572	1045	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4573	1045	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4574	1045	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4575	1045	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4576	1046	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4577	1046	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4578	1046	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4579	1046	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4580	1046	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4581	1047	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4582	1047	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4583	1047	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4584	1047	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4585	1048	1	00000000000000000	20171216	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4586	1048	1	00000000000000000	20171217	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4587	1048	1	00000000000000000	20171217	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4588	1048	1	00000000000000000	20171217	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4589	1048	1	00000000000000000	20171217	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4590	1049	1	00000000000000000	20171116	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4591	1049	1	00000000000000000	20171116	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4592	1049	1	00000000000000000	20171116	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4593	1049	1	00000000000000000	20171116	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4594	1049	1	00000000000000000	20171116	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4595	1049	1	00000000000000000	20171116	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4596	1049	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4597	1049	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4598	1049	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4599	1049	1	00000000000000000	20171117	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4600	1049	1	00000000000000000	20171117	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4601	1050	1	00000000000000000	20171116	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4602	1051	1	00000000000000000	20171116	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4603	1051	1	00000000000000000	20171116	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4604	1051	1	00000000000000000	20171116	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4605	1051	1	00000000000000000	20171116	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4606	1051	1	00000000000000000	20171116	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4607	1052	1	00000000000000000	20171117	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4608	1052	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4609	1052	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4610	1052	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4614	1054	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4615	1054	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4616	1054	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4620	1056	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4621	1056	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4622	1056	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4623	1056	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4624	1056	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4625	1056	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4626	1056	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4627	1056	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4628	1056	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4629	1056	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4630	1056	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4631	1057	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4632	1057	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4633	1057	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4634	1057	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4635	1057	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4636	1057	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4637	1057	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4638	1057	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4639	1057	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4640	1057	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4641	1057	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4642	1058	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4643	1058	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4644	1058	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4645	1058	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4646	1058	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4647	1058	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4648	1058	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4649	1058	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4650	1058	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4651	1058	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4652	1058	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4653	1059	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4654	1059	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4655	1059	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4656	1059	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4657	1059	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4658	1059	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4659	1059	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4660	1059	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4661	1059	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4662	1059	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4663	1059	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4664	1060	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4665	1060	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4666	1060	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4667	1060	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4668	1060	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4669	1060	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4670	1060	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4671	1060	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4672	1060	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4673	1060	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4674	1060	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4675	1061	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4676	1061	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4677	1061	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4678	1061	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4679	1061	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4680	1061	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4681	1061	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4682	1061	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4683	1061	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4684	1061	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4685	1061	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4686	1062	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4687	1062	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4688	1062	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4689	1062	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4690	1062	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4691	1062	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4692	1062	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4693	1062	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4694	1062	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4695	1062	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4696	1062	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4697	1063	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4698	1063	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4699	1063	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4700	1063	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4701	1063	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4702	1063	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4703	1063	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4704	1063	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4705	1063	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4706	1063	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4707	1063	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4708	1064	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4709	1064	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4710	1064	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4711	1064	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4712	1064	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4713	1064	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4714	1064	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4715	1064	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4716	1064	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4717	1064	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4718	1064	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4719	1065	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4720	1065	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4721	1065	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4722	1065	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4723	1065	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4724	1065	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4725	1065	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4726	1065	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4727	1065	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4728	1065	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4729	1065	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4730	1066	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4731	1066	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4732	1066	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4733	1066	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4734	1066	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4735	1066	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4736	1066	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4737	1066	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4738	1066	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4739	1066	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4740	1066	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4741	1067	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4742	1067	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4743	1067	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4744	1067	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4745	1067	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4746	1067	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4747	1067	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4748	1067	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4749	1067	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4750	1067	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4751	1067	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4752	1068	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4753	1068	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4754	1068	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4755	1068	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4756	1068	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4757	1068	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4758	1068	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4759	1068	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4760	1068	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4761	1068	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4762	1068	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4763	1069	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4764	1069	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4765	1069	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4766	1069	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4767	1069	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4768	1069	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4769	1069	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4770	1069	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4771	1069	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4772	1069	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4773	1069	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4774	1070	1	00000000000000000	20171118	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4775	1070	1	00000000000000000	20171118	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4776	1070	1	00000000000000000	20171118	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4777	1070	1	00000000000000000	20171118	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4778	1070	1	00000000000000000	20171118	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4779	1070	1	00000000000000000	20171119	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4780	1070	1	00000000000000000	20171119	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4781	1070	1	00000000000000000	20171119	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4782	1070	1	00000000000000000	20171119	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4783	1070	1	00000000000000000	20171119	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4784	1070	1	00000000000000000	20171119	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4785	1071	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4786	1071	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4787	1071	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4791	1073	1	00000000000000000	20171117	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4792	1073	1	00000000000000000	20171117	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4793	1073	1	00000000000000000	20171117	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4801	1076	1	00000000000000000	20171120	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4802	1076	1	00000000000000000	20171120	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4803	1076	1	00000000000000000	20171120	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4804	1076	1	00000000000000000	20171120	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4805	1076	1	00000000000000000	20171120	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4806	1076	1	00000000000000000	20171120	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4807	1077	1	00000000000000000	20171120	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4808	1078	1	00000000000000000	20171120	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4809	1078	1	00000000000000000	20171122	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4810	1078	1	00000000000000000	20171122	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4811	1078	1	00000000000000000	20171122	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4812	1078	1	00000000000000000	20171122	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4813	1078	1	00000000000000000	20171122	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4814	1079	1	00000000000000000	20171120	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4818	1081	1	00000000000000000	20171122	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4819	1081	1	00000000000000000	20171122	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4820	1081	1	00000000000000000	20171122	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4821	1082	1	00000000000000000	20171122	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4822	1082	1	00000000000000000	20171122	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4823	1082	1	00000000000000000	20171122	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4824	1082	1	00000000000000000	20171122	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4825	1083	1	00000000000000000	20171122	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4826	1083	1	00000000000000000	20171122	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4827	1083	1	00000000000000000	20171122	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4828	1083	1	00000000000000000	20171122	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4829	1084	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4830	1084	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4831	1084	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4832	1084	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4833	1084	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4834	1085	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4835	1085	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4836	1085	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4837	1085	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4838	1085	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4839	1086	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4840	1086	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4841	1086	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4842	1086	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4843	1086	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4844	1087	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4845	1087	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4846	1087	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4847	1087	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4848	1087	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4849	1088	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4850	1088	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4851	1088	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4852	1088	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4853	1088	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4854	1089	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4855	1089	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4856	1089	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4857	1089	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4858	1089	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4859	1090	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4860	1090	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4861	1090	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4862	1090	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4863	1090	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4864	1091	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4865	1091	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4866	1091	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4867	1091	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4868	1091	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4869	1092	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4870	1092	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4871	1092	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4872	1092	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4873	1092	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4874	1093	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4875	1093	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4876	1093	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4877	1093	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4878	1093	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4879	1094	1	00000000000000000	20171123	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4880	1094	1	00000000000000000	20171123	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4881	1094	1	00000000000000000	20171123	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4882	1094	1	00000000000000000	20171123	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4883	1094	1	00000000000000000	20171123	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4943	1106	1	00000000000000000	20171127	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4944	1106	1	00000000000000000	20171127	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4945	1106	1	00000000000000000	20171127	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4946	1106	1	00000000000000000	20171127	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4947	1107	1	00000000000000000	20171127	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4948	1107	1	00000000000000000	20171127	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4949	1107	1	00000000000000000	20171127	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4950	1107	1	00000000000000000	20171127	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4989	1112	1	00000000000000000	20171129	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4990	1112	1	00000000000000000	20171129	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4991	1112	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4992	1112	1	00000000000000000	20171129	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4993	1112	1	00000000000000000	20171129	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4994	1112	1	00000000000000000	20171130	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4995	1112	1	00000000000000000	20171130	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4996	1112	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4997	1112	1	00000000000000000	20171130	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4998	1112	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4999	1112	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5000	1112	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5001	1112	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5002	1112	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5003	1112	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5004	1113	1	00000000000000000	20171129	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5005	1113	1	00000000000000000	20171129	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5006	1113	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5007	1113	1	00000000000000000	20171129	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5008	1113	1	00000000000000000	20171129	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5009	1113	1	00000000000000000	20171130	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5010	1113	1	00000000000000000	20171130	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5011	1113	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5012	1113	1	00000000000000000	20171130	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5013	1113	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5014	1113	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5015	1113	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5016	1113	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5017	1113	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5018	1113	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5019	1114	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5020	1114	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5021	1114	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5022	1115	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5023	1115	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5024	1115	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5025	1116	1	00000000000000000	20171127	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5026	1117	1	00000000000000000	20171127	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5027	1118	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5028	1118	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5029	1118	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5030	1119	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5031	1119	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5032	1119	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5033	1120	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5034	1120	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5035	1120	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5036	1121	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5037	1121	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5038	1121	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5039	1122	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5040	1122	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5041	1122	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5042	1123	1	00000000000000000	20171127	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5043	1123	1	00000000000000000	20171129	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5044	1123	1	00000000000000000	20171130	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5045	1123	1	00000000000000000	20171201	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5046	1124	1	00000000000000000	20171202	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5047	1124	1	00000000000000000	20171203	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5055	1127	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5056	1127	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5057	1127	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5058	1127	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5059	1127	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5060	1127	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5061	1128	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5062	1128	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5063	1128	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5064	1128	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5065	1128	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5066	1129	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5067	1129	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5068	1129	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5069	1129	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5070	1129	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5071	1130	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5072	1130	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5073	1130	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5074	1130	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5075	1130	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5076	1131	1	00000000000000000	20171130	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5077	1131	1	00000000000000000	20171201	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5078	1131	1	00000000000000000	20171201	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5079	1131	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5080	1131	1	00000000000000000	20171201	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5081	1131	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5082	1131	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5083	1131	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5084	1131	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5085	1132	1	00000000000000000	20171124	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5086	1132	1	00000000000000000	20171124	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5087	1132	1	00000000000000000	20171124	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5088	1132	1	00000000000000000	20171124	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5089	1132	1	00000000000000000	20171124	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5090	1132	1	00000000000000000	20171125	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5091	1132	1	00000000000000000	20171125	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5092	1132	1	00000000000000000	20171125	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5093	1132	1	00000000000000000	20171125	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5094	1132	1	00000000000000000	20171125	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5095	1133	1	00000000000000000	20171124	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5096	1133	1	00000000000000000	20171124	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5097	1133	1	00000000000000000	20171124	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5098	1133	1	00000000000000000	20171124	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5099	1133	1	00000000000000000	20171124	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5100	1133	1	00000000000000000	20171125	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5101	1133	1	00000000000000000	20171125	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5102	1133	1	00000000000000000	20171125	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5103	1133	1	00000000000000000	20171125	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5104	1133	1	00000000000000000	20171125	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5105	1134	1	00000000000000000	20171124	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5106	1134	1	00000000000000000	20171124	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5107	1134	1	00000000000000000	20171124	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5108	1134	1	00000000000000000	20171124	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5109	1134	1	00000000000000000	20171124	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5110	1134	1	00000000000000000	20171125	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5111	1134	1	00000000000000000	20171125	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5112	1134	1	00000000000000000	20171125	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5113	1134	1	00000000000000000	20171125	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5114	1134	1	00000000000000000	20171125	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5115	1135	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5116	1135	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5117	1135	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5118	1135	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5119	1136	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5120	1136	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5121	1136	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5122	1136	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5123	1137	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5124	1137	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5125	1137	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5126	1137	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5127	1138	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5128	1138	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5129	1138	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5130	1138	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5131	1139	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5132	1139	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5133	1139	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5134	1139	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5135	1140	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5136	1140	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5137	1140	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5138	1140	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5139	1141	1	00000000000000000	20171126	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5140	1141	1	00000000000000000	20171126	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5141	1141	1	00000000000000000	20171126	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5142	1141	1	00000000000000000	20171126	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5143	1142	1	00000000000000000	20171126	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5144	1143	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5163	1149	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5164	1150	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5165	1150	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5166	1150	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5167	1151	1	00000000000000000	20171204	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5168	1151	1	00000000000000000	20171206	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5169	1151	1	00000000000000000	20171207	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5170	1151	1	00000000000000000	20171208	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5171	1151	1	00000000000000000	20171209	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5172	1151	1	00000000000000000	20171210	0	16773120	16777215	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5210	1160	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5211	1160	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5212	1160	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5213	1160	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5214	1161	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5215	1161	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5216	1161	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5217	1161	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5218	1162	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5219	1162	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5220	1162	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5221	1162	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5222	1163	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5223	1163	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5224	1163	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5225	1163	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5226	1163	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5227	1163	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5228	1164	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5229	1164	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5230	1164	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5231	1164	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5232	1164	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5233	1164	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5234	1165	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5235	1165	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5236	1165	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5237	1165	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5238	1165	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5239	1165	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5240	1166	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5241	1166	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5242	1166	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5243	1166	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5244	1166	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5245	1166	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5246	1167	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5247	1167	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5248	1167	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5249	1167	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5250	1167	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5251	1167	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5252	1168	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5253	1168	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5254	1168	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5255	1168	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5256	1168	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5257	1168	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5258	1169	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5259	1169	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5260	1169	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5261	1169	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5262	1169	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5263	1169	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5264	1169	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5265	1169	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5266	1169	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5267	1169	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5268	1169	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5269	1169	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5306	1176	1	00000000000000000	20171128	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5307	1176	1	00000000000000000	20171129	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5308	1176	1	00000000000000000	20171130	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5309	1177	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5310	1177	1	00000000000000000	20171207	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5311	1177	1	00000000000000000	20171207	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5312	1178	1	00000000000000000	20171220	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5317	1180	1	00000000000000000	20171221	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5318	1180	1	00000000000000000	20171221	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5319	1180	1	00000000000000000	20171221	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5320	1180	1	00000000000000000	20171221	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5322	1182	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5323	1182	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5324	1182	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5325	1183	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5326	1183	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5327	1183	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5328	1184	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5329	1184	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5330	1184	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5331	1185	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5332	1185	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5333	1185	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5378	1195	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5379	1195	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5380	1195	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5381	1196	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5382	1196	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5383	1196	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5384	1196	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5385	1197	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5386	1197	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5387	1197	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5388	1197	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5389	1198	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5390	1198	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5391	1198	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5392	1198	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5393	1199	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5394	1199	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5395	1199	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5396	1200	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5397	1201	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5398	1201	1	00000000000000000	20171203	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5399	1201	1	00000000000000000	20171203	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5400	1201	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5434	1206	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5435	1206	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5436	1206	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5437	1206	1	00000000000000000	20171204	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5438	1206	1	00000000000000000	20171204	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5439	1206	1	00000000000000000	20171206	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5440	1206	1	00000000000000000	20171206	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5441	1206	1	00000000000000000	20171206	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5442	1206	1	00000000000000000	20171206	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5443	1206	1	00000000000000000	20171206	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5444	1206	1	00000000000000000	20171207	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5445	1206	1	00000000000000000	20171207	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5446	1206	1	00000000000000000	20171207	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5447	1206	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5448	1206	1	00000000000000000	20171207	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5449	1206	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5450	1206	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5451	1206	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5452	1206	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5453	1206	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5454	1206	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5455	1206	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5456	1206	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5457	1207	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5458	1207	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5459	1207	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5460	1208	1	00000000000000000	20171207	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5461	1208	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5462	1208	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5463	1208	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5464	1208	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5465	1208	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5466	1209	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5551	1218	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5552	1218	1	00000000000000000	20171202	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5553	1218	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5554	1218	1	00000000000000000	20171202	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5555	1218	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5556	1219	1	00000000000000000	20171202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5559	1222	1	00000000000000000	20171228	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5562	1225	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5564	1227	1	00000000000000000	20171201	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5565	1228	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5566	1229	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5567	1229	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5568	1229	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5569	1230	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5570	1230	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5571	1230	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5572	1231	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5573	1231	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5574	1231	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5575	1232	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5576	1232	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5577	1232	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5578	1233	1	00000000000000000	20171204	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5579	1233	1	00000000000000000	20171204	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5580	1233	1	00000000000000000	20171204	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5581	1234	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5582	1234	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5583	1234	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5584	1235	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5585	1235	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5586	1235	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5587	1235	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5588	1235	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5589	1235	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5590	1235	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5591	1235	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5592	1235	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5593	1235	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5594	1235	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5595	1235	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5596	1236	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5597	1236	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5598	1236	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5599	1236	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5600	1236	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5601	1236	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5602	1236	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5603	1236	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5604	1236	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5605	1236	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5606	1236	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5607	1236	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5608	1237	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5609	1237	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5610	1237	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5611	1237	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5612	1237	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5613	1237	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5614	1237	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5615	1237	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5616	1237	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5617	1237	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5618	1237	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5619	1237	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5620	1238	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5621	1238	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5622	1238	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5623	1238	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5624	1238	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5625	1238	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5626	1238	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5627	1238	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5628	1238	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5629	1238	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5630	1238	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5631	1238	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5632	1239	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5633	1239	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5634	1239	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5635	1239	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5636	1239	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5637	1239	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5638	1239	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5639	1239	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5640	1239	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5641	1239	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5642	1239	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5643	1239	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5644	1240	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5645	1240	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5646	1240	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5647	1240	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5648	1240	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5649	1240	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5650	1240	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5651	1240	1	00000000000000000	20171209	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5652	1240	1	00000000000000000	20171209	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5653	1240	1	00000000000000000	20171209	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5654	1240	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5655	1240	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5656	1241	1	00000000000000000	20171208	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5657	1241	1	00000000000000000	20171208	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5658	1241	1	00000000000000000	20171208	0	0	15	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5659	1241	1	00000000000000000	20171208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5660	1241	1	00000000000000000	20171208	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5661	1241	1	00000000000000000	20171208	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5662	1241	1	00000000000000000	20171209	0	3072	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5663	1241	1	00000000000000000	20171209	0	0	15728640	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5664	1241	1	00000000000000000	20171209	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5665	1242	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5666	1243	1	00000000000000000	20171203	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5669	1246	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5674	1251	1	00000000000000000	20171201	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5679	1256	1	00000000000000000	20171202	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5680	1257	1	00000000000000000	20180208	0	0	1048560	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5682	1259	1	00000000000000000	20171202	0	0	0	65535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5683	1260	1	00000000000000000	20180202	0	16773120	0	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 2473 (class 0 OID 16530)
-- Dependencies: 228
-- Data for Name: t_reserve_fixtures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_fixtures (fixtures, rp_id, fixtures_name, quantity, time1, time2, time3, time4, fixtures_charge, reserve) FROM stdin;
\.


--
-- TOC entry 2475 (class 0 OID 16535)
-- Dependencies: 230
-- Data for Name: t_reserve_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_id (year, id) FROM stdin;
2016	3
2017	185
\.


--
-- TOC entry 2476 (class 0 OID 16539)
-- Dependencies: 231
-- Data for Name: t_reserve_open_and_start; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_open_and_start (rp_id, no, opening_time, start_time, end_time) FROM stdin;
2016000001	1	10:00:00	\N	\N
2017000183	1	10:00:00	12:00:00	15:00:00
2017000183	2	\N	\N	\N
2017000183	3	05:01:00	02:02:00	\N
2017000184	1	09:01:00	10:02:00	13:03:00
2017000184	2	14:04:00	15:05:00	16:06:00
2017000184	3	17:07:00	18:08:00	19:09:00
2017000180	1	\N	\N	\N
2017000180	2	09:00:00	\N	\N
2017000180	3	\N	\N	\N
2017000185	1	\N	\N	\N
2017000185	2	\N	\N	\N
2017000185	3	\N	\N	\N
2017000179	1	\N	\N	\N
2017000179	2	\N	\N	\N
2017000179	3	\N	\N	\N
\.


--
-- TOC entry 2477 (class 0 OID 16542)
-- Dependencies: 232
-- Data for Name: t_reserve_parent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_parent (rp_id, u_kind, u_id, attribute, user_kanji, sei_name, mei_name, postal, address1, address2, address3, tel, living_city_sei_name, living_city_mei_name, living_city_postal, living_city_address1, living_city_address2, living_city_address3, cast_name, purpose_use, visitor_number, use_fixtures, note, state, license_id, reg_kind, reg_date, reg_id, del_flag, del_date, del_id, license_date, reserve_start_date, reserve_end_date, tel2, living_city_tel, is_not_charged, address_pref, living_city_address_pref, reception_id, reception_date) FROM stdin;
2017000184	0	17000247	4	ダンススタジオエール	岩佐	忠輔	306-0011	古河市	東１-５-６		0280-23-1613	岩佐	忠輔	306-0011	古河市	東１-５-６		aaa	a	1	0	test1\r\ntest2	3	\N	0	20171214160010	admin	1	\N	\N	\N	20171202	20171202	--	0280-23-1613	f	茨城県	茨城県	502	2017-12-14
2017000007	0	17171139	1	フルートアンサンブル	角田	雅則	307-0001	結城市結城	9944-28		0296-32-5530	角田	雅則	307-0001	結城市結城	9944-28		なし	フルートレッスン	8	0		4	\N	0	20170902154743	across	0	\N	\N	\N	20170903	20170903	--	--	\N	茨城県	\N	\N	2017-09-02
2017000173	0	17000248	1	（協組）結城専門店会	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	初美	寿秋	307-0001	結城市	大字結城５３１			a	1	0		4	\N	0	20171211165606	admin	0	\N	\N	\N	20171202	20171202	--	0296-33-3234	f	茨城県	茨城県	002	2017-12-06
2017000180	0	17000240	4	紅林泰子	紅林	泰子	308-0841	筑西市	二木成１３２８		0296-22-7292	紅林	泰子	308-0841	筑西市	二木成１３２８			a	1	0		5	\N	0	20171214101815	admin	0	\N	\N	\N	20180208	20180208	--	0296-22-7292	f	茨城県	茨城県	301	2017-12-14
2017000021	0	17934417	1	在宅介護相談センター	江面	満	307-0001	結城市	結城10767-24		0296-32-1890	鈴木	康子	307-0001	結城市	結城10767-24		なし	家族介護者教室	30	1		3	\N	0	20171016140712	across	1	\N	\N	\N	20171104	20171104	--	--	\N	茨城県	\N	\N	2017-10-16
2017000178	0	17000248	1	（協組）結城専門店会	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	初美	寿秋	307-0001	結城市	大字結城５３１			a	1	0		4	\N	0	20171212165151	admin	0	\N	\N	\N	20171202	20171202	--	0296-33-3234	f	茨城県	茨城県	005	2017-12-13
2017000033	0	17516179	4	NPO法人ベル・サポート	菊地	長吉	306-0434	境町	上小橋540		0280-87-7085	小野	史子	306-0434	境町	上小橋540			独身男女の出会いパーティー	40	0		3	\N	0	20171016145955	across	1	\N	\N	\N	20171112	20171112	--	--	\N	茨城県	\N	\N	2017-10-16
2017000149	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市	中央町二丁目２番地		0296-33-2001	稲田	寛	307-0052	結城市	中央町二丁目２番地			大ホール関係者	20	0		7	2017000008	0	20171118154940	across	0	\N	\N	20171122      	20171123	20171123	--	--	\N	茨城県	茨城県	\N	2017-11-18
2017000175	0	17000248	1	（協組）結城専門店会	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	初美	寿秋	307-0001	結城市	大字結城５３１			a	1	0		5	\N	0	20171212162718	admin	0	\N	\N	20171110      	20171201	20171201	--	0296-33-3234	f	茨城県	茨城県		2017-12-12
2017000185	0	17000246	1	茨城県歯科医師会	三木	次郎	307-0015	結城市	鹿窪１３０５-９９		0296-32-8118	三木	次郎	307-0015	結城市	鹿窪１３０５-９９			aaa	11	0		4	\N	0	20171214171624	admin	0	\N	\N	\N	20171202	20171202	--	0296-32-8118	f	茨城県	茨城県		2017-12-14
2017000176	0	17000248	1	（協組）結城専門店会	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	初美	寿秋	307-0001	結城市	大字結城５３１			a	1	0		5	\N	0	20171212163034	admin	0	\N	\N	20181215      	20171203	20171203	--	0296-33-3234	f	茨城県	茨城県		2017-12-12
2017000183	0	17000248	1	（協組）結城専門店会	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	初美	寿秋	307-0001	結城市	大字結城５３１			あ	1	0		4	\N	0	20171214154236	admin	0	\N	\N	\N	20171201	20171201	--	0296-33-3234	f	茨城県	茨城県		2017-12-14
2017000179	0	17000185	4	（株）ローソン	高柳	秀宏	310-0026	水戸市	泉町3-2-1		080-1316-2604	高柳	秀宏	310-0026	水戸市	泉町3-2-1			a	1	0	test1\r\ntest2	7	2017000021	0	20171214100620	admin	0	\N	\N	20171214      	20180202	20180202	--	080-1316-2604	f	茨城県	茨城県	300	2017-12-14
2017000163	0	17901280	4	八千代ひかり幼稚園	小川	敏雄	300-3504	結城郡八千代町	大字西大山６２８－１５		0296-48-2535	小川	敏雄	300-3504	結城郡八千代町	大字西大山６２８－１５			発表会リハーサル	250	1		5	\N	0	20171125135712	admin	0	\N	\N	20171212      	20171204	20171204	--	--	f	茨城県	茨城県		2017-11-24
2017000166	0	17816020	1	結城市民劇団「つむぎ」	鈴木	林蔵	307-0001	結城市	結城９６１３－２２		0296-32-3570	鈴木	林蔵	307-0001	結城市	結城９６１３－２２			第１１回公演　結城秀康　　　　～御手杵の舞～	750	1		5	006       	0	20171125145501	admin	0	\N	\N	20171213      	20171208	20171209	--	--	f	茨城県	茨城県		2017-11-25
2017000049	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城3073		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城3073			発表会の練習	170	1		3	\N	0	20171016154249	across	1	\N	\N	\N	20171117	20171117	--	--	\N	茨城県	\N	\N	2017-10-16
2017000174	0	17000247	4	ダンススタジオエール	岩佐	忠輔	306-0011	古河市	東１-５-６		0280-23-1613	岩佐	忠輔	306-0011	古河市	東１-５-６			a	1	0		3	\N	0	20171212151821	admin	1	\N	\N	\N	20171202	20171202	--	0280-23-1613	f	茨城県	茨城県	004	2017-12-12
2016000001	0	17448610	4	ネクシモ	長洲	賢志	111-1111	日立市	久慈町１－１－１	クレール１１１号室	090-1111-1111	長洲	賢志	111-1111	日立市	久慈町１－１－１	クレール１１１号室	テスト出演者	テスト使用目的	100	0		3	\N	0	20170324133738	across	1	\N	\N	\N	20170324	20170324	--	--	\N	茨城県	\N	\N	2017-03-24
2016000002	0	17448610	4	ネクシモ	長洲	賢志	111-1111	日立市	久慈町１－１－１	クレール１１１号室	090-1111-1111	長洲	賢志	111-1111	日立市	久慈町１－１－１	クレール１１１号室	テスト出演者	テスト目的	100	0		3	\N	0	20170324140020	across	1	\N	\N	\N	20170324	20170324	--	--	\N	茨城県	\N	\N	2017-03-24
2017000050	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城3073		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城3073			発表会	300	1		3	\N	0	20171016154434	across	1	\N	\N	\N	20171201	20171202	--	--	\N	茨城県	\N	\N	2017-10-16
2016000003	0	17448610	4	ネクシモ	長洲	賢志	111-1111	日立市	久慈町１－１－１	クレール１１１号室	090-1111-1111	田中	太郎	222-2222	日立市	久慈町２－２－２	クレール２２２号室	あああ	いいい	100	0		3	\N	0	20170328145824	across	1	\N	\N	\N	20170329	20170329	--	--	\N	茨城県	\N	\N	2017-03-28
2017000001	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	前場	文夫	307-0052	結城市中央町2丁目	2番地		清水ミチコ	清水	1200	0		3	\N	0	20170902141123	across	1	\N	\N	\N	20170902	20170902	--	--	\N	茨城県	\N	\N	2017-09-02
2017000002	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	前場	文夫	307-0052	結城市中央町2丁目	2番地		清水ミチコ	清水ミチコ	1200	0		4	\N	0	20170902142912	across	0	\N	\N	\N	20170902	20170902	--	--	\N	茨城県	\N	\N	2017-09-02
2017000003	0	17061330	2	佐藤カラオケ教室	佐藤	裕紀	323-0819	小山市	横倉新田12-20		0285-28-0820	佐藤	裕紀	323-0819	小山市	横倉新田12-20		なし	歌の輪交流会	100	1		4	\N	0	20170902152723	across	0	\N	\N	\N	20170902	20170903	--	--	\N	茨城県	\N	\N	2017-09-02
2017000004	0	17362294	1	トルチュ	小林	克行	307-0007	結城市	小田林2146-2		0296-32-3902	小林	克行	307-0007	結城市	小田林2146-2		なし	バンド練習	5	0		4	\N	0	20170902154514	across	0	\N	\N	\N	20170902	20170902	--	--	\N	茨城県	\N	\N	2017-09-02
2017000005	0	17979670	2	（株）スタッフブレーン	小森	育夫	323-0807	小山市	城東2-19-13		0285-21-0211	小森	育夫	323-0807	小山市	城東2-19-13		なし	社員研修	70	0		4	\N	0	20170902153905	across	0	\N	\N	\N	20170902	20170903	--	--	\N	茨城県	\N	\N	2017-09-02
2017000006	0	17769178	1	古河シティウインドオーケストラ	木村	由衣	307-0001	結城市	結城8607-10	スプリングフィルズ101	090-5300-9651	木村	由衣	307-0001	結城市	結城8607-10	スプリングフィルズ101	なし	吹奏楽練習	60	1		4	\N	0	20170902154336	across	0	\N	\N	\N	20170903	20170903	--	--	\N	茨城県	\N	\N	2017-09-02
2017000008	0	17307670	1	コカリナ　桑の実	片野	美智子	307-0015	結城市	鹿窪351-4		090-8947-1035	片野	美智子	307-0015	結城市	鹿窪351-4		なし	コカリナ練習	15	1		4	\N	0	20170902155646	across	0	\N	\N	\N	20170903	20170903	--	--	\N	茨城県	\N	\N	2017-09-02
2017000009	0	17801075	4	冨士大石寺顕正会	石嶋	尚史	328-0027	栃木市	今泉町１-7-7		080-6526-5367	石嶋	尚史	328-0027	栃木市	今泉町１-7-7		なし	ビデオ放映	150	1		4	\N	0	20170902160733	across	0	\N	\N	\N	20170904	20170904	--	--	\N	茨城県	\N	\N	2017-09-02
2017000010	0	17548654	1	ゆうきエコー女声合唱団	恩田	正子	307-0001	結城市	結城11803-1		0296-33-5702	恩田	正子	307-0001	結城市	結城11803-1		なし	合唱練習	22	1		4	\N	0	20170904151711	across	0	\N	\N	\N	20170904	20170904	--	--	\N	茨城県	\N	\N	2017-09-04
2017000011	0	17305908	4	（株）あかまつ補聴器センター	赤松	邦弘	317-0063	日立市	若葉町1-15-5		0294-23-0336	赤松	邦弘	317-0063	日立市	若葉町1-15-5		なし	補聴器無料相談	5	0		4	\N	0	20170904151932	across	0	\N	\N	\N	20170906	20170906	--	--	\N	茨城県	\N	\N	2017-09-04
2017000012	0	17579702	4	（株）ユキ	佐藤	文彦	453-0014	名古屋市	中村区則武1-3-8	野村新名古屋ビル１F	052-459-7030	佐藤	文彦	453-0014	名古屋市	中村区則武1-3-8	野村新名古屋ビル１F	なし	ウィッグ展示即売会	20	0		3	\N	0	20170904152650	across	1	\N	\N	\N	20170906	20170906	--	--	\N	愛知県	愛知県	\N	2017-09-04
2017000013	0	17415640	1	筑西保育協議会	浜野	紀子	307-0001	結城市結城	11723-3		090-1456-9542	若林	美智子	307-0001	結城市結城	3807-2		なし	主任保育士研修会	36	0		3	\N	0	20170904153939	across	1	\N	\N	\N	20170907	20170907	--	--	\N	茨城県	\N	\N	2017-09-04
2017000014	0	17432439	4	茨城県合唱連盟	打越	孝裕	310-0011	水戸市	三の丸1-5-38		029-233-1747	恩田	正子	307-0001	結城市	結城11803-1		なし	演奏会	800	1		3	\N	0	20170921161007	across	1	\N	\N	\N	20171021	20171022	--	--	\N	茨城県	\N	\N	2017-09-21
2017000015	0	17720524	1	アンサンブルまゆ	成田	弘子	307-0001	結城市	結城5860-22		0296-32-0483	成田	弘子	307-0001	結城市	結城5860-22		なし	合唱練習	20	1		5	2017000015	0	20171015173938	admin	0	\N	\N	20171102      	20171101	20171101	--	--	\N	茨城県	\N	\N	2017-10-15
2017000016	0	17345458	1	久保野谷　友子	久保野谷	友子	307-0028	結城市	今宿1135-8		0296-35-2998	久保野谷	友子	307-0028	結城市	今宿1135-8		なし	ピアノ発表会練習	100	1		3	\N	0	20171022130721	admin	1	\N	\N	\N	20171102	20171102	--	--	\N	茨城県	\N	\N	2017-10-22
2017000017	0	17470021	1	手づくりコンサート実行委員会	恩田	正子	307-0001	結城市	結城11803-1		0296-33-5702	恩田	正子	307-0001	結城市	結城11803-1		なし	手づくりコンサート	700	1		5	2017000017	0	20171022113932	admin	0	\N	\N	20171102      	20171102	20171103	--	--	\N	茨城県	\N	\N	2017-10-22
2017000018	0	17538265	1	コール・リリー	上野	訓子	307-0001	結城市結城	1694		0296-33-5030	上野	訓子	307-0001	結城市結城	1694		なし	コーラス練習	22	1		5	2017000018	0	20171016133157	admin	0	\N	\N	20171102      	20171102	20171102	--	--	\N	茨城県	\N	\N	2017-10-16
2017000019	0	17432926	4	（一財）民主音楽協会	田代	嘉弘	160-8588	新宿区	信濃町8		03-5362-3455	田代	嘉弘	160-8588	新宿区	信濃町8		マルシア	マルシア　愛する歌とともに　	1000	1		3	\N	0	20171022114904	across	1	\N	\N	\N	20171104	20171104	--	--	\N	東京都	東京都	\N	2017-10-22
2017000022	0	17105180	4	（一社）茨城県自動車整備振興会	宮﨑	一雄	310-0844	水戸市住吉町	292-5		029-248-7000	石川	能久	310-0844	水戸市住吉町	292-5		なし	整備主任者（法令）研修会	300	1		5	2017000022	0	20171022134428	across	0	\N	\N	20171105      	20171106	20171106	--	--	\N	茨城県	\N	\N	2017-10-22
2017000023	0	17767573	4	（一社）労働保健協会	白川	毅	173-0027	板橋区	南町9-11		03-3530-2132	太田	聡	173-0027	板橋区	南町9-11		なし	日立健保巡回レディース健診	75	0		5	2017000023	0	20171016144352	across	0	\N	\N	20171105      	20171108	20171108	--	--	\N	東京都	東京都	\N	2017-10-16
2017000024	0	17473739	1	結城市教育研究会音楽教育研究部	安達	英明	307-0011	結城市	小森2227		0296-33-3214	安達	英明	307-0011	結城市	小森2227			結城市小中学校音楽会	1100	1		5	2017000024	0	20171016142507	across	0	\N	\N	20171105      	20171108	20171108	--	--	\N	茨城県	\N	\N	2017-10-16
2017000025	0	17528037	1	マイレイユーキ	下条	なか子	307-0001	結城市	結城11743-38		0296-32-4480	下条	なか子	307-0001	結城市	結城11743-38		なし	フラダンス練習	10	0		5	2017000025	0	20171016142858	admin	0	\N	\N	20171108      	20171109	20171109	--	--	\N	茨城県	\N	\N	2017-10-16
2017000026	0	17349375	4	下館税務署	渡邊	勤	308-0031	筑西市	丙１１６－１６		0296-24-2121	高野	光一	308-0031	筑西市	丙１１６－１６			年末調整説明会	150	1		5	2017000026	0	20171016144223	across	0	\N	\N	20171118      	20171120	20171120	--	--	\N	茨城県	\N	\N	2017-10-16
2017000027	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	清水	敏孝	307-0001	結城市	結城１５９１		スカンポ	第３９回茨城県保育大会	900	1		5	2017000027	0	20171022140858	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	茨城県	茨城県	\N	2017-10-22
2017000028	0	17192659	2	田中歌謡教室	田中	照雄	323-0029	小山市	城北２－１７－５		090-3402-6951	出井	新	328-0043	栃木市	境町１９－９			カラオケ発表会　準備	80	1		5	2017000028	0	20171022151713	across	0	\N	\N	20171118      	20171120	20171122	--	--	\N	茨城県	\N	\N	2017-10-22
2017000029	0	17050358	2	Twinkie　Meiody	種市	恵美	323-0811	小山市	犬塚32-110		0285-24-2590	種市	恵美	323-0811	小山市	犬塚32-110		なし	ピアノ・エレクトーン発表会	350	1		3	\N	0	20171022141135	admin	1	\N	\N	\N	20171110	20171112	--	--	\N	茨城県	\N	\N	2017-10-22
2017000030	0	17216092	1	フラワーアレンジメント華	長本	すみ子	307-0001	結城市	結城6489		0296-32-9150	長本	すみ子	307-0001	結城市	結城6489			フラワーアレンジメント練習	18	0		5	2017000030	0	20171016145428	admin	0	\N	\N	20171109      	20171110	20171110	--	--	\N	茨城県	\N	\N	2017-10-16
2017000031	0	17915938	4	（医）同友会	高谷	典秀	112-0002	文京区	小石川1-12-16		03-3816-0770	深瀬	光行	113-0024	文京区	西方1-15-10			富士通健保巡回レディース健康診断	90	0		5	2017000031	0	20171016145746	admin	0	\N	\N	20171109      	20171110	20171110	--	--	\N	東京都	東京都	\N	2017-10-16
2017000032	0	17483288	1	小山友の会　結城支部	角田	ひろみ	307-0001	結城市	結城11367-2		0296-33-2119	角田	ひろみ	307-0001	結城市	結城11367-2			家事家計講習会	50	0		3	\N	0	20171016145827	admin	1	\N	\N	\N	20171120	20171120	--	--	\N	茨城県	\N	\N	2017-10-16
2017000034	0	17860242	4	（株）関東補聴器	宮本	紀宏	306-0013	古河市	東本町３－３－１２		0280-31-4914	宮本	紀宏	306-0013	古河市	東本町３－３－１２			補聴器の相談及び点検	15	0		5	2017000034	0	20171016150009	across	0	\N	\N	20171118      	20171122	20171122	--	--	\N	茨城県	\N	\N	2017-10-16
2017000035	0	17927296	1	（一財）茨城県交通安全協会　結城地区交通安全協会	曽雌	哲雄	307-0007	結城市	小田林１３１７－１		0296-33-4767	江川	学	307-0007	結城市	小田林１３１７－１			免許講習　午前ー通常講習　午後－初回講習	60	1		3	\N	0	20171016150256	across	1	\N	\N	\N	20171122	20171122	--	--	\N	茨城県	\N	\N	2017-10-16
2017000036	0	17081843	1	結城市教育振興会	前場	文夫	307-0001	結城市	大字結城7473		0296-32-9997	西村	規利	307-0001	結城市	大字結城7473			結城市教育振興大会並びに人権講演会	800	1		3	\N	0	20171022143858	admin	1	\N	\N	\N	20171113	20171113	--	--	\N	茨城県	\N	\N	2017-10-22
2017000037	0	17677952	1	中山（株）	中山	伸次郎	307-0001	結城市	小田林2520-15		0296-32-1166	石塚	晃裕	307-0001	結城市	小田林2520-15			セミナー	80	1		3	\N	0	20171022144036	admin	1	\N	\N	\N	20171113	20171113	--	--	\N	茨城県	\N	\N	2017-10-22
2017000038	0	17927296	1	（一財）茨城県交通安全協会　結城地区交通安全協会	曽雌	哲雄	307-0007	結城市	小田林1317-1		0296-33-4767	江川	学	307-0007	結城市	小田林1317-1			免許講習	60	1		3	\N	0	20171016151309	admin	1	\N	\N	\N	20171113	20171113	--	--	\N	茨城県	\N	\N	2017-10-16
2017000039	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市	中央町２丁目２番地		0296-33-2001	前場	文夫	307-0052	結城市	中央町２丁目２番地			南こうせつコンサートツアー　　～おもかげ色の空～	1200	1		5	2017000039	0	20171022152337	across	0	\N	\N	20171122      	20171123	20171123	--	--	\N	茨城県	\N	\N	2017-10-22
2017000040	0	17467832	4	下館一高吹奏楽部	小林	剛志	308-0825	筑西市下中山	590		0296-24-6344	小林	剛志	308-0825	筑西市下中山	590			アンサンブル練習	15	1		3	\N	0	20171016152158	across	1	\N	\N	\N	20171115	20171115	--	--	\N	茨城県	\N	\N	2017-10-16
2017000041	0	17149723	4	（公社）茨城県食品衛生協会	萩谷	寛	310-0852	水戸市	笠原町６００－４４		029-241-9511	鈴木	睦夫	310-0852	水戸市	笠原町６００－４４			食品衛生推進員・指導員研修会	250	1		5	2017000041	0	20171022144353	across	0	\N	\N	20171112      	20171115	20171115	--	--	\N	茨城県	茨城県	\N	2017-10-22
2017000042	0	17720524	1	アンサンブルまゆ	成田	弘子	307-0001	結城市	結城５８６０－２２		0296-32-0483	成田	弘子	307-0001	結城市	結城５８６０－２２			合唱練習	18	1		5	2017000042	0	20171016152649	across	0	\N	\N	20171112      	20171115	20171115	--	--	\N	茨城県	茨城県	\N	2017-10-16
2017000043	0	17859872	1	結城市建設協同組合	吉村	福市	307-0001	結城市	大字結城３１４９－２		0296-32-3017	吉村	福市	307-0001	結城市	大字結城３１４９－２			平成２９年度住宅省エネルギー　施行技術講習会	50	1		5	2017000043	0	20171016152935	across	0	\N	\N	20171112      	20171115	20171115	--	--	\N	茨城県	\N	\N	2017-10-16
2017000044	0	17786849	4	（有）茨城映画センター	本田	精一	310-0064	水戸市	栄町１－１０－１３		029-226-3156	本田	精一	310-0064	水戸市	栄町１－１０－１３			第４回結城名画上映会　　　　　「愛を積むひと」	300	1		5	2017000044	0	20171016153253	across	0	\N	\N	20171115      	20171116	20171116	--	--	\N	茨城県	\N	\N	2017-10-16
2017000045	0	17989664	1	家庭倫理の会	細川	悦子	307-0001	結城市	結城７３５９－３		090-4056-9577	細川	悦子	307-0001	結城市	結城７３５９－３			子育てセミナー	10	0		5	2017000045	0	20171016153514	across	0	\N	\N	20171115      	20171116	20171116	--	--	\N	茨城県	\N	\N	2017-10-16
2017000046	0	17717606	1	（株）テンダーハウス	山崎	仁史	309-1613	笠間市	石井１４０－７		0296-87-0037	小松	正和	309-1613	笠間市	石井１４０－７			生地・婦人服大売出し	100	0		5	2017000046	0	20171016153821	across	0	\N	\N	20171115      	20171116	20171117	--	--	\N	茨城県	\N	\N	2017-10-16
2017000047	0	17214753	4	柊幼稚園・柊保育園	増田	隆治	306-0112	古河市	東山田3		0280-77-0882	伊藤	夕雨子	306-0112	古河市	東山田3			クリスマス発表会リハーサル	250	1		3	\N	0	20171016154034	across	1	\N	\N	\N	20171117	20171117	--	--	\N	茨城県	\N	\N	2017-10-16
2017000048	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城3073		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城3073			発表会	300	1		3	\N	0	20171023131635	across	1	\N	\N	\N	20171127	20171202	--	--	\N	茨城県	\N	\N	2017-10-23
2017000051	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			アンサンブルコンテスト　　　　県西地区大会	800	1	（携帯）090-4719-6850	5	2017000051	0	20171022145907	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	\N	\N	2017-10-22
2017000052	0	17066668	1	小嶋　誉志子	小嶋	誉志子	307-0027	結城市	粕礼980		0296-35-3190	小嶋	誉志子	307-0027	結城市	粕礼980			フラワーアレンジメントの研修	2	0		5	2017000052	0	20171016163944	admin	0	\N	\N	20171105      	20171108	20171108	--	--	\N	茨城県	\N	\N	2017-10-16
2017000053	0	17859899	1	結城市役所　土木課	上野	敏明	307-0001	結城市	結城1447		0296-34-0426	山田	徹	307-0001	結城市	結城1447			会議	80	0		3	\N	0	20171016164427	admin	1	\N	\N	\N	20171109	20171109	--	--	\N	茨城県	\N	\N	2017-10-16
2017000054	0	17449333	1	結城市文化協会	渡部	栄一	307-0001	結城市	結城７４７３		0296-32-1899	恩田	正子	307-0001	結城市	結城７４７３		結城市文化協会加盟団体	ゆうき市文化祭音楽部門　　　　合同発表会	200	1		4	\N	0	20171016165405	across	0	\N	\N	\N	20171202	20171203	--	--	f	茨城県	茨城県	\N	2017-10-16
2017000055	0	17826113	1	結城市役所　防災安全課	瀬戸井	武志	307-8501	結城市	結城1447		0296-34-0411	瀬戸井	武志	307-8501	結城市	結城1447			結城市総合防災訓練「第11回防災広場」	1500	0		3	\N	0	20171022153804	admin	1	\N	\N	\N	20171124	20171126	--	--	\N	茨城県	\N	\N	2017-10-22
2017000056	0	17243376	4	（公社）茨城県危険物安全協会連合会	幡谷	定俊	310-0852	水戸市	笠原町９７８－２６　	茨城県市町村会館	029-301-7878	三田	悦久	310-0852	水戸市	笠原町９７８－２６　	茨城県市町村会館		危険物取扱者保安講習会	300	1		5	2017000056	0	20171023131848	across	0	\N	\N	20171124      	20171127	20171127	--	--	\N	茨城県	茨城県	\N	2017-10-23
2017000057	0	17660933	4	センター家庭電器（株）	今川	政夫	310-0005	水戸市	水府町1548		080-5419-0162	今川	政夫	310-0005	水戸市	水府町1548			日立の家電品フェア	500	1		3	\N	0	20171016183354	admin	1	\N	\N	\N	20171127	20171203	--	--	\N	茨城県	\N	\N	2017-10-16
2017000058	0	17988866	1	玉岡尭舜認定こども園	大山	芳江	307-0001	結城市	結城12018-1		0296-45-6363	大山	芳江	307-0001	結城市	結城12018-1			おたのしみ会	500	1		3	\N	0	20171023134629	across	1	\N	\N	\N	20171130	20171202	--	--	\N	茨城県	\N	\N	2017-10-23
2017000059	0	17528037	1	マイレイユーキ	下条	なか子	307-0001	結城市	結城１１７４３－３８		0296-32-4480	下条	なか子	307-0001	結城市	結城１１７４３－３８			フラダンス	10	0		5	2017000059	0	20171016184006	across	0	\N	\N	20171129      	20171130	20171130	--	--	\N	茨城県	\N	\N	2017-10-16
2017000060	0	17801075	4	冨士大石寺顕正会	石嶋	尚史	328-0027	栃木市	今泉町１－７－７		080-6526-5367	石嶋	尚史	328-0027	栃木市	今泉町１－７－７			ビデオ放映	150	1		5	2017000060	0	20171019175006	across	0	\N	\N	20171112      	20171115	20171115	--	--	\N	茨城県	\N	\N	2017-10-19
2017000061	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	稲田	寛	307-0052	結城市中央町2丁目	2番地			モーニング娘。誕生20周年記念コンサートツアー2017秋	1200	1		3	\N	0	20171019185456	across	1	\N	\N	\N	20171105	20171105	--	--	\N	茨城県	\N	\N	2017-10-19
2017000062	0	17171139	1	フルートアンサンブル	角田	雅則	307-0001	結城市	結城９９４４－２８		0296-33-5530	角田	雅則	307-0001	結城市	結城９９４４－２８			フルートのレッスン	8	0		5	2017000062	0	20171019190245	across	0	\N	\N	20171110      	20171112	20171112	--	--	\N	茨城県	茨城県	\N	2017-10-19
2017000063	0	17294410	4	茨城県教育友の会写真クラブ	田辺	淳次	306-0631	坂東市	岩井４３２２－１９		090-3090-3411	芦澤	晋	329-0434	下野市	祇園４－１－１６			茨城県教育友の会写真クラブ展	500	0		5	2017000063	0	20171019191943	across	0	\N	\N	20171202      	20171204	20171210	--	--	\N	茨城県	栃木県	\N	2017-10-19
2017000064	0	17305908	4	（株）あかまつ補聴器センター	赤松	邦弘	317-0063	日立市	若葉町１－１５－５		0294-23-0336	赤松	邦弘	317-0063	日立市	若葉町１－１５－５			補聴器無料相談	5	0		5	2017000064	0	20171019192127	across	0	\N	\N	20171202      	20171207	20171207	--	0294-23-0336	f	茨城県	茨城県	\N	2017-10-19
2017000065	0	17816020	1	結城市民劇団”つむぎ”	鈴木	林蔵	307-0001	結城市	結城9613-22		0296-32-3570	鈴木	林蔵	307-0001	結城市	結城9613-22			第11回結城市民劇団”つむぎ”公演	1200	1		3	\N	0	20171019193255	admin	1	\N	\N	\N	20171208	20171209	--	--	\N	茨城県	\N	\N	2017-10-19
2017000066	0	17901280	4	八千代ひかり幼稚園	小川	敏雄	300-3504	結城郡八千代町	大字西大山628-15		0296-48-2535	小川	敏雄	300-3504	結城郡八千代町	大字西大山628-15			クリスマス発表会	1000	1		3	\N	0	20171019194101	across	1	\N	\N	\N	20171210	20171210	--	--	\N	茨城県	\N	\N	2017-10-19
2017000068	0	17611458	1	つくば幼稚園	滝田	昌孝	307-0053	結城市	新福寺2-8-7		0296-32-2346	滝田	昌孝	307-0053	結城市	新福寺2-8-7		園児	クリスマスお遊戯会	600	1		3	\N	0	20171019200317	across	1	\N	\N	\N	20171214	20171216	--	--	\N	茨城県	\N	\N	2017-10-19
2017000069	0	17538265	1	コール・リリー	上野	訓子	307-0001	結城市結城	1694		0296-33-5030	上野	訓子	307-0001	結城市結城	1694			コーラス練習	22	1		4	\N	0	20171019200516	admin	0	\N	\N	\N	20171214	20171214	--	--	\N	茨城県	\N	\N	2017-10-19
2017000070	0	17952619	1	つむぎの里ゆうき混声合唱団	北川	進	307-0044	結城市田間	991-16		0296-35-2236	北川	進	307-0044	結城市田間	991-16			合唱練習	20	1		4	\N	0	20171019200636	admin	0	\N	\N	\N	20171214	20171214	--	--	\N	茨城県	\N	\N	2017-10-19
2017000071	0	17721368	4	元桜の会	飯嶋	好夫	306-0123	古河市	五部486-1		0280-76-1144	飯嶋	好夫	306-0123	古河市	五部486-1			元桜の会　カラオケ発表会	130	1		3	\N	0	20171019201421	across	1	\N	\N	\N	20171215	20171217	--	--	\N	茨城県	\N	\N	2017-10-19
2017000072	0	17216092	1	フラワーアレンジメント華	長本	すみ子	307-0001	結城市	結城6489		0296-32-9150	長本	すみ子	307-0001	結城市	結城6489			フラワーアレンジメント華	18	0		4	\N	0	20171019201804	admin	0	\N	\N	\N	20171215	20171215	--	--	\N	茨城県	\N	\N	2017-10-19
2017000073	0	17214753	4	柊幼稚園・柊保育園	増田	隆治	306-0112	古河市	東山田3		0280-77-0882	伊藤	夕雨子	306-0112	古河市	東山田3			クリスマス発表会	700	1		3	\N	0	20171021170216	across	1	\N	\N	\N	20171216	20171217	--	--	\N	茨城県	\N	\N	2017-10-21
2017000074	0	17208951	4	（弁）原田国際法律事務所	原田	義昭	105-0021	港区	東新橋1-3-5　7階		03-6252-3266	原田	義昭	105-0021	港区	東新橋1-3-5　7階			個別無料相談会	16	0		4	\N	0	20171021171725	admin	0	\N	\N	\N	20171216	20171216	--	--	\N	東京都	東京都	\N	2017-10-21
2017000075	0	17516179	4	NPO法人ベル・サポート	菊地	長吉	306-0434	境町上小橋	540		0280-87-7085	小野	史子	306-0434	境町上小橋	540			出会いパーティー	40	0		3	\N	0	20171021173415	admin	1	\N	\N	\N	20171217	20171217	--	--	\N	茨城県	\N	\N	2017-10-21
2017000076	0	17820685	4	（株）よしもとクリエイティブ・エージェンシー	藤原	寛	160-0022	新宿区	新宿5-18-21		03-3209-8255	西野	友康	160-0022	新宿区	新宿5-18-21			よしもとお笑いまつりin結城	1200	1		4	\N	0	20171021182856	admin	0	\N	\N	\N	20171222	20171222	--	--	\N	東京都	東京都	\N	2017-10-21
2017000077	0	17140406	4	ピアノ教室Andante	関	恵	308-0052	筑西市	菅谷35-18		090-2545-0737	関	恵	308-0052	筑西市	菅谷35-18			ピアノ発表会	250	1		3	\N	0	20171021183939	admin	1	\N	\N	\N	20171222	20171223	--	--	\N	茨城県	\N	\N	2017-10-21
2017000078	0	17202499	4	タテノ音楽教室	館野	敬子	306-0126	古河市	諸川2557		0280-76-6616	館野	敬子	306-0126	古河市	諸川2557			音楽教室発表会	150	1		4	\N	0	20171021191733	admin	0	\N	\N	\N	20171224	20171224	--	--	\N	茨城県	\N	\N	2017-10-21
2017000079	0	17801075	4	冨士大石寺顕正会	石嶋	尚史	328-0027	栃木市	今泉町1-7-7		080-6526-5367	石嶋	尚史	328-0027	栃木市	今泉町1-7-7			ビデオ放映	150	1		4	\N	0	20171021193533	admin	0	\N	\N	\N	20171225	20171225	--	--	\N	茨城県	\N	\N	2017-10-21
2017000080	0	17467832	4	下館一高吹奏楽部	小林	剛志	308-0825	筑西市下中山	590		0296-24-6344	小林	剛志	308-0825	筑西市下中山	590			第36回定期演奏会	300	1		3	\N	0	20171021194918	across	1	\N	\N	\N	20171227	20171228	--	--	\N	茨城県	\N	\N	2017-10-21
2017000081	0	17720524	1	アンサンブルまゆ	成田	弘子	307-0001	結城市	結城5860-22		0296-32-0483	成田	弘子	307-0001	結城市	結城5860-22			合唱練習	20	1		5	2017000081	0	20171023110827	admin	0	\N	\N	20171202      	20171206	20171206	--	--	\N	茨城県	\N	\N	2017-10-23
2017000082	0	17720524	1	アンサンブルまゆ	成田	弘子	307-0001	結城市	結城5860-22		0296-32-0483	成田	弘子	307-0001	結城市	結城5860-22			合唱練習	20	1		4	\N	0	20171023110926	admin	0	\N	\N	\N	20171227	20171227	--	--	\N	茨城県	\N	\N	2017-10-23
2017000083	0	17589357	1	かなくぼ保育園	荒井	幸恵	307-0015	結城市	鹿窪坂の上949		0296-32-7965	荒井	幸恵	307-0015	結城市	鹿窪坂の上949			発表会	400	1		3	\N	0	20171023164409	across	1	\N	\N	\N	20171204	20171209	--	--	\N	茨城県	\N	\N	2017-10-23
2017000084	0	17528037	1	マイレイユーキ	下条	なか子	307-0001	結城市	結城11743-38		0296-32-4480	下条	なか子	307-0001	結城市	結城11743-38			フラダンス練習	10	0		4	\N	0	20171026150959	across	0	\N	\N	\N	20171214	20171214	--	--	\N	茨城県	\N	\N	2017-10-26
2017000085	0	17538265	1	コール・リリー	上野	訓子	307-0001	結城市結城	1694		0296-33-5030	上野	訓子	307-0001	結城市結城	1694			コーラス練習	22	1		4	\N	0	20171026151203	admin	0	\N	\N	\N	20171221	20171221	--	--	\N	茨城県	\N	\N	2017-10-26
2017000086	0	17927296	1	（一財）茨城県交通安全協会　結城地区交通安全協会	曽雌	哲雄	307-0007	結城市	小田林1317-1		0296-33-4767	江川	学	307-0007	結城市	小田林1317-1			免許講習　午前・午後　通常講習	60	1		3	\N	0	20171027111855	across	1	\N	\N	\N	20171211	20171211	--	--	\N	茨城県	\N	\N	2017-10-27
2017000087	0	17467832	4	茨城県立下館第一高等学校　吹奏楽部	小林	剛志	308-0825	筑西市	下中山５９０		0296-24-6344	小林	剛志	308-0825	筑西市	下中山５９０			アンサンブル練習	15	1		5	2017000087	0	20171029140339	across	0	\N	\N	20171112      	20171115	20171115	--	--	\N	茨城県	茨城県	\N	2017-10-29
2017000088	0	17214753	4	（学）県西学園柊幼稚園　（福）七藤会柊保育園	増田	隆治	306-0112	古河市	東山田3		0280-77-0882	伊藤	夕雨子	306-0112	古河市	東山田3			クリスマス発表会リハーサル	250	1		3	\N	0	20171029140622	admin	1	\N	\N	\N	20171117	20171117	--	--	\N	茨城県	\N	\N	2017-10-29
2017000089	0	17395290	1	（福）三国福祉会みくに保育園	鈴木	龍穏	307-0001	結城市	結城3073		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城3073			発表会の練習	170	1		3	\N	0	20171029141159	admin	1	\N	\N	\N	20171117	20171117	--	--	\N	茨城県	\N	\N	2017-10-29
2017000090	0	17395290	1	（福）三国福祉会みくに保育園	鈴木	龍穏	307-0001	結城市	結城3073		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城3073			発表会	300	1		3	\N	0	20171029142204	admin	1	\N	\N	\N	20171127	20171202	--	--	\N	茨城県	\N	\N	2017-10-29
2017000091	0	17988866	1	（学）清芳学園　玉岡尭舜認定こども園	大山	芳江	307-0001	結城市	結城12018-1		0296-45-6363	大山	芳江	307-0001	結城市	結城12018-1			おたのしみ会	500	1		3	\N	0	20171029150644	admin	1	\N	\N	\N	20171130	20171202	--	--	\N	茨城県	\N	\N	2017-10-29
2017000092	0	17589357	1	（福）ふたば福祉会かなくぼ保育園	荒井	幸恵	307-0015	結城市	鹿窪坂の上949		0296-32-7965	荒井	幸恵	307-0015	結城市	鹿窪坂の上949			発表会	400	1		3	\N	0	20171029164232	across	1	\N	\N	\N	20171204	20171209	--	--	\N	茨城県	\N	\N	2017-10-29
2017000093	0	17901280	4	認定こども園　八千代ひかり幼稚園	小川	敏雄	300-3504	結城郡八千代町	大字西大山628-15		0296-48-2535	小川	敏雄	300-3504	結城郡八千代町	大字西大山628-15			クリスマス発表会	1000	1		3	\N	0	20171030180406	across	1	\N	\N	\N	20171210	20171210	--	--	\N	茨城県	\N	\N	2017-10-30
2017000094	0	17611458	1	（学）愛育会つくば幼稚園　（福）筑波会つくば保育園	滝田	昌孝	307-0053	結城市	新福寺2-8-7		0296-32-2346	滝田	昌孝	307-0053	結城市	新福寺2-8-7		園児	クリスマスお遊戯会	600	1		3	\N	0	20171030181839	admin	1	\N	\N	\N	20171214	20171216	--	--	\N	茨城県	\N	\N	2017-10-30
2017000095	0	17721368	4	元桜の会	飯嶋	好夫	306-0123	古河市	五部486-1		0280-76-1144	飯嶋	好夫	306-0123	古河市	五部486-1			元桜の会　カラオケ発表会	130	1		4	\N	0	20171030185354	across	0	\N	\N	\N	20171215	20171217	--	--	\N	茨城県	\N	\N	2017-10-30
2017000096	0	17214753	4	（学）県西学園柊幼稚園　（福）七藤会柊保育園	増田	隆治	306-0112	古河市	東山田3		0280-77-0882	伊藤	夕雨子	306-0112	古河市	東山田3			クリスマス発表会	700	1		3	\N	0	20171030190328	admin	1	\N	\N	\N	20171202	20171217	--	--	\N	茨城県	\N	\N	2017-10-30
2017000097	0	17467832	4	茨城県立下館第一高等学校　吹奏楽部	小林	剛志	308-0825	筑西市下中山	590		0296-24-6344	小林	剛志	308-0825	筑西市下中山	590			第36回定期演奏会	300	1		4	\N	0	20171030191458	admin	0	\N	\N	\N	20171227	20171227	--	--	\N	茨城県	\N	\N	2017-10-30
2017000098	0	17934417	1	在宅介護相談センター　ヒューマン・ハウス	江面	満	307-0001	結城市	結城10767-24		0296-32-1890	鈴木	康子	307-0001	結城市	結城10767-24			家族介護者教室	30	1		5	2017000098	0	20171030192129	across	0	\N	\N	20171103      	20171104	20171104	--	--	\N	茨城県	\N	\N	2017-10-30
2017000099	0	17345458	1	久保野谷　友子	久保野谷	友子	307-0028	結城市	今宿1135-8		0296-35-2998	久保野谷	友子	307-0028	結城市	今宿1135-8			ピアノ発表会　練習	100	1		5	2017000099	0	20171102145720	across	0	\N	\N	20171102      	20171102	20171102	--	--	\N	茨城県	\N	\N	2017-11-02
2017000100	0	17345458	1	久保野谷　友子	久保野谷	友子	307-0028	結城市	今宿1135-8		0296-35-2998	久保野谷	友子	307-0028	結城市	今宿1135-8			ピアノ発表会	100	1		3	\N	0	20171103111611	across	1	\N	\N	\N	20171104	20171104	--	--	\N	茨城県	\N	\N	2017-11-03
2017000101	0	17306548	1	飯沼　美由季	飯沼	美由季	307-0001	結城市	結城179		090-3808-1201	飯沼	美由季	307-0001	結城市	結城179			ダンスの練習	1	0		5	2017000101	0	20171103130735	across	0	\N	\N	20171109      	20171110	20171110	--	--	\N	茨城県	\N	\N	2017-11-03
2017000102	0	17306548	1	飯沼　美由季	飯沼	美由季	307-0001	結城市	結城179		090-3808-1201	飯沼	美由季	307-0001	結城市	結城179			ダンスの練習	1	0		3	\N	0	20171103131108	across	1	\N	\N	\N	20171117	20171117	--	--	\N	茨城県	\N	\N	2017-11-03
2017000103	0	17432926	4	（一財）民主音楽協会	田代	嘉弘	160-8588	新宿区	信濃町8		03-5362-3455	田代	嘉弘	160-8588	新宿区	信濃町8			マルシア　愛する歌とともに	1000	1		5	2017000103	0	20171104143226	across	0	\N	\N	20171104      	20171104	20171104	--	--	\N	東京都	東京都	\N	2017-11-04
2017000104	0	17345458	1	久保野谷　友子	久保野谷	友子	307-0028	結城市	今宿1135-8		0296-35-2998	久保野谷	友子	307-0028	結城市	今宿1135-8			ピアノ発表会	100	1		5	2017000104	0	20171104143601	across	0	\N	\N	20171104      	20171104	20171104	--	--	\N	茨城県	\N	\N	2017-11-04
2017000105	0	17816020	1	結城市民劇団「つむぎ」	鈴木	林蔵	307-0001	結城市	結城９６１３－２２		0296-32-3570	鈴木	林蔵	307-0001	結城市	結城９６１３－２２			第１１回公演　結城秀康　　　　～御手杵の舞～　準備	750	1		3	\N	0	20171104152456	across	1	\N	\N	\N	20171208	20171208	--	--	\N	茨城県	茨城県	\N	2017-11-04
2017000106	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	稲田	寛	307-0052	結城市中央町2丁目	2番地			大ホール関係者	1200	0		3	\N	0	20171104173206	across	1	\N	\N	\N	20171105	20171105	--	--	\N	茨城県	\N	\N	2017-11-04
2017000107	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	稲田	寛	307-0052	結城市中央町2丁目	2番地			大ホール関係者	1200	0		3	\N	0	20171104173318	across	1	\N	\N	\N	20171105	20171105	--	--	\N	茨城県	\N	\N	2017-11-04
2017000108	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	稲田	寛	307-0052	結城市中央町2丁目	2番地			大ホール関係者	1200	0		3	\N	0	20171104173622	across	1	\N	\N	\N	20171105	20171105	--	--	\N	茨城県	\N	\N	2017-11-04
2017000109	0	17473739	1	結城市教育研究会音楽教育研究部	安達	英明	307-0011	結城市	小森2227		0296-33-3214	安達	英明	307-0011	結城市	小森2227			大ホール関係者	1100	0		3	\N	0	20171104181452	across	1	\N	\N	\N	20171108	20171108	--	--	\N	茨城県	\N	\N	2017-11-04
2017000110	0	17859899	1	結城市役所土木課	上野	敏明	307-0001	結城市	結城1447		0296-34-0426	山田	徹	307-0001	結城市	結城1447			会議	80	0		5	2017000110	0	20171104185721	across	0	\N	\N	20171108      	20171109	20171109	--	--	\N	茨城県	\N	\N	2017-11-04
2017000111	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町1918	総合福祉会館内	029-243-4034	清水	敏孝	310-8586	水戸市	千波町1918	総合福祉会館内		第39回茨城県保育大会　準備	900	1		5	2017000111	0	20171104191117	across	0	\N	\N	20171109      	20171110	20171110	--	--	\N	茨城県	\N	\N	2017-11-04
2017000112	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内		大ホール関係者	30	0		5	2017000112	0	20171104191757	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	茨城県	\N	\N	2017-11-04
2017000113	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内		大ホール関係者	16	0		5	2017000113	0	20171104191948	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	茨城県	茨城県	\N	2017-11-04
2017000114	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内		大ホール関係者	10	0		5	2017000114	0	20171104192116	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	茨城県	茨城県	\N	2017-11-04
2017000115	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内		大ホール関係者	30	0		5	2017000115	0	20171104192219	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	茨城県	茨城県	\N	2017-11-04
2017000116	0	17099994	4	茨城県保育協議会	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内		大ホール関係者	100	0		5	2017000116	0	20171104192402	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	茨城県	茨城県	\N	2017-11-04
2017000117	0	17050358	2	Ｔｗｉｎｋｌｅ　Ｍｅｌｏｄｙ	種市	恵美	323-0811	小山市	犬塚32-110		0285-24-2590	種市	恵美	323-0811	小山市	犬塚32-110			ピアノ・エレクトーン発表会　準備	350	1		5	2017000117	0	20171104193000	across	0	\N	\N	20171109      	20171110	20171110	--	--	\N	茨城県	\N	\N	2017-11-04
2017000118	0	17050358	2	Ｔｗｉｎｋｌｅ　Ｍｅｌｏｄｙ	種市	恵美	323-0811	小山市	犬塚３２－１１０		0285-24-2590	種市	恵美	323-0811	小山市	犬塚３２－１１０			ピアノ・エレクトーン発表会練習	350	1	（携帯）090-1553-8234	5	2017000118	0	20171104193217	across	0	\N	\N	20171110      	20171111	20171111	--	--	\N	栃木県	栃木県	\N	2017-11-04
2017000119	0	17050358	2	Ｔｗｉｎｋｌｅ　Ｍｅｌｏｄｙ	種市	恵美	323-0811	小山市	犬塚３２－１１０		0285-24-2590	種市	恵美	323-0811	小山市	犬塚３２－１１０			ピアノ・エレクトーン発表会	350	1		5	2017000119	0	20171104193431	across	0	\N	\N	20171110      	20171112	20171112	--	--	\N	栃木県	栃木県	\N	2017-11-04
2017000120	0	17683279	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市中央町2丁目	2番地		0296-33-2001	稲田	寛	307-0052	結城市中央町2丁目	2番地			モーニング娘。誕生20周年記念　コンサートツアー2017秋	1200	1		5	2017000120	0	20171105083204	across	0	\N	\N	20171105      	20171105	20171105	--	--	\N	茨城県	\N	\N	2017-11-05
2017000121	0	17516179	4	ＮＰＯ法人ベル・サポート	菊地	長吉	306-0434	境町	上小橋５４０		0280-87-7085	小野	史子	306-0434	境町	上小橋５４０			独身男女の出会いパーティー	40	0		5	2017000121	0	20171105131852	across	0	\N	\N	20171110      	20171112	20171112	--	--	\N	茨城県	茨城県	\N	2017-11-05
2017000122	0	17516179	4	ＮＰＯ法人ベル・サポート	菊地	長吉	306-0434	境町上小橋	540		0280-87-7085	小野	史子	306-0434	境町上小橋	540			独身男女の出会いパーティー	40	0		4	\N	0	20171105135510	across	0	\N	\N	\N	20171217	20171217	--	--	\N	茨城県	\N	\N	2017-11-05
2017000123	0	17140406	4	ピアノ教室Ａｎｄａｎｔｅ	関	恵	308-0052	筑西市	菅谷35-18		090-2545-0737	関	恵	308-0052	筑西市	菅谷35-18			ピアノ発表会	250	1		4	\N	0	20171105140304	across	0	\N	\N	\N	20171222	20171223	--	--	\N	茨城県	\N	\N	2017-11-05
2017000124	0	17767573	4	（一社）労働保健協会	白川	毅	173-0027	板橋区	南町9-11		03-3530-2132	太田	聡	173-0027	板橋区	南町9-11			日立健保巡回レディース健診	75	0		4	\N	0	20171105151819	across	0	\N	\N	\N	20171108	20171108	--	--	\N	東京都	東京都	\N	2017-11-05
2017000125	0	17081843	1	結城市教育振興会	前場	文夫	307-0001	結城市	大字結城７４７３		0296-32-9997	西村	規利	307-0001	結城市	大字結城７４７３			結城市教育振興大会並びに　　　人権講演会	800	1		5	2017000125	0	20171110160213	across	0	\N	\N	20171112      	20171113	20171113	--	--	\N	茨城県	茨城県	\N	2017-11-10
2017000126	0	17677952	1	中山（株）	中山	伸次郎	307-0001	結城市	小田林２５２０－１５		0296-32-1166	石塚	晃裕	307-0001	結城市	小田林２５２０－１５			セミナー	80	1		5	2017000126	0	20171110160401	across	0	\N	\N	20171112      	20171113	20171113	--	--	\N	茨城県	茨城県	\N	2017-11-10
2017000127	0	17081843	1	結城市教育振興会	前場	文夫	307-0001	結城市	大字結城７４７３		0296-32-9997	西村	規利	307-0001	結城市	大字結城７４７３			大ホール関係者	20	0		5	2017000127	0	20171110160543	across	0	\N	\N	20171112      	20171113	20171113	--	--	\N	茨城県	茨城県	\N	2017-11-10
2017000128	0	17081843	1	結城市教育振興会	前場	文夫	307-0001	結城市	大字結城７４７３		0296-32-9997	西村	規利	307-0001	結城市	大字結城７４７３			大ホール関係者	10	0		5	2017000128	0	20171110160732	across	0	\N	\N	20171112      	20171113	20171113	--	--	\N	茨城県	茨城県	\N	2017-11-10
2017000129	0	17677952	1	中山（株）	中山	伸次郎	307-0001	結城市	小田林２５２０－１５		0296-32-1166	石塚	晃裕	307-0001	結城市	小田林２５２０－１５			小ホール関係者	20	0		5	2017000129	0	20171110161138	across	0	\N	\N	20171112      	20171113	20171113	--	--	\N	茨城県	茨城県	\N	2017-11-10
2017000130	0	17927296	1	（一財）茨城県交通安全協会　結城地区交通安全協会	曽雌	哲雄	307-0007	結城市	小田林１３１７－１		0296-33-4767	江川	学	307-0007	結城市	小田林１３１７－１			免許講習　午前午後―通常講習	60	1		5	2017000130	0	20171110161440	across	0	\N	\N	20171112      	20171113	20171113	--	--	\N	茨城県	茨城県	\N	2017-11-10
2017000131	0	17589357	1	かなくぼ保育園	荒井	幸恵	307-0015	結城市鹿窪	坂の上９４９		0296-32-7965	荒井	幸恵	307-0015	結城市鹿窪	坂の上９４９			発表会	400	1		5	2017000131	0	20171113135347	across	0	\N	\N	20171206      	20171204	20171209	--	--	f	茨城県	茨城県	\N	2017-11-13
2017000132	0	17901280	4	八千代ひかり幼稚園	小川	敏雄	300-3504	結城郡八千代町	大字西大山６２８－１５		0296-48-2535	小川	敏雄	300-3504	結城郡八千代町	大字西大山６２８－１５			クリスマス発表会	1000	1		4	\N	0	20171113141024	across	0	\N	\N	\N	20171210	20171210	--	--	\N	茨城県	茨城県	\N	2017-11-13
2017000133	0	17927296	1	（一財）茨城県交通安全協会結城地区	曽雌	哲雄	307-0007	結城市	小田林１３１７－１		0296-33-4767	曽雌	哲雄	307-0007	結城市	小田林１３１７－１			免許講習　午前午後ー通常講習	60	1		4	\N	0	20171113141524	across	0	\N	\N	\N	20171211	20171211	--	--	\N	茨城県	茨城県	\N	2017-11-13
2017000134	0	17611458	1	つくば幼稚園・つくば保育園	滝田	昌孝	307-0053	結城市	新福寺２丁目８番地７		0296-32-2346	滝田	昌孝	307-0053	結城市	新福寺２丁目８番地７			クリスマスお遊戯会	600	1		4	\N	0	20171115161734	across	0	\N	\N	\N	20171214	20171216	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000135	0	17214753	4	柊幼稚園・柊保育園	増田	隆治	306-0112	古河市	東山田３		0280-77-0882	伊藤	夕雨子	306-0112	古河市	東山田３			クリスマス発表会	700	0		4	\N	0	20171115162312	across	0	\N	\N	\N	20171216	20171217	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000136	0	17214753	4	柊幼稚園・柊保育園	増田	隆治	306-0112	古河市	東山田３		0280-77-0882	伊藤	夕雨子	306-0112	古河市	東山田３			クリスマス発表会リハーサル	250	1		5	2017000136	0	20171115181851	across	0	\N	\N	20171116      	20171117	20171117	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000137	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城３０７３		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城３０７３			発表会の練習	170	1		5	2017000137	0	20171115183557	across	0	\N	\N	20171116      	20171117	20171117	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000138	0	17813068	4	元気寿司（株）	野水	寿	320-0811	宇都宮市	大通り２丁目１－５		028-632-5711	野水	寿	307-0001	結城市	結城１２０１９－６１			社内会議	12	0	（携帯）090-7013-8273	5	2017000138	0	20171115200741	across	0	\N	\N	20171116      	20171117	20171117	--	--	\N	栃木県	茨城県	\N	2017-11-15
2017000139	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			大ホール関係者	300	1	（携帯）090-4719-6850	5	2017000139	0	20171115203111	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000140	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			大ホール関係者	30	1	（携帯）090-4719-6850	5	2017000140	0	20171115203242	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000141	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			大ホール関係者	10	0	（携帯）090-4719-6850	5	2017000141	0	20171115203442	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000142	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			大ホール関係者	10	0	（携帯）090-4719-6850	5	2017000142	0	20171115203628	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000143	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			大ホール関係者	30	0	（携帯）090-4719-6850	5	2017000143	0	20171115203830	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000144	0	17394381	4	茨城県吹奏楽連盟県西地区	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４			大ホール関係者	40	0	（携帯）090-4719-6850	5	2017000144	0	20171115203951	across	0	\N	\N	20171117      	20171118	20171119	--	--	\N	茨城県	茨城県	\N	2017-11-15
2017000145	0	17306548	1	飯沼美由季	飯沼	美由季	307-0001	結城市	結城１７９		090-3808-1201	飯沼	美由季	307-0001	結城市	結城１７９			ダンスの練習	1	0		5	2017000145	0	20171116160738	across	0	\N	\N	20171116      	20171117	20171117	--	--	\N	茨城県	茨城県	\N	2017-11-16
2017000146	0	17483288	1	小山友の会結城支部	角田	ひろみ	307-0001	結城市	結城１１３６７－２		0296-33-2119	角田	ひろみ	307-0001	結城市	結城１１３６７－２			家事家計講習会	50	0		5	2017000146	0	20171118134953	across	0	\N	\N	20171118      	20171120	20171120	--	--	\N	茨城県	茨城県	\N	2017-11-18
2017000147	0	17483288	1	小山友の会結城支部	角田	ひろみ	307-0001	結城市	結城１１３６７－２		0296-33-2119	角田	ひろみ	307-0001	結城市	結城１１３６７－２			展示室関係者	10	0		5	2017000147	0	20171118145148	across	0	\N	\N	20171118      	20171120	20171120	--	--	\N	茨城県	茨城県	\N	2017-11-18
2017000148	0	17927296	1	（一財）茨城県交通安全協会結城地区	曽雌	哲雄	307-0007	結城市	小田林１３１７－１		0296-33-4767	江川	学	307-0007	結城市	小田林１３１７－１			免許講習　　　　　　　　　　　午前ー通常講習　午後－初回講習	60	1		5	2017000148	0	20171118151828	across	0	\N	\N	20171118      	20171122	20171122	--	--	\N	茨城県	茨城県	\N	2017-11-18
2017000151	0	17826113	1	結城市役所防災安全課	瀬戸井	武志	307-8501	結城市	結城１４４７		0296-34-0411	瀬戸井	武志	307-8501	結城市	結城１４４７			第１１回防災広場　準備	1500	1		5	2017000151	0	20171119111629	across	0	\N	\N	20171123      	20171124	20171125	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000153	0	17826113	1	結城市役所防災安全課	瀬戸井	武志	307-8501	結城市	結城１４４７		0296-34-0411	瀬戸井	武志	307-8501	結城市	結城１４４７			防災広場関係者	1500	1		4	\N	0	20171119112028	across	0	\N	\N	\N	20171126	20171126	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000154	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城３０７３		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城３０７３			発表会　練習	300	1		5	2017000154	0	20171119113645	across	0	\N	\N	20171127      	20171129	20171201	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000155	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城３０７３		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城３０７３			発表会　準備	150	1		5	2017000155	0	20171119113953	across	0	\N	\N	20171124      	20171127	20171127	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000156	0	17395290	1	みくに保育園	鈴木	龍穏	307-0001	結城市	結城３０７３		0296-33-5946	鈴木	龍穏	307-0001	結城市	結城３０７３			発表会	300	1		5	2017000156	0	20171119115300	across	0	\N	\N	20171129      	20171202	20171202	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000157	0	17660933	4	センター家庭電器（株）	今川	政夫	310-0005	水戸市	水府町１５４８		029-226-2215	今川	政夫	310-0005	水戸市	水府町１５４８			日立家電フェア　準備	20	0		5	2017000157	0	20171119134319	across	0	\N	\N	20171124      	20171127	20171201	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000158	0	17660933	4	センター家庭電器（株）	今川	政夫	310-0005	水戸市	水府町１５４８		029-226-2215	今川	政夫	310-0005	水戸市	水府町１５４８			日立家電フェア	100	0		5	2017000158	0	20171119134450	across	0	\N	\N	20171129      	20171202	20171203	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000159	0	17988866	1	玉岡尭舜認定こども園	大山	芳江	307-0001	結城市	結城１２０１８－１		0296-45-6363	大山	芳江	307-0001	結城市	結城１２０１８－１			おたのしみ会　準備	500	1		5	2017000159	0	20171119134949	across	0	\N	\N	20171129      	20171130	20171201	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000160	0	17988866	1	玉岡尭舜認定こども園	大山	芳江	307-0001	結城市	結城１２０１８－１		0296-45-6363	大山	芳江	307-0001	結城市	結城１２０１８－１			大ホール関係者	30	0		3	\N	0	20171119135615	across	0	\N	\N	\N	20171130	20171202	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000161	0	17449333	1	結城市文化協会	渡部	栄一	307-0001	結城市	結城７４７３		0296-32-1899	恩田	正子	307-0001	結城市	結城７４７３			ゆうき市文化祭音楽部門　　　　合同発表会準備	200	1		3	\N	0	20171125133459	across	1	\N	\N	\N	20171202	20171202	--	--	\N	茨城県	茨城県	\N	2017-11-25
2017000150	0	17192659	2	田中歌謡教室	田中	照雄	323-0029	小山市	城北２－１７－５		090-3402-6951	出井	新	328-0043	栃木市	境町１９－９			カラオケ発表会	80	1		7	2017000018	0	20171118155254	across	0	\N	\N	20171122      	20171123	20171123	--	--	\N	栃木県	栃木県	\N	2017-11-18
2017000152	0	17826113	1	結城市役所防災安全課	瀬戸井	武志	307-8501	結城市	結城１４４７		0296-34-0411	瀬戸井	武志	307-8501	結城市	結城１４４７			第１１回防災広場	1200	1		7	2017000017	0	20171119111745	across	0	\N	\N	20171123      	20171126	20171126	--	--	\N	茨城県	茨城県	\N	2017-11-19
2017000162	0	17449333	1	結城市文化協会	渡部	栄一	307-0001	結城市	結城７４７３		0296-32-1899	恩田	正子	307-0001	結城市	結城７４７３			小ホール関係者	30	0		3	\N	0	20171125133706	across	1	\N	\N	\N	20171203	20171203	--	--	\N	茨城県	茨城県	\N	2017-11-25
2017000164	0	17589357	1	かなくぼ保育園	荒井	幸恵	307-0015	結城市鹿窪	坂の上９４９		0296-32-7965	荒井	幸恵	307-0015	結城市鹿窪	坂の上９４９			発表会	300	1		3	\N	0	20171125141713	across	1	\N	\N	\N	20171209	20171209	--	--	\N	茨城県	茨城県	\N	2017-11-25
2017000165	0	17816020	1	結城市民劇団「つむぎ」	鈴木	林蔵	307-0001	結城市	結城９６１３－２２		0296-32-3570	鈴木	林蔵	307-0001	結城市	結城９６１３－２２			大ホール関係者	30	0		3	\N	0	20171125144939	across	1	\N	\N	\N	20171208	20171209	--	--	\N	茨城県	茨城県	\N	2017-11-25
2017000167	0	17000226	1	家庭倫理の会茨城西	細川	悦子	307-0001	結城市	結城７３５９－３		090-4056-9577	細川	悦子	307-0001	結城市	結城７３５９－３			ああ	1	0		3	\N	0	20171128141757	admin	1	\N	\N	\N	20171128	20171130	--	090-4056-9577	t	茨城県	茨城県	\N	2017-11-28
2017000168	0	17000229	1	県西社会福祉士会	池羽	修一	307-0004	結城市	みどり町１－２－８		080-5431-8528	池羽	修一	307-0004	結城市	みどり町１－２－８			研修会	40	0		4	\N	0	20171130130807	across	0	\N	\N	\N	20171220	20171220	--	080-5431-8528	f	茨城県	茨城県	\N	2017-11-30
2017000169	0	17000211	1	（一財）茨城県交通安全協会結城地区	曽雌	哲雄	307-0007	結城市	小田林１３１７－１		0296-33-4767	江川	学	307-0007	結城市	小田林１３１７－１			免許講習　　　　　　　　　　　午前ー通常講習　午後ー初回講習	60	0		4	\N	0	20171130131614	across	0	\N	\N	\N	20171221	20171221	--	0296-33-0110	f	茨城県	茨城県	\N	2017-11-30
2017000170	0	17000113	1	マイレイユーキ	下条	なか子	307-0001	結城市	結城１１７４３－３８		0296-32-4480	下条	なか子	307-0001	結城市	結城１１７４３－３８			フラダンス練習	10	0		4	\N	0	20171130132307	admin	0	\N	\N	\N	20171228	20171228	--	0296-32-4480	f	茨城県	茨城県	001	2017-11-30
2017000171	0	17000225	1	玉岡尭舜認定こども園	大山	芳江	307-0001	結城市	結城１２０１８－１		0296-45-6363	大山	芳江	307-0001	結城市	結城１２０１８－１			おたのしみ会	500	1		3	\N	0	20171202083239	across	1	\N	\N	\N	20171203	20171203	--	0296-45-6363	f	茨城県	茨城県	\N	2017-12-02
2017000172	0	17000142	1	（公財）結城市文化・スポーツ振興事業団	前場	文夫	307-0052	結城市	中央町二丁目２番地		0296-33-2001	前場	文夫	307-0052	結城市	中央町二丁目２番地			テスト\r\n	1	0		3	\N	0	20171207150646	across	1	\N	\N	\N	20171202	20171202	--	0296-33-2001	t	茨城県	茨城県	\N	2017-12-07
2017000177	0	17000248	1	（協組）結城専門店会	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	初美	寿秋	307-0001	結城市	大字結城５３１			あ	1	0		5	\N	0	20171212165016	admin	0	\N	\N	20171213      	20171203	20171203	--	0296-33-3234	f	茨城県	茨城県		2017-12-12
\.


--
-- TOC entry 2478 (class 0 OID 16550)
-- Dependencies: 233
-- Data for Name: t_reserve_partition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_reserve_partition (r_id, p_no, partition, unit_info, reserve) FROM stdin;
230	1	1	00000000000000000	\N
231	1	1	00000000000000000	\N
232	1	1	00000000000000000	\N
233	1	1	00000000000000000	\N
234	1	1	00000000000000000	\N
235	1	1	00000000000000000	\N
242	1	1	00000000000000000	\N
243	1	1	00000000000000000	\N
244	1	1	00000000000000000	\N
245	1	1	00000000000000000	\N
246	1	1	00000000000000000	\N
247	1	1	00000000000000000	\N
248	1	1	00000000000000000	\N
249	1	1	00000000000000000	\N
250	1	1	00000000000000000	\N
251	1	1	00000000000000000	\N
252	1	1	00000000000000000	\N
253	1	1	00000000000000000	\N
254	1	1	00000000000000000	\N
255	1	1	00000000000000000	\N
256	1	1	00000000000000000	\N
257	1	1	00000000000000000	\N
258	1	1	00000000000000000	\N
259	1	1	00000000000000000	\N
260	1	1	00000000000000000	\N
261	1	1	00000000000000000	\N
262	1	1	00000000000000000	\N
263	1	1	00000000000000000	\N
264	1	1	00000000000000000	\N
265	1	1	00000000000000000	\N
266	1	1	00000000000000000	\N
267	1	1	00000000000000000	\N
268	1	1	00000000000000000	\N
269	1	1	00000000000000000	\N
270	1	1	00000000000000000	\N
301	1	1	00000000000000000	\N
302	1	1	00000000000000000	\N
303	1	1	00000000000000000	\N
304	1	1	00000000000000000	\N
305	1	1	00000000000000000	\N
306	1	1	00000000000000000	\N
307	1	1	00000000000000000	\N
308	1	1	00000000000000000	\N
309	1	1	00000000000000000	\N
310	1	1	00000000000000000	\N
311	1	1	00000000000000000	\N
312	1	1	00000000000000000	\N
313	1	1	00000000000000000	\N
314	1	1	00000000000000000	\N
315	1	1	00000000000000000	\N
316	1	1	00000000000000000	\N
317	1	1	00000000000000000	\N
318	1	1	00000000000000000	\N
319	1	1	00000000000000000	\N
320	1	1	00000000000000000	\N
321	1	1	00000000000000000	\N
322	1	1	00000000000000000	\N
323	1	1	00000000000000000	\N
324	1	1	00000000000000000	\N
325	1	1	00000000000000000	\N
326	1	1	00000000000000000	\N
327	1	1	00000000000000000	\N
328	1	1	00000000000000000	\N
329	1	1	00000000000000000	\N
330	1	1	00000000000000000	\N
331	1	1	00000000000000000	\N
332	1	1	00000000000000000	\N
333	1	1	00000000000000000	\N
334	1	1	00000000000000000	\N
335	1	1	00000000000000000	\N
362	1	1	00000000000000000	\N
363	1	1	00000000000000000	\N
364	1	1	00000000000000000	\N
365	1	1	00000000000000000	\N
366	1	1	00000000000000000	\N
367	1	1	00000000000000000	\N
368	1	1	00000000000000000	\N
369	1	1	00000000000000000	\N
370	1	1	00000000000000000	\N
371	1	1	00000000000000000	\N
372	1	1	00000000000000000	\N
373	1	1	00000000000000000	\N
374	1	1	00000000000000000	\N
375	1	1	00000000000000000	\N
376	1	1	00000000000000000	\N
377	1	1	00000000000000000	\N
378	1	1	00000000000000000	\N
379	1	1	00000000000000000	\N
380	1	1	00000000000000000	\N
381	1	1	00000000000000000	\N
382	1	1	00000000000000000	\N
383	1	1	00000000000000000	\N
392	1	1	00000000000000000	\N
393	1	1	00000000000000000	\N
394	1	1	00000000000000000	\N
395	1	1	00000000000000000	\N
396	1	1	00000000000000000	\N
397	1	1	00000000000000000	\N
398	1	1	00000000000000000	\N
399	1	1	00000000000000000	\N
400	1	1	00000000000000000	\N
401	1	1	00000000000000000	\N
402	1	1	00000000000000000	\N
403	1	1	00000000000000000	\N
404	1	1	00000000000000000	\N
405	1	1	00000000000000000	\N
406	1	1	00000000000000000	\N
408	1	1	00000000000000000	\N
409	1	1	00000000000000000	\N
410	1	1	00000000000000000	\N
411	1	1	00000000000000000	\N
412	1	1	00000000000000000	\N
413	1	1	00000000000000000	\N
414	1	1	00000000000000000	\N
420	1	1	00000000000000000	\N
421	1	1	00000000000000000	\N
422	1	1	00000000000000000	\N
423	1	1	00000000000000000	\N
424	1	1	00000000000000000	\N
425	1	1	00000000000000000	\N
426	1	1	00000000000000000	\N
427	1	1	00000000000000000	\N
428	1	1	00000000000000000	\N
429	1	1	00000000000000000	\N
430	1	1	00000000000000000	\N
431	1	1	00000000000000000	\N
3031	1	1	00000000000000000	\N
3032	1	1	00000000000000000	\N
522	1	1	00000000000000000	\N
3033	1	1	00000000000000000	\N
3034	1	1	00000000000000000	\N
3035	1	1	00000000000000000	\N
3036	1	1	00000000000000000	\N
3523	1	1	00000000000000000	\N
3524	1	1	00000000000000000	\N
3525	1	1	00000000000000000	\N
3526	1	1	00000000000000000	\N
3527	1	1	00000000000000000	\N
3528	1	1	00000000000000000	\N
3529	1	1	00000000000000000	\N
3530	1	1	00000000000000000	\N
3531	1	1	00000000000000000	\N
3532	1	1	00000000000000000	\N
3533	1	1	00000000000000000	\N
3534	1	1	00000000000000000	\N
705	1	1	00000000000000000	\N
730	1	1	00000000000000000	\N
731	1	1	00000000000000000	\N
732	1	1	00000000000000000	\N
733	1	1	00000000000000000	\N
775	1	1	00000000000000000	\N
776	1	1	00000000000000000	\N
777	1	1	00000000000000000	\N
778	1	1	00000000000000000	\N
779	1	1	00000000000000000	\N
780	1	1	00000000000000000	\N
781	1	1	00000000000000000	\N
782	1	1	00000000000000000	\N
783	1	1	00000000000000000	\N
784	1	1	00000000000000000	\N
785	1	1	00000000000000000	\N
786	1	1	00000000000000000	\N
787	1	1	00000000000000000	\N
788	1	1	00000000000000000	\N
789	1	1	00000000000000000	\N
790	1	1	00000000000000000	\N
791	1	1	00000000000000000	\N
792	1	1	00000000000000000	\N
3535	1	1	00000000000000000	\N
3536	1	1	00000000000000000	\N
3537	1	1	00000000000000000	\N
3538	1	1	00000000000000000	\N
3539	1	1	00000000000000000	\N
3540	1	1	00000000000000000	\N
3541	1	1	00000000000000000	\N
3542	1	1	00000000000000000	\N
3543	1	1	00000000000000000	\N
3544	1	1	00000000000000000	\N
3545	1	1	00000000000000000	\N
3546	1	1	00000000000000000	\N
3547	1	1	00000000000000000	\N
3548	1	1	00000000000000000	\N
3549	1	1	00000000000000000	\N
3550	1	1	00000000000000000	\N
3551	1	1	00000000000000000	\N
3552	1	1	00000000000000000	\N
3553	1	1	00000000000000000	\N
3554	1	1	00000000000000000	\N
3555	1	1	00000000000000000	\N
3556	1	1	00000000000000000	\N
3557	1	1	00000000000000000	\N
3558	1	1	00000000000000000	\N
3559	1	1	00000000000000000	\N
3560	1	1	00000000000000000	\N
3561	1	1	00000000000000000	\N
3562	1	1	00000000000000000	\N
3563	1	1	00000000000000000	\N
3564	1	1	00000000000000000	\N
3565	1	1	00000000000000000	\N
3566	1	1	00000000000000000	\N
3567	1	1	00000000000000000	\N
3568	1	1	00000000000000000	\N
3569	1	1	00000000000000000	\N
3570	1	1	00000000000000000	\N
3571	1	1	00000000000000000	\N
3572	1	1	00000000000000000	\N
3573	1	1	00000000000000000	\N
3574	1	1	00000000000000000	\N
3575	1	1	00000000000000000	\N
3576	1	1	00000000000000000	\N
3577	1	1	00000000000000000	\N
3578	1	1	00000000000000000	\N
3579	1	1	00000000000000000	\N
3580	1	1	00000000000000000	\N
3581	1	1	00000000000000000	\N
3582	1	1	00000000000000000	\N
3583	1	1	00000000000000000	\N
3584	1	1	00000000000000000	\N
3585	1	1	00000000000000000	\N
3586	1	1	00000000000000000	\N
3587	1	1	00000000000000000	\N
3588	1	1	00000000000000000	\N
3589	1	1	00000000000000000	\N
3590	1	1	00000000000000000	\N
3591	1	1	00000000000000000	\N
3592	1	1	00000000000000000	\N
3593	1	1	00000000000000000	\N
3594	1	1	00000000000000000	\N
3595	1	1	00000000000000000	\N
3596	1	1	00000000000000000	\N
3597	1	1	00000000000000000	\N
3598	1	1	00000000000000000	\N
3599	1	1	00000000000000000	\N
3600	1	1	00000000000000000	\N
3601	1	1	00000000000000000	\N
3602	1	1	00000000000000000	\N
3603	1	1	00000000000000000	\N
3604	1	1	00000000000000000	\N
3605	1	1	00000000000000000	\N
3606	1	1	00000000000000000	\N
3607	1	1	00000000000000000	\N
3608	1	1	00000000000000000	\N
3609	1	1	00000000000000000	\N
3610	1	1	00000000000000000	\N
3611	1	1	00000000000000000	\N
3612	1	1	00000000000000000	\N
1154	1	1	00000000000000000	\N
1155	1	1	00000000000000000	\N
1156	1	1	00000000000000000	\N
1157	1	1	00000000000000000	\N
1158	1	1	00000000000000000	\N
1159	1	1	00000000000000000	\N
1160	1	1	00000000000000000	\N
1161	1	1	00000000000000000	\N
1162	1	1	00000000000000000	\N
1163	1	1	00000000000000000	\N
1164	1	1	00000000000000000	\N
1165	1	1	00000000000000000	\N
1166	1	1	00000000000000000	\N
1167	1	1	00000000000000000	\N
1168	1	1	00000000000000000	\N
1169	1	1	00000000000000000	\N
1170	1	1	00000000000000000	\N
1171	1	1	00000000000000000	\N
1172	1	1	00000000000000000	\N
1173	1	1	00000000000000000	\N
1174	1	1	00000000000000000	\N
1175	1	1	00000000000000000	\N
1176	1	1	00000000000000000	\N
1177	1	1	00000000000000000	\N
1178	1	1	00000000000000000	\N
1179	1	1	00000000000000000	\N
1180	1	1	00000000000000000	\N
1181	1	1	00000000000000000	\N
1182	1	1	00000000000000000	\N
1183	1	1	00000000000000000	\N
1209	1	1	00000000000000000	\N
1210	1	1	00000000000000000	\N
1211	1	1	00000000000000000	\N
1212	1	1	00000000000000000	\N
1213	1	1	00000000000000000	\N
1214	1	1	00000000000000000	\N
1215	1	1	00000000000000000	\N
1216	1	1	00000000000000000	\N
1217	1	1	00000000000000000	\N
1218	1	1	00000000000000000	\N
1219	1	1	00000000000000000	\N
1220	1	1	00000000000000000	\N
1221	1	1	00000000000000000	\N
1222	1	1	00000000000000000	\N
1223	1	1	00000000000000000	\N
1224	1	1	00000000000000000	\N
1225	1	1	00000000000000000	\N
1226	1	1	00000000000000000	\N
1227	1	1	00000000000000000	\N
1228	1	1	00000000000000000	\N
1229	1	1	00000000000000000	\N
1230	1	1	00000000000000000	\N
1231	1	1	00000000000000000	\N
1232	1	1	00000000000000000	\N
1233	1	1	00000000000000000	\N
1234	1	1	00000000000000000	\N
1235	1	1	00000000000000000	\N
1236	1	1	00000000000000000	\N
1237	1	1	00000000000000000	\N
1238	1	1	00000000000000000	\N
1239	1	1	00000000000000000	\N
1240	1	1	00000000000000000	\N
1241	1	1	00000000000000000	\N
1242	1	1	00000000000000000	\N
1243	1	1	00000000000000000	\N
1244	1	1	00000000000000000	\N
1245	1	1	00000000000000000	\N
1246	1	1	00000000000000000	\N
1247	1	1	00000000000000000	\N
1248	1	1	00000000000000000	\N
1249	1	1	00000000000000000	\N
1250	1	1	00000000000000000	\N
1251	1	1	00000000000000000	\N
1252	1	1	00000000000000000	\N
1253	1	1	00000000000000000	\N
1254	1	1	00000000000000000	\N
1255	1	1	00000000000000000	\N
1256	1	1	00000000000000000	\N
1257	1	1	00000000000000000	\N
1258	1	1	00000000000000000	\N
1259	1	1	00000000000000000	\N
1260	1	1	00000000000000000	\N
1261	1	1	00000000000000000	\N
1262	1	1	00000000000000000	\N
1263	1	1	00000000000000000	\N
1264	1	1	00000000000000000	\N
1265	1	1	00000000000000000	\N
1266	1	1	00000000000000000	\N
1267	1	1	00000000000000000	\N
1268	1	1	00000000000000000	\N
1269	1	1	00000000000000000	\N
1270	1	1	00000000000000000	\N
1271	1	1	00000000000000000	\N
1272	1	1	00000000000000000	\N
1273	1	1	00000000000000000	\N
1274	1	1	00000000000000000	\N
1275	1	1	00000000000000000	\N
1276	1	1	00000000000000000	\N
1277	1	1	00000000000000000	\N
1278	1	1	00000000000000000	\N
1279	1	1	00000000000000000	\N
1280	1	1	00000000000000000	\N
1281	1	1	00000000000000000	\N
1282	1	1	00000000000000000	\N
1283	1	1	00000000000000000	\N
1284	1	1	00000000000000000	\N
1285	1	1	00000000000000000	\N
1286	1	1	00000000000000000	\N
1287	1	1	00000000000000000	\N
1288	1	1	00000000000000000	\N
1289	1	1	00000000000000000	\N
1290	1	1	00000000000000000	\N
1291	1	1	00000000000000000	\N
1292	1	1	00000000000000000	\N
1293	1	1	00000000000000000	\N
1294	1	1	00000000000000000	\N
1295	1	1	00000000000000000	\N
1296	1	1	00000000000000000	\N
1297	1	1	00000000000000000	\N
1298	1	1	00000000000000000	\N
1301	1	1	00000000000000000	\N
1302	1	1	00000000000000000	\N
1303	1	1	00000000000000000	\N
1304	1	1	00000000000000000	\N
1305	1	1	00000000000000000	\N
1306	1	1	00000000000000000	\N
1307	1	1	00000000000000000	\N
1308	1	1	00000000000000000	\N
1309	1	1	00000000000000000	\N
1310	1	1	00000000000000000	\N
1311	1	1	00000000000000000	\N
1312	1	1	00000000000000000	\N
1313	1	1	00000000000000000	\N
1314	1	1	00000000000000000	\N
1315	1	1	00000000000000000	\N
1316	1	1	00000000000000000	\N
1317	1	1	00000000000000000	\N
1318	1	1	00000000000000000	\N
1319	1	1	00000000000000000	\N
1320	1	1	00000000000000000	\N
1321	1	1	00000000000000000	\N
1322	1	1	00000000000000000	\N
1323	1	1	00000000000000000	\N
1324	1	1	00000000000000000	\N
1325	1	1	00000000000000000	\N
1326	1	1	00000000000000000	\N
1328	1	1	00000000000000000	\N
1329	1	1	00000000000000000	\N
1330	1	1	00000000000000000	\N
1331	1	1	00000000000000000	\N
1332	1	1	00000000000000000	\N
1333	1	1	00000000000000000	\N
1334	1	1	00000000000000000	\N
1335	1	1	00000000000000000	\N
1336	1	1	00000000000000000	\N
1337	1	1	00000000000000000	\N
1338	1	1	00000000000000000	\N
1339	1	1	00000000000000000	\N
1340	1	1	00000000000000000	\N
1341	1	1	00000000000000000	\N
1342	1	1	00000000000000000	\N
1343	1	1	00000000000000000	\N
1344	1	1	00000000000000000	\N
1345	1	1	00000000000000000	\N
1346	1	1	00000000000000000	\N
1347	1	1	00000000000000000	\N
1348	1	1	00000000000000000	\N
1349	1	1	00000000000000000	\N
1350	1	1	00000000000000000	\N
1351	1	1	00000000000000000	\N
1352	1	1	00000000000000000	\N
1353	1	1	00000000000000000	\N
1354	1	1	00000000000000000	\N
1355	1	1	00000000000000000	\N
1356	1	1	00000000000000000	\N
1397	1	1	00000000000000000	\N
1398	1	1	00000000000000000	\N
1399	1	1	00000000000000000	\N
1400	1	1	00000000000000000	\N
1401	1	1	00000000000000000	\N
1402	1	1	00000000000000000	\N
1403	1	1	00000000000000000	\N
1404	1	1	00000000000000000	\N
1405	1	1	00000000000000000	\N
3312	1	1	00000000000000000	\N
3313	1	1	00000000000000000	\N
3314	1	1	00000000000000000	\N
3315	1	1	00000000000000000	\N
3316	1	1	00000000000000000	\N
3344	1	1	00000000000000000	\N
3345	1	1	00000000000000000	\N
3346	1	1	00000000000000000	\N
3347	1	1	00000000000000000	\N
3348	1	1	00000000000000000	\N
3349	1	1	00000000000000000	\N
3350	1	1	00000000000000000	\N
3361	1	1	00000000000000000	\N
3362	1	1	00000000000000000	\N
3363	1	1	00000000000000000	\N
3364	1	1	00000000000000000	\N
3458	1	1	00000000000000000	\N
3459	1	1	00000000000000000	\N
3460	1	1	00000000000000000	\N
3461	1	1	00000000000000000	\N
3462	1	1	00000000000000000	\N
3463	1	1	00000000000000000	\N
3464	1	1	00000000000000000	\N
3639	1	1	00000000000000000	\N
3640	1	1	00000000000000000	\N
3641	1	1	00000000000000000	\N
3642	1	1	00000000000000000	\N
3643	1	1	00000000000000000	\N
3644	1	1	00000000000000000	\N
3645	1	1	00000000000000000	\N
3646	1	1	00000000000000000	\N
3647	1	1	00000000000000000	\N
3648	1	1	00000000000000000	\N
3649	1	1	00000000000000000	\N
3650	1	1	00000000000000000	\N
3651	1	1	00000000000000000	\N
3652	1	1	00000000000000000	\N
3653	1	1	00000000000000000	\N
3654	1	1	00000000000000000	\N
3655	1	1	00000000000000000	\N
3656	1	1	00000000000000000	\N
3657	1	1	00000000000000000	\N
3658	1	1	00000000000000000	\N
3659	1	1	00000000000000000	\N
3660	1	1	00000000000000000	\N
3661	1	1	00000000000000000	\N
3662	1	1	00000000000000000	\N
3663	1	1	00000000000000000	\N
3664	1	1	00000000000000000	\N
3665	1	1	00000000000000000	\N
3666	1	1	00000000000000000	\N
3667	1	1	00000000000000000	\N
3059	1	1	00000000000000000	\N
3060	1	1	00000000000000000	\N
3061	1	1	00000000000000000	\N
3062	1	1	00000000000000000	\N
3063	1	1	00000000000000000	\N
3064	1	1	00000000000000000	\N
3065	1	1	00000000000000000	\N
3066	1	1	00000000000000000	\N
3067	1	1	00000000000000000	\N
3068	1	1	00000000000000000	\N
3069	1	1	00000000000000000	\N
3070	1	1	00000000000000000	\N
3071	1	1	00000000000000000	\N
3072	1	1	00000000000000000	\N
3073	1	1	00000000000000000	\N
3074	1	1	00000000000000000	\N
3075	1	1	00000000000000000	\N
3076	1	1	00000000000000000	\N
3077	1	1	00000000000000000	\N
3078	1	1	00000000000000000	\N
3079	1	1	00000000000000000	\N
3080	1	1	00000000000000000	\N
3081	1	1	00000000000000000	\N
3082	1	1	00000000000000000	\N
3083	1	1	00000000000000000	\N
3084	1	1	00000000000000000	\N
3085	1	1	00000000000000000	\N
3086	1	1	00000000000000000	\N
3087	1	1	00000000000000000	\N
3088	1	1	00000000000000000	\N
3089	1	1	00000000000000000	\N
3090	1	1	00000000000000000	\N
3091	1	1	00000000000000000	\N
3092	1	1	00000000000000000	\N
3093	1	1	00000000000000000	\N
3094	1	1	00000000000000000	\N
3095	1	1	00000000000000000	\N
3096	1	1	00000000000000000	\N
3097	1	1	00000000000000000	\N
3098	1	1	00000000000000000	\N
3099	1	1	00000000000000000	\N
3100	1	1	00000000000000000	\N
3101	1	1	00000000000000000	\N
3102	1	1	00000000000000000	\N
3103	1	1	00000000000000000	\N
3104	1	1	00000000000000000	\N
3105	1	1	00000000000000000	\N
3106	1	1	00000000000000000	\N
3107	1	1	00000000000000000	\N
3108	1	1	00000000000000000	\N
3109	1	1	00000000000000000	\N
3110	1	1	00000000000000000	\N
3111	1	1	00000000000000000	\N
3112	1	1	00000000000000000	\N
3113	1	1	00000000000000000	\N
3114	1	1	00000000000000000	\N
3309	1	1	00000000000000000	\N
3317	1	1	00000000000000000	\N
3351	1	1	00000000000000000	\N
3355	1	1	00000000000000000	\N
3365	1	1	00000000000000000	\N
3366	1	1	00000000000000000	\N
3367	1	1	00000000000000000	\N
3668	1	1	00000000000000000	\N
3669	1	1	00000000000000000	\N
3670	1	1	00000000000000000	\N
3671	1	1	00000000000000000	\N
3672	1	1	00000000000000000	\N
3673	1	1	00000000000000000	\N
3674	1	1	00000000000000000	\N
3310	1	1	00000000000000000	\N
3318	1	1	00000000000000000	\N
3319	1	1	00000000000000000	\N
3320	1	1	00000000000000000	\N
3321	1	1	00000000000000000	\N
3322	1	1	00000000000000000	\N
3323	1	1	00000000000000000	\N
3324	1	1	00000000000000000	\N
3325	1	1	00000000000000000	\N
3326	1	1	00000000000000000	\N
3327	1	1	00000000000000000	\N
3328	1	1	00000000000000000	\N
3329	1	1	00000000000000000	\N
3352	1	1	00000000000000000	\N
3368	1	1	00000000000000000	\N
3369	1	1	00000000000000000	\N
3370	1	1	00000000000000000	\N
3371	1	1	00000000000000000	\N
3372	1	1	00000000000000000	\N
3373	1	1	00000000000000000	\N
3374	1	1	00000000000000000	\N
3375	1	1	00000000000000000	\N
3376	1	1	00000000000000000	\N
3377	1	1	00000000000000000	\N
3378	1	1	00000000000000000	\N
3379	1	1	00000000000000000	\N
3380	1	1	00000000000000000	\N
3381	1	1	00000000000000000	\N
3382	1	1	00000000000000000	\N
3383	1	1	00000000000000000	\N
3384	1	1	00000000000000000	\N
3385	1	1	00000000000000000	\N
3386	1	1	00000000000000000	\N
3387	1	1	00000000000000000	\N
3388	1	1	00000000000000000	\N
3389	1	1	00000000000000000	\N
3390	1	1	00000000000000000	\N
3391	1	1	00000000000000000	\N
3392	1	1	00000000000000000	\N
3393	1	1	00000000000000000	\N
3394	1	1	00000000000000000	\N
3395	1	1	00000000000000000	\N
3396	1	1	00000000000000000	\N
3397	1	1	00000000000000000	\N
3398	1	1	00000000000000000	\N
3399	1	1	00000000000000000	\N
3400	1	1	00000000000000000	\N
3401	1	1	00000000000000000	\N
3402	1	1	00000000000000000	\N
3403	1	1	00000000000000000	\N
3404	1	1	00000000000000000	\N
3405	1	1	00000000000000000	\N
3406	1	1	00000000000000000	\N
3407	1	1	00000000000000000	\N
3408	1	1	00000000000000000	\N
3409	1	1	00000000000000000	\N
3410	1	1	00000000000000000	\N
3411	1	1	00000000000000000	\N
3412	1	1	00000000000000000	\N
3413	1	1	00000000000000000	\N
3414	1	1	00000000000000000	\N
3415	1	1	00000000000000000	\N
3416	1	1	00000000000000000	\N
3417	1	1	00000000000000000	\N
3418	1	1	00000000000000000	\N
3419	1	1	00000000000000000	\N
3420	1	1	00000000000000000	\N
3421	1	1	00000000000000000	\N
3422	1	1	00000000000000000	\N
3675	1	1	00000000000000000	\N
3676	1	1	00000000000000000	\N
1975	1	1	00000000000000000	\N
1976	1	1	00000000000000000	\N
1977	1	1	00000000000000000	\N
1978	1	1	00000000000000000	\N
1979	1	1	00000000000000000	\N
1980	1	1	00000000000000000	\N
1981	1	1	00000000000000000	\N
1982	1	1	00000000000000000	\N
1983	1	1	00000000000000000	\N
1984	1	1	00000000000000000	\N
1985	1	1	00000000000000000	\N
1986	1	1	00000000000000000	\N
1987	1	1	00000000000000000	\N
1988	1	1	00000000000000000	\N
1989	1	1	00000000000000000	\N
1990	1	1	00000000000000000	\N
1991	1	1	00000000000000000	\N
1992	1	1	00000000000000000	\N
1993	1	1	00000000000000000	\N
1994	1	1	00000000000000000	\N
1995	1	1	00000000000000000	\N
1996	1	1	00000000000000000	\N
1997	1	1	00000000000000000	\N
1998	1	1	00000000000000000	\N
1999	1	1	00000000000000000	\N
2000	1	1	00000000000000000	\N
2001	1	1	00000000000000000	\N
2002	1	1	00000000000000000	\N
2003	1	1	00000000000000000	\N
2004	1	1	00000000000000000	\N
2005	1	1	00000000000000000	\N
2006	1	1	00000000000000000	\N
2007	1	1	00000000000000000	\N
2008	1	1	00000000000000000	\N
2009	1	1	00000000000000000	\N
2010	1	1	00000000000000000	\N
2011	1	1	00000000000000000	\N
2012	1	1	00000000000000000	\N
2013	1	1	00000000000000000	\N
2014	1	1	00000000000000000	\N
2015	1	1	00000000000000000	\N
2016	1	1	00000000000000000	\N
2017	1	1	00000000000000000	\N
2018	1	1	00000000000000000	\N
2019	1	1	00000000000000000	\N
2020	1	1	00000000000000000	\N
2021	1	1	00000000000000000	\N
2022	1	1	00000000000000000	\N
2023	1	1	00000000000000000	\N
2024	1	1	00000000000000000	\N
2025	1	1	00000000000000000	\N
2026	1	1	00000000000000000	\N
2027	1	1	00000000000000000	\N
2035	1	1	00000000000000000	\N
2036	1	1	00000000000000000	\N
2037	1	1	00000000000000000	\N
2038	1	1	00000000000000000	\N
2039	1	1	00000000000000000	\N
2040	1	1	00000000000000000	\N
2041	1	1	00000000000000000	\N
2042	1	1	00000000000000000	\N
2043	1	1	00000000000000000	\N
2044	1	1	00000000000000000	\N
2045	1	1	00000000000000000	\N
2046	1	1	00000000000000000	\N
2047	1	1	00000000000000000	\N
2048	1	1	00000000000000000	\N
2049	1	1	00000000000000000	\N
2050	1	1	00000000000000000	\N
2051	1	1	00000000000000000	\N
2052	1	1	00000000000000000	\N
2053	1	1	00000000000000000	\N
2054	1	1	00000000000000000	\N
2055	1	1	00000000000000000	\N
2056	1	1	00000000000000000	\N
2057	1	1	00000000000000000	\N
2058	1	1	00000000000000000	\N
2059	1	1	00000000000000000	\N
2060	1	1	00000000000000000	\N
2061	1	1	00000000000000000	\N
2062	1	1	00000000000000000	\N
2063	1	1	00000000000000000	\N
2064	1	1	00000000000000000	\N
2065	1	1	00000000000000000	\N
2066	1	1	00000000000000000	\N
2067	1	1	00000000000000000	\N
2068	1	1	00000000000000000	\N
2069	1	1	00000000000000000	\N
2070	1	1	00000000000000000	\N
2071	1	1	00000000000000000	\N
2072	1	1	00000000000000000	\N
2073	1	1	00000000000000000	\N
2074	1	1	00000000000000000	\N
2075	1	1	00000000000000000	\N
2076	1	1	00000000000000000	\N
2114	1	1	00000000000000000	\N
2115	1	1	00000000000000000	\N
2116	1	1	00000000000000000	\N
2117	1	1	00000000000000000	\N
2118	1	1	00000000000000000	\N
2119	1	1	00000000000000000	\N
2120	1	1	00000000000000000	\N
2121	1	1	00000000000000000	\N
2122	1	1	00000000000000000	\N
2123	1	1	00000000000000000	\N
2124	1	1	00000000000000000	\N
2125	1	1	00000000000000000	\N
2126	1	1	00000000000000000	\N
2127	1	1	00000000000000000	\N
2128	1	1	00000000000000000	\N
2129	1	1	00000000000000000	\N
2130	1	1	00000000000000000	\N
2131	1	1	00000000000000000	\N
2132	1	1	00000000000000000	\N
2133	1	1	00000000000000000	\N
2134	1	1	00000000000000000	\N
2135	1	1	00000000000000000	\N
2136	1	1	00000000000000000	\N
2137	1	1	00000000000000000	\N
2138	1	1	00000000000000000	\N
2139	1	1	00000000000000000	\N
2140	1	1	00000000000000000	\N
2141	1	1	00000000000000000	\N
2142	1	1	00000000000000000	\N
2143	1	1	00000000000000000	\N
2144	1	1	00000000000000000	\N
2145	1	1	00000000000000000	\N
2146	1	1	00000000000000000	\N
3122	1	1	00000000000000000	\N
3123	1	1	00000000000000000	\N
3124	1	1	00000000000000000	\N
3125	1	1	00000000000000000	\N
3126	1	1	00000000000000000	\N
3127	1	1	00000000000000000	\N
3128	1	1	00000000000000000	\N
3129	1	1	00000000000000000	\N
3130	1	1	00000000000000000	\N
3131	1	1	00000000000000000	\N
3132	1	1	00000000000000000	\N
3133	1	1	00000000000000000	\N
3200	1	1	00000000000000000	\N
3201	1	1	00000000000000000	\N
3202	1	1	00000000000000000	\N
3203	1	1	00000000000000000	\N
3204	1	1	00000000000000000	\N
2548	1	1	00000000000000000	\N
3205	1	1	00000000000000000	\N
3206	1	1	00000000000000000	\N
3207	1	1	00000000000000000	\N
3208	1	1	00000000000000000	\N
3209	1	1	00000000000000000	\N
3210	1	1	00000000000000000	\N
3211	1	1	00000000000000000	\N
3212	1	1	00000000000000000	\N
3213	1	1	00000000000000000	\N
3214	1	1	00000000000000000	\N
2559	1	1	00000000000000000	\N
2560	1	1	00000000000000000	\N
2561	1	1	00000000000000000	\N
2562	1	1	00000000000000000	\N
2563	1	1	00000000000000000	\N
2564	1	1	00000000000000000	\N
2565	1	1	00000000000000000	\N
2566	1	1	00000000000000000	\N
2567	1	1	00000000000000000	\N
2568	1	1	00000000000000000	\N
2569	1	1	00000000000000000	\N
2570	1	1	00000000000000000	\N
2571	1	1	00000000000000000	\N
2572	1	1	00000000000000000	\N
2573	1	1	00000000000000000	\N
2574	1	1	00000000000000000	\N
2575	1	1	00000000000000000	\N
2576	1	1	00000000000000000	\N
2577	1	1	00000000000000000	\N
2578	1	1	00000000000000000	\N
2579	1	1	00000000000000000	\N
2580	1	1	00000000000000000	\N
2581	1	1	00000000000000000	\N
2582	1	1	00000000000000000	\N
2583	1	1	00000000000000000	\N
2584	1	1	00000000000000000	\N
2585	1	1	00000000000000000	\N
2586	1	1	00000000000000000	\N
2587	1	1	00000000000000000	\N
2588	1	1	00000000000000000	\N
2589	1	1	00000000000000000	\N
2590	1	1	00000000000000000	\N
2591	1	1	00000000000000000	\N
2592	1	1	00000000000000000	\N
2593	1	1	00000000000000000	\N
2594	1	1	00000000000000000	\N
2595	1	1	00000000000000000	\N
2596	1	1	00000000000000000	\N
2597	1	1	00000000000000000	\N
2598	1	1	00000000000000000	\N
2599	1	1	00000000000000000	\N
2600	1	1	00000000000000000	\N
3215	1	1	00000000000000000	\N
3216	1	1	00000000000000000	\N
3217	1	1	00000000000000000	\N
3218	1	1	00000000000000000	\N
3219	1	1	00000000000000000	\N
3220	1	1	00000000000000000	\N
3221	1	1	00000000000000000	\N
3222	1	1	00000000000000000	\N
3223	1	1	00000000000000000	\N
3224	1	1	00000000000000000	\N
3225	1	1	00000000000000000	\N
3226	1	1	00000000000000000	\N
3227	1	1	00000000000000000	\N
3228	1	1	00000000000000000	\N
3229	1	1	00000000000000000	\N
3230	1	1	00000000000000000	\N
2674	1	1	00000000000000000	\N
2737	1	1	00000000000000000	\N
2738	1	1	00000000000000000	\N
2739	1	1	00000000000000000	\N
2740	1	1	00000000000000000	\N
2741	1	1	00000000000000000	\N
2742	1	1	00000000000000000	\N
2743	1	1	00000000000000000	\N
2744	1	1	00000000000000000	\N
2745	1	1	00000000000000000	\N
2746	1	1	00000000000000000	\N
2747	1	1	00000000000000000	\N
2748	1	1	00000000000000000	\N
2749	1	1	00000000000000000	\N
2750	1	1	00000000000000000	\N
2751	1	1	00000000000000000	\N
2752	1	1	00000000000000000	\N
2753	1	1	00000000000000000	\N
2754	1	1	00000000000000000	\N
2755	1	1	00000000000000000	\N
2756	1	1	00000000000000000	\N
2757	1	1	00000000000000000	\N
2758	1	1	00000000000000000	\N
2759	1	1	00000000000000000	\N
2760	1	1	00000000000000000	\N
2761	1	1	00000000000000000	\N
2762	1	1	00000000000000000	\N
2763	1	1	00000000000000000	\N
2764	1	1	00000000000000000	\N
2765	1	1	00000000000000000	\N
2774	1	1	00000000000000000	\N
2775	1	1	00000000000000000	\N
2776	1	1	00000000000000000	\N
2777	1	1	00000000000000000	\N
2778	1	1	00000000000000000	\N
2779	1	1	00000000000000000	\N
2780	1	1	00000000000000000	\N
2781	1	1	00000000000000000	\N
2782	1	1	00000000000000000	\N
2783	1	1	00000000000000000	\N
2784	1	1	00000000000000000	\N
2785	1	1	00000000000000000	\N
2786	1	1	00000000000000000	\N
2787	1	1	00000000000000000	\N
2788	1	1	00000000000000000	\N
2789	1	1	00000000000000000	\N
2790	1	1	00000000000000000	\N
2791	1	1	00000000000000000	\N
2792	1	1	00000000000000000	\N
2793	1	1	00000000000000000	\N
2794	1	1	00000000000000000	\N
2795	1	1	00000000000000000	\N
2796	1	1	00000000000000000	\N
2797	1	1	00000000000000000	\N
2798	1	1	00000000000000000	\N
2799	1	1	00000000000000000	\N
2800	1	1	00000000000000000	\N
2801	1	1	00000000000000000	\N
2802	1	1	00000000000000000	\N
2803	1	1	00000000000000000	\N
2804	1	1	00000000000000000	\N
2805	1	1	00000000000000000	\N
3231	1	1	00000000000000000	\N
3232	1	1	00000000000000000	\N
3233	1	1	00000000000000000	\N
3234	1	1	00000000000000000	\N
3235	1	1	00000000000000000	\N
3236	1	1	00000000000000000	\N
3237	1	1	00000000000000000	\N
3238	1	1	00000000000000000	\N
3239	1	1	00000000000000000	\N
3240	1	1	00000000000000000	\N
3241	1	1	00000000000000000	\N
3242	1	1	00000000000000000	\N
3243	1	1	00000000000000000	\N
3244	1	1	00000000000000000	\N
3245	1	1	00000000000000000	\N
3246	1	1	00000000000000000	\N
3247	1	1	00000000000000000	\N
3248	1	1	00000000000000000	\N
3249	1	1	00000000000000000	\N
3250	1	1	00000000000000000	\N
3251	1	1	00000000000000000	\N
3252	1	1	00000000000000000	\N
3253	1	1	00000000000000000	\N
3254	1	1	00000000000000000	\N
3255	1	1	00000000000000000	\N
3256	1	1	00000000000000000	\N
3257	1	1	00000000000000000	\N
3258	1	1	00000000000000000	\N
3259	1	1	00000000000000000	\N
3260	1	1	00000000000000000	\N
3261	1	1	00000000000000000	\N
3262	1	1	00000000000000000	\N
3263	1	1	00000000000000000	\N
3264	1	1	00000000000000000	\N
3265	1	1	00000000000000000	\N
3266	1	1	00000000000000000	\N
3267	1	1	00000000000000000	\N
3268	1	1	00000000000000000	\N
3269	1	1	00000000000000000	\N
3270	1	1	00000000000000000	\N
3271	1	1	00000000000000000	\N
3272	1	1	00000000000000000	\N
3273	1	1	00000000000000000	\N
3274	1	1	00000000000000000	\N
3275	1	1	00000000000000000	\N
3276	1	1	00000000000000000	\N
3277	1	1	00000000000000000	\N
3278	1	1	00000000000000000	\N
3279	1	1	00000000000000000	\N
3280	1	1	00000000000000000	\N
3281	1	1	00000000000000000	\N
3282	1	1	00000000000000000	\N
3283	1	1	00000000000000000	\N
3311	1	1	00000000000000000	\N
3330	1	1	00000000000000000	\N
3331	1	1	00000000000000000	\N
3332	1	1	00000000000000000	\N
3333	1	1	00000000000000000	\N
3334	1	1	00000000000000000	\N
3335	1	1	00000000000000000	\N
3336	1	1	00000000000000000	\N
3337	1	1	00000000000000000	\N
3338	1	1	00000000000000000	\N
3339	1	1	00000000000000000	\N
3340	1	1	00000000000000000	\N
3341	1	1	00000000000000000	\N
3342	1	1	00000000000000000	\N
3343	1	1	00000000000000000	\N
3353	1	1	00000000000000000	\N
3423	1	1	00000000000000000	\N
3424	1	1	00000000000000000	\N
3425	1	1	00000000000000000	\N
3426	1	1	00000000000000000	\N
3427	1	1	00000000000000000	\N
3428	1	1	00000000000000000	\N
3429	1	1	00000000000000000	\N
3430	1	1	00000000000000000	\N
3431	1	1	00000000000000000	\N
3432	1	1	00000000000000000	\N
3433	1	1	00000000000000000	\N
3434	1	1	00000000000000000	\N
3435	1	1	00000000000000000	\N
3436	1	1	00000000000000000	\N
3437	1	1	00000000000000000	\N
3438	1	1	00000000000000000	\N
3439	1	1	00000000000000000	\N
3440	1	1	00000000000000000	\N
3441	1	1	00000000000000000	\N
3442	1	1	00000000000000000	\N
3443	1	1	00000000000000000	\N
3444	1	1	00000000000000000	\N
3445	1	1	00000000000000000	\N
3446	1	1	00000000000000000	\N
3447	1	1	00000000000000000	\N
3448	1	1	00000000000000000	\N
3449	1	1	00000000000000000	\N
3450	1	1	00000000000000000	\N
3451	1	1	00000000000000000	\N
3452	1	1	00000000000000000	\N
3453	1	1	00000000000000000	\N
3454	1	1	00000000000000000	\N
3455	1	1	00000000000000000	\N
3456	1	1	00000000000000000	\N
3457	1	1	00000000000000000	\N
3756	1	1	00000000000000000	\N
3757	1	1	00000000000000000	\N
3758	1	1	00000000000000000	\N
3759	1	1	00000000000000000	\N
3760	1	1	00000000000000000	\N
3761	1	1	00000000000000000	\N
3762	1	1	00000000000000000	\N
3763	1	1	00000000000000000	\N
3764	1	1	00000000000000000	\N
3765	1	1	00000000000000000	\N
3766	1	1	00000000000000000	\N
3767	1	1	00000000000000000	\N
3768	1	1	00000000000000000	\N
3769	1	1	00000000000000000	\N
3770	1	1	00000000000000000	\N
3771	1	1	00000000000000000	\N
3772	1	1	00000000000000000	\N
3773	1	1	00000000000000000	\N
3774	1	1	00000000000000000	\N
3775	1	1	00000000000000000	\N
3776	1	1	00000000000000000	\N
3777	1	1	00000000000000000	\N
3778	1	1	00000000000000000	\N
3779	1	1	00000000000000000	\N
3780	1	1	00000000000000000	\N
3781	1	1	00000000000000000	\N
3782	1	1	00000000000000000	\N
3783	1	1	00000000000000000	\N
3784	1	1	00000000000000000	\N
3785	1	1	00000000000000000	\N
3786	1	1	00000000000000000	\N
3787	1	1	00000000000000000	\N
3788	1	1	00000000000000000	\N
3789	1	1	00000000000000000	\N
3790	1	1	00000000000000000	\N
3793	1	1	00000000000000000	\N
3794	1	1	00000000000000000	\N
3795	1	1	00000000000000000	\N
3796	1	1	00000000000000000	\N
3797	1	1	00000000000000000	\N
3798	1	1	00000000000000000	\N
3799	1	1	00000000000000000	\N
3800	1	1	00000000000000000	\N
3801	1	1	00000000000000000	\N
3802	1	1	00000000000000000	\N
3803	1	1	00000000000000000	\N
3804	1	1	00000000000000000	\N
3860	1	1	00000000000000000	\N
3861	1	1	00000000000000000	\N
3862	1	1	00000000000000000	\N
3863	1	1	00000000000000000	\N
3864	1	1	00000000000000000	\N
3865	1	1	00000000000000000	\N
3866	1	1	00000000000000000	\N
3867	1	1	00000000000000000	\N
3868	1	1	00000000000000000	\N
3869	1	1	00000000000000000	\N
3870	1	1	00000000000000000	\N
3871	1	1	00000000000000000	\N
3872	1	1	00000000000000000	\N
3873	1	1	00000000000000000	\N
3874	1	1	00000000000000000	\N
3875	1	1	00000000000000000	\N
3876	1	1	00000000000000000	\N
3877	1	1	00000000000000000	\N
3878	1	1	00000000000000000	\N
3879	1	1	00000000000000000	\N
3880	1	1	00000000000000000	\N
3881	1	1	00000000000000000	\N
3882	1	1	00000000000000000	\N
3883	1	1	00000000000000000	\N
3884	1	1	00000000000000000	\N
3885	1	1	00000000000000000	\N
3886	1	1	00000000000000000	\N
3887	1	1	00000000000000000	\N
3888	1	1	00000000000000000	\N
3889	1	1	00000000000000000	\N
3890	1	1	00000000000000000	\N
3891	1	1	00000000000000000	\N
3892	1	1	00000000000000000	\N
3893	1	1	00000000000000000	\N
3894	1	1	00000000000000000	\N
3895	1	1	00000000000000000	\N
3896	1	1	00000000000000000	\N
3897	1	1	00000000000000000	\N
3898	1	1	00000000000000000	\N
3899	1	1	00000000000000000	\N
3900	1	1	00000000000000000	\N
3901	1	1	00000000000000000	\N
3902	1	1	00000000000000000	\N
3903	1	1	00000000000000000	\N
3904	1	1	00000000000000000	\N
3905	1	1	00000000000000000	\N
3906	1	1	00000000000000000	\N
3991	1	1	00000000000000000	\N
3992	1	1	00000000000000000	\N
3993	1	1	00000000000000000	\N
3994	1	1	00000000000000000	\N
3995	1	1	00000000000000000	\N
3996	1	1	00000000000000000	\N
3997	1	1	00000000000000000	\N
3998	1	1	00000000000000000	\N
3999	1	1	00000000000000000	\N
4000	1	1	00000000000000000	\N
4001	1	1	00000000000000000	\N
4002	1	1	00000000000000000	\N
4003	1	1	00000000000000000	\N
4004	1	1	00000000000000000	\N
4005	1	1	00000000000000000	\N
4006	1	1	00000000000000000	\N
4007	1	1	00000000000000000	\N
4008	1	1	00000000000000000	\N
4009	1	1	00000000000000000	\N
4010	1	1	00000000000000000	\N
4011	1	1	00000000000000000	\N
4012	1	1	00000000000000000	\N
4013	1	1	00000000000000000	\N
4014	1	1	00000000000000000	\N
4015	1	1	00000000000000000	\N
4016	1	1	00000000000000000	\N
4017	1	1	00000000000000000	\N
4018	1	1	00000000000000000	\N
4019	1	1	00000000000000000	\N
4020	1	1	00000000000000000	\N
4021	1	1	00000000000000000	\N
4022	1	1	00000000000000000	\N
4023	1	1	00000000000000000	\N
4024	1	1	00000000000000000	\N
4025	1	1	00000000000000000	\N
4026	1	1	00000000000000000	\N
4027	1	1	00000000000000000	\N
4028	1	1	00000000000000000	\N
4029	1	1	00000000000000000	\N
4030	1	1	00000000000000000	\N
4031	1	1	00000000000000000	\N
4032	1	1	00000000000000000	\N
4033	1	1	00000000000000000	\N
4034	1	1	00000000000000000	\N
4035	1	1	00000000000000000	\N
4036	1	1	00000000000000000	\N
4037	1	1	00000000000000000	\N
4038	1	1	00000000000000000	\N
4039	1	1	00000000000000000	\N
4040	1	1	00000000000000000	\N
4041	1	1	00000000000000000	\N
4042	1	1	00000000000000000	\N
4043	1	1	00000000000000000	\N
4044	1	1	00000000000000000	\N
4045	1	1	00000000000000000	\N
4046	1	1	00000000000000000	\N
4047	1	1	00000000000000000	\N
4048	1	1	00000000000000000	\N
4049	1	1	00000000000000000	\N
4050	1	1	00000000000000000	\N
4051	1	1	00000000000000000	\N
4052	1	1	00000000000000000	\N
4053	1	1	00000000000000000	\N
4054	1	1	00000000000000000	\N
4055	1	1	00000000000000000	\N
4056	1	1	00000000000000000	\N
4057	1	1	00000000000000000	\N
4058	1	1	00000000000000000	\N
4059	1	1	00000000000000000	\N
4060	1	1	00000000000000000	\N
4061	1	1	00000000000000000	\N
4062	1	1	00000000000000000	\N
4063	1	1	00000000000000000	\N
4064	1	1	00000000000000000	\N
4065	1	1	00000000000000000	\N
4066	1	1	00000000000000000	\N
4067	1	1	00000000000000000	\N
4068	1	1	00000000000000000	\N
4069	1	1	00000000000000000	\N
4070	1	1	00000000000000000	\N
4071	1	1	00000000000000000	\N
4072	1	1	00000000000000000	\N
4077	1	1	00000000000000000	\N
4078	1	1	00000000000000000	\N
4079	1	1	00000000000000000	\N
4080	1	1	00000000000000000	\N
4081	1	1	00000000000000000	\N
4082	1	1	00000000000000000	\N
4083	1	1	00000000000000000	\N
4123	1	1	00000000000000000	\N
4124	1	1	00000000000000000	\N
4125	1	1	00000000000000000	\N
4145	1	1	00000000000000000	\N
4156	1	1	00000000000000000	\N
4157	1	1	00000000000000000	\N
4158	1	1	00000000000000000	\N
4159	1	1	00000000000000000	\N
4160	1	1	00000000000000000	\N
4161	1	1	00000000000000000	\N
4163	1	1	00000000000000000	\N
4178	1	1	00000000000000000	\N
4179	1	1	00000000000000000	\N
4180	1	1	00000000000000000	\N
4181	1	1	00000000000000000	\N
4182	1	1	00000000000000000	\N
4183	1	1	00000000000000000	\N
4184	1	1	00000000000000000	\N
4185	1	1	00000000000000000	\N
4186	1	1	00000000000000000	\N
4187	1	1	00000000000000000	\N
4188	1	1	00000000000000000	\N
4189	1	1	00000000000000000	\N
4190	1	1	00000000000000000	\N
4191	1	1	00000000000000000	\N
4192	1	1	00000000000000000	\N
4193	1	1	00000000000000000	\N
4194	1	1	00000000000000000	\N
4195	1	1	00000000000000000	\N
4196	1	1	00000000000000000	\N
4197	1	1	00000000000000000	\N
4198	1	1	00000000000000000	\N
4260	1	1	00000000000000000	\N
4261	1	1	00000000000000000	\N
4262	1	1	00000000000000000	\N
4263	1	1	00000000000000000	\N
4264	1	1	00000000000000000	\N
4265	1	1	00000000000000000	\N
4266	1	1	00000000000000000	\N
4267	1	1	00000000000000000	\N
4268	1	1	00000000000000000	\N
4269	1	1	00000000000000000	\N
4270	1	1	00000000000000000	\N
4271	1	1	00000000000000000	\N
4272	1	1	00000000000000000	\N
4273	1	1	00000000000000000	\N
4309	1	1	00000000000000000	\N
4310	1	1	00000000000000000	\N
4311	1	1	00000000000000000	\N
4312	1	1	00000000000000000	\N
4313	1	1	00000000000000000	\N
4314	1	1	00000000000000000	\N
4315	1	1	00000000000000000	\N
4316	1	1	00000000000000000	\N
4317	1	1	00000000000000000	\N
4318	1	1	00000000000000000	\N
4319	1	1	00000000000000000	\N
4320	1	1	00000000000000000	\N
4321	1	1	00000000000000000	\N
4322	1	1	00000000000000000	\N
4323	1	1	00000000000000000	\N
4324	1	1	00000000000000000	\N
4325	1	1	00000000000000000	\N
4326	1	1	00000000000000000	\N
4327	1	1	00000000000000000	\N
4328	1	1	00000000000000000	\N
4329	1	1	00000000000000000	\N
4330	1	1	00000000000000000	\N
4331	1	1	00000000000000000	\N
4332	1	1	00000000000000000	\N
4333	1	1	00000000000000000	\N
4334	1	1	00000000000000000	\N
4335	1	1	00000000000000000	\N
4336	1	1	00000000000000000	\N
4337	1	1	00000000000000000	\N
4338	1	1	00000000000000000	\N
4340	1	1	00000000000000000	\N
4341	1	1	00000000000000000	\N
4342	1	1	00000000000000000	\N
4343	1	1	00000000000000000	\N
4344	1	1	00000000000000000	\N
4345	1	1	00000000000000000	\N
4346	1	1	00000000000000000	\N
4347	1	1	00000000000000000	\N
4348	1	1	00000000000000000	\N
4349	1	1	00000000000000000	\N
4350	1	1	00000000000000000	\N
4351	1	1	00000000000000000	\N
4352	1	1	00000000000000000	\N
4353	1	1	00000000000000000	\N
4354	1	1	00000000000000000	\N
4355	1	1	00000000000000000	\N
4356	1	1	00000000000000000	\N
4357	1	1	00000000000000000	\N
4358	1	1	00000000000000000	\N
4359	1	1	00000000000000000	\N
4360	1	1	00000000000000000	\N
4361	1	1	00000000000000000	\N
4362	1	1	00000000000000000	\N
4363	1	1	00000000000000000	\N
4364	1	1	00000000000000000	\N
4365	1	1	00000000000000000	\N
4366	1	1	00000000000000000	\N
4367	1	1	00000000000000000	\N
4430	1	1	00000000000000000	\N
4431	1	1	00000000000000000	\N
4432	1	1	00000000000000000	\N
4433	1	1	00000000000000000	\N
4434	1	1	00000000000000000	\N
4435	1	1	00000000000000000	\N
4436	1	1	00000000000000000	\N
4437	1	1	00000000000000000	\N
4438	1	1	00000000000000000	\N
4439	1	1	00000000000000000	\N
4440	1	1	00000000000000000	\N
4441	1	1	00000000000000000	\N
4442	1	1	00000000000000000	\N
4443	1	1	00000000000000000	\N
4444	1	1	00000000000000000	\N
4445	1	1	00000000000000000	\N
4446	1	1	00000000000000000	\N
4447	1	1	00000000000000000	\N
4448	1	1	00000000000000000	\N
4449	1	1	00000000000000000	\N
4450	1	1	00000000000000000	\N
4451	1	1	00000000000000000	\N
4452	1	1	00000000000000000	\N
4453	1	1	00000000000000000	\N
4454	1	1	00000000000000000	\N
4455	1	1	00000000000000000	\N
4456	1	1	00000000000000000	\N
4457	1	1	00000000000000000	\N
4458	1	1	00000000000000000	\N
4459	1	1	00000000000000000	\N
4460	1	1	00000000000000000	\N
4461	1	1	00000000000000000	\N
4462	1	1	00000000000000000	\N
4463	1	1	00000000000000000	\N
4464	1	1	00000000000000000	\N
4465	1	1	00000000000000000	\N
4466	1	1	00000000000000000	\N
4467	1	1	00000000000000000	\N
4468	1	1	00000000000000000	\N
4469	1	1	00000000000000000	\N
4470	1	1	00000000000000000	\N
4471	1	1	00000000000000000	\N
4472	1	1	00000000000000000	\N
4473	1	1	00000000000000000	\N
4474	1	1	00000000000000000	\N
4475	1	1	00000000000000000	\N
4476	1	1	00000000000000000	\N
4477	1	1	00000000000000000	\N
4478	1	1	00000000000000000	\N
4479	1	1	00000000000000000	\N
4480	1	1	00000000000000000	\N
4481	1	1	00000000000000000	\N
4482	1	1	00000000000000000	\N
4483	1	1	00000000000000000	\N
4484	1	1	00000000000000000	\N
4485	1	1	00000000000000000	\N
4486	1	1	00000000000000000	\N
4487	1	1	00000000000000000	\N
4488	1	1	00000000000000000	\N
4489	1	1	00000000000000000	\N
4490	1	1	00000000000000000	\N
4491	1	1	00000000000000000	\N
4492	1	1	00000000000000000	\N
4493	1	1	00000000000000000	\N
4494	1	1	00000000000000000	\N
4495	1	1	00000000000000000	\N
4496	1	1	00000000000000000	\N
4497	1	1	00000000000000000	\N
4498	1	1	00000000000000000	\N
4499	1	1	00000000000000000	\N
4500	1	1	00000000000000000	\N
4501	1	1	00000000000000000	\N
4502	1	1	00000000000000000	\N
4503	1	1	00000000000000000	\N
4504	1	1	00000000000000000	\N
4505	1	1	00000000000000000	\N
4506	1	1	00000000000000000	\N
4507	1	1	00000000000000000	\N
4508	1	1	00000000000000000	\N
4509	1	1	00000000000000000	\N
4510	1	1	00000000000000000	\N
4511	1	1	00000000000000000	\N
4512	1	1	00000000000000000	\N
4513	1	1	00000000000000000	\N
4514	1	1	00000000000000000	\N
4515	1	1	00000000000000000	\N
4516	1	1	00000000000000000	\N
4517	1	1	00000000000000000	\N
4518	1	1	00000000000000000	\N
4519	1	1	00000000000000000	\N
4520	1	1	00000000000000000	\N
4521	1	1	00000000000000000	\N
4522	1	1	00000000000000000	\N
4523	1	1	00000000000000000	\N
4524	1	1	00000000000000000	\N
4525	1	1	00000000000000000	\N
4526	1	1	00000000000000000	\N
4527	1	1	00000000000000000	\N
4528	1	1	00000000000000000	\N
4529	1	1	00000000000000000	\N
4530	1	1	00000000000000000	\N
4531	1	1	00000000000000000	\N
4532	1	1	00000000000000000	\N
4533	1	1	00000000000000000	\N
4534	1	1	00000000000000000	\N
4535	1	1	00000000000000000	\N
4536	1	1	00000000000000000	\N
4561	1	1	00000000000000000	\N
4562	1	1	00000000000000000	\N
4563	1	1	00000000000000000	\N
4564	1	1	00000000000000000	\N
4565	1	1	00000000000000000	\N
4566	1	1	00000000000000000	\N
4567	1	1	00000000000000000	\N
4568	1	1	00000000000000000	\N
4569	1	1	00000000000000000	\N
4570	1	1	00000000000000000	\N
4571	1	1	00000000000000000	\N
4572	1	1	00000000000000000	\N
4573	1	1	00000000000000000	\N
4574	1	1	00000000000000000	\N
4575	1	1	00000000000000000	\N
4576	1	1	00000000000000000	\N
4577	1	1	00000000000000000	\N
4578	1	1	00000000000000000	\N
4579	1	1	00000000000000000	\N
4580	1	1	00000000000000000	\N
4581	1	1	00000000000000000	\N
4582	1	1	00000000000000000	\N
4583	1	1	00000000000000000	\N
4584	1	1	00000000000000000	\N
4585	1	1	00000000000000000	\N
4586	1	1	00000000000000000	\N
4587	1	1	00000000000000000	\N
4588	1	1	00000000000000000	\N
4589	1	1	00000000000000000	\N
4590	1	1	00000000000000000	\N
4591	1	1	00000000000000000	\N
4592	1	1	00000000000000000	\N
4593	1	1	00000000000000000	\N
4594	1	1	00000000000000000	\N
4595	1	1	00000000000000000	\N
4596	1	1	00000000000000000	\N
4597	1	1	00000000000000000	\N
4598	1	1	00000000000000000	\N
4599	1	1	00000000000000000	\N
4600	1	1	00000000000000000	\N
4601	1	1	00000000000000000	\N
4602	1	1	00000000000000000	\N
4603	1	1	00000000000000000	\N
4604	1	1	00000000000000000	\N
4605	1	1	00000000000000000	\N
4606	1	1	00000000000000000	\N
4607	1	1	00000000000000000	\N
4608	1	1	00000000000000000	\N
4609	1	1	00000000000000000	\N
4610	1	1	00000000000000000	\N
4614	1	1	00000000000000000	\N
4615	1	1	00000000000000000	\N
4616	1	1	00000000000000000	\N
4620	1	1	00000000000000000	\N
4621	1	1	00000000000000000	\N
4622	1	1	00000000000000000	\N
4623	1	1	00000000000000000	\N
4624	1	1	00000000000000000	\N
4625	1	1	00000000000000000	\N
4626	1	1	00000000000000000	\N
4627	1	1	00000000000000000	\N
4628	1	1	00000000000000000	\N
4629	1	1	00000000000000000	\N
4630	1	1	00000000000000000	\N
4631	1	1	00000000000000000	\N
4632	1	1	00000000000000000	\N
4633	1	1	00000000000000000	\N
4634	1	1	00000000000000000	\N
4635	1	1	00000000000000000	\N
4636	1	1	00000000000000000	\N
4637	1	1	00000000000000000	\N
4638	1	1	00000000000000000	\N
4639	1	1	00000000000000000	\N
4640	1	1	00000000000000000	\N
4641	1	1	00000000000000000	\N
4642	1	1	00000000000000000	\N
4643	1	1	00000000000000000	\N
4644	1	1	00000000000000000	\N
4645	1	1	00000000000000000	\N
4646	1	1	00000000000000000	\N
4647	1	1	00000000000000000	\N
4648	1	1	00000000000000000	\N
4649	1	1	00000000000000000	\N
4650	1	1	00000000000000000	\N
4651	1	1	00000000000000000	\N
4652	1	1	00000000000000000	\N
4653	1	1	00000000000000000	\N
4654	1	1	00000000000000000	\N
4655	1	1	00000000000000000	\N
4656	1	1	00000000000000000	\N
4657	1	1	00000000000000000	\N
4658	1	1	00000000000000000	\N
4659	1	1	00000000000000000	\N
4660	1	1	00000000000000000	\N
4661	1	1	00000000000000000	\N
4662	1	1	00000000000000000	\N
4663	1	1	00000000000000000	\N
4664	1	1	00000000000000000	\N
4665	1	1	00000000000000000	\N
4666	1	1	00000000000000000	\N
4667	1	1	00000000000000000	\N
4668	1	1	00000000000000000	\N
4669	1	1	00000000000000000	\N
4670	1	1	00000000000000000	\N
4671	1	1	00000000000000000	\N
4672	1	1	00000000000000000	\N
4673	1	1	00000000000000000	\N
4674	1	1	00000000000000000	\N
4675	1	1	00000000000000000	\N
4676	1	1	00000000000000000	\N
4677	1	1	00000000000000000	\N
4678	1	1	00000000000000000	\N
4679	1	1	00000000000000000	\N
4680	1	1	00000000000000000	\N
4681	1	1	00000000000000000	\N
4682	1	1	00000000000000000	\N
4683	1	1	00000000000000000	\N
4684	1	1	00000000000000000	\N
4685	1	1	00000000000000000	\N
4686	1	1	00000000000000000	\N
4687	1	1	00000000000000000	\N
4688	1	1	00000000000000000	\N
4689	1	1	00000000000000000	\N
4690	1	1	00000000000000000	\N
4691	1	1	00000000000000000	\N
4692	1	1	00000000000000000	\N
4693	1	1	00000000000000000	\N
4694	1	1	00000000000000000	\N
4695	1	1	00000000000000000	\N
4696	1	1	00000000000000000	\N
4697	1	1	00000000000000000	\N
4698	1	1	00000000000000000	\N
4699	1	1	00000000000000000	\N
4700	1	1	00000000000000000	\N
4701	1	1	00000000000000000	\N
4702	1	1	00000000000000000	\N
4703	1	1	00000000000000000	\N
4704	1	1	00000000000000000	\N
4705	1	1	00000000000000000	\N
4706	1	1	00000000000000000	\N
4707	1	1	00000000000000000	\N
4708	1	1	00000000000000000	\N
4709	1	1	00000000000000000	\N
4710	1	1	00000000000000000	\N
4711	1	1	00000000000000000	\N
4712	1	1	00000000000000000	\N
4713	1	1	00000000000000000	\N
4714	1	1	00000000000000000	\N
4715	1	1	00000000000000000	\N
4716	1	1	00000000000000000	\N
4717	1	1	00000000000000000	\N
4718	1	1	00000000000000000	\N
4719	1	1	00000000000000000	\N
4720	1	1	00000000000000000	\N
4721	1	1	00000000000000000	\N
4722	1	1	00000000000000000	\N
4723	1	1	00000000000000000	\N
4724	1	1	00000000000000000	\N
4725	1	1	00000000000000000	\N
4726	1	1	00000000000000000	\N
4727	1	1	00000000000000000	\N
4728	1	1	00000000000000000	\N
4729	1	1	00000000000000000	\N
4730	1	1	00000000000000000	\N
4731	1	1	00000000000000000	\N
4732	1	1	00000000000000000	\N
4733	1	1	00000000000000000	\N
4734	1	1	00000000000000000	\N
4735	1	1	00000000000000000	\N
4736	1	1	00000000000000000	\N
4737	1	1	00000000000000000	\N
4738	1	1	00000000000000000	\N
4739	1	1	00000000000000000	\N
4740	1	1	00000000000000000	\N
4741	1	1	00000000000000000	\N
4742	1	1	00000000000000000	\N
4743	1	1	00000000000000000	\N
4744	1	1	00000000000000000	\N
4745	1	1	00000000000000000	\N
4746	1	1	00000000000000000	\N
4747	1	1	00000000000000000	\N
4748	1	1	00000000000000000	\N
4749	1	1	00000000000000000	\N
4750	1	1	00000000000000000	\N
4751	1	1	00000000000000000	\N
4752	1	1	00000000000000000	\N
4753	1	1	00000000000000000	\N
4754	1	1	00000000000000000	\N
4755	1	1	00000000000000000	\N
4756	1	1	00000000000000000	\N
4757	1	1	00000000000000000	\N
4758	1	1	00000000000000000	\N
4759	1	1	00000000000000000	\N
4760	1	1	00000000000000000	\N
4761	1	1	00000000000000000	\N
4762	1	1	00000000000000000	\N
4763	1	1	00000000000000000	\N
4764	1	1	00000000000000000	\N
4765	1	1	00000000000000000	\N
4766	1	1	00000000000000000	\N
4767	1	1	00000000000000000	\N
4768	1	1	00000000000000000	\N
4769	1	1	00000000000000000	\N
4770	1	1	00000000000000000	\N
4771	1	1	00000000000000000	\N
4772	1	1	00000000000000000	\N
4773	1	1	00000000000000000	\N
4774	1	1	00000000000000000	\N
4775	1	1	00000000000000000	\N
4776	1	1	00000000000000000	\N
4777	1	1	00000000000000000	\N
4778	1	1	00000000000000000	\N
4779	1	1	00000000000000000	\N
4780	1	1	00000000000000000	\N
4781	1	1	00000000000000000	\N
4782	1	1	00000000000000000	\N
4783	1	1	00000000000000000	\N
4784	1	1	00000000000000000	\N
4785	1	1	00000000000000000	\N
4786	1	1	00000000000000000	\N
4787	1	1	00000000000000000	\N
4791	1	1	00000000000000000	\N
4792	1	1	00000000000000000	\N
4793	1	1	00000000000000000	\N
4801	1	1	00000000000000000	\N
4802	1	1	00000000000000000	\N
4803	1	1	00000000000000000	\N
4804	1	1	00000000000000000	\N
4805	1	1	00000000000000000	\N
4806	1	1	00000000000000000	\N
4807	1	1	00000000000000000	\N
4808	1	1	00000000000000000	\N
4809	1	1	00000000000000000	\N
4810	1	1	00000000000000000	\N
4811	1	1	00000000000000000	\N
4812	1	1	00000000000000000	\N
4813	1	1	00000000000000000	\N
4814	1	1	00000000000000000	\N
4818	1	1	00000000000000000	\N
4819	1	1	00000000000000000	\N
4820	1	1	00000000000000000	\N
4821	1	1	00000000000000000	\N
4822	1	1	00000000000000000	\N
4823	1	1	00000000000000000	\N
4824	1	1	00000000000000000	\N
4825	1	1	00000000000000000	\N
4826	1	1	00000000000000000	\N
4827	1	1	00000000000000000	\N
4828	1	1	00000000000000000	\N
4829	1	1	00000000000000000	\N
4830	1	1	00000000000000000	\N
4831	1	1	00000000000000000	\N
4832	1	1	00000000000000000	\N
4833	1	1	00000000000000000	\N
4834	1	1	00000000000000000	\N
4835	1	1	00000000000000000	\N
4836	1	1	00000000000000000	\N
4837	1	1	00000000000000000	\N
4838	1	1	00000000000000000	\N
4839	1	1	00000000000000000	\N
4840	1	1	00000000000000000	\N
4841	1	1	00000000000000000	\N
4842	1	1	00000000000000000	\N
4843	1	1	00000000000000000	\N
4844	1	1	00000000000000000	\N
4845	1	1	00000000000000000	\N
4846	1	1	00000000000000000	\N
4847	1	1	00000000000000000	\N
4848	1	1	00000000000000000	\N
4849	1	1	00000000000000000	\N
4850	1	1	00000000000000000	\N
4851	1	1	00000000000000000	\N
4852	1	1	00000000000000000	\N
4853	1	1	00000000000000000	\N
4854	1	1	00000000000000000	\N
4855	1	1	00000000000000000	\N
4856	1	1	00000000000000000	\N
4857	1	1	00000000000000000	\N
4858	1	1	00000000000000000	\N
4859	1	1	00000000000000000	\N
4860	1	1	00000000000000000	\N
4861	1	1	00000000000000000	\N
4862	1	1	00000000000000000	\N
4863	1	1	00000000000000000	\N
4864	1	1	00000000000000000	\N
4865	1	1	00000000000000000	\N
4866	1	1	00000000000000000	\N
4867	1	1	00000000000000000	\N
4868	1	1	00000000000000000	\N
4869	1	1	00000000000000000	\N
4870	1	1	00000000000000000	\N
4871	1	1	00000000000000000	\N
4872	1	1	00000000000000000	\N
4873	1	1	00000000000000000	\N
4874	1	1	00000000000000000	\N
4875	1	1	00000000000000000	\N
4876	1	1	00000000000000000	\N
4877	1	1	00000000000000000	\N
4878	1	1	00000000000000000	\N
4879	1	1	00000000000000000	\N
4880	1	1	00000000000000000	\N
4881	1	1	00000000000000000	\N
4882	1	1	00000000000000000	\N
4883	1	1	00000000000000000	\N
4943	1	1	00000000000000000	\N
4944	1	1	00000000000000000	\N
4945	1	1	00000000000000000	\N
4946	1	1	00000000000000000	\N
4947	1	1	00000000000000000	\N
4948	1	1	00000000000000000	\N
4949	1	1	00000000000000000	\N
4950	1	1	00000000000000000	\N
4989	1	1	00000000000000000	\N
4990	1	1	00000000000000000	\N
4991	1	1	00000000000000000	\N
4992	1	1	00000000000000000	\N
4993	1	1	00000000000000000	\N
4994	1	1	00000000000000000	\N
4995	1	1	00000000000000000	\N
4996	1	1	00000000000000000	\N
4997	1	1	00000000000000000	\N
4998	1	1	00000000000000000	\N
4999	1	1	00000000000000000	\N
5000	1	1	00000000000000000	\N
5001	1	1	00000000000000000	\N
5002	1	1	00000000000000000	\N
5003	1	1	00000000000000000	\N
5004	1	1	00000000000000000	\N
5005	1	1	00000000000000000	\N
5006	1	1	00000000000000000	\N
5007	1	1	00000000000000000	\N
5008	1	1	00000000000000000	\N
5009	1	1	00000000000000000	\N
5010	1	1	00000000000000000	\N
5011	1	1	00000000000000000	\N
5012	1	1	00000000000000000	\N
5013	1	1	00000000000000000	\N
5014	1	1	00000000000000000	\N
5015	1	1	00000000000000000	\N
5016	1	1	00000000000000000	\N
5017	1	1	00000000000000000	\N
5018	1	1	00000000000000000	\N
5019	1	1	00000000000000000	\N
5020	1	1	00000000000000000	\N
5021	1	1	00000000000000000	\N
5022	1	1	00000000000000000	\N
5023	1	1	00000000000000000	\N
5024	1	1	00000000000000000	\N
5025	1	1	00000000000000000	\N
5026	1	1	00000000000000000	\N
5027	1	1	00000000000000000	\N
5028	1	1	00000000000000000	\N
5029	1	1	00000000000000000	\N
5030	1	1	00000000000000000	\N
5031	1	1	00000000000000000	\N
5032	1	1	00000000000000000	\N
5033	1	1	00000000000000000	\N
5034	1	1	00000000000000000	\N
5035	1	1	00000000000000000	\N
5036	1	1	00000000000000000	\N
5037	1	1	00000000000000000	\N
5038	1	1	00000000000000000	\N
5039	1	1	00000000000000000	\N
5040	1	1	00000000000000000	\N
5041	1	1	00000000000000000	\N
5042	1	1	00000000000000000	\N
5043	1	1	00000000000000000	\N
5044	1	1	00000000000000000	\N
5045	1	1	00000000000000000	\N
5046	1	1	00000000000000000	\N
5047	1	1	00000000000000000	\N
5055	1	1	00000000000000000	\N
5056	1	1	00000000000000000	\N
5057	1	1	00000000000000000	\N
5058	1	1	00000000000000000	\N
5059	1	1	00000000000000000	\N
5060	1	1	00000000000000000	\N
5061	1	1	00000000000000000	\N
5062	1	1	00000000000000000	\N
5063	1	1	00000000000000000	\N
5064	1	1	00000000000000000	\N
5065	1	1	00000000000000000	\N
5066	1	1	00000000000000000	\N
5067	1	1	00000000000000000	\N
5068	1	1	00000000000000000	\N
5069	1	1	00000000000000000	\N
5070	1	1	00000000000000000	\N
5071	1	1	00000000000000000	\N
5072	1	1	00000000000000000	\N
5073	1	1	00000000000000000	\N
5074	1	1	00000000000000000	\N
5075	1	1	00000000000000000	\N
5076	1	1	00000000000000000	\N
5077	1	1	00000000000000000	\N
5078	1	1	00000000000000000	\N
5079	1	1	00000000000000000	\N
5080	1	1	00000000000000000	\N
5081	1	1	00000000000000000	\N
5082	1	1	00000000000000000	\N
5083	1	1	00000000000000000	\N
5084	1	1	00000000000000000	\N
5085	1	1	00000000000000000	\N
5086	1	1	00000000000000000	\N
5087	1	1	00000000000000000	\N
5088	1	1	00000000000000000	\N
5089	1	1	00000000000000000	\N
5090	1	1	00000000000000000	\N
5091	1	1	00000000000000000	\N
5092	1	1	00000000000000000	\N
5093	1	1	00000000000000000	\N
5094	1	1	00000000000000000	\N
5095	1	1	00000000000000000	\N
5096	1	1	00000000000000000	\N
5097	1	1	00000000000000000	\N
5098	1	1	00000000000000000	\N
5099	1	1	00000000000000000	\N
5100	1	1	00000000000000000	\N
5101	1	1	00000000000000000	\N
5102	1	1	00000000000000000	\N
5103	1	1	00000000000000000	\N
5104	1	1	00000000000000000	\N
5105	1	1	00000000000000000	\N
5106	1	1	00000000000000000	\N
5107	1	1	00000000000000000	\N
5108	1	1	00000000000000000	\N
5109	1	1	00000000000000000	\N
5110	1	1	00000000000000000	\N
5111	1	1	00000000000000000	\N
5112	1	1	00000000000000000	\N
5113	1	1	00000000000000000	\N
5114	1	1	00000000000000000	\N
5115	1	1	00000000000000000	\N
5116	1	1	00000000000000000	\N
5117	1	1	00000000000000000	\N
5118	1	1	00000000000000000	\N
5119	1	1	00000000000000000	\N
5120	1	1	00000000000000000	\N
5121	1	1	00000000000000000	\N
5122	1	1	00000000000000000	\N
5123	1	1	00000000000000000	\N
5124	1	1	00000000000000000	\N
5125	1	1	00000000000000000	\N
5126	1	1	00000000000000000	\N
5127	1	1	00000000000000000	\N
5128	1	1	00000000000000000	\N
5129	1	1	00000000000000000	\N
5130	1	1	00000000000000000	\N
5131	1	1	00000000000000000	\N
5132	1	1	00000000000000000	\N
5133	1	1	00000000000000000	\N
5134	1	1	00000000000000000	\N
5135	1	1	00000000000000000	\N
5136	1	1	00000000000000000	\N
5137	1	1	00000000000000000	\N
5138	1	1	00000000000000000	\N
5139	1	1	00000000000000000	\N
5140	1	1	00000000000000000	\N
5141	1	1	00000000000000000	\N
5142	1	1	00000000000000000	\N
5143	1	1	00000000000000000	\N
5144	1	1	00000000000000000	\N
5163	1	1	00000000000000000	\N
5164	1	1	00000000000000000	\N
5165	1	1	00000000000000000	\N
5166	1	1	00000000000000000	\N
5167	1	1	00000000000000000	\N
5168	1	1	00000000000000000	\N
5169	1	1	00000000000000000	\N
5170	1	1	00000000000000000	\N
5171	1	1	00000000000000000	\N
5172	1	1	00000000000000000	\N
5210	1	1	00000000000000000	\N
5211	1	1	00000000000000000	\N
5212	1	1	00000000000000000	\N
5213	1	1	00000000000000000	\N
5214	1	1	00000000000000000	\N
5215	1	1	00000000000000000	\N
5216	1	1	00000000000000000	\N
5217	1	1	00000000000000000	\N
5218	1	1	00000000000000000	\N
5219	1	1	00000000000000000	\N
5220	1	1	00000000000000000	\N
5221	1	1	00000000000000000	\N
5222	1	1	00000000000000000	\N
5223	1	1	00000000000000000	\N
5224	1	1	00000000000000000	\N
5225	1	1	00000000000000000	\N
5226	1	1	00000000000000000	\N
5227	1	1	00000000000000000	\N
5228	1	1	00000000000000000	\N
5229	1	1	00000000000000000	\N
5230	1	1	00000000000000000	\N
5231	1	1	00000000000000000	\N
5232	1	1	00000000000000000	\N
5233	1	1	00000000000000000	\N
5234	1	1	00000000000000000	\N
5235	1	1	00000000000000000	\N
5236	1	1	00000000000000000	\N
5237	1	1	00000000000000000	\N
5238	1	1	00000000000000000	\N
5239	1	1	00000000000000000	\N
5240	1	1	00000000000000000	\N
5241	1	1	00000000000000000	\N
5242	1	1	00000000000000000	\N
5243	1	1	00000000000000000	\N
5244	1	1	00000000000000000	\N
5245	1	1	00000000000000000	\N
5246	1	1	00000000000000000	\N
5247	1	1	00000000000000000	\N
5248	1	1	00000000000000000	\N
5249	1	1	00000000000000000	\N
5250	1	1	00000000000000000	\N
5251	1	1	00000000000000000	\N
5252	1	1	00000000000000000	\N
5253	1	1	00000000000000000	\N
5254	1	1	00000000000000000	\N
5255	1	1	00000000000000000	\N
5256	1	1	00000000000000000	\N
5257	1	1	00000000000000000	\N
5258	1	1	00000000000000000	\N
5259	1	1	00000000000000000	\N
5260	1	1	00000000000000000	\N
5261	1	1	00000000000000000	\N
5262	1	1	00000000000000000	\N
5263	1	1	00000000000000000	\N
5264	1	1	00000000000000000	\N
5265	1	1	00000000000000000	\N
5266	1	1	00000000000000000	\N
5267	1	1	00000000000000000	\N
5268	1	1	00000000000000000	\N
5269	1	1	00000000000000000	\N
5306	1	1	00000000000000000	\N
5307	1	1	00000000000000000	\N
5308	1	1	00000000000000000	\N
5309	1	1	00000000000000000	\N
5310	1	1	00000000000000000	\N
5311	1	1	00000000000000000	\N
5312	1	1	00000000000000000	\N
5317	1	1	00000000000000000	\N
5318	1	1	00000000000000000	\N
5319	1	1	00000000000000000	\N
5320	1	1	00000000000000000	\N
5322	1	1	00000000000000000	\N
5323	1	1	00000000000000000	\N
5324	1	1	00000000000000000	\N
5325	1	1	00000000000000000	\N
5326	1	1	00000000000000000	\N
5327	1	1	00000000000000000	\N
5328	1	1	00000000000000000	\N
5329	1	1	00000000000000000	\N
5330	1	1	00000000000000000	\N
5331	1	1	00000000000000000	\N
5332	1	1	00000000000000000	\N
5333	1	1	00000000000000000	\N
5378	1	1	00000000000000000	\N
5379	1	1	00000000000000000	\N
5380	1	1	00000000000000000	\N
5381	1	1	00000000000000000	\N
5382	1	1	00000000000000000	\N
5383	1	1	00000000000000000	\N
5384	1	1	00000000000000000	\N
5385	1	1	00000000000000000	\N
5386	1	1	00000000000000000	\N
5387	1	1	00000000000000000	\N
5388	1	1	00000000000000000	\N
5389	1	1	00000000000000000	\N
5390	1	1	00000000000000000	\N
5391	1	1	00000000000000000	\N
5392	1	1	00000000000000000	\N
5393	1	1	00000000000000000	\N
5394	1	1	00000000000000000	\N
5395	1	1	00000000000000000	\N
5396	1	1	00000000000000000	\N
5397	1	1	00000000000000000	\N
5398	1	1	00000000000000000	\N
5399	1	1	00000000000000000	\N
5400	1	1	00000000000000000	\N
5434	1	1	00000000000000000	\N
5435	1	1	00000000000000000	\N
5436	1	1	00000000000000000	\N
5437	1	1	00000000000000000	\N
5438	1	1	00000000000000000	\N
5439	1	1	00000000000000000	\N
5440	1	1	00000000000000000	\N
5441	1	1	00000000000000000	\N
5442	1	1	00000000000000000	\N
5443	1	1	00000000000000000	\N
5444	1	1	00000000000000000	\N
5445	1	1	00000000000000000	\N
5446	1	1	00000000000000000	\N
5447	1	1	00000000000000000	\N
5448	1	1	00000000000000000	\N
5449	1	1	00000000000000000	\N
5450	1	1	00000000000000000	\N
5451	1	1	00000000000000000	\N
5452	1	1	00000000000000000	\N
5453	1	1	00000000000000000	\N
5454	1	1	00000000000000000	\N
5455	1	1	00000000000000000	\N
5456	1	1	00000000000000000	\N
5457	1	1	00000000000000000	\N
5458	1	1	00000000000000000	\N
5459	1	1	00000000000000000	\N
5460	1	1	00000000000000000	\N
5461	1	1	00000000000000000	\N
5462	1	1	00000000000000000	\N
5463	1	1	00000000000000000	\N
5464	1	1	00000000000000000	\N
5465	1	1	00000000000000000	\N
5466	1	1	00000000000000000	\N
5551	1	1	00000000000000000	\N
5552	1	1	00000000000000000	\N
5553	1	1	00000000000000000	\N
5554	1	1	00000000000000000	\N
5555	1	1	00000000000000000	\N
5556	1	1	00000000000000000	\N
5559	1	1	00000000000000000	\N
5562	1	1	00000000000000000	\N
5564	1	1	00000000000000000	\N
5565	1	1	00000000000000000	\N
5566	1	1	00000000000000000	\N
5567	1	1	00000000000000000	\N
5568	1	1	00000000000000000	\N
5569	1	1	00000000000000000	\N
5570	1	1	00000000000000000	\N
5571	1	1	00000000000000000	\N
5572	1	1	00000000000000000	\N
5573	1	1	00000000000000000	\N
5574	1	1	00000000000000000	\N
5575	1	1	00000000000000000	\N
5576	1	1	00000000000000000	\N
5577	1	1	00000000000000000	\N
5578	1	1	00000000000000000	\N
5579	1	1	00000000000000000	\N
5580	1	1	00000000000000000	\N
5581	1	1	00000000000000000	\N
5582	1	1	00000000000000000	\N
5583	1	1	00000000000000000	\N
5584	1	1	00000000000000000	\N
5585	1	1	00000000000000000	\N
5586	1	1	00000000000000000	\N
5587	1	1	00000000000000000	\N
5588	1	1	00000000000000000	\N
5589	1	1	00000000000000000	\N
5590	1	1	00000000000000000	\N
5591	1	1	00000000000000000	\N
5592	1	1	00000000000000000	\N
5593	1	1	00000000000000000	\N
5594	1	1	00000000000000000	\N
5595	1	1	00000000000000000	\N
5596	1	1	00000000000000000	\N
5597	1	1	00000000000000000	\N
5598	1	1	00000000000000000	\N
5599	1	1	00000000000000000	\N
5600	1	1	00000000000000000	\N
5601	1	1	00000000000000000	\N
5602	1	1	00000000000000000	\N
5603	1	1	00000000000000000	\N
5604	1	1	00000000000000000	\N
5605	1	1	00000000000000000	\N
5606	1	1	00000000000000000	\N
5607	1	1	00000000000000000	\N
5608	1	1	00000000000000000	\N
5609	1	1	00000000000000000	\N
5610	1	1	00000000000000000	\N
5611	1	1	00000000000000000	\N
5612	1	1	00000000000000000	\N
5613	1	1	00000000000000000	\N
5614	1	1	00000000000000000	\N
5615	1	1	00000000000000000	\N
5616	1	1	00000000000000000	\N
5617	1	1	00000000000000000	\N
5618	1	1	00000000000000000	\N
5619	1	1	00000000000000000	\N
5620	1	1	00000000000000000	\N
5621	1	1	00000000000000000	\N
5622	1	1	00000000000000000	\N
5623	1	1	00000000000000000	\N
5624	1	1	00000000000000000	\N
5625	1	1	00000000000000000	\N
5626	1	1	00000000000000000	\N
5627	1	1	00000000000000000	\N
5628	1	1	00000000000000000	\N
5629	1	1	00000000000000000	\N
5630	1	1	00000000000000000	\N
5631	1	1	00000000000000000	\N
5632	1	1	00000000000000000	\N
5633	1	1	00000000000000000	\N
5634	1	1	00000000000000000	\N
5635	1	1	00000000000000000	\N
5636	1	1	00000000000000000	\N
5637	1	1	00000000000000000	\N
5638	1	1	00000000000000000	\N
5639	1	1	00000000000000000	\N
5640	1	1	00000000000000000	\N
5641	1	1	00000000000000000	\N
5642	1	1	00000000000000000	\N
5643	1	1	00000000000000000	\N
5644	1	1	00000000000000000	\N
5645	1	1	00000000000000000	\N
5646	1	1	00000000000000000	\N
5647	1	1	00000000000000000	\N
5648	1	1	00000000000000000	\N
5649	1	1	00000000000000000	\N
5650	1	1	00000000000000000	\N
5651	1	1	00000000000000000	\N
5652	1	1	00000000000000000	\N
5653	1	1	00000000000000000	\N
5654	1	1	00000000000000000	\N
5655	1	1	00000000000000000	\N
5656	1	1	00000000000000000	\N
5657	1	1	00000000000000000	\N
5658	1	1	00000000000000000	\N
5659	1	1	00000000000000000	\N
5660	1	1	00000000000000000	\N
5661	1	1	00000000000000000	\N
5662	1	1	00000000000000000	\N
5663	1	1	00000000000000000	\N
5664	1	1	00000000000000000	\N
5665	1	1	00000000000000000	\N
5666	1	1	00000000000000000	\N
5669	1	1	00000000000000000	\N
5674	1	1	00000000000000000	\N
5679	1	1	00000000000000000	\N
5680	1	1	00000000000000000	\N
5682	1	1	00000000000000000	\N
5683	1	1	00000000000000000	\N
\.


--
-- TOC entry 2479 (class 0 OID 16553)
-- Dependencies: 234
-- Data for Name: t_system_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_system_info (info, message, apply_start_date, apply_end_date, reg_id, reg_date) FROM stdin;
1	あああああああああああああああああああああああああああああああああああああああああああああ	201209111447	20120911    	admin	20120911144713
2	あああああああああああああああああああああ	201209111447	20120911    	admin	20120911144756
3	あああ	201209111456	20120918    	admin	20120911145613
4	＊＊システムからのお知らせは、ここに表示されます＊＊	201209201116	20120920    	admin	20120920111652
5	あああああああああいいいいいい\r\nううううう	201211281431	20121128    	comusen1234	20121128143156
6	テストメッセージ	201410101017	20141010    	admin	20141010101736
7	テストメッセージ	201410101017	20141010    	admin	20141010101747
8	ああああああ	201609161427	20161117    	admin	20160916142718
9	ああああ	201611191555	20161119    	admin	20161119155531
\.


--
-- TOC entry 2480 (class 0 OID 16559)
-- Dependencies: 235
-- Data for Name: t_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY t_user (u_id, user_kanji, user_kana, constituent_sum, constituent_adult, constituent_child, attribute, igroup, email, email_kind, email_send, password, sei_name, mei_name, postal, address1, address2, address3, tel, sex, birthday, note, reception, recognition, issue, validity, interruption, message, message_reg_id, message_date, reg_id, reg_date, upd_date, reserve, living_city_sei_name, living_city_mei_name, living_city_postal, living_city_address1, living_city_address2, living_city_address3, tel2, living_city_tel, is_not_charged, address_pref, living_city_address_pref) FROM stdin;
17000032	茨城県西農業（共済）	イバラキケンセイノウギョウキヨウサイ	\N	\N	\N	4	65535	\N	\N	\N	\N	大山	佳功	300-3565	八千代町	松本500		0296-30-2900	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603163745	20171027113854	\N			-				--	--	\N	茨城県	\N
17000066	古河市立古河第二中学校　吹奏楽部	コガダイニチュウガッコウ　スイソウガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	小形	隆	306-0041	古河市鴻巣	780		0280-48-1416	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609164018	20171027115114	\N			-				--	--	\N	茨城県	\N
17000097	ネクシモ	ネクシモ	\N	\N	\N	4	65535	\N	\N	\N	\N	長洲	賢志	111-1111	日立市	久慈町１－１－１	クレール１１１号室	090-1111-1111	\N	\N	ネクシモのテスト用利用者です。	1	1	20170315	99991231	0	\N	\N	\N	admin	20170315103023	20170321165053	\N	田中	太郎	222-2222	日立市	久慈町２－２－２	クレール２２２号室	--	--	\N	茨城県	\N
17000143	孝顕寺	コウケンジ	\N	\N	\N	1	65535	\N	\N	\N	\N	松浦	恵真	307-0001	結城市	結城461		0296-33-3637	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611113211	20170611113307	\N			-				--	--	\N	茨城県	\N
17000175	沢登　麻理	サワト　マリ	\N	\N	\N	2	65535	\N	\N	\N	\N	沢登	麻理	323-0062	小山市	立木572-5		090-2475-0113	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603142650	20170603142916	\N			-				--	--	\N	茨城県	\N
17000001	個別指導のｏｎｅ塾	コベツシドウノワンジュク	\N	\N	\N	1	65535	\N	\N	\N	\N	大川	竜一	307-0001	結城市	結城492-9		090-7845-3991	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611112238	20170910152438	\N			-				--	--	\N	茨城県	\N
17000000	土短歌会	ツチタンカカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	草間	とし	307-0001	結城市	結城238		0296-33-7381	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611114959	\N	\N			-				--	--	\N	茨城県	\N
17000002	わらべ合唱団	ワラベガッショウダン	\N	\N	\N	1	65535	\N	\N	\N	\N	安達	次男	307-0005	結城市川木谷	1-11-16		0296-33-5077	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910145925	\N	\N			-				--	--	\N	茨城県	\N
17000003	結城市役所　健康増進センター	ユウキシヤクショ　ケンコウゾウシンセンター	\N	\N	\N	1	65535	\N	\N	\N	\N	池田	貴史	307-0001	結城市	結城1194		0296-32-7890	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611102432	20170910143847	\N			-				--	--	\N	茨城県	\N
17000004	結城市役所　長寿福祉課	ユウキシヤクショ　チョウジュフクシカ	\N	\N	\N	1	65535	\N	\N	\N	\N	増山	誠	307-0001	結城市	結城1447		0296-45-6672	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608111643	\N	\N			-				--	--	\N	茨城県	\N
17000005	食事道を学ぶ会	ショクジドウヲマナブカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	石川	和子	307-0001	結城市	結城7188-15		0296-32-3606	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603143849	\N	\N			-				--	--	\N	茨城県	\N
17000008	プア　ファイブ　フラ	プア　ファイブ　フラ	\N	\N	\N	4	65535	\N	\N	\N	\N	大野	キミ	306-0013	古河市	東本町3-3-12		0280-32-4375	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603155101	\N	\N			-				--	--	\N	茨城県	\N
17000010	深津　卓也	フカツ　タクヤ	\N	\N	\N	4	65535	\N	\N	\N	\N	深津	卓也	329-4304	栃木市岩舟町静和	2448-44		090-9006-0371	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910165014	\N	\N			-				--	--	\N	茨城県	\N
17000011	佐藤カラオケ教室	サトウカラオケキョウシツ	\N	\N	\N	2	65535	\N	\N	\N	\N	佐藤	裕紀	323-0819	小山市	横倉新田12-20		0285-28-0820	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611100545	\N	\N			-				--	--	\N	茨城県	\N
17000013	（株）ワールドインテック　	カ）ワールドインテック　	\N	\N	\N	4	65535	\N	\N	\N	\N	北村	光男	300-0037	土浦市	桜町1-8-14	関鉄土浦ビルⅡ ５FC 	029-825-1601	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603150905	20170910143335	\N			-				--	--	\N	茨城県	\N
17000014	いばらきマリッジサポーター県西地域活動協議会	イバラキマリッジサポーターケンセイチイキカツドウキョウギカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	長尾	雄治	300-3527	結城郡八千代町東原	134		090-6122-5677	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910165539	20170910165627	\N			-				--	--	\N	茨城県	\N
17000015	新福寺町内会	シンプクジチョウナイカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	佐藤	正男	307-0052	結城市	中央町1-5-6		0296-33-5863	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603135027	\N	\N			-				--	--	\N	茨城県	\N
17000017	結城市教育委員会　スポーツ振興課	ユウキシキョウイクイインカイ　スポーツシンコウカ	\N	\N	\N	1	65535	\N	\N	\N	\N	仁見	剛	307-0001	結城市	結城7473		0296-32-6340	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608162846	\N	\N			-				--	--	\N	茨城県	\N
17000019	聖徳大学附属取手聖徳女子高等学校	セイトクダイガクフゾクトリデセイトクジョシコウトウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	小塚	功	300-1544	取手市山王	1000		0297-83-8111	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610140233	\N	\N			-				--	--	\N	茨城県	\N
17000020	モアニーサクラ	モアニーサクラ	\N	\N	\N	4	65535	\N	\N	\N	\N	箱守	正子	308-0127	筑西市	関本下１２８－２		090-2628-5447	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603114724	\N	\N			-				--	--	\N	茨城県	\N
17000022	神山芳子バレエスクール	カミヤマヨシコバレエスクール	\N	\N	\N	4	65535	\N	\N	\N	\N	神山	芳子	308-0041	筑西市	乙134-6		080-1094-1569	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611095025	\N	\N			-				--	--	\N	茨城県	\N
17000024	坂入　優子	サカイリ　ユウコ	\N	\N	\N	2	65535	\N	\N	\N	\N	坂入	優子	323-0807	小山市	城東5-4-19		090-3133-6795	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608165005	20170910140247	\N			-				--	--	\N	茨城県	\N
17000025	境町立境第一中学校	サカイチョウリツサカイダイイチチュウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	山田	賢哉	306-0404	境町長井戸	1682		0280-87-0016	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610141824	\N	\N			-				--	--	\N	茨城県	\N
17000026	筑西ティアレ	チクセイティアレ	\N	\N	\N	1	65535	\N	\N	\N	\N	稲葉	良江	307-0052	結城市中央町	1-7-9		0296-33-4448	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910132114	\N	\N			-				--	--	\N	茨城県	\N
17000027	大和ハウス工業（株）小山支店	ダイワハウスコウギョウ（カ）オヤマシテン	\N	\N	\N	2	65535	\N	\N	\N	\N	深堀	善光	323-0820	小山市	西城南4-20-8		0285-31-4504	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603131408	20170910133058	\N			-				--	--	\N	茨城県	\N
17000028	結城市仏教会	ユウキシブッキョウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	国香	眞彰	307-0001	結城市	結城152		0296-33-3331	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603133846	\N	\N			-				--	--	\N	茨城県	\N
17000033	ハーモニックさかい	ハーモニックサカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	岡田	ヨシ子	306-0433	境町	381		0280-87-2427	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611135806	\N	\N			-				--	--	\N	茨城県	\N
17000040	結城市青少年相談員連絡協議会	ユウキシセイショウネンレンラクキョウギカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	篠崎	惠子	307-0001	結城市	結城7473		0296-32-1899	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605122827	\N	\N			-				--	--	\N	茨城県	\N
17000042	琴友城会	コトユウキカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	山内	好子	307-0053	結城市	新福寺2-1-14		0296-32-2219	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611115506	\N	\N			-				--	--	\N	茨城県	\N
17000047	ゆう・遊祭第一部実行委員会	ユウ・ユウサイダイイチブジッコウイインカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	本宿	幸子	307-0001	結城市	結城9817-8		0296-32-3953	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603150451	20170904170416	\N			-				--	--	\N	茨城県	\N
17000049	茨城県心身障害者福祉協会	イバラキケンシンシンショウガイフクシキョウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	場石	広行	300-0013	土浦市	神立町前原443-4		029-832-3550	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605122518	20170605122558	\N			-				--	--	\N	茨城県	\N
17000051	ピッコリーナピアノ	ピッコリーナピアノ	\N	\N	\N	2	65535	\N	\N	\N	\N	菅原	里美	323-0820	小山市	西城南7-8-1		090-8616-0857	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603143636	\N	\N			-				--	--	\N	茨城県	\N
17000052	県西地区特別支援教育研究部	ケンセイチクトクベツシエンキョウイクケンキュウブ	\N	\N	\N	1	65535	\N	\N	\N	\N	石川	順子	307-0031	結城市大字大木	1123	結城南中学校	0296-35-0345	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610144554	\N	\N			-				--	--	\N	茨城県	\N
17000055	（公財）常陽藝文センター	ザイ）ジョウヨウゲイブンセンター	\N	\N	\N	4	65535	\N	\N	\N	\N	横須賀	照雄	310-0011	水戸市	三の丸1-5-18		029-231-6611	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607164547	\N	\N			-				--	--	\N	茨城県	\N
17000056	結城市教育委員会　スポーツ振興課　国体推進室	ユウキシキョウイクイインカイ　スポーツシンコウカ　コクタイスイシンシツ	\N	\N	\N	1	65535	\N	\N	\N	\N	稲葉	孝之	307-0001	結城市	結城7473		0296-45-6530	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603141607	20170922132129	\N			-				--	--	\N	茨城県	\N
17000058	塚原　ゆかり	ツカハラ　ユカリ	\N	\N	\N	1	65535	\N	\N	\N	\N	塚原	ゆかり	307-0013	結城市	中58-4		090-4705-6477	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603151125	\N	\N			-				--	--	\N	茨城県	\N
17000035	（医）優人会	イ）ユウジンカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	冨田	兵衛	135-0048	江東区門前仲町	1-4-8　	９F	03-3643-0077	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603140053	20170910153009	\N			-				--	--	\N	東京都	\N
17000059	茨城県教育友の会写真クラブ	イバラキケンキョウイクトモノカイシャシンクラブ	\N	\N	\N	4	65535	\N	\N	\N	\N	田辺	淳次	306-0631	坂東市	岩井4322-19		090-3090-3411	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922152057	\N	\N			-				--	--	\N	茨城県	\N
17000060	結城市役所　子ども福祉課	ユウキシヤクショ　コドモフクシカ	\N	\N	\N	1	65535	\N	\N	\N	\N	駒井	勝男	307-8501	結城市結城	1447		0296-54-7003	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910155941	\N	\N			-				--	--	\N	茨城県	\N
17000065	ソシアスクラリネットアンサンブル	ソシアスクラリネットアンサンブル	\N	\N	\N	4	65535	\N	\N	\N	\N	斎藤	順子	308-0122	筑西市	関本上574		090-7181-9295	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608160821	20170910132519	\N			-				--	--	\N	茨城県	\N
17000069	公明党　茨城県本部第六総支部	コウメイトウ　イバラキケンホンブダイロクソウシブ	\N	\N	\N	1	65535	\N	\N	\N	\N	黒川	充夫	307-0001	結城市	結城10572-3		090-9133-7652	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608163240	20170910134056	\N			-				--	--	\N	茨城県	\N
17000070	住友生命保険（相）	スミトモセイメイホケン（ソ	\N	\N	\N	2	65535	\N	\N	\N	\N	岩田	明	323-0022	小山市	駅東通り2-37-3		0285-25-9984	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611113017	\N	\N			-				--	--	\N	茨城県	\N
17000071	カルチェミュージックフェスティバル	カルチェミュージックフェスティバル	\N	\N	\N	1	65535	\N	\N	\N	\N	稲葉	真二	307-0052	結城市	中央町1-7-9		0296-33-4448	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607162724	\N	\N			-				--	--	\N	茨城県	\N
17000074	マルコ（株）	マルコ（カ	\N	\N	\N	2	65535	\N	\N	\N	\N	赤峰	諒	323-0822	小山市	駅東通2-40-28	アクティブビル３F	0285-24-3655	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609164926	20170910142838	\N			-				--	--	\N	茨城県	\N
17000075	ゆふのきカラオケクラブ	ユフノキカラオケクラブ	\N	\N	\N	1	65535	\N	\N	\N	\N	信末	順吾	307-0001	結城市	結城6100-47		0296-33-5016	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607165150	\N	\N			-				--	--	\N	茨城県	\N
17000076	結城紬太鼓	ユウキツムギダイコ	\N	\N	\N	1	65535	\N	\N	\N	\N	稲葉	由美子	307-0001	結城市	結城3264		0296-32-0378	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608102858	\N	\N			-				--	--	\N	茨城県	\N
17000077	八千代町立東中学校	ヤチヨチョウリツヒガシチュウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	野尻	知子	300-3525	八千代町	沼森50		0296-48-0787	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609160042	\N	\N			-				--	--	\N	茨城県	\N
17000078	キャノンオプトロン（株）	キャノンオプトロン（カ	\N	\N	\N	1	65535	\N	\N	\N	\N	味村	嘉之	307-0015	結城市鹿窪	1744-1		0296-21-3751	\N	\N		1	1	20170904	99991231	0	\N	\N	\N	across	20170904164314	\N	\N			-				--	--	\N	茨城県	\N
17000080	古河市立総和南中学校吹奏楽部	コガシリツソウワミナミチュウガッコウスイソウガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	湯田	佑香里	306-0225	古河市磯部	1773		0280-92-1709	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609163726	20171106164845	\N			-				--	--	\N	茨城県	\N
17000081	（一財）茨城県メディカルセンター	ザイ）イバラキケンメディカルセンター	\N	\N	\N	4	65535	\N	\N	\N	\N	諸岡	信裕	310-8581	水戸市笠原町	489		029-243-1113	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910131222	\N	\N			-				--	--	\N	茨城県	\N
17000082	公文式結城地区会	クモンシキユウキチクカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	赤荻	敏子	307-0001	結城市	結城9863-9		0296-32-6862	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603132117	\N	\N			-				--	--	\N	茨城県	\N
17000083	佐藤仁	サトウヒトシ	\N	\N	\N	1	65535	\N	\N	\N	\N	佐藤	仁	307-0001	結城市	結城11967-4		090-3098-3341	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603114220	\N	\N			-				--	--	\N	茨城県	\N
17000084	結城市観光協会	ユウキシカンコウキョウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	柳田	幸夫	307-8501	結城市大字結城	1447		0296-34-0421	\N	\N		1	1	20170918	99991231	0	\N	\N	\N	across	20170918164609	\N	\N			-				--	--	\N	茨城県	\N
17000085	桜川市立桜川中学校　吹奏楽部	サクラガワシリツサクラガワチュウガッコウ　スイソウガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	石川	百合恵	300-4422	桜川市	真壁町亀熊570		0296-55-0667	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608111357	\N	\N			-				--	--	\N	茨城県	\N
17000087	下妻第一高等学校PTA一穂支部	シモツマダイイチコウトウガッコウピーティーエーイチホシブ	\N	\N	\N	4	65535	\N	\N	\N	\N	竹内	彰	307-0021	結城市	上山川乙279-3		0296-33-4032	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611111628	\N	\N			-				--	--	\N	茨城県	\N
17000089	結城絵画クラブ	ユウキカイガクラブ	\N	\N	\N	1	65535	\N	\N	\N	\N	外木	健之	307-0053	結城市新福寺	4-7-13		0296-33-5663	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611132805	20170910164450	\N			-				--	--	\N	茨城県	\N
17000090	あじさいコンサート実行委員会	アジサイコンサートジッコウイインカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	安達	次男	300-0005	結城市	川木谷1-11-16		0296-33-5077	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603165453	\N	\N			-				--	--	\N	茨城県	\N
17000091	筑西保育協議会	チクセイホイクキョウギカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	浜野	紀子	307-0001	結城市結城	11723-3		090-1456-9542	\N	\N		1	1	20170904	99991231	0	\N	\N	\N	across	20170904153055	20170910150930	\N	若林	美智子	307-0001	結城市結城	3807-2		--	--	\N	茨城県	\N
17000093	茨城県合唱連盟	イバラキケンガッショウレンメイ	\N	\N	\N	4	65535	\N	\N	\N	\N	打越	孝裕	310-0011	水戸市	三の丸1-5-38		029-233-1747	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611135551	20170918160602	\N			-				--	--	\N	茨城県	\N
17000095	八千代第一中学校	ヤチヨダイイチチュウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	上原	玉絵	300-3544	八千代町	若1808		0296-48-0178	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609164318	\N	\N			-				--	--	\N	茨城県	\N
17000096	日本年金機構　下館年金事務所	ニホンネンキンキコウ　シモダテネンキンジムショ	\N	\N	\N	4	65535	\N	\N	\N	\N	池田	敏彦	308-8520	筑西市	菅谷1720		0296-25-0829	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608095723	20170910143534	\N			-				--	--	\N	茨城県	\N
17000099	（株）ポーラ	カ）ポーラ	\N	\N	\N	4	65535	\N	\N	\N	\N	吉澤	聡	310-0803	水戸市	城南1-7-27		029-224-4224	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603111536	\N	\N			-				--	--	\N	茨城県	\N
17000101	音楽教室canone♪	オンガクキョウシツカノン	\N	\N	\N	1	65535	\N	\N	\N	\N	生井	雅子	307-0021	結城市	上山川２５６		090-4204-5908	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603112910	\N	\N			-				--	--	\N	茨城県	\N
17000102	Ｇreenアカデミー音楽教室	グリーンアカデミーオンガクキョウシツ	\N	\N	\N	1	65535	\N	\N	\N	\N	潮田	俊太	307-0001	結城市	結城1666-12		0296-33-6728	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603144233	\N	\N			-				--	--	\N	茨城県	\N
17000105	筑西市立下館西中学校　管弦楽部	チクセイシリツシモダテニシチュウガッコウ　カンゲンガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	飯泉	廉	308-0064	筑西市飯島	600		0296-28-0404	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910165834	20171026132809	\N			-				--	--	\N	茨城県	\N
17000107	ALESSANDRA MIDORY YOSITO 	アレッサンダー　ミドリー　ヨシト　トミナガ	\N	\N	\N	2	65535	\N	\N	\N	\N	ALESSANDRA	MIDORY	323-0824	小山市	雨ケ谷新田73-113		080-3441-9382	\N	\N	連絡先0285-28-3479\r\n	1	1	20170608	99991231	0	\N	\N	\N	across	20170608105340	\N	\N			-				--	--	\N	茨城県	\N
17000108	結城舞踊連合会	ユウキブヨウレンゴウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	中久喜	吉恵	307-0001	結城市	結城1880-95		0296-33-6067	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603165050	\N	\N			-				--	--	\N	茨城県	\N
17000109	年金者連盟結城支部	ネンキンシャレンメイユウキシブ	\N	\N	\N	1	65535	\N	\N	\N	\N	木村	浩明	307-0001	結城市	結城５９		0296-33-4574	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607164256	\N	\N			-				--	--	\N	茨城県	\N
17000112	（株）日本ハウスホールディングス	カ）ニホンハウスホールディングス	\N	\N	\N	4	65535	\N	\N	\N	\N	猪瀬	一	321-0941	宇都宮市	東今泉1-3-15		028-632-6516	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609160625	20170910141041	\N			-				--	--	\N	茨城県	\N
17000117	中田　松雄	ナカタ　マツオ	\N	\N	\N	1	65535	\N	\N	\N	\N	中田	松雄	307-0001	結城市	結城9135		090-4388-8737	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608163808	\N	\N			-				--	--	\N	茨城県	\N
17000118	ゆうきエコー女声合唱団	ユウキエコージョセイガッショウダン	\N	\N	\N	1	65535	\N	\N	\N	\N	恩田	正子	307-0001	結城市	結城11803-1		0296-33-5702	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611114524	\N	\N			-				--	--	\N	茨城県	\N
17000119	結城青年会議所	ユウキセイネンカイギショ	\N	\N	\N	1	65535	\N	\N	\N	\N	大柳	健司	307-0001	結城市	結城28		090-4611-4448	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608101749	\N	\N			-				--	--	\N	茨城県	\N
17000121	せんす	センス	\N	\N	\N	4	65535	\N	\N	\N	\N	島田	陽一	304-0015	下妻市	下田157-3		0296-44-1691	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611140232	\N	\N			-				--	--	\N	茨城県	\N
17000122	全日本写真連盟茨城県西支部	ゼンニホンシャシンレンメイイバラキケンセイシブ	\N	\N	\N	4	65535	\N	\N	\N	\N	谷島	文夫	308-0821	筑西市	成田423		0296-22-6456	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607164940	\N	\N			-				--	--	\N	茨城県	\N
17000125	筑西市立明野中学校	チクセイシリツアケノチュウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	岩見	ひとみ	300-4515	筑西市	倉持1138		0296-52-0202	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609162658	\N	\N			-				--	--	\N	茨城県	\N
17000126	結城市立結城東中学校	ユウキシリツユウキヒガシチュウガッコウ	\N	\N	\N	1	65535	\N	\N	\N	\N	鶴見	力男	307-0001	結城市	結城3381		0296-33-5101	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611134302	\N	\N			-				--	--	\N	茨城県	\N
17000127	コールジュライ	コールジュライ	\N	\N	\N	4	65535	\N	\N	\N	\N	篠崎	栄子	308-0827	筑西市	野辺265-15		0296-22-6508	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611140032	\N	\N			-				--	--	\N	茨城県	\N
17000130	結城市老人クラブ連合会	ユウキシロウジンクラブレンゴウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	南	繁三郎	307-0001	結城市	結城6100-43		0296-33-4943	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611133040	\N	\N			-				--	--	\N	茨城県	\N
17000131	（株）Ｂｉ工房	カ）ビーアイコウボウ	\N	\N	\N	2	65535	\N	\N	\N	\N	佐藤	洋通	323-0819	小山市大字横倉新田	172-7		0285-31-0380	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610141341	\N	\N			-				--	--	\N	茨城県	\N
17000134	古河市立三和北中学校吹奏楽部	コガシリツサンワキタチュウガッコウスイソウガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	篠崎	智美	306-0126	古河市	諸川1995		0280-76-5900	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608164521	20170910135841	\N			-				--	--	\N	茨城県	\N
17000135	全労済筑西支所	ゼンロウサイチクセイシショ	\N	\N	\N	4	65535	\N	\N	\N	\N	杉森	勉	308-0847	筑西市玉戸	1049-2		0296-28-8833	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610134829	\N	\N			-				--	--	\N	茨城県	\N
17000136	（株）マルシン楽器	カ）マルシンガッキ	\N	\N	\N	4	65535	\N	\N	\N	\N	荒井	洋子	308-0051	筑西市	岡芹2064		0296-22-2691	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611132545	20170910164221	\N			-				--	--	\N	茨城県	\N
17000137	北関東童謡コンサート実行委員会	キタカントウドウヨウコンサートジッコウイインカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	安達	次男	307-0005	結城市	川木谷1-11-16		0296-33-5077	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611103328	20170611135026	\N			-				--	--	\N	茨城県	\N
17000139	家庭倫理の会茨城西	カテイリンリノカイイバラキニシ	\N	\N	\N	1	65535	\N	\N	\N	\N	宮田	ミチ子	307-0046	結城市	作の谷9372-64		0296-32-6660	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603132406	\N	\N			-				--	--	\N	茨城県	\N
17000141	結城市立結城中学校	ユウキシリツユウキチュウガッコウ	\N	\N	\N	1	65535	\N	\N	\N	\N	仲見川	有紀子	307-0007	結城市	小田林2600		0296-33-2154	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608165453	20171103114118	\N			-				--	--	\N	茨城県	\N
17000057	臼井　平八郎	ウスイ　ヘイハチロウ	\N	\N	\N	1	65535	\N	\N	\N	\N	臼井	平八郎	307-0001	結城市結城	11326		0296-32-0312	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910145700	\N	\N			-				--	--	\N	茨城県	\N
17000144	茨城県地域人権運動連合会	イバラキケンチイキジンケンウンドウレンゴウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	小松崎	俊一	307-0052	結城市中央町	2-7-1		0296-32-9022	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605120711	20170910153147	\N			-				--	--	\N	茨城県	\N
17000145	茨城県交通安全活動推進センター	イバラキケンコウツウアンゼンカツドウスイシンセンター	\N	\N	\N	4	65535	\N	\N	\N	\N	神長	克美	310-0836	水戸市	東野町260		029-247-3355	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611102809	20170611102921	\N			-				--	--	\N	茨城県	\N
17000146	小山琴音会	オヤマコトネカイ　	\N	\N	\N	1	65535	\N	\N	\N	\N	入口	千佳子	307-0001	結城市結城	2047-9		0296-33-5104	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910131436	\N	\N			-				--	--	\N	茨城県	\N
17000147	茨城県立下館第二高等学校　吹奏楽部	イバラキケンリツシモダテダイニコウトウガッコウ　スイソウガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	物井	麻真	308-0051	筑西市	岡芹1119		0296-22-5361	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607165447	20171026132913	\N			-				--	--	\N	茨城県	\N
17000148	石島きもの文化学院	イシジマキモノブンカガクイン	\N	\N	\N	1	65535	\N	\N	\N	\N	石島	孝子	307-0053	結城市	新福寺6-2-3		0296-32-4834	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608165739	20170910140822	\N			-				--	--	\N	茨城県	\N
17000149	（公社）結城市シルバー人材センター	シャ)ユウキシシルバージンザイセンター	\N	\N	\N	1	65535	\N	\N	\N	\N	戸田	一美	307-0001	結城市	結城344-5		0296-33-0222	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607165745	20170607165821	\N			-				--	--	\N	茨城県	\N
17000151	久留美バレエスタジオ	クルミバレエスタジオ	\N	\N	\N	1	65535	\N	\N	\N	\N	桜井	久留美	307-0015	結城市	鹿窪1305-20		0296-32-8221	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608160550	\N	\N			-				--	--	\N	茨城県	\N
17000154	（株）コアジャパン	カ）コアジャパン	\N	\N	\N	4	65535	\N	\N	\N	\N	太田	利一	372-0003	伊勢崎市	華蔵寺町87-1		0270-61-8411	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608105808	\N	\N			-				--	--	\N	茨城県	\N
17000155	結城演友会＆素適な仲間たち	ユウキエンユウカイアンドステキナナカマタチ	\N	\N	\N	1	65535	\N	\N	\N	\N	中澤	英雄	307-0001	結城市	結城463-2		0296-33-3029	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611120123	20170910164119	\N			-				--	--	\N	茨城県	\N
17000157	（一社）相続相談あんしんプラザ	シヤ）ソウゾクソウダンアンシンプラザ	\N	\N	\N	2	65535	\N	\N	\N	\N	細見	愛子	323-0829	小山市	東城南5-1-7		0285-38-9550	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603125645	20170910141203	\N			-				--	--	\N	茨城県	\N
17000138	センター家庭電器（株）	センターカテイデンキ（カ	\N	\N	\N	4	65535	\N	\N	\N	\N	今川	政夫	310-0005	水戸市	水府町１５４８		029-226-2215	\N	\N	（携帯）080-5419-0162	1	1	20170607	99991231	0	\N	\N	\N	across	20170607162203	20171110140930	\N			-				--	--	\N	茨城県	\N
17000160	小林千香子ピアノ教室	コバヤシチカコピアノキョウシツ	\N	\N	\N	2	65535	\N	\N	\N	\N	小林	千香子	323-0819	小山市	横倉新田98-92		0285-29-0259	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611114244	\N	\N			-				--	--	\N	茨城県	\N
17000163	茨城ダルク今日一日ハウス	イバラキダルクキョウイチニチハウス	\N	\N	\N	1	65535	\N	\N	\N	\N	岩井	喜代仁	307-0021	結城市	上山川6847		0296-35-1151	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609160939	\N	\N			-				--	--	\N	茨城県	\N
17000164	古河シティウインドオーケストラ	コガシティウインドオーケストラ	\N	\N	\N	1	65535	\N	\N	\N	\N	木村	由衣	307-0001	結城市	結城8607-10	スプリングフィルズ101	090-5300-9651	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611101222	20170910150508	\N			-				--	--	\N	茨城県	\N
17000165	たけのこの会北関東支部	タケノコノカイキタカントウシブ	\N	\N	\N	4	65535	\N	\N	\N	\N	小師	綾子	304-0027	下妻市	福田225-1		090-2230-4097	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608093436	\N	\N			-				--	--	\N	茨城県	\N
17000166	郷土民謡協会茨城連合	キョウドミンヨウキョウカイイバラキレンゴウ	\N	\N	\N	4	65535	\N	\N	\N	\N	石川	松堂	309-1115	筑西市	蓮沼1591-85		0296-57-3128	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608093041	20170608093140	\N			-				--	--	\N	茨城県	\N
17000168	結城市環境衛生協議会	ユウキシカンキョウエイセイキョウギカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	稲葉	廣巳	307-0001	結城市	結城1447		0296-34-0370	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605103332	\N	\N			-				--	--	\N	茨城県	\N
17000169	藤井　美智子	フジイ　ミチコ	\N	\N	\N	2	65535	\N	\N	\N	\N	藤井	美智子	323-0014	小山市喜沢	771	ブランドールＡ101	090-7903-7352	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608164005	20170910112508	\N			-				--	--	\N	茨城県	\N
17000170	（有）三栄工業	ユ）サンエイコウギョウ	\N	\N	\N	1	65535	\N	\N	\N	\N	千葉	昌司	307-0001	結城市	結城市結城9597-5		0296-32-3106	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603104603	20171103113022	\N			-				--	--	\N	茨城県	\N
17000171	結城市役所　社会福祉課	ユウキシヤクショ　シャカイフクシカ	\N	\N	\N	1	65535	\N	\N	\N	\N	増山	智一	307-0001	結城市	結城1447		0296-34-0416	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611113608	20170611113727	\N			-				--	--	\N	茨城県	\N
17000181	大武由美子ピアノ教室	オオタケユミコピアノキョウシツ	\N	\N	\N	4	65535	\N	\N	\N	\N	大武	由美子	308-0031	筑西市丙	350		080-1398-3029	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610134516	20170610134617	\N			-				--	--	\N	茨城県	\N
17000182	東日本鯉釣り協会	ヒガシニホンコイツリキョウカイ	\N	\N	\N	2	65535	\N	\N	\N	\N	永井	正行	323-0042	小山市外城	204-1	ユーミーアズール104	090-9389-0655	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910154040	\N	\N			-				--	--	\N	茨城県	\N
17000183	Ｃ．Ｔ．Ｉ　カルテット	シー.ティー.アイ　カルテット	\N	\N	\N	4	65535	\N	\N	\N	\N	西澤	義幸	306-0125	古河市	仁連2219-11		080-1257-4831	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603142405	\N	\N			-				--	--	\N	茨城県	\N
17000184	小山・結城　虹の会	オヤマ・ユウキ　ニジノカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	大沼	美代子	307-0001	結城市結城	1978-11		090-7635-8666	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910154305	\N	\N			-				--	--	\N	茨城県	\N
17000185	（株）ローソン	カ）ローソン	\N	\N	\N	4	65535	\N	\N	\N	\N	高柳	秀宏	310-0026	水戸市	泉町3-2-1		080-1316-2604	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603103615	20170910143043	\N			-				--	--	\N	茨城県	\N
17000186	アトリエラベンダーフレンズ	アトリエラベンダーフレンズ	\N	\N	\N	1	65535	\N	\N	\N	\N	南	美奈子	307-0052	結城市	結城1-15-8		0296-33-4385	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611113954	20171103113314	\N			-				--	--	\N	茨城県	\N
17000187	筑西広域防火管理協議会	チクセイコウイキボウカカンリキョウギカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	須藤	英夫	308-0803	筑西市	直井1076		0296-24-4589	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611140532	20170918161824	\N			-				--	--	\N	茨城県	\N
17000191	結城ソフトボール協会	ユウキソフトボールキョウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	野村	堅二郎	307-0052	結城市	中央町1-9-13		0296-32-9246	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609162244	\N	\N			-				--	--	\N	茨城県	\N
17000192	結城市役所　地域包括支援センター	ユウキシヤクショ　チイキホウカツシエンセンター	\N	\N	\N	1	65535	\N	\N	\N	\N	川股	淳子	307-0001	結城市	結城1447		0296-34-0324	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611110004	\N	\N			-				--	--	\N	茨城県	\N
17000193	結城市立城南小学校	ユウキシリツジョウナンショウガッコウ	\N	\N	\N	1	65535	\N	\N	\N	\N	石嶋	位知江	307-0001	結城市	結城8482-4		090-2763-6380	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603151330	20171106164533	\N			-				--	--	\N	茨城県	\N
17000198	結城市倫理法人会	ユウキシリンリホウジンカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	小林	栄	307-0015	結城市	鹿窪1744-11		080-9579-9330	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603140715	\N	\N			-				--	--	\N	茨城県	\N
17000200	茨城県吹奏楽連盟県西地区	イバラキケンスイソウガクレンメイケンセイチク	\N	\N	\N	4	65535	\N	\N	\N	\N	山田	賢哉	306-0404	境町	長井戸1682		0280-87-0016	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603145355	\N	\N			-				--	--	\N	茨城県	\N
17000201	YUKO DANCE CREATION	ユウコ　ダンス　クリエーション	\N	\N	\N	1	65535	\N	\N	\N	\N	木村	祐子	307-0001	結城市	結城13911		090-7805-1955	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603133242	20170603133321	\N			-				--	--	\N	茨城県	\N
17000202	茶道連盟（納涼茶会）	サドウレンメイ（ノウリョウチャカイ）	\N	\N	\N	1	65535	\N	\N	\N	\N	山田	雅子	307-0001	結城市結城	13601		0296-33-3418	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610135631	\N	\N			-				--	--	\N	茨城県	\N
17000204	田辺三菱製薬（株）	タナベミツビシセイヤク（カ	\N	\N	\N	4	65535	\N	\N	\N	\N	岡本	隆文	305-0032	つくば市	竹園1-12-2		070-2292-6065	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609162041	20170910141706	\N			-				--	--	\N	茨城県	\N
17000205	梅澤　裕子	ウメザワ　ユウコ	\N	\N	\N	1	65535	\N	\N	\N	\N	梅澤	裕子	307-0021	結城市	上山川1112		090-5215-7213	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608102719	\N	\N			-				--	--	\N	茨城県	\N
17000206	プレリュード音楽教室	プレリュードオンガクキョウシツ	\N	\N	\N	1	65535	\N	\N	\N	\N	石島	貴子	307-0001	結城市結城	1761		0296-33-5501	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610144802	\N	\N			-				--	--	\N	茨城県	\N
17000207	北つくば農業協同組合	キタツクバノウギョウキョウドウクミアイ	\N	\N	\N	4	65535	\N	\N	\N	\N	國府田	利夫	308-0051	筑西市	岡芹2222		0296-25-6600	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607163504	20170910164019	\N			-				--	--	\N	茨城県	\N
17000209	Ｓｍｉｌｅ 　Ｃａｆｅプチ　アミール	スマイルカフェプチ　アミール	\N	\N	\N	1	65535	\N	\N	\N	\N	久保	正則	307-0007	結城市小田林	2520-31		0296-54-5777	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910131940	20171108130006	\N			-				--	--	\N	茨城県	\N
17000210	体の中から元気になる会	カラダノナカカラゲンキニナルカイ	\N	\N	\N	2	65535	\N	\N	\N	\N	以登田	晴美	323-0811	小山市	犬塚51-67		090-4740-6531	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603134319	\N	\N			-				--	--	\N	茨城県	\N
17000212	古河市立三和東中学校	コガシリツサンワヒガシチュウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	永藤	梢	306-0101	古河市	尾崎4515		0280-76-7676	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608164235	\N	\N			-				--	--	\N	茨城県	\N
17000213	日本ベーリンガーインゲルハイム（株）	ニホンベーリンガーインゲルハイム（カ	\N	\N	\N	4	65535	\N	\N	\N	\N	奥津	和樹	305-0032	つくば市竹園	１-６-１　10階		070-3547-4778	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910130944	\N	\N			-				--	--	\N	茨城県	\N
17000214	在宅介護相談センターヒューマン・ハウス	ザイタクカイゴソウダンセンターヒューマン・ハウス	\N	\N	\N	1	65535	\N	\N	\N	\N	江面	満	307-0001	結城市	結城１０７６７－２４		0296-32-1890	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611144707	20171110141700	\N			-				--	--	\N	茨城県	\N
17000215	茨城県立伊奈高等学校	イバラキケンリツイナコウトウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	神保	星	300-2341	つくばみらい市	福田711		0297-58-6175	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611102218	20171106164309	\N			-				--	--	\N	茨城県	\N
17000216	県西地区PTA連絡協議会	ケンセイチクピーティーエーレンラクキョウギカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	斉藤	裕光	308-0843	筑西市野殿	1371		0296-21-1155	\N	\N		1	1	20170918	99991231	0	\N	\N	\N	across	20170918164929	\N	\N			-				--	--	\N	茨城県	\N
17000217	古河市立総和中学校	コガシリツソウワチュウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	渋谷	雅美	306-0226	古河市	女沼290-1		0280-92-0057	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609165548	20170910140040	\N			-				--	--	\N	茨城県	\N
17000218	斎藤寿子ピアノ教室	サイトウトシコピアノキョウシツ	\N	\N	\N	4	65535	\N	\N	\N	\N	斎藤	寿子	300-4422	桜川市	真壁町亀熊664		090-1600-7705	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603153819	\N	\N			-				--	--	\N	茨城県	\N
17000220	日立化成グループOB展	ヒタチカセイグループオービーテン	\N	\N	\N	4	65535	\N	\N	\N	\N	須藤	富雄	308-0847	筑西市	玉戸1602-94		090-7223-7685	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603111910	\N	\N			-				--	--	\N	茨城県	\N
17000224	和央会	ワオウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	生野	則子	307-0003	結城市	富士見町３－２－５		0296-33-3168	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603104013	\N	\N	生野	則子	307-0003	結城市	富士見町３－２－５		--	--	\N	茨城県	茨城県
17000222	（株）スタッフブレーン	カ）スタッフブレーン	\N	\N	\N	2	65535	\N	\N	\N	\N	小森	育夫	323-0807	小山市	城東2-19-13		0285-21-0211	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611100940	20170902145359	\N			-				--	--	\N	茨城県	\N
17000223	結城東水会	ユウキトウスイカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	中山	東水	307-0027	結城市	粕礼924-1		0296-47-5000	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603163333	\N	\N			-				--	--	\N	茨城県	\N
17000161	鈴木敏雄さくら歌謡教室	スズキトシオサクラカヨウキョウシツ	\N	\N	\N	4	65535	\N	\N	\N	\N	鈴木	敏雄	300-4534	筑西市	高津６１		0296-52-4324	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605120111	20171118111200	\N			-				--	--	\N	茨城県	\N
17000167	（株）とりせん	カ）トリセン	\N	\N	\N	4	65535	\N	\N	\N	\N	大住	孝仁	374-8512	群馬県館林市	下早川田町７００		0276-74-2121	\N	\N		1	1	20170902	99991231	0	\N	\N	\N	across	20170902145118	20171118161255	\N			-				--	--	\N	茨城県	\N
17000123	（株）ユキ	カ）ユキ	\N	\N	\N	4	65535	\N	\N	\N	\N	佐藤	文彦	453-0014	愛知県名古屋市	中村区則武１－３－８	野村新名古屋ビル５階	052-459-7030	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603125244	20171201164519	\N			-				--	--	f	茨城県	\N
17000006	Ｔｗｉｎｋｌｅ　Ｍｅｌｏｄｙ	ツインクル　メロディー	\N	\N	\N	2	65535	\N	\N	\N	\N	種市	恵美	323-0811	小山市	犬塚３２－１１０		0285-24-2590	\N	\N	（携帯)090-1553-8234	1	1	20170611	99991231	0	\N	\N	\N	across	20170611150308	20171110142720	\N			-				--	--	\N	栃木県	\N
17000007	（株）ヤマハミュージックリテイリング小山店	カ）ヤマハミュージックリテイリングオヤマテン	\N	\N	\N	2	65535	\N	\N	\N	\N	渡邉	洋一	323-0034	小山市	神鳥谷１－１－３６		0285-22-2493	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609165331	20171201160841	\N			-				--	--	f	栃木県	\N
17000009	座・ａｖａｎｔｉ	ザ・アバンティ	\N	\N	\N	1	65535	\N	\N	\N	\N	鳥居	礼子	307-0054	結城市	城南町１－１７－１		090-1657-4191	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603153430	20171125085656	\N			-				--	--	\N	茨城県	\N
17000012	小嶋誉志子	オジマヨシコ	\N	\N	\N	1	65535	\N	\N	\N	\N	小嶋	誉志子	307-0027	結城市	粕礼９８０		0296-35-3190	\N	\N		1	1	20171016	99991231	0	\N	\N	\N	across	20171016162944	20171110142359	\N			-				--	--	\N	茨城県	\N
17000016	結城市教育振興会	ユウキシキョウイクシンコウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	前場	文夫	307-0001	結城市	大字結城７４７３		0296-32-9997	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922132005	20171110143000	\N			-				--	--	\N	茨城県	\N
17000018	（一社）結城青年会議所	シヤ）ユウキセイネンカイギショ	\N	\N	\N	1	65535	\N	\N	\N	\N	石嶋	尚	307-0001	結城市	結城５３１		090-2329-2313	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910121051	20171202113104	\N			-				--	--	f	茨城県	\N
17000021	茨城県保育協議会	イバラキケンホイクキョウギカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	清水	敏孝	310-8586	水戸市	千波町１９１８	総合福祉会館内	029-243-4034	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611145415	20171110142625	\N			-				--	--	\N	茨城県	\N
17000023	（一社）茨城県自動車整備振興会	シャ）イバラキケンジドウシャセイビシンコウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	宮﨑	一雄	310-0844	水戸市	住吉町２９２－５		029-248-7000	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610133228	20171110142219	\N			-				--	--	\N	茨城県	\N
17000029	全国ふるさと歌謡協会	ゼンコクフルサトカヨウキョウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	飯泉	利明	308-0847	筑西市	玉戸１８１４		0296-28-4111	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603143359	20171109141023	\N			-				--	--	\N	茨城県	\N
17000030	ピアノ教室Ａｎｄａｎｔｅ	ピアノキョウシツアンダンテ	\N	\N	\N	4	65535	\N	\N	\N	\N	関	恵	308-0052	筑西市	菅谷３５－１８		090-2545-0737	\N	\N		1	1	20171021	99991231	0	\N	\N	\N	across	20171021183148	20171108141811	\N			-				--	--	\N	茨城県	\N
17000031	（公社）茨城県食品衛生協会	シャ）イバラキケンショクヒンエイセイキョウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	萩谷	寛	310-0852	水戸市	笠原町６００－４４		029-241-9511	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922145613	20171110143136	\N			-				--	--	\N	茨城県	\N
17000034	フルートアンサンブル	フルートアンサンブル	\N	\N	\N	1	65535	\N	\N	\N	\N	角田	雅則	307-0001	結城市	結城９９４４－２８		0296-33-5530	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610140428	20171110155514	\N			-				--	--	\N	茨城県	\N
17000036	結城市教育委員会生涯学習課	ユウキシキョウイクイインカイショウガイガクシュウカ	\N	\N	\N	1	65535	\N	\N	\N	\N	田中	真一	307-0001	結城市	結城７４７３		0296-32-1899	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603163112	20171201165036	\N			-				--	--	f	茨城県	\N
17000037	常総学院高等学校	ジョウソウガクインコウトウガッコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	片山	章	300-0849	土浦市	中村西根１０１０		029-842-8771	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611100128	20171118161019	\N			-				--	--	\N	茨城県	\N
17000038	（株）アイエムオープロモーション	カ）アイエムオープロモーション	\N	\N	\N	4	65535	\N	\N	\N	\N	小山	茂雄	330-0843	さいたま市大宮区吉敷町	1-133-1	３F	048-645-6529	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605104654	20170910143230	\N			-				--	--	\N	埼玉県	\N
17000039	田中歌謡教室	タナカカヨウキョウシツ	\N	\N	\N	2	65535	\N	\N	\N	\N	田中	照雄	323-0029	小山市	城北２－１７－５		090-3402-6951	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611150853	20171110151815	\N			-				--	--	\N	栃木県	\N
17000041	タテノ音楽教室	タテノオンガクキョウシツ	\N	\N	\N	4	65535	\N	\N	\N	\N	舘野	敬子	306-0126	古河市	諸川２５５７		0280-76-6616	\N	\N		1	1	20171021	99991231	0	\N	\N	\N	across	20171021191537	20171108141916	\N			-				--	--	\N	茨城県	\N
17000044	（弁）原田国際法律事務所	ベン）ハラダコクサイホウリツジムショ	\N	\N	\N	4	65535	\N	\N	\N	\N	原田	義昭	105-0021	港区	東新橋１－３－５　久田ビル７階		03-6252-3266	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603110826	20171108140650	\N			-				--	--	\N	東京都	\N
17000045	柊幼稚園・柊保育園	ヒイラギヨウチエン・ヒイラギホイクエン	\N	\N	\N	4	65535	\N	\N	\N	\N	増田	隆治	306-0112	古河市	東山田３		0280-77-0882	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922150832	20171113133501	\N			-				--	--	\N	茨城県	\N
17000046	フラワーアレンジメント華	フラワーアレンジメントハナ	\N	\N	\N	1	65535	\N	\N	\N	\N	長本	すみ子	307-0001	結城市	結城６４８９		0296-32-9150	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609161653	20171108135913	\N			-				--	--	\N	茨城県	\N
17000048	結城市教育委員会	ユウキシキョウイクイインカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	小林	仁	307-0001	結城市	大字結城７４７３		0296-32-1899	\N	\N		1	1	20171108	99991231	0	\N	\N	\N	across	20171108144032	\N	\N			-				--	--	\N	茨城県	\N
17000050	（公社）茨城県危険物安全協会連合会	シャ）イバラキケンキケンブツアンゼンキョウカイレンゴウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	幡谷	定俊	310-0852	水戸市笠原町	笠原町９７８－２６　	茨城県市町村会館	029-301-7878	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610131554	20171110140746	\N			-				--	--	\N	茨城県	\N
17000053	小山工業高等専門学校吹奏楽部	オヤマコウギョウコウトウセンモンガッコウスイソウガクブ	\N	\N	\N	2	65535	\N	\N	\N	\N	井上	一道	323-0806	小山市	大字中久喜７７１		0285-20-2260	\N	\N		1	1	20171118	99991231	0	\N	\N	\N	across	20171118160046	20171129165100	\N			-				090-1731-7822	--	f	栃木県	\N
17000054	青少年育成結城市民会議	セイショウネンイクセイユウキシミンカイギ	\N	\N	\N	1	65535	\N	\N	\N	\N	篠﨑	憲示	307-0001	結城市	結城７４７３		0296-32-1899	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605102916	20171201165756	\N			-				--	--	f	茨城県	\N
17000061	（株）あかまつ補聴器センター	カ）アカマツホチョウキセンター	\N	\N	\N	4	65535	\N	\N	\N	\N	赤松	邦弘	317-0063	日立市	若葉町１－１５－５		0294-23-0336	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607164046	20171130110940	\N			-				--	--	f	茨城県	\N
17000062	飯沼美由季	イイヌマミユキ	\N	\N	\N	1	65535	\N	\N	\N	\N	飯沼	美由季	307-0001	結城市	結城１７９		090-3808-1201	\N	\N		1	1	20171103	99991231	0	\N	\N	\N	across	20171103130533	20171110142820	\N			-				--	--	\N	茨城県	\N
17000063	コカリナ桑の実	コカリナクワノミ	\N	\N	\N	1	65535	\N	\N	\N	\N	片野	美智子	307-0015	結城市	鹿窪３５１－４		090-8947-1035	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603151550	20171117162824	\N			-				--	--	\N	茨城県	\N
17000064	城南ニューキッズ	ジョウナンニューキッズ	\N	\N	\N	1	65535	\N	\N	\N	\N	村田	輝彰	307-0001	結城市	結城７１８９－１０	リビングタウン結城Ａ１０２	0296-33-3987	\N	\N		1	1	20171125	99991231	0	\N	\N	\N	across	20171125132453	20171125132631	\N			-				--	--	\N	茨城県	\N
17000067	（株）ベルワールドミュージック	カ）ベルワールドミュージック	\N	\N	\N	4	65535	\N	\N	\N	\N	安田	豊	102-0082	千代田区	一番町６－１		03-3222-7801	\N	\N		1	1	20171118	99991231	0	\N	\N	\N	across	20171118163308	20171118163350	\N			-				--	--	\N	東京都	\N
17000068	（株）夢グループ	カ）ユメグループ	\N	\N	\N	4	65535	\N	\N	\N	\N	石田	重廣	112-0013	文京区	音羽2-10-2	５F	03-5395-7503	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608100137	20170608101114	\N			-				--	--	\N	東京都	\N
17000072	久保野谷友子	クボノヤトモコ	\N	\N	\N	1	65535	\N	\N	\N	\N	久保野谷	友子	307-0028	結城市	今宿１１３５－８		0296-35-2998	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611143939	20171110141249	\N			-				--	--	\N	茨城県	\N
17000073	下館税務署	シモダテゼイムショ	\N	\N	\N	4	65535	\N	\N	\N	\N	渡邊	勤	308-0031	筑西市	丙１１６－１６		0296-24-2121	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922151343	20171110151749	\N			-				--	--	\N	茨城県	\N
17000079	トルチュ	トルチュ	\N	\N	\N	1	65535	\N	\N	\N	\N	小林	克行	307-0007	結城市	小田林２１４６－２		0296-32-3902	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603113941	20171201165928	\N			-				--	--	f	茨城県	\N
17000086	茨城県吹奏楽連盟県西地区	イバラキケンスイソウガクレンメイケンセイチク	\N	\N	\N	4	65535	\N	\N	\N	\N	稲毛田	一輝	303-0003	常総市	水海道橋本町３５４９－４		0297-22-1330	\N	\N	（携帯）090-4719-6850	1	1	20170910	99991231	0	\N	\N	\N	across	20170910144825	20171110151704	\N			-				--	--	\N	茨城県	\N
17000088	みくに保育園	ミクニホイクエン	\N	\N	\N	1	65535	\N	\N	\N	\N	鈴木	龍穏	307-0001	結城市	結城３０７３		0296-33-5946	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611150517	20171110151615	\N			-				--	--	\N	茨城県	\N
17000092	結城市子ども会育成連合会	ユウキシコドモイクセイカイレンゴウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	國府田	敬一	307-0001	結城市	結城７４７３	駅前分庁舎３階	0296-32-1899	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603162413	20171127145533	\N			-				--	--	\N	茨城県	\N
17000094	（一財）民主音楽協会	ザイ）ミンシュオンガクキョウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	田代	嘉弘	160-8588	新宿区	信濃町８		03-5362-3455	\N	\N		1	1	20170918	99991231	0	\N	\N	\N	across	20170918170008	20171201164028	\N			-				--	--	f	東京都	\N
17000098	結城市文化協会	ユウキシブンカキョウカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	渡部	栄一	307-0001	結城市	結城７４７３		0296-32-1899	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922151752	20171108111834	\N			-				--	--	\N	茨城県	\N
17000100	茨城県立下館第一高等学校吹奏楽部	イバラキケンリツシモダテダイイチコウトウガッコウスイソウガクブ	\N	\N	\N	4	65535	\N	\N	\N	\N	小林	剛志	308-0825	筑西市	下中山５９０番地		0296-24-6344	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610141536	20171129164003	\N			-				090-4723-2096	--	f	茨城県	\N
17000103	手づくりコンサート実行委員会	テヅクリコンサートジッコウイインカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	恩田	正子	307-0001	結城市	結城１１８０３－１		0296-33-5702	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611141132	20171110141345	\N			-				--	--	\N	茨城県	\N
17000104	結城市教育研究会音楽教育研究部	ユウキシキョウイクケンキュウカイオンガクキョウイクケンキュウブ	\N	\N	\N	1	65535	\N	\N	\N	\N	安達	英明	307-0011	結城市	小森２２２７		0296-33-3214	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611145133	20171110142317	\N			-				--	--	\N	茨城県	\N
17000106	小山友の会結城支部	オヤマトモノカイユウキシブ	\N	\N	\N	1	65535	\N	\N	\N	\N	角田	ひろみ	307-0001	結城市	結城１１３６７－２		0296-33-2119	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922151614	20171110151855	\N			-				--	--	\N	茨城県	\N
17000111	ＮＰＯ法人ベル・サポート	エヌピーオーホウジンベル・サポート	\N	\N	\N	4	65535	\N	\N	\N	\N	菊地	長吉	306-0434	猿島郡境町	上小橋５４０		0280-87-7085	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610150207	20171129165426	\N			-				--	--	f	茨城県	\N
17000113	マイレイユーキ	マイレイユーキ	\N	\N	\N	1	65535	\N	\N	\N	\N	下条	なか子	307-0001	結城市	結城１１７４３－３８		0296-32-4480	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609161209	20171108135449	\N			-				--	--	\N	茨城県	\N
17000114	松永　美保子	マツナガ　ミホコ	\N	\N	\N	1	65535	\N	\N	\N	\N	松永	美保子	307-0001	結城市	結城６２４３－７		0296-32-3424	\N	\N	（携帯）090-8001-5891	1	1	20170605	99991231	0	\N	\N	\N	across	20170605100828	20171124124035	\N			-				--	--	\N	茨城県	\N
17000115	栃木県歌謡協会小山支部	トチギケンカヨウキョウカイオヤマシブ	\N	\N	\N	1	65535	\N	\N	\N	\N	中澤	英雄	307-0001	結城市	結城４６３－２		0296-33-3029	\N	\N		1	1	20170608	99991231	0	\N	\N	\N	across	20170608161020	20171202161716	\N			-				090-3402-0901	--	f	茨城県	\N
17000116	コール・リリー	コール・リリー	\N	\N	\N	1	65535	\N	\N	\N	\N	上野	訓子	307-0001	結城市	結城１６９４		0296-33-5030	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610142045	20171108135345	\N			-				--	--	\N	茨城県	\N
17000120	（医）大成会　武南病院附属クリニック	イ）タイセイカイ　ブナンビョウインフゾククリニック	\N	\N	\N	4	65535	\N	\N	\N	\N	長汐	美江子	334-0063	川口市東本郷	1432		048-282-8226	\N	\N		1	1	20170610	99991231	0	\N	\N	\N	across	20170610133959	\N	\N			-				--	--	\N	埼玉県	\N
17000124	かなくぼ保育園	カナクボホイクエン	\N	\N	\N	1	65535	\N	\N	\N	\N	荒井	幸恵	307-0015	結城市鹿窪	坂の上９４９		0296-32-7965	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611151428	20171109135203	\N			-				--	--	\N	茨城県	\N
17000129	つくば幼稚園・つくば保育園	ツクバヨウチエン・ツクバホイクエン	\N	\N	\N	1	65535	\N	\N	\N	\N	滝田	昌孝	307-0053	結城市	新福寺２丁目８番地７		0296-32-2346	\N	\N		1	1	20171019	99991231	0	\N	\N	\N	across	20171019195617	20171204160506	\N			-				--	--	f	茨城県	\N
17000133	きものサークル撫子	キモノサークルナデシコ	\N	\N	\N	4	65535	\N	\N	\N	\N	堀江	実和	329-0434	下野市	祇園２－１６－１	３－４１４	090-4363-0486	\N	\N		1	1	20171125	99991231	0	\N	\N	\N	across	20171125084515	\N	\N			-				--	--	\N	栃木県	\N
17000140	中山（株）	ナカヤマ（カ	\N	\N	\N	1	65535	\N	\N	\N	\N	中山	伸次郎	307-0001	結城市	小田林２５２０－１５		0296-32-1166	\N	\N		1	1	20170921	99991231	0	\N	\N	\N	across	20170921155039	20171110143025	\N			-				--	--	\N	茨城県	\N
17000142	（公財）結城市文化・スポーツ振興事業団	ザイ）ユウキシブンカ・スポーツシンコウジギョウダン	\N	\N	\N	1	65535	\N	\N	\N	\N	前場	文夫	307-0052	結城市	中央町二丁目２番地		0296-33-2001	\N	\N		1	1	20170902	99991231	0	\N	\N	\N	across	20170902133729	20171202161326	\N			-				--	--	t	茨城県	\N
17000150	（株）テンダーハウス	カ）テンダーハウス	\N	\N	\N	1	65535	\N	\N	\N	\N	山崎	仁史	309-1613	笠間市	石井１４０－７		0296-87-0037	\N	\N		1	1	20170605	99991231	0	\N	\N	\N	across	20170605120358	20171202153519	\N			-				--	--	f	茨城県	\N
17000152	アンサンブルまゆ	アンサンブルマユ	\N	\N	\N	1	65535	\N	\N	\N	\N	成田	弘子	307-0001	結城市	大字結城５８６０－２２		0296-32-0483	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603111147	20171108143738	\N			-				--	--	\N	茨城県	\N
17000153	元桜の会	モトザクラノカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	飯嶋	好夫	306-0123	古河市	五部４８６－１		0280-76-1144	\N	\N		1	1	20171019	99991231	0	\N	\N	\N	across	20171019201008	20171108135748	\N			-				--	--	\N	茨城県	\N
17000156	（株）アリノワ	カ）アリノワ	\N	\N	\N	4	65535	\N	\N	\N	\N	有吉	一正	321-0151	宇都宮市	西川田町１０３９－４９		028-645-6600	\N	\N		1	1	20171110	99991231	0	\N	\N	\N	across	20171110142102	\N	\N			-				--	--	\N	栃木県	\N
17000158	日本生命保険（相）小山支社	ニホンセイメイホケン（ソ）オヤマシシャ	\N	\N	\N	2	65535	\N	\N	\N	\N	深見	友紀子	323-0023	小山市	中央町２－１－１５		0285-23-6076	\N	\N		1	1	20171118	99991231	0	\N	\N	\N	across	20171118155227	\N	\N			-				--	--	\N	栃木県	\N
17000159	（医）進興会	イ）シンコウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	森山	紀之	105-0003	港区西新橋	2-39-3		03-5408-8181	\N	\N		1	1	20170609	99991231	0	\N	\N	\N	across	20170609171036	20170910144200	\N			-				--	--	\N	東京都	\N
17000162	（一社）労働保健協会	シヤ）ロウドウホケンキョウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	白川	毅	173-0027	板橋区	南町９－１１		03-3530-2132	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603164248	20171110142435	\N			-				--	--	\N	東京都	\N
17000172	（有）茨城映画センター	ユ）イバラキエイガセンター	\N	\N	\N	4	65535	\N	\N	\N	\N	本田	精一	310-0064	水戸市	栄町１－１０－１３		029-226-3156	\N	\N		1	1	20170607	99991231	0	\N	\N	\N	across	20170607163212	20171110143327	\N			-				--	--	\N	茨城県	\N
17000173	（公社）茨城県宅地建物取引業協会	シヤ）イバラキケンタクチタテモノトリヒキギョウキョウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	張替	武敏	310-0066	水戸市	金町３－１－３		029-225-5300	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910160212	20171201160712	\N			-				--	--	f	茨城県	\N
17000174	冨士大石寺顕正会	フジタイセキジケンショウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	石嶋	尚史	328-0027	栃木市	今泉町１－７－７		080-6526-5367	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603105719	20171108142112	\N			-				--	--	\N	栃木県	\N
17000176	元気寿司（株）	ゲンキズシ（カ	\N	\N	\N	4	65535	\N	\N	\N	\N	野水	寿	320-0811	宇都宮市	大通り２－１－５		0286-32-5711	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603135500	20171115200040	\N			-				--	--	\N	栃木県	\N
17000177	結城市民劇団「つむぎ」	ユウキシミンゲキダンツムギ	\N	\N	\N	1	65535	\N	\N	\N	\N	鈴木	林蔵	307-0001	結城市	結城９６１３－２２		0296-32-3570	\N	\N		1	1	20171019	99991231	0	\N	\N	\N	across	20171019192453	20171130111058	\N			-				090-2630-7384	--	f	茨城県	\N
17000178	（株）よしもとクリエイティブ・エージェンシー	カ）ヨシモトクリエイティブ・エージェンシー	\N	\N	\N	4	65535	\N	\N	\N	\N	藤原	寛	160-0022	新宿区	新宿５－１８－２１		03-3209-8255	\N	\N		1	1	20171021	99991231	0	\N	\N	\N	across	20171021182223	20171108141417	\N			-				--	--	\N	東京都	\N
17000179	結城市役所防災安全課	ユウキシヤクショボウサイアンゼンカ	\N	\N	\N	1	65535	\N	\N	\N	\N	瀬戸井	武志	307-8501	結城市	結城１４４７		0296-34-0411	\N	\N		1	1	20171016	99991231	0	\N	\N	\N	across	20171016161605	20171109140823	\N			-				--	--	\N	茨城県	\N
17000188	結城市建設（協組）	ユウキシケンセツキョウクミ	\N	\N	\N	1	65535	\N	\N	\N	\N	吉村	福市	307-0001	結城市	大字結城３１４９－２		0296-32-3017	\N	\N		1	1	20170922	99991231	0	\N	\N	\N	across	20170922150544	20171110143305	\N			-				--	--	\N	茨城県	\N
17000189	結城市役所土木課	ユウキシヤクショドボクカ	\N	\N	\N	1	65535	\N	\N	\N	\N	上野	敏明	307-0001	結城市	結城１４４７		0296-34-0426	\N	\N		1	1	20171016	99991231	0	\N	\N	\N	across	20171016163158	20171110142549	\N			-				--	--	\N	茨城県	\N
17000190	（株）関東補聴器	カ）カントウホチョウキ	\N	\N	\N	4	65535	\N	\N	\N	\N	宮本	紀宏	306-0013	古河市	東本町３－３－１２		0280-31-4914	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603164749	20171129164951	\N			-				--	--	f	茨城県	\N
17000194	結城市農業委員会	ユウキシノウギョウイインカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	松本	宜一郎	307-8501	結城市	大字結城１４４７		0296-32-1111	\N	\N		1	1	20171117	99991231	0	\N	\N	\N	across	20171117163130	\N	\N			-				--	--	\N	茨城県	\N
17000196	結城市役所市民活動支援センター	ユウキシヤクショシミンカツドウシエンセンター	\N	\N	\N	1	65535	\N	\N	\N	\N	森山	敏幸	307-0001	結城市	大字結城７４７３		0296-54-7008	\N	\N		1	1	20171109	99991231	0	\N	\N	\N	across	20171109150411	\N	\N			-				--	--	\N	茨城県	\N
17000197	真如苑	シンニョエン	\N	\N	\N	1	65535	\N	\N	\N	\N	秋田	宏枝	307-0001	結城市	大字結城８６５４－４		0296-32-5538	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910153527	20171129164208	\N			-				090-4826-5788	--	f	茨城県	\N
17000199	八千代ひかり幼稚園	ヤチヨヒカリヨウチエン	\N	\N	\N	4	65535	\N	\N	\N	\N	小川	敏雄	300-3504	結城郡八千代町	大字西大山６２８－１５		0296-48-2535	\N	\N		1	1	20171019	99991231	0	\N	\N	\N	across	20171019193536	20171113133325	\N			-				--	--	\N	茨城県	\N
17000203	（医）同友会	イ）ドウユウカイ	\N	\N	\N	4	65535	\N	\N	\N	\N	高谷	典秀	112-0002	文京区	小石川１－１２－１６		03-3816-0770	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611141805	20171110130950	\N			-				--	--	\N	東京都	\N
17000208	結城シルバー会員親睦会	ユウキシルバーカイインシンボクカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	吉田	俊彦	307-0001	結城市	結城３４４－５		0296-33-5905	\N	\N		1	1	20171117	99991231	0	\N	\N	\N	across	20171117162035	\N	\N			-				--	--	\N	茨城県	\N
17000211	（一財）茨城県交通安全協会結城地区	ザイ）イバラキケンコウツウアンゼンキョウカイユウキチク	\N	\N	\N	1	65535	\N	\N	\N	\N	曽雌	哲雄	307-0007	結城市	小田林１３１７－１		0296-33-4767	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603131032	20171113133552	\N			-				--	--	\N	茨城県	\N
17000219	つむぎの里ゆうき混声合唱団	ツムギノサトユウキコンセイガッショウダン	\N	\N	\N	1	65535	\N	\N	\N	\N	北川	進	307-0044	結城市	田間９９１－１６		0296-35-2236	\N	\N		1	1	20170603	99991231	0	\N	\N	\N	across	20170603130119	20171108135628	\N			-				--	--	\N	茨城県	\N
17000221	結城吹奏楽団	ユウキスイソウガクダン	\N	\N	\N	1	65535	\N	\N	\N	\N	上野	仁三郎	307-0001	結城市	結城８４７０－５		0296-32-5237	\N	\N		1	1	20171117	99991231	0	\N	\N	\N	across	20171117163549	20171117163621	\N			-				--	--	\N	茨城県	\N
17000225	玉岡尭舜認定こども園	タマオカギョウシュンニンテイコドモエン	\N	\N	\N	1	65535	\N	\N	\N	\N	大山	芳江	307-0001	結城市	結城１２０１８－１		0296-45-6363	\N	\N		1	1	20170611	99991231	0	\N	\N	\N	across	20170611151214	20171110141040	\N			-				--	--	\N	茨城県	\N
17000226	家庭倫理の会茨城西	カテイリンリノカイイバラキニシ	\N	\N	\N	1	65535	\N	\N	\N	\N	細川	悦子	307-0001	結城市	結城７３５９－３		090-4056-9577	\N	\N		1	1	20170910	99991231	0	\N	\N	\N	across	20170910131700	20171110143417	\N			-				--	--	\N	茨城県	\N
17000227	（株）茨城教弘	カ）イバラキキョウコウ	\N	\N	\N	4	65535	\N	\N	\N	\N	吉田	豊	310-0852	水戸市	笠原町９７８ー４６		029-301-8181	\N	\N		1	1	20171129	99991231	0	\N	\N	\N	across	20171129164816	20171129164856	\N			-				--	--	f	茨城県	\N
17000228	（株）ベスト	カ）ベスト	\N	\N	\N	1	65535	\N	\N	\N	\N	田邉	弘樹	307-0021	結城市	上山川２９８－５		090-3243-7280	\N	\N		1	1	20171129	99991231	0	\N	\N	\N	across	20171129165257	\N	\N			-				--	--	f	茨城県	\N
17000229	県西社会福祉士会	ケンセイシャカイフクシシカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	池羽	修一	307-0004	結城市	みどり町１－２－８		080-5431-8528	\N	\N		1	1	20171130	99991231	0	\N	\N	\N	across	20171130111726	20171130111808	\N			-				--	--	f	茨城県	\N
17000230	ＮＯＴＥーＦＡＮ　ＭＵＳＩＣ　ＳＴＵＤＩＯ	ノートファンミュージックスタジオ	\N	\N	\N	2	65535	\N	\N	\N	\N	若松	靖恵	323-0819	小山市	横倉新田２６６－９８		0285-28-6465	\N	\N		1	1	20171201	99991231	0	\N	\N	\N	across	20171201161822	\N	\N			-				--	--	f	栃木県	\N
17000231	茨城県高等学校文化連盟書道部	イバラキケンコウトウガッコウブンカレンメイショドウブ	\N	\N	\N	1	65535	\N	\N	\N	\N	岡野	久子	307-0001	結城市	結城１０７６		0296-33-2141	\N	\N		1	1	20171201	99991231	0	\N	\N	\N	across	20171201162815	20171201162930	\N			-				--	--	f	茨城県	\N
17000232	実樹の会	ミキノカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	石崎	有美	307-0037	結城市	東茂呂２７５－１		0296-35-1014	\N	\N		1	1	20171201	99991231	0	\N	\N	\N	across	20171201163332	\N	\N			-				080-5425-9143	--	f	茨城県	\N
17000233	大関直子	オオゼキナオコ	\N	\N	\N	1	65535	\N	\N	\N	\N	大関	直子	307-0001	結城市	大字結城１４８－２		090-2552-4314	\N	\N		1	1	20171201	99991231	0	\N	\N	\N	across	20171201163814	20171202165110	\N			-				--	--	f	茨城県	\N
17000234	結城市手をつなぐ育成会	ユウキシテヲツナグイクセイカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	杉山	由紀江	307-0044	結城市	大字田間１４２１番地		0292-35-0109	\N	\N		1	1	20171201	99991231	0	\N	\N	\N	across	20171201164828	20171201164905	\N			-				--	--	f	茨城県	\N
17000235	あすなろ保育園	アスナロホイクエン	\N	\N	\N	1	65535	\N	\N	\N	\N	落合	由美子	307-0001	結城市	結城１１７２３－３		0296-32-7397	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202152010	20171202152054	\N			-				--	--	f	茨城県	\N
17000236	あかつか音楽教室	アカツカオンガクキョウシツ	\N	\N	\N	4	65535	\N	\N	\N	\N	赤塚	千夏	300-3519	結城郡八千代町	新井４０５ー１		0296-49-2873	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202153414	\N	\N			-				090-9961-9147	--	f	茨城県	\N
17000237	結城市在宅介護相談センターたけだ	ユウキシザイタクカイゴソウダンセンタータケダ	\N	\N	\N	1	65535	\N	\N	\N	\N	髙橋	史創	307-0001	結城市	結城１２７４４		0296-33-2530	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202153812	\N	\N			-				--	--	f	茨城県	\N
17000238	結城市交通安全母の会	ユウキシコウツウアンゼンハハノカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	伊藤	孝子	307-0001	結城市	結城１４４７		0296-34-0411	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202155639	\N	\N			-				--	--	f	茨城県	\N
17000239	結城市役所税務課	ユウキシヤクショゼイムカ	\N	\N	\N	1	65535	\N	\N	\N	\N	大森	加代子	307-8501	結城市	大字結城１４４７		0296-32-1111	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202155848	\N	\N			-				--	--	f	茨城県	\N
17000240	紅林泰子	クレバヤシヤスコ	\N	\N	\N	4	65535	\N	\N	\N	\N	紅林	泰子	308-0841	筑西市	二木成１３２８		0296-22-7292	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202160121	\N	\N			-				--	--	f	茨城県	\N
17000241	（株）進駸堂楽器	カ）シンシンドウガッキ	\N	\N	\N	2	65535	\N	\N	\N	\N	坂田	肇	323-0829	小山市	東城南４－３１－６		0285-37-8001	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202160839	\N	\N			-				--	--	f	栃木県	\N
17000242	いばらき県西ハワイアンフェスティバル	イバラキケンセイハワイアンフェスティバル	\N	\N	\N	1	65535	\N	\N	\N	\N	稲葉	真二	307-0052	結城市	中央町１－７－９		0296-33-4448	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202161922	\N	\N			-				--	--	f	茨城県	\N
17000243	（株）小泉東関東　下館（営）	カ）コイズミヒガシカントウ　シモダテ（エイ	\N	\N	\N	4	65535	\N	\N	\N	\N	野中	利行	308-0053	筑西市	外塚７７８		0296-20-1311	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202164152	\N	\N			-				--	--	f	茨城県	\N
17000244	ＮＡＯＭＩピアノ教室	ナオミピアノキョウシツ	\N	\N	\N	1	65535	\N	\N	\N	\N	齊藤	尚美	307-0011	結城市	小森１８３１－１		080-3471-1831	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202164442	\N	\N			-				--	--	f	茨城県	\N
17000245	結城ＷＥＳＴ	ユウキウエスト	\N	\N	\N	1	65535	\N	\N	\N	\N	関	倫昭	307-0001	結城市	結城９９４６－２１４		090-1432-4748	\N	\N		1	1	20171202	99991231	0	\N	\N	\N	across	20171202170103	\N	\N			-				--	--	f	茨城県	\N
17000246	茨城県歯科医師会	イバラキケンシカイシカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	三木	次郎	307-0015	結城市	鹿窪１３０５-９９		0296-32-8118	\N	\N		1	1	20171204	99991231	0	\N	\N	\N	across	20171204160722	\N	\N			-				--	--	f	茨城県	\N
17000247	ダンススタジオエール	ダンススタジオエール	\N	\N	\N	4	65535	\N	\N	\N	\N	岩佐	忠輔	306-0011	古河市	東１-５-６		0280-23-1613	\N	\N		1	1	20171204	99991231	0	\N	\N	\N	admin	20171204161008	20171205134311	\N			-				--	--	f	茨城県	
17000248	（協組）結城専門店会	キョウクミユウキセンモンテンカイ	\N	\N	\N	1	65535	\N	\N	\N	\N	初美	寿秋	307-0001	結城市	大字結城５３１		0296-33-3234	\N	\N		1	1	20171206	99991231	0	\N	\N	\N	across	20171206142725	20171206142935	\N			-				--	--	f	茨城県	
\.


--
-- TOC entry 2534 (class 0 OID 0)
-- Dependencies: 188
-- Name: m_calculation_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('m_calculation_table_id_seq', 2, true);


--
-- TOC entry 2535 (class 0 OID 0)
-- Dependencies: 215
-- Name: t_receipt_fixtures_c_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_receipt_fixtures_c_id_seq', 26, true);


--
-- TOC entry 2536 (class 0 OID 0)
-- Dependencies: 222
-- Name: t_reserve_base_rb_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_reserve_base_rb_id_seq', 1260, true);


--
-- TOC entry 2537 (class 0 OID 0)
-- Dependencies: 225
-- Name: t_reserve_dayly_rd_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_reserve_dayly_rd_id_seq', 3755, true);


--
-- TOC entry 2538 (class 0 OID 0)
-- Dependencies: 227
-- Name: t_reserve_detail_r_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_reserve_detail_r_id_seq', 5683, true);


--
-- TOC entry 2539 (class 0 OID 0)
-- Dependencies: 229
-- Name: t_reserve_fixtures_fixtures_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('t_reserve_fixtures_fixtures_seq', 1, false);


--
-- TOC entry 2217 (class 2606 OID 16572)
-- Name: m_assortment M_ASSORTMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_assortment
    ADD CONSTRAINT "M_ASSORTMENT_pkey" PRIMARY KEY (assortment);


--
-- TOC entry 2219 (class 2606 OID 16574)
-- Name: m_attribute M_ATTRIBUTE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_attribute
    ADD CONSTRAINT "M_ATTRIBUTE_pkey" PRIMARY KEY (attribute);


--
-- TOC entry 2223 (class 2606 OID 16576)
-- Name: m_entry M_ENTRY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_entry
    ADD CONSTRAINT "M_ENTRY_pkey" PRIMARY KEY (entry);


--
-- TOC entry 2225 (class 2606 OID 16578)
-- Name: m_facility M_FACILITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_facility
    ADD CONSTRAINT "M_FACILITY_pkey" PRIMARY KEY (i_id, f_id);


--
-- TOC entry 2231 (class 2606 OID 16580)
-- Name: m_frame M_FRAME_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_frame
    ADD CONSTRAINT "M_FRAME_pkey" PRIMARY KEY (i_id, pattern, frame);


--
-- TOC entry 2233 (class 2606 OID 16582)
-- Name: m_group M_GROUP_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_group
    ADD CONSTRAINT "M_GROUP_pkey" PRIMARY KEY (igroup);


--
-- TOC entry 2235 (class 2606 OID 16584)
-- Name: m_institution M_INSTITUTION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_institution
    ADD CONSTRAINT "M_INSTITUTION_pkey" PRIMARY KEY (i_id);


--
-- TOC entry 2237 (class 2606 OID 16586)
-- Name: m_partition M_PARTITION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_partition
    ADD CONSTRAINT "M_PARTITION_pkey" PRIMARY KEY (i_id, f_id, partition);


--
-- TOC entry 2239 (class 2606 OID 16588)
-- Name: m_pattern M_PATTERN_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_pattern
    ADD CONSTRAINT "M_PATTERN_pkey" PRIMARY KEY (i_id, pattern);


--
-- TOC entry 2243 (class 2606 OID 16590)
-- Name: m_reduction M_REDUCTION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_reduction
    ADD CONSTRAINT "M_REDUCTION_pkey" PRIMARY KEY (i_id, f_id, reduction, manage);


--
-- TOC entry 2245 (class 2606 OID 16592)
-- Name: m_special M_SPECIAL_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_special
    ADD CONSTRAINT "M_SPECIAL_pkey" PRIMARY KEY (special);


--
-- TOC entry 2247 (class 2606 OID 16594)
-- Name: m_times M_TIMES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_times
    ADD CONSTRAINT "M_TIMES_pkey" PRIMARY KEY (i_id, f_id, manage);


--
-- TOC entry 2253 (class 2606 OID 16596)
-- Name: t_charge_apply T_CHARGE_APPLY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_charge_apply
    ADD CONSTRAINT "T_CHARGE_APPLY_pkey" PRIMARY KEY (i_id, f_id, apply_id);


--
-- TOC entry 2255 (class 2606 OID 16598)
-- Name: t_charge_plus T_CHARGE_PLUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_charge_plus
    ADD CONSTRAINT "T_CHARGE_PLUS_pkey" PRIMARY KEY (i_id, f_id, apply_id, plus_kind);


--
-- TOC entry 2251 (class 2606 OID 16600)
-- Name: t_charge T_CHARGE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_charge
    ADD CONSTRAINT "T_CHARGE_pkey" PRIMARY KEY (i_id, f_id, apply_id, charge_id);


--
-- TOC entry 2257 (class 2606 OID 16602)
-- Name: t_closed T_CLOSED_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_closed
    ADD CONSTRAINT "T_CLOSED_pkey" PRIMARY KEY (i_id, f_id, closed_month);


--
-- TOC entry 2259 (class 2606 OID 16604)
-- Name: t_failed T_FAILED_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_failed
    ADD CONSTRAINT "T_FAILED_pkey" PRIMARY KEY (i_id, f_id, failed_date);


--
-- TOC entry 2261 (class 2606 OID 16606)
-- Name: t_holiday T_HOLIDAY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_holiday
    ADD CONSTRAINT "T_HOLIDAY_pkey" PRIMARY KEY (holiday_year);


--
-- TOC entry 2265 (class 2606 OID 16608)
-- Name: t_manage T_MANAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_manage
    ADD CONSTRAINT "T_MANAGE_pkey" PRIMARY KEY (m_id);


--
-- TOC entry 2301 (class 2606 OID 16610)
-- Name: t_system_info T_SYSTEM_INFO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_system_info
    ADD CONSTRAINT "T_SYSTEM_INFO_pkey" PRIMARY KEY (info);


--
-- TOC entry 2303 (class 2606 OID 16612)
-- Name: t_user T_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_user
    ADD CONSTRAINT "T_USER_pkey" PRIMARY KEY (u_id);


--
-- TOC entry 2221 (class 2606 OID 16614)
-- Name: m_calculation_table m_calculation_table_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_calculation_table
    ADD CONSTRAINT m_calculation_table_pkey PRIMARY KEY (id);


--
-- TOC entry 2227 (class 2606 OID 16616)
-- Name: m_fixtures m_fixtures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_fixtures
    ADD CONSTRAINT m_fixtures_pkey PRIMARY KEY (fixtures, i_id, f_id, type);


--
-- TOC entry 2229 (class 2606 OID 16618)
-- Name: m_fixtures_type m_fixtures_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_fixtures_type
    ADD CONSTRAINT m_fixtures_type_pkey PRIMARY KEY (type);


--
-- TOC entry 2241 (class 2606 OID 16620)
-- Name: m_purpose m_purpose_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_purpose
    ADD CONSTRAINT m_purpose_pkey PRIMARY KEY (i_id, f_id, purpose);


--
-- TOC entry 2249 (class 2606 OID 16622)
-- Name: sysdiagrams sysdiagrams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sysdiagrams
    ADD CONSTRAINT sysdiagrams_pkey PRIMARY KEY (diagram_id);


--
-- TOC entry 2263 (class 2606 OID 16624)
-- Name: t_license_id t_license_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_license_id
    ADD CONSTRAINT t_license_id_pkey PRIMARY KEY (year);


--
-- TOC entry 2267 (class 2606 OID 16626)
-- Name: t_receipt_charge t_receipt_charge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_charge
    ADD CONSTRAINT t_receipt_charge_pkey PRIMARY KEY (c_id, rp_id, history);


--
-- TOC entry 2269 (class 2606 OID 16628)
-- Name: t_receipt_connect t_receipt_connect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_connect
    ADD CONSTRAINT t_receipt_connect_pkey PRIMARY KEY (c_id, rp_id, charge_career);


--
-- TOC entry 2273 (class 2606 OID 16630)
-- Name: t_receipt_fixtures_charge t_receipt_fixtures_charge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_fixtures_charge
    ADD CONSTRAINT t_receipt_fixtures_charge_pkey PRIMARY KEY (c_id, fixtures, apply_id);


--
-- TOC entry 2275 (class 2606 OID 16632)
-- Name: t_receipt_fixtures_note t_receipt_fixtures_note_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_fixtures_note
    ADD CONSTRAINT t_receipt_fixtures_note_pkey PRIMARY KEY (c_id);


--
-- TOC entry 2271 (class 2606 OID 16634)
-- Name: t_receipt_fixtures t_receipt_fixtures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_fixtures
    ADD CONSTRAINT t_receipt_fixtures_pkey PRIMARY KEY (c_id);


--
-- TOC entry 2277 (class 2606 OID 16636)
-- Name: t_receipt_note t_receipt_note_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_note
    ADD CONSTRAINT t_receipt_note_pkey PRIMARY KEY (c_id);


--
-- TOC entry 2279 (class 2606 OID 16638)
-- Name: t_receipt_payment t_receipt_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_payment
    ADD CONSTRAINT t_receipt_payment_pkey PRIMARY KEY (c_id);


--
-- TOC entry 2281 (class 2606 OID 16640)
-- Name: t_receipt_reserve t_receipt_reserve_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_reserve
    ADD CONSTRAINT t_receipt_reserve_pkey PRIMARY KEY (c_id, rp_id, history);


--
-- TOC entry 2283 (class 2606 OID 16642)
-- Name: t_reserve_base t_reserve_base_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_base
    ADD CONSTRAINT t_reserve_base_pkey PRIMARY KEY (rb_id);


--
-- TOC entry 2285 (class 2606 OID 16644)
-- Name: t_reserve_charge t_reserve_charge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_charge
    ADD CONSTRAINT t_reserve_charge_pkey PRIMARY KEY (rp_id);


--
-- TOC entry 2287 (class 2606 OID 16646)
-- Name: t_reserve_dayly t_reserve_dayly_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_dayly
    ADD CONSTRAINT t_reserve_dayly_pkey PRIMARY KEY (rd_id);


--
-- TOC entry 2289 (class 2606 OID 16648)
-- Name: t_reserve_detail t_reserve_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_detail
    ADD CONSTRAINT t_reserve_detail_pkey PRIMARY KEY (r_id);


--
-- TOC entry 2291 (class 2606 OID 16650)
-- Name: t_reserve_fixtures t_reserve_fixtures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_fixtures
    ADD CONSTRAINT t_reserve_fixtures_pkey PRIMARY KEY (fixtures);


--
-- TOC entry 2293 (class 2606 OID 16652)
-- Name: t_reserve_id t_reserve_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_id
    ADD CONSTRAINT t_reserve_id_pkey PRIMARY KEY (year);


--
-- TOC entry 2295 (class 2606 OID 16654)
-- Name: t_reserve_open_and_start t_reserve_open_and_start_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_open_and_start
    ADD CONSTRAINT t_reserve_open_and_start_pkey PRIMARY KEY (rp_id, no);


--
-- TOC entry 2297 (class 2606 OID 16656)
-- Name: t_reserve_parent t_reserve_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_parent
    ADD CONSTRAINT t_reserve_parent_pkey PRIMARY KEY (rp_id);


--
-- TOC entry 2299 (class 2606 OID 16658)
-- Name: t_reserve_partition t_reserve_partition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_partition
    ADD CONSTRAINT t_reserve_partition_pkey PRIMARY KEY (r_id, p_no);


--
-- TOC entry 2304 (class 2606 OID 16659)
-- Name: m_fixtures m_fixtures_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_fixtures
    ADD CONSTRAINT m_fixtures_type_fkey FOREIGN KEY (type) REFERENCES m_fixtures_type(type) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2305 (class 2606 OID 16664)
-- Name: t_receipt_fixtures_charge t_receipt_fixtures_charge_c_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_receipt_fixtures_charge
    ADD CONSTRAINT t_receipt_fixtures_charge_c_id_fkey FOREIGN KEY (c_id) REFERENCES t_receipt_fixtures(c_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2306 (class 2606 OID 16669)
-- Name: t_reserve_base t_reserve_base_rp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_base
    ADD CONSTRAINT t_reserve_base_rp_id_fkey FOREIGN KEY (rp_id) REFERENCES t_reserve_parent(rp_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2307 (class 2606 OID 16674)
-- Name: t_reserve_charge t_reserve_charge_rp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_charge
    ADD CONSTRAINT t_reserve_charge_rp_id_fkey FOREIGN KEY (rp_id) REFERENCES t_reserve_parent(rp_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2308 (class 2606 OID 16679)
-- Name: t_reserve_dayly t_reserve_dayly_rb_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_dayly
    ADD CONSTRAINT t_reserve_dayly_rb_id_fkey FOREIGN KEY (rb_id) REFERENCES t_reserve_base(rb_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2309 (class 2606 OID 16684)
-- Name: t_reserve_detail t_reserve_detail_rb_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_detail
    ADD CONSTRAINT t_reserve_detail_rb_id_fkey FOREIGN KEY (rb_id) REFERENCES t_reserve_base(rb_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2310 (class 2606 OID 16689)
-- Name: t_reserve_fixtures t_reserve_fixtures_rp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_fixtures
    ADD CONSTRAINT t_reserve_fixtures_rp_id_fkey FOREIGN KEY (rp_id) REFERENCES t_reserve_parent(rp_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2311 (class 2606 OID 16694)
-- Name: t_reserve_open_and_start t_reserve_open_and_start_rp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_open_and_start
    ADD CONSTRAINT t_reserve_open_and_start_rp_id_fkey FOREIGN KEY (rp_id) REFERENCES t_reserve_parent(rp_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2312 (class 2606 OID 16699)
-- Name: t_reserve_partition t_reserve_partition_r_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY t_reserve_partition
    ADD CONSTRAINT t_reserve_partition_r_id_fkey FOREIGN KEY (r_id) REFERENCES t_reserve_detail(r_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2018-01-25 23:19:52 JST

--
-- PostgreSQL database dump complete
--

