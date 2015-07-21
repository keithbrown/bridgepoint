-- BP 6.1D content: domain syschar: 3

INSERT INTO S_DOM
	VALUES (597699,
	'ex2',
	'This test deals with compund expressions (parenthisised and non-parenthisised) using:
    binary: +, -, *, /, %
    unary: +, -
    string: +
    boolean: and, or, not
    bridges
    functions
    operations	
    literlals
    locals
    attributes
    supplemental data
    parameters',
	0,
	1);
INSERT INTO S_CDT
	VALUES (524289,
	0);
INSERT INTO S_DT
	VALUES (524289,
	597699,
	'void',
	'');
INSERT INTO S_CDT
	VALUES (524290,
	1);
INSERT INTO S_DT
	VALUES (524290,
	597699,
	'boolean',
	'');
INSERT INTO S_CDT
	VALUES (524291,
	2);
INSERT INTO S_DT
	VALUES (524291,
	597699,
	'integer',
	'');
INSERT INTO S_CDT
	VALUES (524292,
	3);
INSERT INTO S_DT
	VALUES (524292,
	597699,
	'real',
	'');
INSERT INTO S_CDT
	VALUES (524293,
	4);
INSERT INTO S_DT
	VALUES (524293,
	597699,
	'string',
	'');
INSERT INTO S_CDT
	VALUES (524294,
	5);
INSERT INTO S_DT
	VALUES (524294,
	597699,
	'unique_id',
	'');
INSERT INTO S_CDT
	VALUES (524295,
	6);
INSERT INTO S_DT
	VALUES (524295,
	597699,
	'state<State_Model>',
	'');
INSERT INTO S_CDT
	VALUES (524296,
	7);
INSERT INTO S_DT
	VALUES (524296,
	597699,
	'same_as<Base_Attribute>',
	'');
INSERT INTO S_CDT
	VALUES (524297,
	8);
INSERT INTO S_DT
	VALUES (524297,
	597699,
	'inst_ref<Object>',
	'');
INSERT INTO S_CDT
	VALUES (524298,
	9);
INSERT INTO S_DT
	VALUES (524298,
	597699,
	'inst_ref_set<Object>',
	'');
INSERT INTO S_CDT
	VALUES (524299,
	10);
INSERT INTO S_DT
	VALUES (524299,
	597699,
	'inst<Event>',
	'');
INSERT INTO S_CDT
	VALUES (524300,
	11);
INSERT INTO S_DT
	VALUES (524300,
	597699,
	'inst<Mapping>',
	'');
INSERT INTO S_CDT
	VALUES (524301,
	12);
INSERT INTO S_DT
	VALUES (524301,
	597699,
	'inst_ref<Mapping>',
	'');
INSERT INTO S_UDT
	VALUES (524302,
	524300,
	1);
INSERT INTO S_DT
	VALUES (524302,
	597699,
	'date',
	'');
INSERT INTO S_UDT
	VALUES (524303,
	524300,
	2);
INSERT INTO S_DT
	VALUES (524303,
	597699,
	'timestamp',
	'');
INSERT INTO S_UDT
	VALUES (524304,
	524301,
	3);
INSERT INTO S_DT
	VALUES (524304,
	597699,
	'inst_ref<Timer>',
	'');
INSERT INTO S_EE
	VALUES (524289,
	'Logging',
	'',
	'LOG',
	597699);
INSERT INTO S_BRG
	VALUES (524289,
	524289,
	'LogSuccess',
	'',
	0,
	524289,
	'',
	1);
INSERT INTO S_BPARM
	VALUES (524289,
	524289,
	'message',
	524293,
	0);
INSERT INTO S_BRG
	VALUES (524290,
	524289,
	'LogFailure',
	'',
	0,
	524289,
	'',
	1);
INSERT INTO S_BPARM
	VALUES (524290,
	524290,
	'message',
	524293,
	0);
INSERT INTO S_BRG
	VALUES (524291,
	524289,
	'LogInfo',
	'',
	0,
	524289,
	'',
	1);
INSERT INTO S_BPARM
	VALUES (524291,
	524291,
	'message',
	524293,
	0);
INSERT INTO S_EE
	VALUES (524290,
	'Time',
	'',
	'TIM',
	597699);
INSERT INTO S_BRG
	VALUES (524292,
	524290,
	'current_date',
	'',
	1,
	524302,
	'',
	0);
INSERT INTO S_BRG
	VALUES (524293,
	524290,
	'create_date',
	'',
	1,
	524302,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524292,
	524293,
	'second',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524293,
	524293,
	'minute',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524294,
	524293,
	'hour',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524295,
	524293,
	'day',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524296,
	524293,
	'month',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524297,
	524293,
	'year',
	524291,
	0);
INSERT INTO S_BRG
	VALUES (524294,
	524290,
	'get_second',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524298,
	524294,
	'date',
	524302,
	0);
INSERT INTO S_BRG
	VALUES (524295,
	524290,
	'get_minute',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524299,
	524295,
	'date',
	524302,
	0);
INSERT INTO S_BRG
	VALUES (524296,
	524290,
	'get_hour',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524300,
	524296,
	'date',
	524302,
	0);
INSERT INTO S_BRG
	VALUES (524297,
	524290,
	'get_day',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524301,
	524297,
	'date',
	524302,
	0);
INSERT INTO S_BRG
	VALUES (524298,
	524290,
	'get_month',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524302,
	524298,
	'date',
	524302,
	0);
INSERT INTO S_BRG
	VALUES (524299,
	524290,
	'get_year',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524303,
	524299,
	'date',
	524302,
	0);
INSERT INTO S_BRG
	VALUES (524300,
	524290,
	'current_clock',
	'',
	1,
	524303,
	'',
	0);
INSERT INTO S_BRG
	VALUES (524301,
	524290,
	'timer_start',
	'',
	1,
	524304,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524304,
	524301,
	'microseconds',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524305,
	524301,
	'event_inst',
	524299,
	0);
INSERT INTO S_BRG
	VALUES (524302,
	524290,
	'timer_start_recurring',
	'',
	1,
	524304,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524306,
	524302,
	'microseconds',
	524291,
	0);
INSERT INTO S_BPARM
	VALUES (524307,
	524302,
	'event_inst',
	524299,
	0);
INSERT INTO S_BRG
	VALUES (524303,
	524290,
	'timer_remaining_time',
	'',
	1,
	524291,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524308,
	524303,
	'timer_inst_ref',
	524304,
	0);
INSERT INTO S_BRG
	VALUES (524304,
	524290,
	'timer_reset_time',
	'',
	1,
	524290,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524309,
	524304,
	'timer_inst_ref',
	524304,
	0);
INSERT INTO S_BPARM
	VALUES (524310,
	524304,
	'microseconds',
	524291,
	0);
INSERT INTO S_BRG
	VALUES (524305,
	524290,
	'timer_add_time',
	'',
	1,
	524290,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524311,
	524305,
	'timer_inst_ref',
	524304,
	0);
INSERT INTO S_BPARM
	VALUES (524312,
	524305,
	'microseconds',
	524291,
	0);
INSERT INTO S_BRG
	VALUES (524306,
	524290,
	'timer_cancel',
	'',
	1,
	524290,
	'',
	0);
INSERT INTO S_BPARM
	VALUES (524313,
	524306,
	'timer_inst_ref',
	524304,
	0);
INSERT INTO S_EE
	VALUES (524291,
	'Architecture',
	'',
	'ARCH',
	597699);
INSERT INTO S_BRG
	VALUES (524307,
	524291,
	'shutdown',
	'',
	0,
	524289,
	'control stop;',
	1);
INSERT INTO S_EE
	VALUES (524292,
	'Realized Bridge',
	'',
	'BR',
	597699);
INSERT INTO S_BRG
	VALUES (524308,
	524292,
	'ret_bool',
	'',
	0,
	524290,
	'return param.b;',
	1);
INSERT INTO S_BPARM
	VALUES (524314,
	524308,
	'b',
	524290,
	0);
INSERT INTO S_BRG
	VALUES (524309,
	524292,
	'ret_int',
	'',
	0,
	524291,
	'return param.i;',
	1);
INSERT INTO S_BPARM
	VALUES (524315,
	524309,
	'i',
	524291,
	0);
INSERT INTO S_BRG
	VALUES (524310,
	524292,
	'ret_real',
	'',
	0,
	524292,
	'return param.r;',
	1);
INSERT INTO S_BPARM
	VALUES (524316,
	524310,
	'r',
	524292,
	0);
INSERT INTO GD_MD
	VALUES (524289,
	1,
	597699,
	1,
	1,
	0,
	1,
	1,
	0,
	12,
	1503,
	4173,
	1.000000,
	0);
INSERT INTO GD_GE
	VALUES (524315,
	524289,
	1048578,
	11);
INSERT INTO GD_SHP
	VALUES (524315,
	1920,
	1328,
	2096,
	1440);
INSERT INTO GD_GE
	VALUES (524293,
	524289,
	524289,
	12);
INSERT INTO GD_SHP
	VALUES (524293,
	1712,
	1584,
	1888,
	1696);
INSERT INTO GD_GE
	VALUES (524294,
	524289,
	524290,
	12);
INSERT INTO GD_SHP
	VALUES (524294,
	1920,
	1456,
	2096,
	1568);
INSERT INTO GD_GE
	VALUES (524295,
	524289,
	524291,
	12);
INSERT INTO GD_SHP
	VALUES (524295,
	1712,
	1456,
	1888,
	1568);
INSERT INTO GD_GE
	VALUES (524296,
	524289,
	524292,
	12);
INSERT INTO GD_SHP
	VALUES (524296,
	1712,
	1328,
	1888,
	1440);
INSERT INTO S_SS
	VALUES (1048578,
	'ex2',
	'',
	'',
	1,
	597699,
	1048578);
INSERT INTO O_OBJ
	VALUES (1048577,
	'Test Compound Expressions',
	2,
	'TCE',
	'',
	1048578);
INSERT INTO O_NBATTR
	VALUES (1048577,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048577,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048577,
	1048577,
	0,
	'tce_id',
	'',
	'',
	'tce_id',
	0,
	524294);
INSERT INTO O_NBATTR
	VALUES (1048578,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048578,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048578,
	1048577,
	1048577,
	'current_state',
	'',
	'',
	'current_state',
	0,
	524295);
INSERT INTO O_NBATTR
	VALUES (1048579,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048579,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048579,
	1048577,
	1048578,
	'ack_count',
	'',
	'',
	'ack_count',
	0,
	524291);
INSERT INTO O_NBATTR
	VALUES (1048580,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048580,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048580,
	1048577,
	1048579,
	'a',
	'',
	'',
	'a',
	0,
	524291);
INSERT INTO O_NBATTR
	VALUES (1048581,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048581,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048581,
	1048577,
	1048580,
	'b',
	'',
	'',
	'b',
	0,
	524291);
INSERT INTO O_NBATTR
	VALUES (1048582,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048582,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048582,
	1048577,
	1048581,
	'b1',
	'',
	'',
	'b1',
	0,
	524290);
INSERT INTO O_NBATTR
	VALUES (1048583,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048583,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048583,
	1048577,
	1048582,
	'b2',
	'',
	'',
	'b2',
	0,
	524290);
INSERT INTO O_NBATTR
	VALUES (1048584,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048584,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048584,
	1048577,
	1048583,
	'i1',
	'',
	'',
	'i1',
	0,
	524291);
INSERT INTO O_NBATTR
	VALUES (1048585,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048585,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048585,
	1048577,
	1048584,
	'i2',
	'',
	'',
	'i2',
	0,
	524291);
INSERT INTO O_NBATTR
	VALUES (1048586,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048586,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048586,
	1048577,
	1048585,
	'r1',
	'',
	'',
	'r1',
	0,
	524292);
INSERT INTO O_NBATTR
	VALUES (1048587,
	1048577);
INSERT INTO O_BATTR
	VALUES (1048587,
	1048577);
INSERT INTO O_ATTR
	VALUES (1048587,
	1048577,
	1048586,
	'r2',
	'',
	'',
	'r2',
	0,
	524292);
INSERT INTO O_ID
	VALUES (0,
	1048577);
INSERT INTO O_OIDA
	VALUES (1048577,
	1048577,
	0);
INSERT INTO SM_ISM
	VALUES (1572867,
	1048577);
INSERT INTO SM_SM
	VALUES (1572867,
	'',
	3);
INSERT INTO SM_MOORE
	VALUES (1572867);
INSERT INTO SM_EVTDI
	VALUES (1572865,
	1572867,
	'name',
	'',
	524293);
INSERT INTO SM_EVTDI
	VALUES (1572866,
	1572867,
	'age',
	'',
	524293);
INSERT INTO SM_EVTDI
	VALUES (1572867,
	1572867,
	'i1',
	'',
	524291);
INSERT INTO SM_EVTDI
	VALUES (1572868,
	1572867,
	'i2',
	'',
	524291);
INSERT INTO SM_EVTDI
	VALUES (1572869,
	1572867,
	'b1',
	'',
	524290);
INSERT INTO SM_EVTDI
	VALUES (1572870,
	1572867,
	'b2',
	'',
	524290);
INSERT INTO SM_EVTDI
	VALUES (1572871,
	1572867,
	'r1',
	'',
	524292);
INSERT INTO SM_EVTDI
	VALUES (1572872,
	1572867,
	'r2',
	'',
	524292);
INSERT INTO SM_EVTDI
	VALUES (64199414,
	1572867,
	'i1',
	'',
	524291);
INSERT INTO SM_EVTDI
	VALUES (6592165,
	1572867,
	'b1',
	'',
	524290);
INSERT INTO SM_LEVT
	VALUES (1572865,
	1572867,
	0);
INSERT INTO SM_SEVT
	VALUES (1572865,
	1572867,
	0);
INSERT INTO SM_EVT
	VALUES (1572865,
	1572867,
	0,
	1,
	'start test',
	0,
	'',
	'TCE1',
	'');
INSERT INTO SM_LEVT
	VALUES (1572866,
	1572867,
	0);
INSERT INTO SM_SEVT
	VALUES (1572866,
	1572867,
	0);
INSERT INTO SM_EVT
	VALUES (1572866,
	1572867,
	0,
	2,
	'next test',
	0,
	'',
	'TCE2',
	'');
INSERT INTO SM_LEVT
	VALUES (1572867,
	1572867,
	0);
INSERT INTO SM_SEVT
	VALUES (1572867,
	1572867,
	0);
INSERT INTO SM_EVT
	VALUES (1572867,
	1572867,
	0,
	3,
	'event with supp data',
	0,
	'',
	'TCE3',
	'');
INSERT INTO SM_LEVT
	VALUES (1572868,
	1572867,
	0);
INSERT INTO SM_SEVT
	VALUES (1572868,
	1572867,
	0);
INSERT INTO SM_EVT
	VALUES (1572868,
	1572867,
	0,
	4,
	'next test with supp data',
	0,
	'',
	'TCE4',
	'');
INSERT INTO SM_LEVT
	VALUES (1572869,
	1572867,
	0);
INSERT INTO SM_SEVT
	VALUES (1572869,
	1572867,
	0);
INSERT INTO SM_EVT
	VALUES (1572869,
	1572867,
	0,
	5,
	'bool event',
	0,
	'',
	'TCE5',
	'');
INSERT INTO SM_LEVT
	VALUES (1572870,
	1572867,
	0);
INSERT INTO SM_SEVT
	VALUES (1572870,
	1572867,
	0);
INSERT INTO SM_EVT
	VALUES (1572870,
	1572867,
	0,
	6,
	'int event',
	0,
	'',
	'TCE6',
	'');
INSERT INTO SM_STATE
	VALUES (1572865,
	1572867,
	0,
	'Compound Expressions Using Constants',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (1572865,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572865,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572865,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572865,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572865,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572865,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572865,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572865,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572865,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572865,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572865,
	1572867,
	1572865);
INSERT INTO SM_AH
	VALUES (1572865,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572865,
	1572867,
	1,
	'
// integer:

  if (( (1+2) * (3+4) ) == 21)
     LOG::LogSuccess (message:"Test Compound Expressions - Using Constants - integer") ;
  else
     LOG::LogFailure (message:"Test Compound Expressions - Using Constants - integer") ;
  end if;


// real:


  if ((3.3 + 2.2 - 1.1) - 4.4 <= 0.000001)
     LOG::LogSuccess (message:"Test Compound Expressions - Using Constants - real") ;
  else
     LOG::LogFailure (message:"Test Compound Expressions - Using Constants - real") ;
  end if;


// string:


  if (("Hello" + "," + " " + "World" + "!") == "Hello, World!")
     LOG::LogSuccess (message:"Test Compound Expressions - Using Constants - string") ;
  else
     LOG::LogFailure (message:"Test Compound Expressions - Using Constants - string") ;
  end if;

  str1 = "Hello" + "World";
  str = TRAN::ret_string(s:str1);
  if (str == "HelloWorld" )
     LOG::LogSuccess (message:"Test Compound Expressions - Using Constants - string +") ;
  else
     LOG::LogFailure (message:"Test Compound Expressions - Using Constants - string +") ;
  end if;

  
// boolean:


  if (TRUE or FALSE and TRUE and TRUE)
     LOG::LogSuccess (message:"Test Compound Expressions - Using Constants - bool 1") ;
  else
     LOG::LogFailure (message:"Test Compound Expressions - Using Constants - bool 1") ;
  end if;


  if (not (TRUE and FALSE) and (TRUE or FALSE))
     LOG::LogSuccess (message:"Test Compound Expressions - Using Constants - bool 2") ;
  else
     LOG::LogFailure (message:"Test Compound Expressions - Using Constants - bool 2") ;
  end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572866,
	1572867,
	0,
	'Compound Expressions Using Local Variables',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (1572866,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572866,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572866,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572866,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572866,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572866,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572866,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572866,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572866,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572866,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572866,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572866,
	1572867,
	1572866);
INSERT INTO SM_AH
	VALUES (1572866,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572866,
	1572867,
	1,
	'
// integer:


// Initialize variables for test:
a = 1;
b = 4;
c = 2;

if ((a - b/c + a*c) == 1)
   LOG::LogSuccess (message:"Test Compound Expressions - Local Variables - integer") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Local Variables - integer") ;
end if;


// real:

// Initialize variables for test:
x = 4.0;
y = 1.5;
z = 1.1;

if ( ((x + y - z) > 4.3) and ((x+y-z) < 4.5) )
   LOG::LogSuccess (message:"Test Compound Expressions - Local Variables - real") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Local Variables - real") ;
end if;


// string:


// Initialize variables for test:
s1 = "Hello";
s2 = ", ";
s3 = "world!";

if ((s1 + s2 + s3) == "Hello, world!")
   LOG::LogSuccess (message:"Test Compound Expressions - Local Variables - string") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Local Variables - string") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572867,
	1572867,
	0,
	'Compound Expressions Using Object Attributes',
	3,
	0);
INSERT INTO SM_EIGN
	VALUES (1572867,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572867,
	1572865,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572867,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572867,
	1572866,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572867,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572867,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572867,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572867,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572867,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572867,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572867,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572867,
	1572867,
	1572867);
INSERT INTO SM_AH
	VALUES (1572867,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572867,
	1572867,
	1,
	'// integer:

// Create objects for test
create object instance a of A;
create object instance b of A;

// Initialize variables for test:
a.a = 5;
b.a = 2;

// attributes of an instance
if ( ((a.a - b.a) * (a.a - 3) + 1) == 7 )
   LOG::LogSuccess (message:"Test Compound Expressions - Object Attributes - inst ref var") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Object Attributes - inst ref var") ;
end if;


// Initialize variables for test:
self.a = 5;
self.b = 4;

// self
if ( (self.a + self.b - 2) == 7)
   LOG::LogSuccess (message:"Test Compound Expressions - Object Attributes - self") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Object Attributes - self") ;
end if;

// Delete any objects created
delete object instance a;
delete object instance b;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR3:''send event with supp data'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572868,
	1572867,
	0,
	'Compound Expressions Using Supplemental Data Items Received From An Event',
	4,
	0);
INSERT INTO SM_EIGN
	VALUES (1572868,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572868,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572868,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572868,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572868,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572868,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572868,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572868,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572868,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572868,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572868,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572868,
	1572867,
	1572868);
INSERT INTO SM_AH
	VALUES (1572868,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572868,
	1572867,
	1,
	'
if ( (rcvd_evt.name + ": age " + rcvd_evt.age) == "Bob: age 31" )
   LOG::LogSuccess (message:"Test Compound Expressions - Supp Data Items") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Supp Data Items") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572869,
	1572867,
	0,
	'Compound Expressions Using Function Invocations',
	5,
	0);
INSERT INTO SM_EIGN
	VALUES (1572869,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572869,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572869,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572869,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572869,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572869,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572869,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572869,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572869,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572869,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572869,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572869,
	1572867,
	1572869);
INSERT INTO SM_AH
	VALUES (1572869,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572869,
	1572867,
	1,
	'// Make sure there are no instances of A
select many as from instances of A;
for each a in as
  delete object instance a;
end for;

select many as from instances of A;

if ( (empty as or not_empty as) and not (empty as and not_empty as) )
   LOG::LogSuccess (message:"Test Coumpund Expressions - Function Invocations - not_empty/empty") ;
else
   LOG::LogFailure (message:"Test Coumpund Expressions - Function Invocations - not_empty/empty") ;
end if;

if ( (2 + cardinality as + 1) == 3 )
   LOG::LogSuccess (message:"Test Coumpund Expressions - Function Invocations - cardinality") ;
else
   LOG::LogFailure (message:"Test Coumpund Expressions - Function Invocations - cardinality") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572870,
	1572867,
	0,
	'Compound Expressions Using Transformer Invocations',
	6,
	0);
INSERT INTO SM_EIGN
	VALUES (1572870,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572870,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572870,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572870,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572870,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572870,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572870,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572870,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572870,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572870,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572870,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572870,
	1572867,
	1572870);
INSERT INTO SM_AH
	VALUES (1572870,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572870,
	1572867,
	1,
	'
if ( ( ( TRAN::ret_int(i:1) + TRAN::ret_int(i:2) ) * ( TRAN::ret_int(i:5) - 3 ) ) == 6 )
   LOG::LogSuccess (message:"Test Compound Expressions - Transformer Invocations - int") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Transformer Invocations - int") ;
end if;

if ( (TRAN::ret_string(s:"hi") + " " + TRAN::ret_string(s:"there")) == "hi there")
   LOG::LogSuccess (message:"Test Compound Expressions - Transformer Invocations - string") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Transformer Invocations - string") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572871,
	1572867,
	0,
	'Compound Expressions Using Bridge Invocations',
	7,
	0);
INSERT INTO SM_EIGN
	VALUES (1572871,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572871,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572871,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572871,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572871,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572871,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572871,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572871,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572871,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572871,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572871,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572871,
	1572867,
	1572871);
INSERT INTO SM_AH
	VALUES (1572871,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572871,
	1572867,
	1,
	'
BrTstTimeDate = TIM::create_date (day:1, month:2, year:3, second:4, minute:5, hour:6);

if ( (TIM::get_day(date:BrTstTimeDate) + TIM::get_month(date:BrTstTimeDate) + TIM::get_year(date:BrTstTimeDate) + 2) == 8)
   LOG::LogSuccess (message:"Test Compund Expressions - Compound Expressions using Bridge Invocations") ;
else
   LOG::LogFailure (message:"Test Compund Expressions - Compound Expressions using Bridge Invocations") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572872,
	1572867,
	0,
	'Order of Operations',
	8,
	0);
INSERT INTO SM_EIGN
	VALUES (1572872,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572872,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572872,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572872,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572872,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572872,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572872,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572872,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572872,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572872,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572872,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572872,
	1572867,
	1572872);
INSERT INTO SM_AH
	VALUES (1572872,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572872,
	1572867,
	1,
	'if ((1 + 2*3 - 6/3 + 8%3) == 7)
   LOG::LogSuccess (message:"Test Compound Expressions - Order of Operations - int") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Order of Operations - int") ;
end if;

// real:
if ((1.1 + 4.4/2 - 2.2) - 1.1 < 0.000001)
   LOG::LogSuccess (message:"Test Compound Expressions - Order of Operations - real") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Order of Operations - real") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572873,
	1572867,
	0,
	'Stress Limits of Compound Expressions',
	9,
	0);
INSERT INTO SM_EIGN
	VALUES (1572873,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572873,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572873,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572873,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572873,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572873,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572873,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572873,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572873,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572873,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572873,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572873,
	1572867,
	1572873);
INSERT INTO SM_AH
	VALUES (1572873,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572873,
	1572867,
	1,
	'x = ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) +
     ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) +
     ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) +
     ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) +
     ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) +
     ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2)) +
     ((1+3)*(4-2)/(10-2)) + ((1+3)*(4-2)/(10-2));

if (x == 20)
   LOG::LogSuccess (message:"Test Compound Expressions - Stress Limits") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Stress Limits") ;
end if;


//============================================================
// Test complete
//============================================================

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572874,
	1572867,
	0,
	'Bridges Within Expressions',
	11,
	0);
INSERT INTO SM_EIGN
	VALUES (1572874,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572874,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572874,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572874,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572874,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572874,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572874,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572874,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572874,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572874,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572874,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572874,
	1572867,
	1572874);
INSERT INTO SM_AH
	VALUES (1572874,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572874,
	1572867,
	1,
	'
bridge date = TIM::create_date(second:1, minute:2, hour:3, day:1, month:2, year:3);
year = TIM::get_year (date:date) * 22 + 3;
month = 8 - TIM::get_month (date:date)/2;
day = TIM::get_day (date:date) + 28;

if ((day == 29) and (month == 7) and (year == 69))
   LOG::LogSuccess (message:"Test Compound Expressios - Bridges within Expressions") ;
else
   LOG::LogFailure (message:"Test Compound Expressios - Bridges within Expressions") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572875,
	1572867,
	0,
	'Transforms Within Expressions',
	12,
	0);
INSERT INTO SM_EIGN
	VALUES (1572875,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572875,
	1572865,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572875,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572875,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572875,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572875,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572875,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572875,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572875,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572875,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572875,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572875,
	1572867,
	1572875);
INSERT INTO SM_AH
	VALUES (1572875,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572875,
	1572867,
	1,
	'a = TRAN::ret_int(i:5) + 10;
b = TRAN::ret_int(i:8)/4 + TRAN::ret_int(i:3)*2;
c = TRAN::ret_int(i:2) * TRAN::ret_int(i:3)/TRAN::ret_int(i:6);

if ((a == 15) and (b == 8) and (c == 1))
   LOG::LogSuccess (message:"Test Compound Expressions - Transforms within Expressions") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - Transforms within Expressions") ;
end if;

// goto next state
generate TCE4(b1:TRUE,b2:FALSE,i1:1,i2:2,r1:1.0,r2:2.0) to self;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572876,
	1572867,
	0,
	'Combinine Real and Integer Data Types',
	13,
	1);
INSERT INTO SM_EIGN
	VALUES (1572876,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572876,
	1572865,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572876,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572876,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572876,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572876,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572876,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572876,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572876,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572876,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572876,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572876,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572876,
	1572867,
	1572876);
INSERT INTO SM_AH
	VALUES (1572876,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572876,
	1572867,
	1,
	'
a = 1;
x = 1.1;
x = (a + 2) + (x - 0.1);

if ((x - 4.0) < 0.000001)
   LOG::LogSuccess (message:"Test Compund Expressions - Cobine Real and Integer Data Types") ;
else
   LOG::LogFailure (message:"Test Compund Expressions - Cobine Real and Integer Data Types") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR4:''test complete'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572877,
	1572867,
	0,
	'Unary Ops',
	14,
	0);
INSERT INTO SM_CH
	VALUES (1572877,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572877,
	1572865,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572877,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572877,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572877,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572877,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572877,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572877,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572877,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572877,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572877,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572877,
	1572867,
	1572877);
INSERT INTO SM_AH
	VALUES (1572877,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572877,
	1572867,
	1,
	'select any dr from instances of DR;

// Unary Ops in the action language
//
// These are handled in a1test_exconfig, not here
//  empty <handle>        // returns bool
//  not_empty <handle>    // returns bool
//  cardinality <handle>  // returns int
//
// The following are tested with compound expressions:
//
//  not <boolean expression>
//
//    <boolean expression> is one that evaluates to TRUE or FALSE
//
//  <unary op> <expression>
//
//      <expression> is anything that evalates to real or int value:
//        literal, attribute, local var, received event data item, 
//        simple expression, compound expression, transform
//        invocation, bridge invocation.
//
//      <unary op> is + or -

LOG::LogInfo(message:"Starting Test Compound Expressions - Unary Ops") ;

if (true)  // Create a local scope

// local
a=1;
b=2;
ans = not ( (a ==b) AND (b == a) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - local var") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - local var") ;
end if;

// literal
ans = not ( (1 == 2) AND (3 == 3) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - literal") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - literal") ;
end if;

// received event
ans = not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - rcvd_evt") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - rcvd_evt") ;
end if;

// attribute of object - self
ans = not ( (self.b1 == self.b2) AND (self.b1 == self.b1) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - self") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - self") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans = not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - inst_ref") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - inst_ref") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans = not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - functions") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - functions") ;
end if;

// transformer invocations
ans = not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE)));
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - transforms") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - transforms") ;
end if;

// bridge invocations realized
ans = not ( (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:FALSE) ) AND (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:TRUE)));
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - bridge - realized") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - bridge - realized") ;
end if;

// unary op + int

// local
a=1;
b=2;
ans1 = + ( a + b );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - local var - int") ;
end if;

// literal
ans1 = + ( 1 + 2 );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - literal - int") ;
end if;

// received event
ans1 = + ( rcvd_evt.i1 + rcvd_evt.i2);
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - supp data - int") ;
end if;

// attribute of object - self
ans1 = + ( self.i1 + self.i2);
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = +(tce.i1 + tce.i2);
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;

ans1 = + ( (cardinality tce ) + 2*((cardinality no_instances)+1));
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - int") ;
end if;

// transformer invocations
ans1 = + ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - transform - int") ;
end if;

// bridge invocations realized
ans1 = + ( BR::ret_int(i:-3) + BR::ret_int(i:6) );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - int") ;
end if;


// unary op - int

// local
a=1;
b=2;
ans1 = - ( a + b );
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - local var - int") ;
end if;

// literal
ans1 = - ( 1 + 2 );
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - literal - int") ;
end if;

// received event
ans1 = - ( rcvd_evt.i1 + rcvd_evt.i2);
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - supp data - int") ;
end if;

// attribute of object - self
ans1 = - ( self.i1 + self.i2);
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = -(tce.i1 + tce.i2);
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans1 = - ( (cardinality tce ) + 2*((cardinality no_instances)+1));
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - int") ;
end if;

// transformer invocations
ans1 = - ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) );
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - transform - int") ;
end if;

// bridge invocations realized
ans1 = - ( BR::ret_int(i:-3) + BR::ret_int(i:6) );
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - int") ;
end if;

end if;   // end local scope

if (true)  // create local scope

// real

// unary op + real

// local
a=1.0;
b=2.0;
ans2 = + ( a + b );
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - local var - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - local var - real") ;
end if;

// literal
ans2 = + ( 1.0 + 2.0 );
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - literal - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - literal - real") ;
end if;

// received event
ans2 = + ( rcvd_evt.r1 + rcvd_evt.r2);
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - supp data - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - supp data - real") ;
end if;

// attribute of object - self
ans2 = + ( self.r1 + self.r2);
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - real") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans2 = +(tce.r1 + tce.r2);
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - real") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;

ans2 = + ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0));
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - real") ;
end if;

// transformer invocations
ans2 = + ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) );
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - transform - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - transform - real") ;
end if;

// bridge invocations realized
ans2 = + ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) );
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - real") ;
end if;


// unary op - real

// local
a=1.0;
b=2.0;
ans2 = - ( a + b );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - local var - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - local var - real") ;
end if;

// literal
ans2 = - ( 1.0 + 2.0 );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - literal - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - literal - real") ;
end if;

// received event
ans2 = - ( rcvd_evt.r1 + rcvd_evt.r2);
if ( ans2 >  -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - supp data - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - supp data - real") ;
end if;

// attribute of object - self
ans2 = - ( self.r1 + self.r2);
if ( ans2 >  -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - real") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans2 = -(tce.r1 + tce.r2);
if ( ans2 >  -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - real") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans2 = - ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0));
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - real") ;
end if;

// transformer invocations
ans2 = - ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - transform - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - transform - real") ;
end if;

// bridge invocations realized
ans2 = - ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - real") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - real") ;
end if;

end if;  // end local scope

if (true)  // create local scope

// single

// local
a1=FALSE;
ans = not ( a1 );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - local var - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - local var - single") ;
end if;

// literal
ans = not ( FALSE );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - literal - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - literal - single") ;
end if;

// received event
ans = not ( rcvd_evt.b2 );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - rcvd_evt - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - rcvd_evt - single") ;
end if;

// attribute of object - self
ans = not ( self.b2 );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - self - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - self - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans = not ( tce.b2 );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - inst_ref - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - inst_ref - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans = not ( empty tce );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - functions - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - functions - single") ;
end if;

// transformer invocations
ans = not ( TRAN::ret_bool(b:FALSE) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - transforms - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - transforms - single") ;
end if;

// bridge invocations realized
ans = not ( BR::ret_bool(b:FALSE) );
if ( ans == TRUE )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of not expression - bridge - realized - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of not expression - bridge - realized - single") ;
end if;

end if;  // end local scope
if (true)  // create local scope
// unary op + int


// local
b=2;
ans1 = + ( b );
if ( ans1 == 2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - local var - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - local var - int - single") ;
end if;

// literal
ans1 = + ( 3 );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - literal - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - literal - int - single") ;
end if;

// received event
ans1 = + ( rcvd_evt.i2 );
if ( ans1 == 2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - supp data - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - supp data - int - single") ;
end if;

// attribute of object - self
ans1 = + ( self.i2);
if ( ans1 == 2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - int - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = +(tce.i2);
if ( ans1 == 2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - int - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;

ans1 = + ( cardinality tce );
if ( ans1 == 1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - int - single") ;
end if;

// transformer invocations
ans1 = + ( TRAN::ret_int(i:3) );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - transform - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - transform - int - single") ;
end if;

// bridge invocations realized
ans1 = + ( BR::ret_int(i:3) );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - int - single") ;
end if;


// unary op - int

// local
b=2;
ans1 = - ( b );
if ( ans1 == -2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - local var - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - local var - int - single") ;
end if;

// literal
ans1 = - ( 2 );
if ( ans1 == -2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - literal - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - literal - int - single") ;
end if;

// received event
ans1 = - ( rcvd_evt.i2 );
if ( ans1 == -2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - supp data - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - supp data - int - single") ;
end if;

// attribute of object - self
ans1 = - ( self.i2 );
if ( ans1 == -2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - int - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = -(tce.i2);
if ( ans1 == -2 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - int - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans1 = - ( cardinality tce );
if ( ans1 == -1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - int - single") ;
end if;

// transformer invocations
ans1 = - ( TRAN::ret_int(i:3) );
if ( ans1 == -3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - transform - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - transform - int - single") ;
end if;

// bridge invocations realized
ans1 = - ( BR::ret_int(i:-3) );
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - int - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - int - single") ;
end if;

end if;   // end local scope
if (true)  // create local scope

// real

// unary op + real

// local
b=2.0;
ans2 = + ( b );
if ( ans2 > 1.9 and ans2 < 2.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - local var - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - local var - real - single") ;
end if;

// literal
ans2 = + ( 2.0 );
if ( ans2 > 1.9 and ans2 < 2.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - literal - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - literal - real - single") ;
end if;

// received event
ans2 = + ( rcvd_evt.r2);
if ( ans2 > 1.9 and ans2 < 2.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - supp data - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - supp data - real - single") ;
end if;

// attribute of object - self
ans2 = + ( self.r2 );
if ( ans2 > 1.9 and ans2 < 2.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - real - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans2 = +(tce.r2);
if ( ans2 > 1.9 and ans2 < 2.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - inst_ref - real - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;

ans2 = + ( cardinality tce * 1.0 );
if ( ans2 > 0.9 and ans2 < 1.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - cardinality - real - single") ;
end if;

// transformer invocations
ans2 = + ( TRAN::ret_real(r:3.0) );
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - transform - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - transform - real - single") ;
end if;

// bridge invocations realized
ans2 = + ( BR::ret_real(r:3.0) ); 
if ( ans2 > 2.9 and ans2 < 3.1 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - bridge - realized - real - single") ;
end if;


// unary op - real

// local
b=3.0;
ans2 = - ( b );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - local var - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - local var - real - single") ;
end if;

// literal
ans2 = - ( 3.0 );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - literal - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - literal - real - single") ;
end if;

// received event
ans2 = - ( rcvd_evt.r2 );
if ( ans2 > -2.1 and ans2 < -1.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - supp data - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - supp data - real - single") ;
end if;

// attribute of object - self
ans2 = - ( self.r2 );
if ( ans2 > -2.1 and ans2 < -1.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of + (expression) - self - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of + (expression) - self - real - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans2 = -(tce.r2);
if ( ans2 > -2.1 and ans2 < -1.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - inst_ref - real - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans2 = - ( (cardinality tce * 1.0) );
if ( ans2 > -1.1 and ans2 < -.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - cardinality - real - single") ;
end if;

// transformer invocations
ans2 = - ( TRAN::ret_real(r:3.0) );
if ( ans2 > -3.1 and ans2 < 2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - transform - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - transform - real - single") ;
end if;

// bridge invocations realized
ans2 = - ( BR::ret_real(r:3.0) );
if ( ans2 > -3.1 and ans2 < -2.9 )
  LOG::LogSuccess(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - real - single") ;
else
  LOG::LogFailure(message:"TCE - Unary Ops - assignment of - (expression) - bridge - realized - real - single") ;
end if;

end if;  // close local scope


// goto next state
generate TCE4(b1:TRUE,b2:FALSE,i1:1,i2:2,r1:1.0,r2:2.0) to self;


',
	'');
INSERT INTO SM_STATE
	VALUES (1572878,
	1572867,
	0,
	'If Expressions',
	15,
	0);
INSERT INTO SM_CH
	VALUES (1572878,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572878,
	1572865,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572878,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572878,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572878,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572878,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572878,
	1572868,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572878,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572878,
	1572869,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572878,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572878,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572878,
	1572867,
	1572878);
INSERT INTO SM_AH
	VALUES (1572878,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572878,
	1572867,
	1,
	'select any dr from instances of DR;

// If statements
//
//   if <boolean expression> 
//   elif <boolean expression>
//
// Boolean Expressions
// -------------------
//
//  not <boolean expression>
//  <expression> <boolean operation> <expression>
//
//    <boolean expression> is one that evaluates to TRUE or FALSE
//
//    <expression>  - simple, or compund.  Both must evaluate to
//     the same type: arithmetic, boolean, or string.
//

LOG::LogInfo(message:"Starting Test Compound Expressions - If Expressions") ;

if (true)  // create local scope

// local
a=1;
b=2;
if ( not ( (a ==b) AND (b == a) ) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - local var") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - local var") ;
end if;

// literal
if ( not ( (1 == 2) AND (3 == 3) ) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - literal") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - literal") ;
end if;

// received event

if ( not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) ) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - rcvd_evt") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - rcvd_evt") ;
end if;

// attribute of object - self

if ( not ( (self.b1 == self.b2) AND (self.b1 == self.b1) ) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - self") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - self") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) ) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - inst_ref") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - inst_ref") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) ) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - functions") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - functions") ;
end if;

// transformer invocations
if ( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - transforms") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - transforms") ;
end if;

// bridge invocations realized

if ( not ( (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:FALSE) ) AND (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:TRUE))) )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - bridge - realized") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - bridge - realized") ;
end if;

// if aritmetic expressions + int

// local
a=1;
b=2;
if ( (+ ( a + b ))  == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - local var - int") ;
end if;

// literal

if ( (+ ( 1 + 2 )) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - literal - int") ;
end if;

// received event

if ( (+ ( rcvd_evt.i1 + rcvd_evt.i2)) == 3 ) 
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - supp data - int") ;
end if;

// attribute of object - self
if ( (+ ( self.i1 + self.i2) ) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( (+(tce.i1 + tce.i2)) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( (+ ( (cardinality tce ) + 2*((cardinality no_instances)+1)) ) == 3 ) 
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - cardinality - int") ;
end if;

// transformer invocations
if ( ( ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) ) ) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - transform - int") ;
end if;

// bridge invocations realized
if ( (+ ( BR::ret_int(i:-3) + BR::ret_int(i:6) )) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - int") ;
end if;


// if aritmetic expressions - int

// local
a=1;
b=2;
if ( (- ( a + b )) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - local var - int") ;
end if;

// literal
if ( (- ( 1 + 2 )) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - literal - int") ;
end if;

// received event
if ( (- ( rcvd_evt.i1 + rcvd_evt.i2)) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - supp data - int") ;
end if;

// attribute of object - self
if ( (- ( self.i1 + self.i2)) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( (-(tce.i1 + tce.i2)) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( (- ( (cardinality tce ) + 2*((cardinality no_instances)+1))) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - cardinality - int") ;
end if;

// transformer invocations
if ( (- ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) )) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - transform - int") ;
end if;

// bridge invocations realized
if ( (- ( BR::ret_int(i:-3) + BR::ret_int(i:6) )) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - int") ;
end if;

end if;  // end local scope
if (true) // create local scope

// real

// if arithmetic expressios + real

// local
a=1.0;
b=2.0;
if ( (+ ( a + b )) > 2.9 and (+ ( a + b )) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - local var - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - local var - real") ;
end if;

// literal
if ( (+ ( 1.0 + 2.0 )) > 2.9 and (+ ( 1.0 + 2.0 )) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - literal - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - literal - real") ;
end if;

// received event
if ( (+ ( rcvd_evt.r1 + rcvd_evt.r2)) > 2.9 and (+ ( rcvd_evt.r1 + rcvd_evt.r2)) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - supp data - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - supp data - real") ;
end if;

// attribute of object - self
if ( (+ ( self.r1 + self.r2)) > 2.9 and (+ ( self.r1 + self.r2)) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - real") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( (+(tce.r1 + tce.r2)) > 2.9 and (+(tce.r1 + tce.r2)) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - real") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( (+ ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) > 2.9 and (+ ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - cardinality - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - cardinality - real") ;
end if;

// transformer invocations
if ( (+ ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) > 2.9 and (+ ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - transform - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - transform - real") ;
end if;

// bridge invocations realized
if ( (+ ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) > 2.9 and (+ ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - real") ;
end if;


// if arithmetic expressions -  real

// local
a=1.0;
b=2.0;
if ( (- ( a + b )) > -3.1 and (- ( a + b )) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - local var - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - local var - real") ;
end if;

// literal
if ( (- ( 1.0 + 2.0 )) > -3.1 and (- ( 1.0 + 2.0 )) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - literal - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - literal - real") ;
end if;

// received event
if ( (- ( rcvd_evt.r1 + rcvd_evt.r2)) >  -3.1 and (- ( rcvd_evt.r1 + rcvd_evt.r2)) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - supp data - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - supp data - real") ;
end if;

// attribute of object - self
if ( (- ( self.r1 + self.r2)) >  -3.1 and (- ( self.r1 + self.r2)) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - real") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( (-(tce.r1 + tce.r2)) >  -3.1 and (-(tce.r1 + tce.r2)) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - real") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( (- ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) > -3.1 and (- ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - cardinality - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - cardinality - real") ;
end if;

// transformer invocations
if ( (- ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) > -3.1 and (- ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - transform - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - transform - real") ;
end if;

// bridge invocations realized
if ( (- ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) > -3.1 and (- ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - real") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - real") ;
end if;

end if;  // end local scope
if (true) // create local scope

// single

// local
a1=FALSE;
if ( not ( a1 ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - local var - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - local var - single") ;
end if;

// literal
if ( not ( FALSE ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - literal - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - literal - single") ;
end if;

// received event
if ( not ( rcvd_evt.b2 ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - rcvd_evt - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - rcvd_evt - single") ;
end if;

// attribute of object - self
if ( not ( self.b2 ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - self - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - self - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( not ( tce.b2 ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - inst_ref - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - inst_ref - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( not ( empty tce ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - functions - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - functions - single") ;
end if;

// transformer invocations
if ( not ( TRAN::ret_bool(b:FALSE) ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - transforms - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - transforms - single") ;
end if;

// bridge invocations realized
if ( not ( BR::ret_bool(b:FALSE) ) == TRUE )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of not expression - bridge - realized - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of not expression - bridge - realized - single") ;
end if;

end if;  // end local scope
if (true) // create local scope

// if arithmetic expressions op + int

// local
b=2;
if ( +b == 2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - local var - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - local var - int - single") ;
end if;

// literal
if ( +3 == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - literal - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - literal - int - single") ;
end if;

// received event
if ( + ( rcvd_evt.i2 ) == 2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - supp data - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - supp data - int - single") ;
end if;

// attribute of object - self
if ( + ( self.i2) == 2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - int - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( +(tce.i2) == 2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - int - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( + ( cardinality tce ) == 1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - cardinality - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - cardinality - int - single") ;
end if;

// transformer invocations
if ( + ( TRAN::ret_int(i:3) ) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - transform - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - transform - int - single") ;
end if;

// bridge invocations realized
if ( + ( BR::ret_int(i:3) ) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - int - single") ;
end if;


// if arithmetic expressions - int

// local
b=2;
if ( -( b ) == -2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - local var - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - local var - int - single") ;
end if;

// literal
if ( - ( 2 ) == -2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - literal - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - literal - int - single") ;
end if;

// received event
if ( - ( rcvd_evt.i2 ) == -2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - supp data - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - supp data - int - single") ;
end if;

// attribute of object - self
if ( - ( self.i2 ) == -2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - int - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( -(tce.i2) == -2 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - int - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( - ( cardinality tce ) == -1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - cardinality - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - cardinality - int - single") ;
end if;

// transformer invocations
if ( - ( TRAN::ret_int(i:3) ) == -3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - transform - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - transform - int - single") ;
end if;

// bridge invocations realized
if ( - ( BR::ret_int(i:-3) ) == 3 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - int - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - int - single") ;
end if;

end if;  // end local scope
if (true) // begin local scope
// real

// if arithmetic expressions + real

// local
b=2.0;
if ( + ( b ) > 1.9 and + ( b ) < 2.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - local var - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - local var - real - single") ;
end if;

// literal
if ( + ( 2.0 ) > 1.9 and + ( 2.0 ) < 2.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - literal - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - literal - real - single") ;
end if;

// received event
if ( + ( rcvd_evt.r2) > 1.9 and + ( rcvd_evt.r2) < 2.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - supp data - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - supp data - real - single") ;
end if;

// attribute of object - self
if ( + ( self.r2 ) > 1.9 and + ( self.r2 ) < 2.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - real - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( +(tce.r2) > 1.9 and +(tce.r2) < 2.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - inst_ref - real - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( + ( cardinality tce * 1.0 ) > 0.9 and + ( cardinality tce * 1.0 ) < 1.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - cardinality - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - cardinality - real - single") ;
end if;

// transformer invocations
if ( + ( TRAN::ret_real(r:3.0) ) > 2.9 and + ( TRAN::ret_real(r:3.0) ) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - transform - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - transform - real - single") ;
end if;

// bridge invocations realized
if ( + ( BR::ret_real(r:3.0) ) > 2.9 and + ( BR::ret_real(r:3.0) ) < 3.1 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - bridge - realized - real - single") ;
end if;


// if arithmetic expressions - real

// local
b=3.0;
if ( - ( b ) > -3.1 and - ( b ) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - local var - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - local var - real - single") ;
end if;

// literal
if ( - ( 3.0 ) > -3.1 and - ( 3.0 ) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - literal - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - literal - real - single") ;
end if;

// received event
if ( - ( rcvd_evt.r2 ) > -2.1 and - ( rcvd_evt.r2 ) < -1.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - supp data - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - supp data - real - single") ;
end if;

// attribute of object - self
if ( - ( self.r2 ) > -2.1 and - ( self.r2 ) < -1.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of + (expression) - self - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of + (expression) - self - real - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if ( -(tce.r2) > -2.1 and -(tce.r2) < -1.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - inst_ref - real - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if ( - ( (cardinality tce * 1.0) ) > -1.1 and - ( (cardinality tce * 1.0) ) < -.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - cardinality - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - cardinality - real - single") ;
end if;

// transformer invocations
if ( - ( TRAN::ret_real(r:3.0) ) > -3.1 and - ( TRAN::ret_real(r:3.0) ) < 2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - transform - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - transform - real - single") ;
end if;

// bridge invocations realized
if ( - ( BR::ret_real(r:3.0) ) > -3.1 and - ( BR::ret_real(r:3.0) ) < -2.9 )
  LOG::LogSuccess(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - real - single") ;
else
  LOG::LogFailure(message:"TCE - If Expressions - assignment of - (expression) - bridge - realized - real - single") ;
end if;

end if; // end local scope
if (true) // create local scope
//
//
select any dr from instances of DR;

// else statements
//
//   elif <boolean expression>
//
// Boolean Expressions
// -------------------
//
//  not <boolean expression>
//  <expression> <boolean operation> <expression>
//
//    <boolean expression> is one that evaluates to TRUE or FALSE
//
//    <expression>  - simple, or compund.  Both must evaluate to
//     the same type: arithmetic, boolean, or string.
//

LOG::LogInfo(message:"Starting Test Compound Expressions - Else Expressions") ;

// local
a=1;
b=2;
if (FALSE)
  // do nothing
elif ( not ( (a ==b) AND (b == a) ) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - local var") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - local var") ;
end if;

// literal
if (FALSE)
  // do nothing
elif ( not ( (1 == 2) AND (3 == 3) ) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - literal") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - literal") ;
end if;

// received event

if (FALSE)
  // do nothing
elif ( not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) ) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - rcvd_evt") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - rcvd_evt") ;
end if;

// attribute of object - self

if (FALSE)
  // do nothing
elif ( not ( (self.b1 == self.b2) AND (self.b1 == self.b1) ) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - self") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - self") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif ( not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) ) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - inst_ref") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - inst_ref") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif ( not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) ) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - functions") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - functions") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif ( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - transforms") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - transforms") ;
end if;

// bridge invocations realized

if (FALSE)
  // do nothing
elif ( not ( (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:FALSE) ) AND (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:TRUE))) )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - bridge - realized") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - bridge - realized") ;
end if;

end if;  // end local scope
if (true)  // create local scope

// if aritmetic expressions + int

// local
a=1;
b=2;
if (FALSE)
  // do nothing
elif ( (+ ( a + b ))  == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - local var - int") ;
end if;

// literal

if (FALSE)
  // do nothing
elif ( (+ ( 1 + 2 )) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - literal - int") ;
end if;

// received event

if (FALSE)
  // do nothing
elif ( (+ ( rcvd_evt.i1 + rcvd_evt.i2)) == 3 ) 
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - supp data - int") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif ( (+ ( self.i1 + self.i2) ) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif ( (+(tce.i1 + tce.i2)) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif ( (+ ( (cardinality tce ) + 2*((cardinality no_instances)+1)) ) == 3 ) 
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - int") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif ( ( ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) ) ) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - transform - int") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif ( (+ ( BR::ret_int(i:-3) + BR::ret_int(i:6) )) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - int") ;
end if;


// if aritmetic expressions - int

// local
a=1;
b=2;
if (FALSE)
  // do nothing
elif ( (- ( a + b )) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - local var - int") ;
end if;

// literal
if (FALSE)
  // do nothing
elif ( (- ( 1 + 2 )) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - literal - int") ;
end if;

// received event
if (FALSE)
  // do nothing
elif ( (- ( rcvd_evt.i1 + rcvd_evt.i2)) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - supp data - int") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif ( (- ( self.i1 + self.i2)) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif ( (-(tce.i1 + tce.i2)) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif ( (- ( (cardinality tce ) + 2*((cardinality no_instances)+1))) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - int") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif ( (- ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) )) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - transform - int") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif ( (- ( BR::ret_int(i:-3) + BR::ret_int(i:6) )) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - int") ;
end if;

end if;  // end local scope
if (true)  // create local scope


// real

// if arithmetic expressios + real

// local
a=1.0;
b=2.0;
if (FALSE)
  // do nothing
elif ( (+ ( a + b )) > 2.9 and (+ ( a + b )) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - local var - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - local var - real") ;
end if;

// literal
if (FALSE)
  // do nothing
elif ( (+ ( 1.0 + 2.0 )) > 2.9 and (+ ( 1.0 + 2.0 )) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - literal - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - literal - real") ;
end if;

// received event
if (FALSE)
  // do nothing
elif ( (+ ( rcvd_evt.r1 + rcvd_evt.r2)) > 2.9 and (+ ( rcvd_evt.r1 + rcvd_evt.r2)) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - supp data - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - supp data - real") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif ( (+ ( self.r1 + self.r2)) > 2.9 and (+ ( self.r1 + self.r2)) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - real") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif ( (+(tce.r1 + tce.r2)) > 2.9 and (+(tce.r1 + tce.r2)) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - real") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif ( (+ ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) > 2.9 and (+ ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - real") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (+ ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) > 2.9 and (+ ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - transform - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - transform - real") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (+ ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) > 2.9 and (+ ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - real") ;
end if;


// if arithmetic expressions -  real

// local
a=1.0;
b=2.0;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( a + b )) > -3.1 and (- ( a + b )) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - local var - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - local var - real") ;
end if;

// literal
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( 1.0 + 2.0 )) > -3.1 and (- ( 1.0 + 2.0 )) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - literal - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - literal - real") ;
end if;

// received event
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( rcvd_evt.r1 + rcvd_evt.r2)) >  -3.1 and (- ( rcvd_evt.r1 + rcvd_evt.r2)) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - supp data - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - supp data - real") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( self.r1 + self.r2)) >  -3.1 and (- ( self.r1 + self.r2)) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - real") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (-(tce.r1 + tce.r2)) >  -3.1 and (-(tce.r1 + tce.r2)) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - real") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) > -3.1 and (- ( (cardinality tce * 1.0) + 2*((cardinality no_instances)+1.0))) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - real") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) > -3.1 and (- ( TRAN::ret_real(r:5.0) + TRAN::ret_real(r:-2.0) )) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - transform - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - transform - real") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( (- ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) > -3.1 and (- ( BR::ret_real(r:-3.0) + BR::ret_real(r:6.0) )) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - real") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - real") ;
end if;


end if;  // end local scope
if (true)  // create local scope


// single

// local
a1=FALSE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( a1 ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - local var - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - local var - single") ;
end if;

// literal
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( FALSE ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - literal - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - literal - single") ;
end if;

// received event
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( rcvd_evt.b2 ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - rcvd_evt - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - rcvd_evt - single") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( self.b2 ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - self - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - self - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( tce.b2 ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - inst_ref - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - inst_ref - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( empty tce ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - functions - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - functions - single") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( TRAN::ret_bool(b:FALSE) ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - transforms - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - transforms - single") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( not ( BR::ret_bool(b:FALSE) ) == TRUE )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of not expression - bridge - realized - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of not expression - bridge - realized - single") ;
end if;

end if;  // end local scope
if (true)  // create local scope


// if arithmetic expressions op + int

// local
b=2;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( +b == 2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - local var - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - local var - int - single") ;
end if;

// literal
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( +3 == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - literal - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - literal - int - single") ;
end if;

// received event
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( rcvd_evt.i2 ) == 2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - supp data - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - supp data - int - single") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( self.i2) == 2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - int - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( +(tce.i2) == 2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - int - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( cardinality tce ) == 1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - int - single") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( TRAN::ret_int(i:3) ) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - transform - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - transform - int - single") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( BR::ret_int(i:3) ) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - int - single") ;
end if;


// if arithmetic expressions - int

// local
b=2;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( -( b ) == -2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - local var - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - local var - int - single") ;
end if;

// literal
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( 2 ) == -2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - literal - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - literal - int - single") ;
end if;

// received event
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( rcvd_evt.i2 ) == -2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - supp data - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - supp data - int - single") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( self.i2 ) == -2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - int - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( -(tce.i2) == -2 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - int - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( cardinality tce ) == -1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - int - single") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( TRAN::ret_int(i:3) ) == -3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - transform - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - transform - int - single") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( BR::ret_int(i:-3) ) == 3 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - int - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - int - single") ;
end if;

end if;  // end local scope
if (true)  // create local scope


// real

// if arithmetic expressions + real

// local
b=2.0;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( b ) > 1.9 and + ( b ) < 2.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - local var - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - local var - real - single") ;
end if;

// literal
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( 2.0 ) > 1.9 and + ( 2.0 ) < 2.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - literal - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - literal - real - single") ;
end if;

// received event
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( rcvd_evt.r2) > 1.9 and + ( rcvd_evt.r2) < 2.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - supp data - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - supp data - real - single") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( self.r2 ) > 1.9 and + ( self.r2 ) < 2.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - real - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( +(tce.r2) > 1.9 and +(tce.r2) < 2.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - inst_ref - real - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( cardinality tce * 1.0 ) > 0.9 and + ( cardinality tce * 1.0 ) < 1.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - cardinality - real - single") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( TRAN::ret_real(r:3.0) ) > 2.9 and + ( TRAN::ret_real(r:3.0) ) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - transform - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - transform - real - single") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( + ( BR::ret_real(r:3.0) ) > 2.9 and + ( BR::ret_real(r:3.0) ) < 3.1 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - bridge - realized - real - single") ;
end if;


// if arithmetic expressions - real

// local
b=3.0;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( b ) > -3.1 and - ( b ) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - local var - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - local var - real - single") ;
end if;

// literal
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( 3.0 ) > -3.1 and - ( 3.0 ) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - literal - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - literal - real - single") ;
end if;

// received event
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( rcvd_evt.r2 ) > -2.1 and - ( rcvd_evt.r2 ) < -1.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - supp data - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - supp data - real - single") ;
end if;

// attribute of object - self
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( self.r2 ) > -2.1 and - ( self.r2 ) < -1.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of + (expression) - self - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of + (expression) - self - real - single") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( -(tce.r2) > -2.1 and -(tce.r2) < -1.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - inst_ref - real - single") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( (cardinality tce * 1.0) ) > -1.1 and - ( (cardinality tce * 1.0) ) < -.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - cardinality - real - single") ;
end if;

// transformer invocations
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( TRAN::ret_real(r:3.0) ) > -3.1 and - ( TRAN::ret_real(r:3.0) ) < 2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - transform - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - transform - real - single") ;
end if;

// bridge invocations realized
if (FALSE)
  // do nothing
elif (FALSE)
  // do nothing
elif ( - ( BR::ret_real(r:3.0) ) > -3.1 and - ( BR::ret_real(r:3.0) ) < -2.9 )
  LOG::LogSuccess(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - real - single") ;
else
  LOG::LogFailure(message:"TCE - Else Expressions - assignment of - (expression) - bridge - realized - real - single") ;
end if;

end if;  // end local scope

generate TCE4:''next test with supp data''(i1:1,i2:2,r1:1.0,r2:2.0,b1:TRUE,b2:FALSE) to self;

',
	'');
INSERT INTO SM_STATE
	VALUES (1572879,
	1572867,
	0,
	'Expressions Within Parameters',
	16,
	0);
INSERT INTO SM_CH
	VALUES (1572879,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572879,
	1572865,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572879,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572879,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572879,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572879,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572879,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572879,
	1572868,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572879,
	1572869,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572879,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572879,
	1572867,
	1572879);
INSERT INTO SM_AH
	VALUES (1572879,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572879,
	1572867,
	1,
	'select any dr from instances of DR;

// Expressions as parameters to transforms, bridges, 
// events (generate and precreate)
//
//   (parm:<expression> .... )
//   elif <boolean expression>
//
// Expressions
// -----------
//
//  not <boolean expression>
//  <expression> <boolean operation> <expression>
//
//    <boolean expression> is one that evaluates to TRUE or FALSE
//
//    <expression>  - simple, or compound.  Both must evaluate to
//     the same type: arithmetic, boolean, or string.
//

LOG::LogInfo(message:"Starting Test Compound Expressions - Parm Expressions") ;

// Bridges

// local
a=1;
b=2;
ans = BR::ret_bool(b:(not ( (a ==b) AND (b == a) ) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - local var") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - local var") ;
end if;

// literal
ans = BR::ret_bool(b:(not ( (1 == 2) AND (3 == 3) ) ));
if ( ans )
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - literal") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - literal") ;
end if;

// received event

ans = BR::ret_bool(b:(not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) ) ) );
if ( ans )
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - rcvd_evt") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - rcvd_evt") ;
end if;

// attribute of object - self
ans = BR::ret_bool(b:( not ( (self.b1 == self.b2) AND (self.b1 == self.b1) ) ) );
if (ans)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - self") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - self") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans = BR::ret_bool(b:( not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) ) ) );
if (ans)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - inst_ref") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - inst_ref") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans = BR::ret_bool(b:( not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) ) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - functions") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - functions") ;
end if;

// transformer invocations
ans = BR::ret_bool(b:( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - transforms") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - transforms") ;
end if;

// bridge invocations realized
ans = BR::ret_bool(b:( not ( (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:FALSE) ) AND (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:TRUE))) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of not expression - bridge - realized") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of not expression - bridge - realized") ;
end if;

// if aritmetic expressions + int

// local
a=1;
b=2;
ans1 = BR::ret_int(i:( (+ ( a + b )) ));
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - local var - int") ;
end if;

// literal

ans1 = BR::ret_int(i:( (+ ( 1 + 2 )) ));
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - literal - int") ;
end if;

// received event
ans1 = BR::ret_int(i:(+ ( rcvd_evt.i1 + rcvd_evt.i2)) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - supp data - int") ;
end if;

// attribute of object - self
ans1 = BR::ret_int(i:(+ ( self.i1 + self.i2) ) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = BR::ret_int(i:(+(tce.i1 + tce.i2)) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans1 = BR::ret_int(i:(+ ( (cardinality tce ) + 2*((cardinality no_instances)+1)) ) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - cardinality - int") ;
end if;

// transformer invocations
ans1 = BR::ret_int(i:( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) ));
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - transform - int") ;
end if;

// bridge invocations realized
ans1 = BR::ret_int(i:( (+ ( BR::ret_int(i:-3) + BR::ret_int(i:6) )) ));
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - bridge - realized - int") ;
end if;


// if aritmetic expressions - int

// local
a=1;
b=2;
ans1 = BR::ret_int(i:( (- ( a + b )) ));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - local var - int") ;
end if;

// literal
ans1 = BR::ret_int(i:(- ( 1 + 2 )));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - literal - int") ;
end if;

// received event
ans1 = BR::ret_int(i:(- ( rcvd_evt.i1 + rcvd_evt.i2)));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - supp data - int") ;
end if;

// attribute of object - self
ans1 = BR::ret_int(i:(- ( self.i1 + self.i2)));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = BR::ret_int(i:(-(tce.i1 + tce.i2)));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans1 = BR::ret_int(i:(- ( (cardinality tce ) + 2*((cardinality no_instances)+1))));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - cardinality - int") ;
end if;

// transformer invocations
ans1 = BR::ret_int(i:(- ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) )) );
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - transform - int") ;
end if;

// bridge invocations realized
ans1 = BR::ret_int(i:(- ( BR::ret_int(i:-3) + BR::ret_int(i:6) )));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Bridge Parm Expressions - assignment of - (expression) - bridge - realized - int") ;
end if;

// Transforms

// local
a=1;
b=2;
ans = TRAN::ret_bool(b:(not ( (a ==b) AND (b == a) ) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - local var") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - local var") ;
end if;

// literal
ans = TRAN::ret_bool(b:(not ( (1 == 2) AND (3 == 3) ) ));
if ( ans )
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - literal") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - literal") ;
end if;

// received event

ans = TRAN::ret_bool(b:(not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) ) ) );
if ( ans )
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - rcvd_evt") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - rcvd_evt") ;
end if;

// attribute of object - self
ans = TRAN::ret_bool(b:( not ( (self.b1 == self.b2) AND (self.b1 == self.b1) ) ) );
if (ans)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - self") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - self") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans = TRAN::ret_bool(b:( not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) ) ) );
if (ans)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - inst_ref") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - inst_ref") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans = TRAN::ret_bool(b:( not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) ) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - functions") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - functions") ;
end if;

// transformer invocations
ans = TRAN::ret_bool(b:( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - transforms") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - transforms") ;
end if;

// bridge invocations realized
ans = TRAN::ret_bool(b:( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) ));
if (ans)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of not expression - bridge - realized") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of not expression - bridge - realized") ;
end if;

// if aritmetic expressions + int

// local
a=1;
b=2;
ans1 = TRAN::ret_int(i:( (+ ( a + b )) ));
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - local var - int") ;
end if;

// literal

ans1 = TRAN::ret_int(i:( (+ ( 1 + 2 )) ));
if ( ans1 == 3 )
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - literal - int") ;
end if;

// received event
ans1 = TRAN::ret_int(i:(+ ( rcvd_evt.i1 + rcvd_evt.i2)) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - supp data - int") ;
end if;

// attribute of object - self
ans1 = TRAN::ret_int(i:(+ ( self.i1 + self.i2) ) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = TRAN::ret_int(i:(+(tce.i1 + tce.i2)) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans1 = TRAN::ret_int(i:(+ ( (cardinality tce ) + 2*((cardinality no_instances)+1)) ) );
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - cardinality - int") ;
end if;

// transformer invocations
ans1 = TRAN::ret_int(i:( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) ));
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - transform - int") ;
end if;

// bridge invocations realized
ans1 = TRAN::ret_int(i:( (+ ( TRAN::ret_int(i:-3) + TRAN::ret_int(i:6) )) ));
if (ans1 == 3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - bridge - realized - int") ;
end if;


// if aritmetic expressions - int

// local
a=1;
b=2;
ans1 = TRAN::ret_int(i:( (- ( a + b )) ));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - local var - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - local var - int") ;
end if;

// literal
ans1 = TRAN::ret_int(i:(- ( 1 + 2 )));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - literal - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - literal - int") ;
end if;

// received event
ans1 = TRAN::ret_int(i:(- ( rcvd_evt.i1 + rcvd_evt.i2)));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - supp data - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - supp data - int") ;
end if;

// attribute of object - self
ans1 = TRAN::ret_int(i:(- ( self.i1 + self.i2)));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of + (expression) - self - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of + (expression) - self - int") ;
end if;

// attribute of object - inst_ref
select any tce from instances of TCE;
ans1 = TRAN::ret_int(i:(-(tce.i1 + tce.i2)));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - inst_ref - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - inst_ref - int") ;
end if;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
ans1 = TRAN::ret_int(i:(- ( (cardinality tce ) + 2*((cardinality no_instances)+1))));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - cardinality - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - cardinality - int") ;
end if;

// transformer invocations
ans1 = TRAN::ret_int(i:(- ( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) )) );
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - transform - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - transform - int") ;
end if;

// bridge invocations realized
ans1 = TRAN::ret_int(i:(- ( TRAN::ret_int(i:-3) + TRAN::ret_int(i:6) )));
if (ans1 == -3)
  LOG::LogSuccess(message:"TCE - Transform Parm Expressions - assignment of - (expression) - bridge - realized - int") ;
else
  LOG::LogFailure(message:"TCE - Transform Parm Expressions - assignment of - (expression) - bridge - realized - int") ;
end if;

// Event instance Creation

ack_count=0;

// local
a=1;
b=2;
create event instance e1 of TCE5:''bool event''(b1:(not ( (a ==b) AND (b == a) ) )) to self;
generate e1;
ack_count=ack_count+1;

// literal
create event instance e1 of TCE5:''bool event''(b1:(not ( (1 == 2) AND (3 == 3) ) )) to self;
generate e1;
ack_count=ack_count+1;

// received event
create event instance e1 of TCE5:''bool event''(b1:(not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) ) ) ) to self;
generate e1;
ack_count=ack_count+1;

// attribute of object - self
create event instance e1 of TCE5:''bool event''(b1:( not ( (self.b1 == self.b2) AND (self.b1 == self.b1) ) ) ) to self;
generate e1;
ack_count=ack_count+1;

// attribute of object - inst_ref
select any tce from instances of TCE;
create event instance e1 of TCE5:''bool event''(b1:( not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) ) ) ) to self;
generate e1;
ack_count=ack_count+1;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
create event instance e1 of TCE5:''bool event''(b1:( not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) ) )) to self;
generate e1;
ack_count=ack_count+1;

// transformer invocations
create event instance e1 of TCE5:''bool event''(b1:( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) )) to self;
generate e1;
ack_count=ack_count+1;

// bridge invocations realized
create event instance e1 of TCE5:''bool event''(b1:( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) )) to self;
generate e1;
ack_count=ack_count+1;

// if aritmetic expressions + int

// local
a=1;
b=2;
create event instance e2 of TCE6:''int event''(i1:( (+ ( a + b )) )) to self;
generate e2;
ack_count=ack_count+1;

// literal
create event instance e2 of TCE6:''int event''(i1:( (+ ( 1 + 2 )) )) to self;
generate e2;
ack_count=ack_count+1;

// received event
create event instance e2 of TCE6:''int event''(i1:(+ ( rcvd_evt.i1 + rcvd_evt.i2)) ) to self;
generate e2;
ack_count=ack_count+1;

// attribute of object - self
create event instance e2 of TCE6:''int event''(i1:(+ ( self.i1 + self.i2) ) ) to self;
generate e2;
ack_count=ack_count+1;

// attribute of object - inst_ref
select any tce from instances of TCE;
create event instance e2 of TCE6:''int event''(i1:(+(tce.i1 + tce.i2)) ) to self;
generate e2;
ack_count=ack_count+1;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
create event instance e2 of TCE6:''int event''(i1:(+ ( (cardinality tce ) + 2*((cardinality no_instances)+1)) ) ) to self;
generate e2;
ack_count=ack_count+1;

// transformer invocations
create event instance e2 of TCE6:''int event''(i1:( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) )) to self;
generate e2;
ack_count=ack_count+1;

// bridge invocations realized
create event instance e2 of TCE6:''int event''(i1:( (+ ( TRAN::ret_int(i:-3) + TRAN::ret_int(i:6) )) )) to self;
generate e2;
ack_count=ack_count+1;


// the e1 and e2 events will take us to the next state

self.ack_count=ack_count;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572880,
	1572867,
	0,
	'Count Acks from Bool Event',
	17,
	0);
INSERT INTO SM_CH
	VALUES (1572880,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572880,
	1572865,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572880,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572880,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572880,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572880,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572880,
	1572868,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572880,
	1572869,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572880,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572880,
	1572867,
	1572880);
INSERT INTO SM_AH
	VALUES (1572880,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572880,
	1572867,
	1,
	'if (rcvd_evt.b1 == TRUE)
  LOG::LogSuccess(message:"TCE - Count acks from Bool Event") ;
else
  LOG::LogFailure(message:"TCE - Count acks from Bool Event") ;
end if;
self.ack_count = self.ack_count - 1;
if (self.ack_count == 0)
  generate TCE4:''next test with supp data''(b1:TRUE,b2:FALSE,i1:1,i2:2,r1:1.0,r2:2.0) to self;
end if;',
	'');
INSERT INTO SM_STATE
	VALUES (1572881,
	1572867,
	0,
	'Count Acks from Int Event',
	18,
	0);
INSERT INTO SM_CH
	VALUES (1572881,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572881,
	1572865,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572881,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572881,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572881,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572881,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572881,
	1572868,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572881,
	1572869,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572881,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572881,
	1572867,
	1572881);
INSERT INTO SM_AH
	VALUES (1572881,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572881,
	1572867,
	1,
	'if (rcvd_evt.i1 == 3)
  LOG::LogSuccess(message:"TCE - Count acks from Int Event") ;
else
  LOG::LogFailure(message:"TCE - Count acks from Int Event") ;
end if;
self.ack_count = self.ack_count - 1;
if (self.ack_count == 0)
  generate TCE4:''next test with supp data''(b1:TRUE,b2:FALSE,i1:1,i2:2,r1:1.0,r2:2.0) to self;
end if;',
	'');
INSERT INTO SM_STATE
	VALUES (1572882,
	1572867,
	0,
	'More Expressions within Parms',
	19,
	0);
INSERT INTO SM_CH
	VALUES (1572882,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572882,
	1572865,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572882,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572882,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572882,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572882,
	1572867,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572882,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572882,
	1572868,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572882,
	1572869,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572882,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572882,
	1572867,
	1572882);
INSERT INTO SM_AH
	VALUES (1572882,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572882,
	1572867,
	1,
	'// Event generation

ack_count=0;

// local
a=1;
b=2;
generate TCE5:''bool event''(b1:(not ( (a ==b) AND (b == a) ) )) to self;

ack_count=ack_count+1;

// literal
generate TCE5:''bool event''(b1:(not ( (1 == 2) AND (3 == 3) ) )) to self;

ack_count=ack_count+1;

// received event
generate TCE5:''bool event''(b1:(not ( (rcvd_evt.b1 == rcvd_evt.b2) AND (rcvd_evt.b1 == rcvd_evt.b1) ) ) ) to self;

ack_count=ack_count+1;

// attribute of object - self
generate TCE5:''bool event''(b1:( not ( (self.b1 == self.b2) AND (self.b1 == self.b1) ) ) ) to self;

ack_count=ack_count+1;

// attribute of object - inst_ref
select any tce from instances of TCE;
generate TCE5:''bool event''(b1:( not ( (tce.b1 == tce.b2) AND (tce.b1 == tce.b1) ) ) ) to self;

ack_count=ack_count+1;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
generate TCE5:''bool event''(b1:( not ( (not_empty tce AND empty no_instances) AND (empty tce AND not_empty no_instances) ) )) to self;

ack_count=ack_count+1;

// transformer invocations
generate TCE5:''bool event''(b1:( not ( (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:FALSE) ) AND (TRAN::ret_bool(b:TRUE) AND TRAN::ret_bool(b:TRUE))) )) to self;

ack_count=ack_count+1;

// bridge invocations realized
generate TCE5:''bool event''(b1:( not ( (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:FALSE) ) AND (BR::ret_bool(b:TRUE) AND BR::ret_bool(b:TRUE))) )) to self;

ack_count=ack_count+1;

// if aritmetic expressions + int

// local
a=1;
b=2;
generate TCE6:''int event''(i1:( (+ ( a + b )) )) to self;

ack_count=ack_count+1;

// literal
generate TCE6:''int event''(i1:( (+ ( 1 + 2 )) )) to self;

ack_count=ack_count+1;

// received event
generate TCE6:''int event''(i1:(+ ( rcvd_evt.i1 + rcvd_evt.i2)) ) to self;

ack_count=ack_count+1;

// attribute of object - self
generate TCE6:''int event''(i1:(+ ( self.i1 + self.i2) ) ) to self;

ack_count=ack_count+1;

// attribute of object - inst_ref
select any tce from instances of TCE;
generate TCE6:''int event''(i1:(+(tce.i1 + tce.i2)) ) to self;

ack_count=ack_count+1;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
generate TCE6:''int event''(i1:(+ ( (cardinality tce ) + 2*((cardinality no_instances)+1)) ) ) to self;

ack_count=ack_count+1;

// transformer invocations
generate TCE6:''int event''(i1:( TRAN::ret_int(i:5) + TRAN::ret_int(i:-2) )) to self;

ack_count=ack_count+1;

// bridge invocations realized
generate TCE6:''int event''(i1:( (+ ( BR::ret_int(i:-3) + BR::ret_int(i:6) )) )) to self;

ack_count=ack_count+1;

// single

// local
bv=FALSE;
generate TCE5:''bool event''(b1:(not(bv))) to self;

ack_count=ack_count+1;

// literal
generate TCE5:''bool event''(b1:(not FALSE)) to self;

ack_count=ack_count+1;

// received event
generate TCE5:''bool event''(b1:(not(rcvd_evt.b2))) to self;

ack_count=ack_count+1;

// attribute of object - self
generate TCE5:''bool event''(b1:(not self.b2)) to self;

ack_count=ack_count+1;

// attribute of object - inst_ref
select any tce from instances of TCE;
generate TCE5:''bool event''(b1:( not tce.b2 )) to self;

ack_count=ack_count+1;

// function invocations
select any tce from instances of TCE;
select any no_instances from instances of NOI;
generate TCE5:''bool event''(b1:( not(empty tce))) to self;
generate TCE5:''bool event''(b1:(not(not_empty no_instances))) to self;
generate TCE5:''bool event''(b1:(empty no_instances)) to self;
generate TCE5:''bool event''(b1:(not_empty tce)) to self;

ack_count=ack_count+4;

// transformer invocations
generate TCE5:''bool event''(b1:(not(TRAN::ret_bool(b:FALSE)))) to self;
generate TCE5:''bool event''(b1:(TRAN::ret_bool(b:TRUE))) to self;

ack_count=ack_count+2;

// bridge invocations realized
generate TCE5:''bool event''(b1:(not(BR::ret_bool(b:FALSE)))) to self;
generate TCE5:''bool event''(b1:(BR::ret_bool(b:TRUE))) to self;

ack_count=ack_count+2;

// if aritmetic expressions + int

// local
b=3;
generate TCE6:''int event''(i1:+(b)) to self;

ack_count=ack_count+1;

// literal
generate TCE6:''int event''(i1:+(3)) to self;

ack_count=ack_count+1;

// function invocations
create object instance t2 of TCE;
create object instance t3 of TCE;

select many tces from instances of TCE;
generate TCE6:''int event''(i1:+(cardinality tces)) to self;

delete object instance t2;
delete object instance t3;

ack_count=ack_count+1;

// transformer invocations
generate TCE6:''int event''(i1:+(TRAN::ret_int(i:3))) to self;

ack_count=ack_count+1;

// bridge invocations realized
generate TCE6:''int event''(i1:+(BR::ret_int(i:3))) to self;

ack_count=ack_count+1;



// the e1 and e2 events will take us to the next state

self.ack_count=ack_count;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572883,
	1572867,
	0,
	'Bool Event Acks',
	20,
	0);
INSERT INTO SM_CH
	VALUES (1572883,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572883,
	1572865,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572883,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572883,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572883,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572883,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572883,
	1572868,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572883,
	1572869,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572883,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572883,
	1572867,
	1572883);
INSERT INTO SM_AH
	VALUES (1572883,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572883,
	1572867,
	1,
	'if (rcvd_evt.b1 == TRUE)
  LOG::LogSuccess(message:"TCE - Count acks from Bool Event") ;
else
  LOG::LogFailure(message:"TCE - Count acks from Bool Event") ;
end if;
self.ack_count = self.ack_count - 1;
if (self.ack_count == 0)
  generate TCE4:''next test with supp data''(b1:TRUE,b2:FALSE,i1:1,i2:2,r1:1.0,r2:2.0) to self;
end if;',
	'');
INSERT INTO SM_STATE
	VALUES (1572884,
	1572867,
	0,
	'Int Event Acks',
	21,
	0);
INSERT INTO SM_CH
	VALUES (1572884,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572884,
	1572865,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572884,
	1572866,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572884,
	1572866,
	1572867,
	0);
INSERT INTO SM_CH
	VALUES (1572884,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572884,
	1572867,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572884,
	1572868,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572884,
	1572869,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572884,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572884,
	1572867,
	1572884);
INSERT INTO SM_AH
	VALUES (1572884,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572884,
	1572867,
	1,
	'if (rcvd_evt.i1 == 3)
  LOG::LogSuccess(message:"TCE - Count acks from Int Event") ;
else
  LOG::LogFailure(message:"TCE - Count acks from Int Event") ;
end if;
self.ack_count = self.ack_count - 1;
if (self.ack_count == 0)
  generate TCE4:''next test with supp data''(b1:TRUE,b2:FALSE,i1:1,i2:2,r1:1.0,r2:2.0) to self;
end if;',
	'');
INSERT INTO SM_STATE
	VALUES (1572886,
	1572867,
	0,
	'Compound Expressions Using inst_ref_set<Object>',
	22,
	0);
INSERT INTO SM_EIGN
	VALUES (1572886,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572886,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572886,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572886,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572886,
	1572867,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572886,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572886,
	1572868,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572886,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572886,
	1572869,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572886,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572886,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572886,
	1572867,
	1572886);
INSERT INTO SM_AH
	VALUES (1572886,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572886,
	1572867,
	1,
	'select many a_set from instances of A;
select many b_set from instances of A;
select many c_set from instances of A;
select many d_set from instances of A;

if (( a_set == b_set ) and ( c_set == d_set ))
   LOG::LogSuccess (message:"Test Compound Expressions - inst_ref_set<Object>") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - inst_ref_set<Object>") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_STATE
	VALUES (1572887,
	1572867,
	0,
	'Compound Expressions Using inst_ref<Object>',
	23,
	0);
INSERT INTO SM_EIGN
	VALUES (1572887,
	1572865,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572887,
	1572865,
	1572867,
	0);
INSERT INTO SM_SEME
	VALUES (1572887,
	1572866,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572887,
	1572867,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572887,
	1572867,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572887,
	1572868,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572887,
	1572868,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572887,
	1572869,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572887,
	1572869,
	1572867,
	0);
INSERT INTO SM_EIGN
	VALUES (1572887,
	1572870,
	1572867,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (1572887,
	1572870,
	1572867,
	0);
INSERT INTO SM_MOAH
	VALUES (1572887,
	1572867,
	1572887);
INSERT INTO SM_AH
	VALUES (1572887,
	1572867);
INSERT INTO SM_ACT
	VALUES (1572887,
	1572867,
	1,
	'select any a from instances of A;
select any b from instances of A where selected.a_id == a.a_id;
select any c from instances of A;
select any d from instances of A where selected.a_id == c.a_id;

if (( a == b ) and ( c == d))
   LOG::LogSuccess (message:"Test Compound Expressions - inst_ref<Object>") ;
else
   LOG::LogFailure (message:"Test Compound Expressions - inst_ref<Object>") ;
end if;

// send next test event back to controlling object
select any dr from instances of DR;
generate DR2:''next test'' () to dr;
',
	'');
INSERT INTO SM_NSTXN
	VALUES (1572865,
	1572867,
	1572865,
	1572865,
	0);
INSERT INTO SM_TXN
	VALUES (1572865,
	1572867,
	1572865,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572866,
	1572867,
	1572865,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572866,
	1572867,
	1572866,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572867,
	1572867,
	1572866,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572867,
	1572867,
	1572867,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572868,
	1572867,
	1572868,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572868,
	1572867,
	1572869,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572869,
	1572867,
	1572869,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572869,
	1572867,
	1572870,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572870,
	1572867,
	1572870,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572870,
	1572867,
	1572871,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572871,
	1572867,
	1572871,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572871,
	1572867,
	1572872,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572873,
	1572867,
	1572874,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572873,
	1572867,
	1572875,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572874,
	1572867,
	1572867,
	1572867,
	0);
INSERT INTO SM_TXN
	VALUES (1572874,
	1572867,
	1572868,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572875,
	1572867,
	1572873,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572875,
	1572867,
	1572874,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572876,
	1572867,
	1572875,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572876,
	1572867,
	1572877,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572877,
	1572867,
	1572877,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572877,
	1572867,
	1572878,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572878,
	1572867,
	1572878,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572878,
	1572867,
	1572879,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572879,
	1572867,
	1572879,
	1572869,
	0);
INSERT INTO SM_TXN
	VALUES (1572879,
	1572867,
	1572880,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572880,
	1572867,
	1572879,
	1572870,
	0);
INSERT INTO SM_TXN
	VALUES (1572880,
	1572867,
	1572881,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572881,
	1572867,
	1572880,
	1572870,
	0);
INSERT INTO SM_TXN
	VALUES (1572881,
	1572867,
	1572881,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572882,
	1572867,
	1572881,
	1572869,
	0);
INSERT INTO SM_TXN
	VALUES (1572882,
	1572867,
	1572880,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572883,
	1572867,
	1572880,
	1572869,
	0);
INSERT INTO SM_TXN
	VALUES (1572883,
	1572867,
	1572880,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572884,
	1572867,
	1572881,
	1572870,
	0);
INSERT INTO SM_TXN
	VALUES (1572884,
	1572867,
	1572881,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572885,
	1572867,
	1572881,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572885,
	1572867,
	1572882,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572886,
	1572867,
	1572880,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572886,
	1572867,
	1572882,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572887,
	1572867,
	1572883,
	1572869,
	0);
INSERT INTO SM_TXN
	VALUES (1572887,
	1572867,
	1572883,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572888,
	1572867,
	1572884,
	1572869,
	0);
INSERT INTO SM_TXN
	VALUES (1572888,
	1572867,
	1572883,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572889,
	1572867,
	1572883,
	1572870,
	0);
INSERT INTO SM_TXN
	VALUES (1572889,
	1572867,
	1572884,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572890,
	1572867,
	1572884,
	1572870,
	0);
INSERT INTO SM_TXN
	VALUES (1572890,
	1572867,
	1572884,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572891,
	1572867,
	1572882,
	1572870,
	0);
INSERT INTO SM_TXN
	VALUES (1572891,
	1572867,
	1572884,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572892,
	1572867,
	1572882,
	1572869,
	0);
INSERT INTO SM_TXN
	VALUES (1572892,
	1572867,
	1572883,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572897,
	1572867,
	1572884,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572897,
	1572867,
	1572876,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572896,
	1572867,
	1572883,
	1572868,
	0);
INSERT INTO SM_TXN
	VALUES (1572896,
	1572867,
	1572876,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572899,
	1572867,
	1572887,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572899,
	1572867,
	1572886,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572898,
	1572867,
	1572886,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572898,
	1572867,
	1572873,
	0);
INSERT INTO SM_NSTXN
	VALUES (1572900,
	1572867,
	1572872,
	1572866,
	0);
INSERT INTO SM_TXN
	VALUES (1572900,
	1572867,
	1572887,
	0);
INSERT INTO GD_MD
	VALUES (1572865,
	8,
	1572867,
	40,
	1,
	0,
	1,
	1,
	0,
	12,
	1164,
	3591,
	0.768700,
	0);
INSERT INTO GD_GE
	VALUES (1572866,
	1572865,
	1572865,
	41);
INSERT INTO GD_SHP
	VALUES (1572866,
	1696,
	1248,
	1872,
	1344);
INSERT INTO GD_GE
	VALUES (1572867,
	1572865,
	1572866,
	41);
INSERT INTO GD_SHP
	VALUES (1572867,
	1696,
	1392,
	1872,
	1488);
INSERT INTO GD_GE
	VALUES (1572868,
	1572865,
	1572867,
	41);
INSERT INTO GD_SHP
	VALUES (1572868,
	1696,
	1536,
	1872,
	1632);
INSERT INTO GD_GE
	VALUES (1572869,
	1572865,
	1572868,
	41);
INSERT INTO GD_SHP
	VALUES (1572869,
	1696,
	1680,
	1872,
	1776);
INSERT INTO GD_GE
	VALUES (1572870,
	1572865,
	1572869,
	41);
INSERT INTO GD_SHP
	VALUES (1572870,
	1696,
	1824,
	1872,
	1920);
INSERT INTO GD_GE
	VALUES (1572871,
	1572865,
	1572870,
	41);
INSERT INTO GD_SHP
	VALUES (1572871,
	1696,
	1968,
	1872,
	2064);
INSERT INTO GD_GE
	VALUES (1572872,
	1572865,
	1572871,
	41);
INSERT INTO GD_SHP
	VALUES (1572872,
	1696,
	2112,
	1872,
	2208);
INSERT INTO GD_GE
	VALUES (1572873,
	1572865,
	1572872,
	41);
INSERT INTO GD_SHP
	VALUES (1572873,
	1696,
	2256,
	1872,
	2352);
INSERT INTO GD_GE
	VALUES (1572874,
	1572865,
	1572873,
	41);
INSERT INTO GD_SHP
	VALUES (1572874,
	1984,
	1536,
	2160,
	1632);
INSERT INTO GD_GE
	VALUES (1572875,
	1572865,
	1572874,
	41);
INSERT INTO GD_SHP
	VALUES (1572875,
	1984,
	1680,
	2160,
	1776);
INSERT INTO GD_GE
	VALUES (1572876,
	1572865,
	1572875,
	41);
INSERT INTO GD_SHP
	VALUES (1572876,
	1984,
	1824,
	2160,
	1920);
INSERT INTO GD_GE
	VALUES (1572877,
	1572865,
	1572876,
	41);
INSERT INTO GD_SHP
	VALUES (1572877,
	2304,
	1536,
	2544,
	2064);
INSERT INTO GD_GE
	VALUES (1572878,
	1572865,
	1572877,
	41);
INSERT INTO GD_SHP
	VALUES (1572878,
	1984,
	1968,
	2160,
	2064);
INSERT INTO GD_GE
	VALUES (1572879,
	1572865,
	1572878,
	41);
INSERT INTO GD_SHP
	VALUES (1572879,
	1984,
	2112,
	2160,
	2208);
INSERT INTO GD_GE
	VALUES (1572880,
	1572865,
	1572879,
	41);
INSERT INTO GD_SHP
	VALUES (1572880,
	1984,
	2256,
	2160,
	2352);
INSERT INTO GD_GE
	VALUES (1572881,
	1572865,
	1572880,
	41);
INSERT INTO GD_SHP
	VALUES (1572881,
	2496,
	2176,
	2672,
	2272);
INSERT INTO GD_GE
	VALUES (1572882,
	1572865,
	1572881,
	41);
INSERT INTO GD_SHP
	VALUES (1572882,
	2496,
	2352,
	2672,
	2448);
INSERT INTO GD_GE
	VALUES (1572883,
	1572865,
	1572882,
	41);
INSERT INTO GD_SHP
	VALUES (1572883,
	2832,
	2256,
	2976,
	2368);
INSERT INTO GD_GE
	VALUES (1572884,
	1572865,
	1572883,
	41);
INSERT INTO GD_SHP
	VALUES (1572884,
	2832,
	2000,
	2992,
	2096);
INSERT INTO GD_GE
	VALUES (1572885,
	1572865,
	1572884,
	41);
INSERT INTO GD_SHP
	VALUES (1572885,
	3152,
	2000,
	3312,
	2096);
INSERT INTO GD_GE
	VALUES (1574181,
	1572865,
	1572886,
	41);
INSERT INTO GD_SHP
	VALUES (1574181,
	1984,
	1392,
	2160,
	1488);
INSERT INTO GD_GE
	VALUES (1574182,
	1572865,
	1572887,
	41);
INSERT INTO GD_SHP
	VALUES (1574182,
	1984,
	1248,
	2160,
	1344);
INSERT INTO GD_GE
	VALUES (1572887,
	1572865,
	1572866,
	42);
INSERT INTO GD_CON
	VALUES (1572887,
	1572866,
	1572867,
	0);
INSERT INTO GD_CTXT
	VALUES (1572887,
	0,
	0,
	0,
	0,
	0,
	0,
	1671,
	1352,
	1789,
	1387,
	-105,
	-1,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1572888,
	1572887,
	1792,
	1344,
	1792,
	1392,
	0);
INSERT INTO GD_GE
	VALUES (1572889,
	1572865,
	1572867,
	42);
INSERT INTO GD_CON
	VALUES (1572889,
	1572867,
	1572868,
	0);
INSERT INTO GD_CTXT
	VALUES (1572889,
	0,
	0,
	0,
	0,
	0,
	0,
	1673,
	1495,
	1787,
	1529,
	-103,
	-2,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1572890,
	1572889,
	1792,
	1488,
	1792,
	1536,
	0);
INSERT INTO GD_GE
	VALUES (1572891,
	1572865,
	1572874,
	42);
INSERT INTO GD_CON
	VALUES (1572891,
	1572868,
	1572869,
	0);
INSERT INTO GD_CTXT
	VALUES (1572891,
	0,
	0,
	0,
	0,
	0,
	0,
	1618,
	1639,
	1775,
	1681,
	-11,
	2,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574180,
	1572891,
	1792,
	1632,
	1792,
	1680,
	0);
INSERT INTO GD_GE
	VALUES (1572893,
	1572865,
	1572865,
	42);
INSERT INTO GD_CON
	VALUES (1572893,
	1572866,
	1572866,
	0);
INSERT INTO GD_CTXT
	VALUES (1572893,
	0,
	0,
	0,
	0,
	0,
	0,
	1658,
	1191,
	1766,
	1213,
	108,
	-48,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574000,
	1572893,
	1696,
	1280,
	1664,
	1280,
	0);
INSERT INTO GD_LS
	VALUES (1574001,
	1572893,
	1664,
	1280,
	1664,
	1216,
	1574000);
INSERT INTO GD_LS
	VALUES (1574002,
	1572893,
	1664,
	1216,
	1728,
	1216,
	1574001);
INSERT INTO GD_LS
	VALUES (1574003,
	1572893,
	1728,
	1216,
	1728,
	1248,
	1574002);
INSERT INTO GD_GE
	VALUES (1572898,
	1572865,
	1572868,
	42);
INSERT INTO GD_CON
	VALUES (1572898,
	1572869,
	1572870,
	0);
INSERT INTO GD_CTXT
	VALUES (1572898,
	0,
	0,
	0,
	0,
	0,
	0,
	1670,
	1788,
	1775,
	1811,
	-11,
	-3,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574179,
	1572898,
	1792,
	1776,
	1792,
	1824,
	0);
INSERT INTO GD_GE
	VALUES (1572902,
	1572865,
	1572869,
	42);
INSERT INTO GD_CON
	VALUES (1572902,
	1572870,
	1572871,
	0);
INSERT INTO GD_CTXT
	VALUES (1572902,
	0,
	0,
	0,
	0,
	0,
	0,
	1673,
	1931,
	1779,
	1953,
	-7,
	-4,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1572994,
	1572902,
	1792,
	1920,
	1792,
	1968,
	0);
INSERT INTO GD_GE
	VALUES (1572904,
	1572865,
	1572870,
	42);
INSERT INTO GD_CON
	VALUES (1572904,
	1572871,
	1572872,
	0);
INSERT INTO GD_CTXT
	VALUES (1572904,
	0,
	0,
	0,
	0,
	0,
	0,
	1674,
	2074,
	1780,
	2096,
	-6,
	-5,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1572996,
	1572904,
	1792,
	2064,
	1792,
	2112,
	0);
INSERT INTO GD_GE
	VALUES (1572906,
	1572865,
	1572871,
	42);
INSERT INTO GD_CON
	VALUES (1572906,
	1572872,
	1572873,
	0);
INSERT INTO GD_CTXT
	VALUES (1572906,
	0,
	0,
	0,
	0,
	0,
	0,
	1673,
	2218,
	1779,
	2240,
	-7,
	-5,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1573000,
	1572906,
	1792,
	2208,
	1792,
	2256,
	0);
INSERT INTO GD_GE
	VALUES (1572912,
	1572865,
	1572873,
	42);
INSERT INTO GD_CON
	VALUES (1572912,
	1572875,
	1572876,
	0);
INSERT INTO GD_CTXT
	VALUES (1572912,
	0,
	0,
	0,
	0,
	0,
	0,
	2084,
	1791,
	2189,
	1814,
	131,
	0,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574207,
	1572912,
	2064,
	1776,
	2064,
	1824,
	0);
INSERT INTO GD_GE
	VALUES (1572914,
	1572865,
	1572875,
	42);
INSERT INTO GD_CON
	VALUES (1572914,
	1572874,
	1572875,
	0);
INSERT INTO GD_CTXT
	VALUES (1572914,
	0,
	0,
	0,
	0,
	0,
	0,
	2080,
	1643,
	2185,
	1666,
	127,
	-4,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574211,
	1572914,
	2064,
	1632,
	2064,
	1680,
	0);
INSERT INTO GD_GE
	VALUES (1572916,
	1572865,
	1572876,
	42);
INSERT INTO GD_CON
	VALUES (1572916,
	1572876,
	1572878,
	0);
INSERT INTO GD_CTXT
	VALUES (1572916,
	0,
	0,
	0,
	0,
	0,
	0,
	2079,
	1924,
	2254,
	1966,
	196,
	-1,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574202,
	1572916,
	2064,
	1920,
	2064,
	1968,
	0);
INSERT INTO GD_GE
	VALUES (1572918,
	1572865,
	1572877,
	42);
INSERT INTO GD_CON
	VALUES (1572918,
	1572878,
	1572879,
	0);
INSERT INTO GD_CTXT
	VALUES (1572918,
	0,
	0,
	0,
	0,
	0,
	0,
	2080,
	2069,
	2255,
	2111,
	197,
	0,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574114,
	1572918,
	2064,
	2064,
	2064,
	2112,
	0);
INSERT INTO GD_GE
	VALUES (1572920,
	1572865,
	1572878,
	42);
INSERT INTO GD_CON
	VALUES (1572920,
	1572879,
	1572880,
	0);
INSERT INTO GD_CTXT
	VALUES (1572920,
	0,
	0,
	0,
	0,
	0,
	0,
	2079,
	2212,
	2254,
	2254,
	196,
	-1,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574117,
	1572920,
	2064,
	2208,
	2064,
	2256,
	0);
INSERT INTO GD_GE
	VALUES (1572922,
	1572865,
	1572879,
	42);
INSERT INTO GD_CON
	VALUES (1572922,
	1572880,
	1572881,
	0);
INSERT INTO GD_CTXT
	VALUES (1572922,
	0,
	0,
	0,
	0,
	0,
	0,
	2317,
	2208,
	2470,
	2231,
	149,
	-38,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574128,
	1572922,
	2160,
	2288,
	2496,
	2240,
	0);
INSERT INTO GD_GE
	VALUES (1572925,
	1572865,
	1572880,
	42);
INSERT INTO GD_CON
	VALUES (1572925,
	1572880,
	1572882,
	0);
INSERT INTO GD_CTXT
	VALUES (1572925,
	0,
	0,
	0,
	0,
	0,
	0,
	2336,
	2378,
	2451,
	2420,
	130,
	35,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574139,
	1572925,
	2160,
	2320,
	2496,
	2368,
	0);
INSERT INTO GD_GE
	VALUES (1572928,
	1572865,
	1572881,
	42);
INSERT INTO GD_CON
	VALUES (1572928,
	1572881,
	1572882,
	0);
INSERT INTO GD_CTXT
	VALUES (1572928,
	0,
	0,
	0,
	0,
	0,
	0,
	2379,
	2299,
	2494,
	2341,
	-28,
	6,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574138,
	1572928,
	2528,
	2272,
	2528,
	2352,
	0);
INSERT INTO GD_GE
	VALUES (1572930,
	1572865,
	1572882,
	42);
INSERT INTO GD_CON
	VALUES (1572930,
	1572882,
	1572881,
	0);
INSERT INTO GD_CTXT
	VALUES (1572930,
	0,
	0,
	0,
	0,
	0,
	0,
	2646,
	2305,
	2799,
	2328,
	165,
	2,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574137,
	1572930,
	2640,
	2352,
	2640,
	2272,
	0);
INSERT INTO GD_GE
	VALUES (1572932,
	1572865,
	1572883,
	42);
INSERT INTO GD_CON
	VALUES (1572932,
	1572881,
	1572881,
	0);
INSERT INTO GD_CTXT
	VALUES (1572932,
	0,
	0,
	0,
	0,
	0,
	0,
	2503,
	2117,
	2656,
	2140,
	1,
	2,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574123,
	1572932,
	2512,
	2176,
	2512,
	2144,
	0);
INSERT INTO GD_LS
	VALUES (1574124,
	1572932,
	2512,
	2144,
	2640,
	2144,
	1574123);
INSERT INTO GD_LS
	VALUES (1574125,
	1572932,
	2640,
	2144,
	2640,
	2176,
	1574124);
INSERT INTO GD_GE
	VALUES (1572936,
	1572865,
	1572884,
	42);
INSERT INTO GD_CON
	VALUES (1572936,
	1572882,
	1572882,
	0);
INSERT INTO GD_CTXT
	VALUES (1572936,
	0,
	0,
	0,
	0,
	0,
	0,
	2511,
	2488,
	2626,
	2530,
	-18,
	56,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574134,
	1572936,
	2512,
	2448,
	2512,
	2480,
	0);
INSERT INTO GD_LS
	VALUES (1574135,
	1572936,
	2512,
	2480,
	2656,
	2480,
	1574134);
INSERT INTO GD_LS
	VALUES (1574136,
	1572936,
	2656,
	2480,
	2656,
	2448,
	1574135);
INSERT INTO GD_GE
	VALUES (1572940,
	1572865,
	1572886,
	42);
INSERT INTO GD_CON
	VALUES (1572940,
	1572881,
	1572883,
	0);
INSERT INTO GD_CTXT
	VALUES (1572940,
	0,
	0,
	0,
	0,
	0,
	0,
	2688,
	2153,
	2863,
	2195,
	-19,
	-7,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574145,
	1572940,
	2672,
	2208,
	2912,
	2208,
	0);
INSERT INTO GD_LS
	VALUES (1574146,
	1572940,
	2912,
	2208,
	2912,
	2256,
	1574145);
INSERT INTO GD_GE
	VALUES (1572943,
	1572865,
	1572885,
	42);
INSERT INTO GD_CON
	VALUES (1572943,
	1572882,
	1572883,
	0);
INSERT INTO GD_CTXT
	VALUES (1572943,
	0,
	0,
	0,
	0,
	0,
	0,
	2699,
	2423,
	2874,
	2465,
	-8,
	55,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574143,
	1572943,
	2672,
	2416,
	2912,
	2416,
	0);
INSERT INTO GD_LS
	VALUES (1574144,
	1572943,
	2912,
	2416,
	2912,
	2368,
	1574143);
INSERT INTO GD_GE
	VALUES (1572946,
	1572865,
	1572887,
	42);
INSERT INTO GD_CON
	VALUES (1572946,
	1572884,
	1572884,
	0);
INSERT INTO GD_CTXT
	VALUES (1572946,
	0,
	0,
	0,
	0,
	0,
	0,
	2832,
	1938,
	2985,
	1961,
	-6,
	-1,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574154,
	1572946,
	2864,
	2000,
	2864,
	1968,
	0);
INSERT INTO GD_LS
	VALUES (1574155,
	1572946,
	2864,
	1968,
	2960,
	1968,
	1574154);
INSERT INTO GD_LS
	VALUES (1574156,
	1572946,
	2960,
	1968,
	2960,
	2000,
	1574155);
INSERT INTO GD_GE
	VALUES (1572950,
	1572865,
	1572890,
	42);
INSERT INTO GD_CON
	VALUES (1572950,
	1572885,
	1572885,
	0);
INSERT INTO GD_CTXT
	VALUES (1572950,
	0,
	0,
	0,
	0,
	0,
	0,
	3191,
	2139,
	3306,
	2181,
	-10,
	59,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574166,
	1572950,
	3216,
	2096,
	3216,
	2128,
	0);
INSERT INTO GD_LS
	VALUES (1574167,
	1572950,
	3216,
	2128,
	3296,
	2128,
	1574166);
INSERT INTO GD_LS
	VALUES (1574168,
	1572950,
	3296,
	2128,
	3296,
	2096,
	1574167);
INSERT INTO GD_GE
	VALUES (1572954,
	1572865,
	1572888,
	42);
INSERT INTO GD_CON
	VALUES (1572954,
	1572885,
	1572884,
	0);
INSERT INTO GD_CTXT
	VALUES (1572954,
	0,
	0,
	0,
	0,
	0,
	0,
	2995,
	1995,
	3148,
	2018,
	-3,
	-8,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574162,
	1572954,
	3152,
	2032,
	2992,
	2032,
	0);
INSERT INTO GD_GE
	VALUES (1572956,
	1572865,
	1572889,
	42);
INSERT INTO GD_CON
	VALUES (1572956,
	1572884,
	1572885,
	0);
INSERT INTO GD_CTXT
	VALUES (1572956,
	0,
	0,
	0,
	0,
	0,
	0,
	2995,
	2097,
	3110,
	2139,
	-22,
	65,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574161,
	1572956,
	2992,
	2080,
	3152,
	2080,
	0);
INSERT INTO GD_GE
	VALUES (1572958,
	1572865,
	1572892,
	42);
INSERT INTO GD_CON
	VALUES (1572958,
	1572883,
	1572884,
	0);
INSERT INTO GD_CTXT
	VALUES (1572958,
	0,
	0,
	0,
	0,
	0,
	0,
	2955,
	2200,
	3108,
	2223,
	170,
	33,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574148,
	1572958,
	2944,
	2256,
	2944,
	2096,
	0);
INSERT INTO GD_GE
	VALUES (1572961,
	1572865,
	1572891,
	42);
INSERT INTO GD_CON
	VALUES (1572961,
	1572883,
	1572885,
	0);
INSERT INTO GD_CTXT
	VALUES (1572961,
	0,
	0,
	0,
	0,
	0,
	0,
	3037,
	2347,
	3152,
	2389,
	-26,
	150,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574159,
	1572961,
	2976,
	2336,
	3184,
	2336,
	0);
INSERT INTO GD_LS
	VALUES (1574160,
	1572961,
	3184,
	2336,
	3184,
	2096,
	1574159);
INSERT INTO GD_GE
	VALUES (1573891,
	1572865,
	1572896,
	42);
INSERT INTO GD_CON
	VALUES (1573891,
	1572884,
	1572877,
	0);
INSERT INTO GD_CTXT
	VALUES (1573891,
	0,
	0,
	0,
	0,
	0,
	0,
	2588,
	1963,
	2763,
	2005,
	-15,
	-5,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574147,
	1573891,
	2832,
	2016,
	2544,
	2016,
	0);
INSERT INTO GD_GE
	VALUES (1573893,
	1572865,
	1572897,
	42);
INSERT INTO GD_CON
	VALUES (1573893,
	1572885,
	1572877,
	0);
INSERT INTO GD_CTXT
	VALUES (1573893,
	0,
	0,
	0,
	0,
	0,
	0,
	2597,
	1787,
	2772,
	1829,
	-198,
	-5,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574157,
	1573893,
	3216,
	2000,
	3216,
	1840,
	0);
INSERT INTO GD_LS
	VALUES (1574158,
	1573893,
	3216,
	1840,
	2544,
	1840,
	1574157);
INSERT INTO GD_GE
	VALUES (1574183,
	1572865,
	1572898,
	42);
INSERT INTO GD_CON
	VALUES (1574183,
	1574181,
	1572874,
	0);
INSERT INTO GD_CTXT
	VALUES (1574183,
	0,
	0,
	0,
	0,
	0,
	0,
	2092,
	1499,
	2197,
	1522,
	139,
	-4,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574215,
	1574183,
	2064,
	1488,
	2064,
	1536,
	0);
INSERT INTO GD_GE
	VALUES (1574185,
	1572865,
	1572899,
	42);
INSERT INTO GD_CON
	VALUES (1574185,
	1574182,
	1574181,
	0);
INSERT INTO GD_CTXT
	VALUES (1574185,
	0,
	0,
	0,
	0,
	0,
	0,
	2091,
	1358,
	2196,
	1381,
	138,
	-1,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574234,
	1574185,
	2064,
	1344,
	2064,
	1392,
	0);
INSERT INTO GD_GE
	VALUES (1574187,
	1572865,
	1572900,
	42);
INSERT INTO GD_CON
	VALUES (1574187,
	1572873,
	1574182,
	0);
INSERT INTO GD_CTXT
	VALUES (1574187,
	0,
	0,
	0,
	0,
	0,
	0,
	1878,
	2339,
	1983,
	2362,
	53,
	540,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (1574228,
	1574187,
	1872,
	2320,
	1936,
	2320,
	0);
INSERT INTO GD_LS
	VALUES (1574229,
	1574187,
	1936,
	2320,
	1936,
	1296,
	1574228);
INSERT INTO GD_LS
	VALUES (1574230,
	1574187,
	1936,
	1296,
	1984,
	1296,
	1574229);
INSERT INTO O_OBJ
	VALUES (1048578,
	'A',
	3,
	'A',
	'',
	1048578);
INSERT INTO O_NBATTR
	VALUES (1048588,
	1048578);
INSERT INTO O_BATTR
	VALUES (1048588,
	1048578);
INSERT INTO O_ATTR
	VALUES (1048588,
	1048578,
	0,
	'a_id',
	'',
	'',
	'a_id',
	0,
	524294);
INSERT INTO O_NBATTR
	VALUES (1048589,
	1048578);
INSERT INTO O_BATTR
	VALUES (1048589,
	1048578);
INSERT INTO O_ATTR
	VALUES (1048589,
	1048578,
	1048588,
	'a',
	'',
	'',
	'a',
	0,
	524291);
INSERT INTO O_ID
	VALUES (0,
	1048578);
INSERT INTO O_OIDA
	VALUES (1048588,
	1048578,
	0);
INSERT INTO O_OBJ
	VALUES (1048579,
	'Driver',
	1,
	'DR',
	'',
	1048578);
INSERT INTO O_NBATTR
	VALUES (1048590,
	1048579);
INSERT INTO O_BATTR
	VALUES (1048590,
	1048579);
INSERT INTO O_ATTR
	VALUES (1048590,
	1048579,
	0,
	'dr_id',
	'',
	'',
	'dr_id',
	0,
	524294);
INSERT INTO O_NBATTR
	VALUES (1048591,
	1048579);
INSERT INTO O_BATTR
	VALUES (1048591,
	1048579);
INSERT INTO O_ATTR
	VALUES (1048591,
	1048579,
	1048590,
	'current_state',
	'',
	'',
	'current_state',
	0,
	524295);
INSERT INTO O_ID
	VALUES (0,
	1048579);
INSERT INTO O_OIDA
	VALUES (1048590,
	1048579,
	0);
INSERT INTO SM_ISM
	VALUES (2097156,
	1048579);
INSERT INTO SM_SM
	VALUES (2097156,
	'',
	4);
INSERT INTO SM_MOORE
	VALUES (2097156);
INSERT INTO SM_LEVT
	VALUES (2097153,
	2097156,
	0);
INSERT INTO SM_SEVT
	VALUES (2097153,
	2097156,
	0);
INSERT INTO SM_EVT
	VALUES (2097153,
	2097156,
	0,
	1,
	'start test',
	0,
	'',
	'DR1',
	'');
INSERT INTO SM_LEVT
	VALUES (2097154,
	2097156,
	0);
INSERT INTO SM_SEVT
	VALUES (2097154,
	2097156,
	0);
INSERT INTO SM_EVT
	VALUES (2097154,
	2097156,
	0,
	2,
	'next test',
	0,
	'',
	'DR2',
	'');
INSERT INTO SM_LEVT
	VALUES (2097155,
	2097156,
	0);
INSERT INTO SM_SEVT
	VALUES (2097155,
	2097156,
	0);
INSERT INTO SM_EVT
	VALUES (2097155,
	2097156,
	0,
	3,
	'send event with supp data',
	0,
	'',
	'DR3',
	'');
INSERT INTO SM_LEVT
	VALUES (2097156,
	2097156,
	0);
INSERT INTO SM_SEVT
	VALUES (2097156,
	2097156,
	0);
INSERT INTO SM_EVT
	VALUES (2097156,
	2097156,
	0,
	4,
	'test complete',
	0,
	'',
	'DR4',
	'');
INSERT INTO SM_LEVT
	VALUES (2097157,
	2097156,
	0);
INSERT INTO SM_SEVT
	VALUES (2097157,
	2097156,
	0);
INSERT INTO SM_EVT
	VALUES (2097157,
	2097156,
	0,
	5,
	'go to idle',
	0,
	'',
	'DR5',
	'');
INSERT INTO SM_STATE
	VALUES (2097153,
	2097156,
	0,
	'Idle',
	2,
	0);
INSERT INTO SM_EIGN
	VALUES (2097153,
	2097153,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097153,
	2097153,
	2097156,
	0);
INSERT INTO SM_SEME
	VALUES (2097153,
	2097154,
	2097156,
	0);
INSERT INTO SM_SEME
	VALUES (2097153,
	2097155,
	2097156,
	0);
INSERT INTO SM_SEME
	VALUES (2097153,
	2097156,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097153,
	2097157,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097153,
	2097157,
	2097156,
	0);
INSERT INTO SM_MOAH
	VALUES (2097153,
	2097156,
	2097153);
INSERT INTO SM_AH
	VALUES (2097153,
	2097156);
INSERT INTO SM_ACT
	VALUES (2097153,
	2097156,
	1,
	'',
	'');
INSERT INTO SM_STATE
	VALUES (2097154,
	2097156,
	0,
	'Test Complete',
	5,
	1);
INSERT INTO SM_EIGN
	VALUES (2097154,
	2097153,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097154,
	2097153,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097154,
	2097154,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097154,
	2097154,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097154,
	2097155,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097154,
	2097155,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097154,
	2097156,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097154,
	2097156,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097154,
	2097157,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097154,
	2097157,
	2097156,
	0);
INSERT INTO SM_MOAH
	VALUES (2097154,
	2097156,
	2097154);
INSERT INTO SM_AH
	VALUES (2097154,
	2097156);
INSERT INTO SM_ACT
	VALUES (2097154,
	2097156,
	1,
	'select any tce from instances of TCE;
if ( not_empty tce )
  delete object instance tce;
end if;

LOG::LogInfo(message:"Test Complete");
bridge ARCH::shutdown();',
	'');
INSERT INTO SM_STATE
	VALUES (2097155,
	2097156,
	0,
	'Send Event With Supplemental Data',
	4,
	0);
INSERT INTO SM_EIGN
	VALUES (2097155,
	2097153,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097155,
	2097153,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097155,
	2097154,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097155,
	2097154,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097155,
	2097155,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097155,
	2097155,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097155,
	2097156,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097155,
	2097156,
	2097156,
	0);
INSERT INTO SM_SEME
	VALUES (2097155,
	2097157,
	2097156,
	0);
INSERT INTO SM_MOAH
	VALUES (2097155,
	2097156,
	2097155);
INSERT INTO SM_AH
	VALUES (2097155,
	2097156);
INSERT INTO SM_ACT
	VALUES (2097155,
	2097156,
	1,
	'select any tce from instances of TCE;
generate TCE3:''event with supp data'' (name:"Bob", age:"31") to tce;
generate DR5:''go to idle'' () to self;
',
	'');
INSERT INTO SM_STATE
	VALUES (2097156,
	2097156,
	0,
	'Start Next Test',
	3,
	0);
INSERT INTO SM_EIGN
	VALUES (2097156,
	2097153,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097156,
	2097153,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097156,
	2097154,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097156,
	2097154,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097156,
	2097155,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097156,
	2097155,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097156,
	2097156,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097156,
	2097156,
	2097156,
	0);
INSERT INTO SM_SEME
	VALUES (2097156,
	2097157,
	2097156,
	0);
INSERT INTO SM_MOAH
	VALUES (2097156,
	2097156,
	2097156);
INSERT INTO SM_AH
	VALUES (2097156,
	2097156);
INSERT INTO SM_ACT
	VALUES (2097156,
	2097156,
	1,
	'select any tce from instances of TCE;
generate TCE2:''next test'' () to tce;
generate DR5:''go to idle'' () to self;',
	'');
INSERT INTO SM_STATE
	VALUES (2097157,
	2097156,
	0,
	'Start Test',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2097157,
	2097153,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097157,
	2097154,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097157,
	2097154,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097157,
	2097155,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097157,
	2097155,
	2097156,
	0);
INSERT INTO SM_EIGN
	VALUES (2097157,
	2097156,
	2097156,
	0,
	'');
INSERT INTO SM_SEME
	VALUES (2097157,
	2097156,
	2097156,
	0);
INSERT INTO SM_SEME
	VALUES (2097157,
	2097157,
	2097156,
	0);
INSERT INTO SM_MOAH
	VALUES (2097157,
	2097156,
	2097157);
INSERT INTO SM_AH
	VALUES (2097157,
	2097156);
INSERT INTO SM_ACT
	VALUES (2097157,
	2097156,
	1,
	'create object instance tce of TCE;
tce.b1 = TRUE;
tce.b2 = FALSE;
tce.i1=1;
tce.i2=2;
tce.r1=1.0;
tce.r2=2.0;
generate TCE1:''start test'' () to tce;
generate DR5:''go to idle'' () to self;
',
	'');
INSERT INTO SM_NSTXN
	VALUES (2097153,
	2097156,
	2097153,
	2097156,
	0);
INSERT INTO SM_TXN
	VALUES (2097153,
	2097156,
	2097154,
	0);
INSERT INTO SM_NSTXN
	VALUES (2097154,
	2097156,
	2097153,
	2097154,
	0);
INSERT INTO SM_TXN
	VALUES (2097154,
	2097156,
	2097156,
	0);
INSERT INTO SM_NSTXN
	VALUES (2097155,
	2097156,
	2097157,
	2097153,
	0);
INSERT INTO SM_TXN
	VALUES (2097155,
	2097156,
	2097157,
	0);
INSERT INTO SM_NSTXN
	VALUES (2097156,
	2097156,
	2097157,
	2097157,
	0);
INSERT INTO SM_TXN
	VALUES (2097156,
	2097156,
	2097153,
	0);
INSERT INTO SM_NSTXN
	VALUES (2097157,
	2097156,
	2097156,
	2097157,
	0);
INSERT INTO SM_TXN
	VALUES (2097157,
	2097156,
	2097153,
	0);
INSERT INTO SM_NSTXN
	VALUES (2097158,
	2097156,
	2097155,
	2097157,
	0);
INSERT INTO SM_TXN
	VALUES (2097158,
	2097156,
	2097153,
	0);
INSERT INTO SM_NSTXN
	VALUES (2097159,
	2097156,
	2097153,
	2097155,
	0);
INSERT INTO SM_TXN
	VALUES (2097159,
	2097156,
	2097155,
	0);
INSERT INTO GD_MD
	VALUES (2097153,
	8,
	2097156,
	40,
	1,
	0,
	1,
	1,
	0,
	12,
	1600,
	4200,
	1.000000,
	0);
INSERT INTO GD_GE
	VALUES (2097154,
	2097153,
	2097153,
	41);
INSERT INTO GD_SHP
	VALUES (2097154,
	1904,
	1408,
	2096,
	1520);
INSERT INTO GD_GE
	VALUES (2097155,
	2097153,
	2097154,
	41);
INSERT INTO GD_SHP
	VALUES (2097155,
	2160,
	1408,
	2352,
	1616);
INSERT INTO GD_GE
	VALUES (2097156,
	2097153,
	2097155,
	41);
INSERT INTO GD_SHP
	VALUES (2097156,
	1904,
	1600,
	2096,
	1712);
INSERT INTO GD_GE
	VALUES (2097157,
	2097153,
	2097156,
	41);
INSERT INTO GD_SHP
	VALUES (2097157,
	1648,
	1408,
	1840,
	1520);
INSERT INTO GD_GE
	VALUES (2097158,
	2097153,
	2097157,
	41);
INSERT INTO GD_SHP
	VALUES (2097158,
	1904,
	1264,
	2096,
	1360);
INSERT INTO GD_GE
	VALUES (2097159,
	2097153,
	2097153,
	42);
INSERT INTO GD_CON
	VALUES (2097159,
	2097154,
	2097155,
	0);
INSERT INTO GD_CTXT
	VALUES (2097159,
	0,
	0,
	0,
	0,
	0,
	0,
	2096,
	1402,
	2166,
	1454,
	-7,
	-29,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097160,
	2097159,
	2096,
	1456,
	2160,
	1456,
	0);
INSERT INTO GD_GE
	VALUES (2097161,
	2097153,
	2097159,
	42);
INSERT INTO GD_CON
	VALUES (2097161,
	2097154,
	2097156,
	0);
INSERT INTO GD_CTXT
	VALUES (2097161,
	0,
	0,
	0,
	0,
	0,
	0,
	1855,
	1542,
	1937,
	1594,
	-65,
	-3,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097162,
	2097161,
	1936,
	1520,
	1936,
	1600,
	0);
INSERT INTO GD_GE
	VALUES (2097163,
	2097153,
	2097158,
	42);
INSERT INTO GD_CON
	VALUES (2097163,
	2097156,
	2097154,
	0);
INSERT INTO GD_CTXT
	VALUES (2097163,
	0,
	0,
	0,
	0,
	0,
	0,
	2063,
	1545,
	2163,
	1579,
	15,
	0,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097164,
	2097163,
	2064,
	1600,
	2064,
	1520,
	0);
INSERT INTO GD_GE
	VALUES (2097165,
	2097153,
	2097154,
	42);
INSERT INTO GD_CON
	VALUES (2097165,
	2097154,
	2097157,
	0);
INSERT INTO GD_CTXT
	VALUES (2097165,
	0,
	0,
	0,
	0,
	0,
	0,
	1840,
	1382,
	1907,
	1449,
	-7,
	-33,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097166,
	2097165,
	1904,
	1440,
	1840,
	1440,
	0);
INSERT INTO GD_GE
	VALUES (2097167,
	2097153,
	2097157,
	42);
INSERT INTO GD_CON
	VALUES (2097167,
	2097157,
	2097154,
	0);
INSERT INTO GD_CTXT
	VALUES (2097167,
	0,
	0,
	0,
	0,
	0,
	0,
	1840,
	1501,
	1904,
	1544,
	-7,
	38,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097168,
	2097167,
	1840,
	1488,
	1904,
	1488,
	0);
INSERT INTO GD_GE
	VALUES (2097169,
	2097153,
	2097156,
	42);
INSERT INTO GD_CON
	VALUES (2097169,
	2097158,
	2097154,
	0);
INSERT INTO GD_CTXT
	VALUES (2097169,
	0,
	0,
	0,
	0,
	0,
	0,
	1991,
	1347,
	2099,
	1400,
	7,
	-6,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097170,
	2097169,
	2000,
	1360,
	2000,
	1408,
	0);
INSERT INTO GD_GE
	VALUES (2097171,
	2097153,
	2097155,
	42);
INSERT INTO GD_CON
	VALUES (2097171,
	2097158,
	2097158,
	0);
INSERT INTO GD_CTXT
	VALUES (2097171,
	0,
	0,
	0,
	0,
	0,
	0,
	1848,
	1222,
	1923,
	1269,
	-15,
	-11,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2097172,
	2097171,
	1904,
	1296,
	1888,
	1296,
	0);
INSERT INTO GD_LS
	VALUES (2097173,
	2097171,
	1888,
	1296,
	1888,
	1248,
	2097172);
INSERT INTO GD_LS
	VALUES (2097174,
	2097171,
	1888,
	1248,
	1936,
	1248,
	2097173);
INSERT INTO GD_LS
	VALUES (2097175,
	2097171,
	1936,
	1248,
	1936,
	1264,
	2097174);
INSERT INTO O_OBJ
	VALUES (1048580,
	'ex init',
	4,
	'INIT',
	'',
	1048578);
INSERT INTO O_NBATTR
	VALUES (1048592,
	1048580);
INSERT INTO O_BATTR
	VALUES (1048592,
	1048580);
INSERT INTO O_ATTR
	VALUES (1048592,
	1048580,
	0,
	'init_id',
	'',
	'',
	'init_id',
	0,
	524294);
INSERT INTO O_NBATTR
	VALUES (1048593,
	1048580);
INSERT INTO O_BATTR
	VALUES (1048593,
	1048580);
INSERT INTO O_ATTR
	VALUES (1048593,
	1048580,
	1048592,
	'current_state',
	'',
	'',
	'current_state',
	0,
	524295);
INSERT INTO O_ID
	VALUES (0,
	1048580);
INSERT INTO O_OIDA
	VALUES (1048592,
	1048580,
	0);
INSERT INTO SM_ISM
	VALUES (2621445,
	1048580);
INSERT INTO SM_SM
	VALUES (2621445,
	'',
	5);
INSERT INTO SM_MOORE
	VALUES (2621445);
INSERT INTO SM_LEVT
	VALUES (2621441,
	2621445,
	0);
INSERT INTO SM_SEVT
	VALUES (2621441,
	2621445,
	0);
INSERT INTO SM_EVT
	VALUES (2621441,
	2621445,
	0,
	1,
	'initialize',
	0,
	'',
	'INIT1',
	'');
INSERT INTO SM_STATE
	VALUES (2621441,
	2621445,
	0,
	'Initialize System',
	1,
	0);
INSERT INTO SM_SEME
	VALUES (2621441,
	2621441,
	2621445,
	0);
INSERT INTO SM_MOAH
	VALUES (2621441,
	2621445,
	2621441);
INSERT INTO SM_AH
	VALUES (2621441,
	2621445);
INSERT INTO SM_ACT
	VALUES (2621441,
	2621445,
	1,
	'// Create some instances of A for compound testing 
// of inst_ref<Object> and inst_ref_set<Object>.
create object instance a of A;
create object instance b of A;
create object instance c of A;
create object instance d of A;
create object instance e of A;
create object instance f of A;

create object instance dr of DR;
generate DR1:''start test'' to dr;
',
	'');
INSERT INTO SM_NSTXN
	VALUES (2621441,
	2621445,
	2621441,
	2621441,
	0);
INSERT INTO SM_TXN
	VALUES (2621441,
	2621445,
	2621441,
	0);
INSERT INTO GD_MD
	VALUES (2621441,
	8,
	2621445,
	40,
	1,
	0,
	1,
	1,
	0,
	12,
	1600,
	4199,
	1.000000,
	0);
INSERT INTO GD_GE
	VALUES (2621442,
	2621441,
	2621441,
	41);
INSERT INTO GD_SHP
	VALUES (2621442,
	1776,
	1376,
	2096,
	1680);
INSERT INTO GD_GE
	VALUES (2621443,
	2621441,
	2621441,
	42);
INSERT INTO GD_CON
	VALUES (2621443,
	2621442,
	2621442,
	0);
INSERT INTO GD_CTXT
	VALUES (2621443,
	0,
	0,
	0,
	0,
	0,
	0,
	2154,
	1361,
	2310,
	1397,
	10,
	80,
	0,
	0,
	0,
	0,
	0,
	0);
INSERT INTO GD_LS
	VALUES (2621444,
	2621443,
	2096,
	1472,
	2160,
	1472,
	0);
INSERT INTO GD_LS
	VALUES (2621445,
	2621443,
	2160,
	1472,
	2160,
	1280,
	2621444);
INSERT INTO GD_LS
	VALUES (2621446,
	2621443,
	2160,
	1280,
	2032,
	1280,
	2621445);
INSERT INTO GD_LS
	VALUES (2621447,
	2621443,
	2032,
	1280,
	2032,
	1376,
	2621446);
INSERT INTO O_OBJ
	VALUES (1048581,
	'Transformer',
	5,
	'TRAN',
	'',
	1048578);
INSERT INTO O_TFR
	VALUES (1048577,
	1048581,
	'ret_int',
	'',
	524291,
	0,
	'return param.i;',
	1);
INSERT INTO O_TPARM
	VALUES (1048577,
	1048577,
	'i',
	524291,
	0);
INSERT INTO O_TFR
	VALUES (1048578,
	1048581,
	'ret_string',
	'',
	524293,
	0,
	'return param.s;',
	1);
INSERT INTO O_TPARM
	VALUES (1048578,
	1048578,
	's',
	524293,
	0);
INSERT INTO O_TFR
	VALUES (1048579,
	1048581,
	'ret_bool',
	'',
	524290,
	0,
	'return param.b;',
	1);
INSERT INTO O_TPARM
	VALUES (1048579,
	1048579,
	'b',
	524290,
	0);
INSERT INTO O_TFR
	VALUES (1048580,
	1048581,
	'ret_real',
	'',
	524292,
	0,
	'return param.r;',
	1);
INSERT INTO O_TPARM
	VALUES (1048580,
	1048580,
	'r',
	524292,
	0);
INSERT INTO O_NBATTR
	VALUES (1048594,
	1048581);
INSERT INTO O_BATTR
	VALUES (1048594,
	1048581);
INSERT INTO O_ATTR
	VALUES (1048594,
	1048581,
	0,
	'tran_id',
	'',
	'',
	'tran_id',
	0,
	524294);
INSERT INTO O_ID
	VALUES (0,
	1048581);
INSERT INTO O_OIDA
	VALUES (1048594,
	1048581,
	0);
INSERT INTO O_OBJ
	VALUES (1048582,
	'No Instances',
	6,
	'NOI',
	'',
	1048578);
INSERT INTO O_NBATTR
	VALUES (1048595,
	1048582);
INSERT INTO O_BATTR
	VALUES (1048595,
	1048582);
INSERT INTO O_ATTR
	VALUES (1048595,
	1048582,
	0,
	'noi_id',
	'',
	'',
	'noi_id',
	0,
	524294);
INSERT INTO O_ID
	VALUES (0,
	1048582);
INSERT INTO O_OIDA
	VALUES (1048595,
	1048582,
	0);
INSERT INTO GD_MD
	VALUES (1048585,
	5,
	1048578,
	11,
	1,
	0,
	1,
	1,
	0,
	12,
	1415,
	4309,
	1.000000,
	0);
INSERT INTO GD_GE
	VALUES (1048588,
	1048585,
	1048577,
	21);
INSERT INTO GD_SHP
	VALUES (1048588,
	1552,
	1248,
	1808,
	1504);
INSERT INTO GD_GE
	VALUES (1048589,
	1048585,
	1048578,
	21);
INSERT INTO GD_SHP
	VALUES (1048589,
	1552,
	1520,
	1808,
	1632);
INSERT INTO GD_GE
	VALUES (1048590,
	1048585,
	1048579,
	21);
INSERT INTO GD_SHP
	VALUES (1048590,
	1824,
	1120,
	2080,
	1232);
INSERT INTO GD_GE
	VALUES (1048591,
	1048585,
	1048580,
	21);
INSERT INTO GD_SHP
	VALUES (1048591,
	1552,
	1120,
	1808,
	1232);
INSERT INTO GD_GE
	VALUES (1048592,
	1048585,
	1048581,
	21);
INSERT INTO GD_SHP
	VALUES (1048592,
	1824,
	1248,
	2080,
	1504);
INSERT INTO GD_GE
	VALUES (1048593,
	1048585,
	1048582,
	21);
INSERT INTO GD_SHP
	VALUES (1048593,
	1824,
	1520,
	2080,
	1632);
