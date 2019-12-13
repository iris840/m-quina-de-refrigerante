-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions
-- and other software and tools, and its AMPP partner logic
-- functions, and any output files from any of the foregoing
-- (including device programming or simulation files), and any
-- associated documentation or information are expressly subject
-- to the terms and conditions of the Altera Program License
-- Subscription Agreement, Altera MegaCore Function License
-- Agreement, or other applicable license agreement, including,
-- without limitation, that your use is for the sole purpose of
-- programming logic devices manufactured by Altera and sold by
-- Altera or its authorized distributors.  Please refer to the
-- applicable agreement for further details.

-- Generated by Quartus II Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition
-- Created on Tue Nov 26 10:02:57 2019

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        b1 : IN STD_LOGIC := '0';
        b2 : IN STD_LOGIC := '0';
        b3 : IN STD_LOGIC := '0';
        b4 : IN STD_LOGIC := '0';
        r1 : IN STD_LOGIC := '0';
        r2 : IN STD_LOGIC := '0';
        r3 : IN STD_LOGIC := '0';
        r4 : IN STD_LOGIC := '0';
        sr1 : IN STD_LOGIC := '0';
        sr2 : IN STD_LOGIC := '0';
        s1 : OUT STD_LOGIC;
        s2 : OUT STD_LOGIC;
        s3 : OUT STD_LOGIC;
        s4 : OUT STD_LOGIC;
        sr3 : OUT STD_LOGIC;
        ml1 : OUT STD_LOGIC;
        ml2 : OUT STD_LOGIC;
        ml3 : OUT STD_LOGIC;
        ml4 : OUT STD_LOGIC;
        md1 : OUT STD_LOGIC;
        md2 : OUT STD_LOGIC;
        md3 : OUT STD_LOGIC;
        md4 : OUT STD_LOGIC;
		  l1: OUT STD_LOGIC;
		  l2: OUT STD_LOGIC;
		  l3: OUT STD_LOGIC;
		  l4: OUT STD_LOGIC
    );
END mux;

ARCHITECTURE BEHAVIOR OF mux IS
    TYPE type_fstate IS (status1,status2,status3,status4,status5,status6,status7,status8,status9,status10,status11,status12,status14,status15,status16,status17,status18,status19,status20,status21,status22,status23,status24,status25,status26,status27,status28,status29,status30,status31,status32,status33,status34,status35,status36,status37,status38,status39);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='0' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,b1,b2,b3,b4,r1,r2,r3,r4,sr1,sr2)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= status1;
            s1 <= '0';
            s2 <= '0';
            s3 <= '0';
            s4 <= '0';
            sr3 <= '0';
            ml1 <= '0';
            ml2 <= '0';
            ml3 <= '0';
            ml4 <= '0';
            md1 <= '0';
            md2 <= '0';
            md3 <= '0';
            md4 <= '0';
        ELSE
            s1 <= '0';
            s2 <= '0';
            s3 <= '0';
            s4 <= '0';
            sr3 <= '0';
            ml1 <= '0';
            ml2 <= '0';
            ml3 <= '0';
            ml4 <= '0';
            md1 <= '0';
            md2 <= '0';
            md3 <= '0';
            md4 <= '0';
            CASE fstate IS
                WHEN status1 =>
                    IF ((((((b1 = '1') AND (r1 = '1')) AND ((b2 = '0'))) AND ((b3 = '0'))) AND ((b4 = '0')))) THEN
                        reg_fstate <= status2;
                    ELSIF ((((((b2 = '1') AND (r2 = '1')) AND ((b1 = '0'))) AND ((b3 = '0'))) AND ((b4 = '0')))) THEN
                        reg_fstate <= status9;
                    ELSIF ((((((b3 = '1') AND (r3 = '1')) AND ((b1 = '0'))) AND ((b2 = '0'))) AND ((b4 = '0')))) THEN
                        reg_fstate <= status19;
                    ELSIF ((((((b4 = '1') AND (r4 = '1')) AND ((b1 = '0'))) AND ((b2 = '0'))) AND ((b3 = '0')))) THEN
                        reg_fstate <= status30;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status1;
                    END IF;
                WHEN status2 => --REFRI 1
                    IF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status3;
                    ELSIF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status6;
                    ELSIF ((NOT((sr1 = '1')) AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status8;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status2;
                    END IF;
						  
                WHEN status3 =>
                    reg_fstate <= status4;
						  
                WHEN status4 =>
                    reg_fstate <= status5;

                    ml1 <= '1';

                    s1 <= '1';
						  
                WHEN status5 =>
                    reg_fstate <= status1;

                    md1 <= '1';
						  
                WHEN status6 =>
                    reg_fstate <= status7;
						  
                WHEN status7 =>
                    reg_fstate <= status4;

                    sr3 <= '1';
						  
                WHEN status8 =>
                    reg_fstate <= status1;
						  
                WHEN status9 => -- Refri 2
					 
                    IF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status10;
                    ELSIF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status11;
                    ELSIF ((NOT((sr1 = '1')) AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status18;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status9;
                    END IF;
                WHEN status10 =>
                    reg_fstate <= status16;
                WHEN status11 =>
                    IF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status14;
                    ELSIF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status12;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status11;
                    END IF;
                WHEN status12 =>
                    reg_fstate <= status16;
                WHEN status14 =>
                    reg_fstate <= status15;
                WHEN status15 =>
                    reg_fstate <= status16;

                    sr3 <= '1';
                WHEN status16 =>
                    reg_fstate <= status17;

                    ml2 <= '1';

                    s2 <= '1';
                WHEN status17 =>
                    reg_fstate <= status1;

                    md2 <= '1';
                WHEN status18 =>
                    reg_fstate <= status1;
						  
                WHEN status19 => --REFRI 3
                    IF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status20;
                    ELSIF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status24;
                    ELSIF ((NOT((sr1 = '1')) AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status29;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status19;
                    END IF;
                WHEN status20 =>
                    IF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status21;
                    ELSIF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status22;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status20;
                    END IF;
                WHEN status21 =>
                    reg_fstate <= status27;
                WHEN status22 =>
                    reg_fstate <= status23;
                WHEN status23 =>
                    reg_fstate <= status27;

                    sr3 <= '1';
                WHEN status24 =>
                    IF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status25;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status24;
                    END IF;
                WHEN status25 =>
                    IF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status26;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status25;
                    END IF;
                WHEN status26 =>
                    reg_fstate <= status27;
                WHEN status27 =>
                    reg_fstate <= status28;

                    ml3 <= '1';

                    s3 <= '1';
                WHEN status28 =>
                    reg_fstate <= status1;

                    md3 <= '1';
                WHEN status29 =>
                    reg_fstate <= status1;
                WHEN status30 => --REFRI 4
                    IF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status31;
                    ELSIF ((NOT((sr1 = '1')) AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status39;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status30;
                    END IF;
                WHEN status31 =>
                    IF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status32;
                    ELSIF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status35;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status31;
                    END IF;
                WHEN status32 =>
                    reg_fstate <= status33;
                WHEN status33 =>
                    reg_fstate <= status34;

                    ml4 <= '1';

                    s4 <= '1';
                WHEN status34 =>
                    reg_fstate <= status1;

                    md4 <= '1';

                    sr3 <= '1';
                WHEN status35 =>
                    IF (((sr2 = '1') AND NOT((sr1 = '1')))) THEN
                        reg_fstate <= status36;
                    ELSIF (((sr1 = '1') AND NOT((sr2 = '1')))) THEN
                        reg_fstate <= status37;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= status35;
                    END IF;
                WHEN status36 =>
                    reg_fstate <= status33;
                WHEN status37 =>
                    reg_fstate <= status38;
                WHEN status38 =>
                    reg_fstate <= status33;
                WHEN status39 =>
                    reg_fstate <= status1;
                WHEN OTHERS =>
                    s1 <= 'X';
                    s2 <= 'X';
                    s3 <= 'X';
                    s4 <= 'X';
                    sr3 <= 'X';
                    ml1 <= 'X';
                    ml2 <= 'X';
                    ml3 <= 'X';
                    ml4 <= 'X';
                    md1 <= 'X';
                    md2 <= 'X';
                    md3 <= 'X';
                    md4 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
	 
	 l1 <= not r1;
	 l2 <= not r2;
	 l3 <= not r3;
	 l4 <= not r4; 
	 
END BEHAVIOR;
