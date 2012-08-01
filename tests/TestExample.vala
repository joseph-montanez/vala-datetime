class TestExample : Gee.TestCase {
	public TestExample () {
		base ("TestExample");
		add_test ("test_date_01", test_date_01);
		add_test ("test_date_02", test_date_02);
		add_test ("test_date_03", test_date_03);
		add_test ("test_date_04", test_date_04);
		add_test ("test_date_05", test_date_05);
		add_test ("test_date_06", test_date_06);
		add_test ("test_date_07", test_date_07);
		add_test ("test_date_08", test_date_08);
	}
 
	public override void set_up () {
	// setup your test
	}
 
	public void test_date_01 () {
		assert (
			new JoMo.DateTime.from_string ("Jan 23 2012").format ("%m/%d/%Y") == "01/23/2012"
		);
	}
 
	public void test_date_02 () {
		assert (
			new JoMo.DateTime.from_string ("January 23 2012").format ("%m/%d/%Y") == "01/23/2012"
		);
	}
 
	public void test_date_03 () {
		assert (
			new JoMo.DateTime.from_string ("January 23, 2012").format ("%m/%d/%Y") == "01/23/2012"
		);
	}
 
	public void test_date_04 () {
		assert (
			new JoMo.DateTime.from_string ("Jan. 23, 2012").format ("%m/%d/%Y") == "01/23/2012"
		);
	}
 
	public void test_date_05 () {
		assert (
			new JoMo.DateTime.from_string ("01/23/2012").format ("%m/%d/%Y") == "01/23/2012"
		);
	}
 
	public void test_date_06 () {
		assert (
			new JoMo.DateTime.from_string ("2012-01-23").format ("%m/%d/%Y") == "01/23/2012"
		);
	}
 
	public void test_date_07 () {
		assert (
			new JoMo.DateTime.from_string ("2012-01-23 10:00:00").format ("%m/%d/%Y %H") == "01/23/2012 10"
		);
	}
 
	public void test_date_08 () {
		assert (
			new JoMo.DateTime.from_string ("Jan 23 2012 09:00:00").format ("%m/%d/%Y %H") == "01/23/2012 09"
		);
	}
 
	public override void tear_down () {
		// tear down your test
	}
}
