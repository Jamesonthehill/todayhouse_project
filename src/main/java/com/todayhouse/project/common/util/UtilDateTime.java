package com.todayhouse.project.common.util;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;


import com.todayhouse.project.common.constants.Constants;

public class UtilDateTime{


			public static LocalDateTime nowLocalDateTime() throws Exception{
				LocalDateTime localDateTime = LocalDateTime.now();
				return localDateTime;
			}
				
			
			public static Date nowDate() throws Exception{
	
				LocalDateTime localDateTime = LocalDateTime.now();
				String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.DATETIME_FORMAT_BASIC);
				Date date = simpleDateFormat.parse(localDateTimeString);
				return date;
				
			}

			public static String nowString () throws Exception {
				LocalDateTime localDateTime = LocalDateTime.now();
				String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATE_FORMAT_BASIC));
				return localDateTimeString;
				
			}
			
			
			public static String calculateDayString (LocalDateTime localDateTime, int day) throws Exception {
				LocalDateTime localDateTimeNew;
				
				if(day >= 0) {
						localDateTimeNew = localDateTime.plusDays(Math.abs(day)); 
				} else {
					localDateTimeNew = localDateTime.minusDays(Math.abs(day));
				}

				String localDateTimeNewString = localDateTimeNew.format(DateTimeFormatter.ofPattern(Constants.DATE_FORMAT_BASIC));
				return localDateTimeNewString;
			}
			
			
			public static String addStringTime(String date) {
				return date + "00:00:00";
			}
			/*
			 * public static String calculateDay (LocalDateTime localDateTime, int b) throws
			 * Exception{ LocalDateTime localDateTimeNew;
			 * 
			 * System.out.println("LocalDateTime: " + LocalDateTime);
			 * 
			 * if( b >= 0) { localDateTimeNew = LocalDateTime.plusDays(Math.abs(b)); } else
			 * { System.out.println("minusDays"); System.out.println("b: " + b);
			 * System.out.println("Math.abs(b): " + Math.abs(b)); localDateTimeNew =
			 * LocalDateTime.plusDays(Math.abs(b));
			 * System.out.println("localDateTimeNew:minusDays: " + localDateTimeNew); }
			 * 
			 * 
			 * }
			 */
}