

CREATE TABLE zaposlenik (
    zaposlenik_id           INTEGER             NOT NULL,
    ime                     VARCHAR(40)         NOT NULL,
    srednje_ime             VARCHAR(40)         DEFAULT '@' NOT NULL,
    prezime                 VARCHAR(40)         NOT NULL,
    --status                INTEGER             NOT NULL,
    datum_zap               DATE                NOT NULL,
    jmbg                    INTEGER             NOT NULL,
    CONSTRAINT ZAP_PK PRIMARY KEY (zaposlenik_id) USING INDEX
)
/


CREATE TABLE radni_status_tip (
    radni_status_tip_id     INTEGER             NOT NULL,
    naziv                   VARCHAR(20)         NOT NULL,
    opis_radnog_mjesta      CLOB                DEFAULT '@' NOT NULL,
    CONSTRAINT RAD_STAT_TIP_PK PRIMARY KEY (radni_status_tip_id) USING INDEX
)
/

CREATE TABLE radni_status (
    status_id               INTEGER             NOT NULL,
    zaposlenik_id           INTEGER             NOT NULL,
    datum_pocetka           DATE                NOT NULL,
    datum_kraja             DATE                DEFAULT TO_DATE('01.01.0001','DD.MM.YYYY') NOT NULL,
    biljeske                CLOB                DEFAULT '@' NOT NULL,
    satnica                 NUMERIC(8,2)        NOT NULL,
    tjednisati              INTEGER             NOT NULL,
    radni_status_tip_id     INTEGER             NOT NULL,
    CONSTRAINT RAD_ST_PK PRIMARY KEY (status_id) USING INDEX,
    CONSTRAINT RAD_ST_ZAP_FK FOREIGN KEY (zaposlenik_id) REFERENCES zaposlenik (zaposlenik_id),
    CONSTRAINT RAD_ST_TIP_FK FOREIGN KEY (radni_status_tip_id) REFERENCES radni_status_tip (radni_status_tip_id)
)
/


CREATE TABLE odsutnost_tip(
    odsutnost_tip_id        INTEGER             NOT NULL,
    naziv                   VARCHAR(40)         NOT NULL,
    primanje_place          NUMBER(1,0)             NOT NULL,
    opis                    CLOB                DEFAULT '@' NOT NULL,
    CONSTRAINT ODS_TIP_PK PRIMARY KEY (odsutnost_tip_id) USING INDEX
)
/

CREATE TABLE zaposlenici_odsutnost(
    odsutnost_id            INTEGER             NOT NULL,
    zaposlenik_id           INTEGER             NOT NULL,
    odsutnost_tip_id        INTEGER             NOT NULL,
    datum_pocetka           DATE                NOT NULL,
    datum_kraja             DATE                DEFAULT TO_DATE('01.01.0001','DD.MM.YYYY') NOT NULL,
    biljeske                CLOB                DEFAULT '@' NOT NULL,
    CONSTRAINT ZAP_ODS_PK PRIMARY KEY (odsutnost_id) USING INDEX,
    CONSTRAINT ZAP_ODS_ZAP_FK FOREIGN KEY (zaposlenik_id) REFERENCES zaposlenik (zaposlenik_id),
    CONSTRAINT ZAP_ODS_TIP_FK FOREIGN KEY (odsutnost_tip_id) REFERENCES odsutnost_tip (odsutnost_tip_id)
)
/





CREATE TABLE zaposlenici_dolazak(
    zaposlenik_id           INTEGER             NOT NULL ,
    datum                   DATE                NOT NULL ,
    datum_dolaska           DATE                DEFAULT TO_DATE('01.01.0001','DD.MM.YYYY') NOT NULL ,
    datum_odlaska           DATE                DEFAULT TO_DATE('02.01.0001','DD.MM.YYYY') NOT NULL ,
    CONSTRAINT ZAP_DOL_PK PRIMARY KEY (zaposlenik_id, datum) USING INDEX
)
/

-------------------------------------------------------------------------------

INSERT INTO zaposlenik (zaposlenik_id, ime, prezime,datum_zap,jmbg)
    values (1,'Mirko1','Mirkec1',TO_DATE('01.01.2008','DD.MM.YYYY'),1)/

INSERT INTO zaposlenik (zaposlenik_id, ime, prezime,datum_zap,jmbg)
    values (2,'Mirko2','Mirkec2',TO_DATE('02.01.2008','DD.MM.YYYY'),2)/

INSERT INTO zaposlenik (zaposlenik_id, ime, prezime,datum_zap,jmbg)
    values (3,'Mirko3','Mirkec3',TO_DATE('03.01.2008','DD.MM.YYYY'),3)/

INSERT INTO zaposlenik (zaposlenik_id, ime, prezime,datum_zap,jmbg)
    values (4,'Mirko4','Mirkec4',TO_DATE('04.01.2008','DD.MM.YYYY'),4)/

INSERT INTO zaposlenik (zaposlenik_id, ime, prezime,datum_zap,jmbg)
    values (5,'Mirko5','Mirkec5',TO_DATE('05.01.2008','DD.MM.YYYY'),5)/

INSERT INTO zaposlenik (zaposlenik_id, ime, prezime,datum_zap,jmbg)
    values (6,'Mirko6','Mirkec6',TO_DATE('06.01.2008','DD.MM.YYYY'),6)/

-------------------------------------------------------------------------------------

INSERT INTO radni_status_tip (radni_status_tip_id,naziv)
    VALUES (1,'vođa_odjela')/

INSERT INTO radni_status_tip (radni_status_tip_id,naziv)
    VALUES (2,'doktor')/

INSERT INTO radni_status_tip (radni_status_tip_id,naziv)
    VALUES (3,'računovođa')/

INSERT INTO radni_status_tip (radni_status_tip_id,naziv)
    VALUES (4,'čistač')/

INSERT INTO radni_status_tip (radni_status_tip_id,naziv)
    VALUES (5,'neodređen')/

-------------------------------------------------------------------------------------

INSERT INTO radni_status (status_id, zaposlenik_id, datum_pocetka, satnica, tjednisati, radni_status_tip_id)
    VALUES (8,1,TO_DATE('02.01.2008','DD.MM.YYYY'),28.1,30,4)/

INSERT INTO radni_status (status_id, zaposlenik_id, datum_pocetka, satnica, tjednisati, radni_status_tip_id)
    VALUES (9,2,TO_DATE('03.01.2008','DD.MM.YYYY'),25.6,28,3)/

INSERT INTO radni_status (status_id, zaposlenik_id, datum_pocetka, satnica, tjednisati, radni_status_tip_id)
    VALUES (10,3,TO_DATE('04.01.2008','DD.MM.YYYY'),25.6,32,2)/

INSERT INTO radni_status (status_id, zaposlenik_id, datum_pocetka, satnica, tjednisati, radni_status_tip_id)
    VALUES (11,4,TO_DATE('05.01.2008','DD.MM.YYYY'),46.7,42,1)/

INSERT INTO radni_status (status_id, zaposlenik_id, datum_pocetka, satnica, tjednisati, radni_status_tip_id)
    VALUES (12,5,TO_DATE('06.01.2008','DD.MM.YYYY'),26.6,32,2)/

-------------------------------------------------------------------------------------

INSERT INTO odsutnost_tip (odsutnost_tip_id, naziv, primanje_place)
    VALUES (1,'slobodni dani',0)/

INSERT INTO odsutnost_tip (odsutnost_tip_id, naziv, primanje_place)
    VALUES (2,'godišnji odmor',1)/

-------------------------------------------------------------------------------------

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska,datum_odlaska)
    values (1,
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 14:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska,datum_odlaska)
    values (2,
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 14:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska,datum_odlaska)
    values (3,
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 14:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska,datum_odlaska)
    values (4,
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 14:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska,datum_odlaska)
    values (5,
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('01.02.2008 14:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

-------------------------------------------------------------------------------------

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska)
    values (1,
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska)
    values (2,
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska)
    values (3,
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska)
    values (4,
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'))/

INSERT INTO zaposlenici_dolazak (zaposlenik_id, datum, datum_dolaska,datum_odlaska)
    values (5,
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('02.02.2008 08:00:00', 'DD.MM.YYYY hh24:mi:ss'),
            TO_DATE('02.02.2008 14:00:00', 'DD.MM.YYYY hh24:mi:ss'))/


-------------------------------------------------------------------------------------


INSERT INTO zaposlenici_odsutnost (odsutnost_id, zaposlenik_id, odsutnost_tip_id, datum_pocetka, datum_kraja)
    VALUES (1,5,1,TO_DATE('03.02.2008','DD.MM.YYYY'),TO_DATE('05.02.2008','DD.MM.YYYY'))/

