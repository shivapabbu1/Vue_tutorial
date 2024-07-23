package com.example.TestingZunBug;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.mockito.Mockito;

class TestingZunBugApplicationTests {
	
	
	@Test
	void testmainfunction() {
		Bug bug = new Bug();
		long currentYear = bug.findYear();
		System.out.println("Current Year is "+currentYear);
        assertEquals(2024L, currentYear, "Current year is incorrect");	
     }
	
	@Test
	void testLeapYear() {
		Bug bug = new Bug();
		Bug mockBug = Mockito.spy(bug);
		Mockito.doReturn(1096L).when(mockBug).getDaysFromEpoch();
		long currentYear = mockBug.findYear();
        assertEquals(1972, currentYear, "Current year is incorrect");	
     }

}
