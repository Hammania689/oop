<%--
  Created by IntelliJ IDEA.

  Date: 4/24/19
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Saving Data to a Text File</title>
  </head>
  <body>

  <form method="post" action="display.jsp">
      <table>

          <tr>
              <td>
                  First Name
              </td>
              <td>

                  <input type="text" maxlength="255" name="First" value="">
              </td>
          </tr>

          <tr>
              <td> Middle Name
              </td>
              <td>

                  <input  name="Middle" type="text" maxlength="255" value="">
              </td>
          </tr>

          <tr>
              <td>
                  Last Name
              </td>
              <td>
                  <input name="Last" id="element_3" name="element_3" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>

          <tr>
              <td>
                  Maiden / Former Name
              </td>
              <td>

                  <input name="Former" id="element_4" name="element_4" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>

          <tr>
              <td>

                  Preferred First Name
              </td>
              <td>

                  <input name="Preferred" id="element_5"  class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>

          <tr>
              <td>
                  Suffix
              </td>
              <td>
                  <select name="Suffix"><optgroup><option value="">--</option>
                      <option id="q-s-o-1211074-1" value="3">II</option><option id="q-s-o-1211074-2" value="4">III</option><option id="q-s-o-1211074-3" value="5">IV</option><option id="q-s-o-1211074-4" value="2">Jr.</option><option id="q-s-o-1211074-5" value="1">Sr.</option>
                  </optgroup></select>
              </td>
          </tr>
          <tr>
              <td>
                  Home Phone

              </td>
              <td>

                  <input name="HomePhone" id="element_7"  class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>
                  Cell Phone
              </td>
              <td>
                  <input name="Cell" id="element_8"  class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>
                  Email Address
              </td>
              <td>
                  <input name="Email" id="element_9" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>
                  Date of Birth
              </td>
              <td>
                  <%--<input name="DOB" id="element_10"  class="element text medium" type="text" maxlength="255" `value="">--%>
                  <select name="MONTH">
                  <option value="">--</option>
                  <option value="01">January</option><option value="02">February</option><option value="03">March</option><option value="04">April</option><option value="05">May</option><option value="06">June</option><option value="07">July</option><option value="08">August</option><option value="09">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option>
                  </optgroup></select>
                  <span class="day">
			<select name="DAY">
                    name="birth_day"
                    title="Date of Birth: Day"><optgroup>
					<option value="">--</option>
					<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
			</optgroup></select>
			<select name="YEAR">
                    class="question-field"
                    name="birth_year"
                    id="dateddmmyyyy_197_year"
                    title="Date of Birth: Year"><optgroup>
					<option value="">--</option>
					<option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option>
			</optgroup></select>
              </td>
          </tr>

          <tr>

              <td>

                  Gender
              </td>
              <td>
                  <input name="Gender" value="Male"  type="radio">
                  <label class="choice" for="element_19_1">Male</label>
              </td>

              <td>
                  <input id="element_19_2" name="Gender" type="radio" value="Female">
                  <label class="choice" for="element_19_2">Female</label>


              </td>
              </span>
          </tr>
          <tr>
              <td>

                  State/Province
              </td>
              <td>
                  <span>
		<select name="State">
			<optgroup>

					<option value="">--</option>


					<option id="q-s-o-570-1" value="AL" rteonchange="evt_570_1();">Alabama</option>

					<option id="q-s-o-570-2" value="AK" rteonchange="evt_570_2();">Alaska</option>

					<option id="q-s-o-570-3" value="AB" rteonchange="evt_570_3();">Alberta</option>

					<option id="q-s-o-570-4" value="AS" rteonchange="evt_570_4();">American Samoa</option>

					<option id="q-s-o-570-5" value="AZ" rteonchange="evt_570_5();">Arizona</option>

					<option id="q-s-o-570-6" value="AR" rteonchange="evt_570_6();">Arkansas</option>

					<option id="q-s-o-570-7" value="AA" rteonchange="evt_570_7();">Armed Forces Americas</option>

					<option id="q-s-o-570-8" value="AE" rteonchange="evt_570_8();">Armed Forces Europe</option>

					<option id="q-s-o-570-9" value="AP" rteonchange="evt_570_9();">Armed Forces Pacific</option>

					<option id="q-s-o-570-10" value="BC" rteonchange="evt_570_10();">British Columbia</option>

					<option id="q-s-o-570-11" value="CA" rteonchange="evt_570_11();">California</option>

					<option id="q-s-o-570-12" value="CO" rteonchange="evt_570_12();">Colorado</option>

					<option id="q-s-o-570-13" value="CT" rteonchange="evt_570_13();">Connecticut</option>

					<option id="q-s-o-570-14" value="DE" rteonchange="evt_570_14();">Delaware</option>

					<option id="q-s-o-570-15" value="DC" rteonchange="evt_570_15();">District of Columbia</option>

					<option id="q-s-o-570-16" value="FL" rteonchange="evt_570_16();">Florida</option>

					<option id="q-s-o-570-17" value="GA" rteonchange="evt_570_17();">Georgia</option>

					<option id="q-s-o-570-18" value="GU" rteonchange="evt_570_18();">Guam</option>

					<option id="q-s-o-570-19" value="HI" rteonchange="evt_570_19();">Hawaii</option>

					<option id="q-s-o-570-20" value="ID" rteonchange="evt_570_20();">Idaho</option>

					<option id="q-s-o-570-21" value="IL" rteonchange="evt_570_21();">Illinois</option>

					<option id="q-s-o-570-22" value="IN" rteonchange="evt_570_22();">Indiana</option>

					<option id="q-s-o-570-23" value="IA" rteonchange="evt_570_23();">Iowa</option>

					<option id="q-s-o-570-24" value="KS" rteonchange="evt_570_24();">Kansas</option>

					<option id="q-s-o-570-25" value="KY" rteonchange="evt_570_25();">Kentucky</option>

					<option id="q-s-o-570-26" value="LA" rteonchange="evt_570_26();">Louisiana</option>

					<option id="q-s-o-570-27" value="ME" rteonchange="evt_570_27();">Maine</option>

					<option id="q-s-o-570-28" value="MB" rteonchange="evt_570_28();">Manitoba</option>

					<option id="q-s-o-570-29" value="MH" rteonchange="evt_570_29();">Marshall Islands</option>

					<option id="q-s-o-570-30" value="MD" rteonchange="evt_570_30();">Maryland</option>

					<option id="q-s-o-570-31" value="MA" rteonchange="evt_570_31();">Massachusetts</option>

					<option id="q-s-o-570-32" value="MI" rteonchange="evt_570_32();">Michigan</option>

					<option id="q-s-o-570-33" value="MN" rteonchange="evt_570_33();">Minnesota</option>

					<option id="q-s-o-570-34" value="MS" rteonchange="evt_570_34();">Mississippi</option>

					<option id="q-s-o-570-35" value="MO" rteonchange="evt_570_35();">Missouri</option>

					<option id="q-s-o-570-36" value="MT" rteonchange="evt_570_36();">Montana</option>

					<option id="q-s-o-570-37" value="MP" rteonchange="evt_570_37();">N. Mariana Islands</option>

					<option id="q-s-o-570-38" value="NE" rteonchange="evt_570_38();">Nebraska</option>

					<option id="q-s-o-570-39" value="NV" rteonchange="evt_570_39();">Nevada</option>

					<option id="q-s-o-570-40" value="NB" rteonchange="evt_570_40();">New Brunswick</option>

					<option id="q-s-o-570-41" value="NH" rteonchange="evt_570_41();">New Hampshire</option>

					<option id="q-s-o-570-42" value="NJ" rteonchange="evt_570_42();">New Jersey</option>

					<option id="q-s-o-570-43" value="NM" rteonchange="evt_570_43();">New Mexico</option>

					<option id="q-s-o-570-44" value="NY" rteonchange="evt_570_44();">New York</option>

					<option id="q-s-o-570-45" value="NL" rteonchange="evt_570_45();">Newfoundland/Labrador</option>

					<option id="q-s-o-570-46" value="NC" rteonchange="evt_570_46();">North Carolina</option>

					<option id="q-s-o-570-47" value="ND" rteonchange="evt_570_47();">North Dakota</option>

					<option id="q-s-o-570-48" value="NT" rteonchange="evt_570_48();">Northwest Territories</option>

					<option id="q-s-o-570-49" value="NS" rteonchange="evt_570_49();">Nova Scotia</option>

					<option id="q-s-o-570-50" value="NU" rteonchange="evt_570_50();">Nunavut</option>

					<option id="q-s-o-570-51" value="OH" rteonchange="evt_570_51();">Ohio</option>

					<option id="q-s-o-570-52" value="OK" rteonchange="evt_570_52();">Oklahoma</option>

					<option id="q-s-o-570-53" value="ON" rteonchange="evt_570_53();">Ontario</option>

					<option id="q-s-o-570-54" value="OR" rteonchange="evt_570_54();">Oregon</option>

					<option id="q-s-o-570-55" value="PA" rteonchange="evt_570_55();">Pennsylvania</option>

					<option id="q-s-o-570-56" value="PE" rteonchange="evt_570_56();">Prince Edward Island</option>

					<option id="q-s-o-570-57" value="PR" rteonchange="evt_570_57();">Puerto Rico</option>

					<option id="q-s-o-570-58" value="QC" rteonchange="evt_570_58();">Quebec</option>

					<option id="q-s-o-570-59" value="RI" rteonchange="evt_570_59();">Rhode Island</option>

					<option id="q-s-o-570-60" value="SK" rteonchange="evt_570_60();">Saskatchewan</option>

					<option id="q-s-o-570-61" value="SC" rteonchange="evt_570_61();">South Carolina</option>

					<option id="q-s-o-570-62" value="SD" rteonchange="evt_570_62();">South Dakota</option>

					<option id="q-s-o-570-63" value="TN" rteonchange="evt_570_63();">Tennessee</option>

					<option id="q-s-o-570-64" value="TX" rteonchange="evt_570_64();">Texas</option>

					<option id="q-s-o-570-65" value="UT" rteonchange="evt_570_65();">Utah</option>

					<option id="q-s-o-570-66" value="VT" rteonchange="evt_570_66();">Vermont</option>

					<option id="q-s-o-570-67" value="VI" rteonchange="evt_570_67();">Virgin Islands</option>

					<option id="q-s-o-570-68" value="VA" rteonchange="evt_570_68();">Virginia</option>

					<option id="q-s-o-570-69" value="WA" rteonchange="evt_570_69();">Washington</option>

					<option id="q-s-o-570-70" value="WV" rteonchange="evt_570_70();">West Virginia</option>

					<option id="q-s-o-570-71" value="WI" rteonchange="evt_570_71();">Wisconsin</option>

					<option id="q-s-o-570-72" value="WY" rteonchange="evt_570_72();">Wyoming</option>

					<option id="q-s-o-570-73" value="YT" rteonchange="evt_570_73();">Yukon</option>

		</optgroup></select>
	</span>
              </td>
          </tr>
          <tr>
              <td>

                  Zip / Postal Code
              </td>
              <td>
                  <input id="element_12" name="Zip" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>

                  Country
              </td>
              <td>
                    <select
                            name="Country">

                  <optgroup>

                      <option value="">--</option>


                      <option id="q-s-o-1080019-1" value="USA">United States</option>

                      <option id="q-s-o-1080019-2" value="AFG">Afghanistan</option>

                      <option id="q-s-o-1080019-3" value="ALB">Albania</option>

                      <option id="q-s-o-1080019-4" value="ALG">Algeria</option>

                      <option id="q-s-o-1080019-5" value="AND">Andorra</option>

                      <option id="q-s-o-1080019-6" value="ANG">Angola</option>

                      <option id="q-s-o-1080019-7" value="ANU">Anguilla</option>

                      <option id="q-s-o-1080019-8" value="ANT">Antigua and Barbuda</option>

                      <option id="q-s-o-1080019-9" value="ARG">Argentina</option>

                      <option id="q-s-o-1080019-10" value="ARM">Armenia</option>

                      <option id="q-s-o-1080019-11" value="ARU">Aruba</option>

                      <option id="q-s-o-1080019-12" value="AUS">Australia</option>

                      <option id="q-s-o-1080019-13" value="AST">Austria</option>

                      <option id="q-s-o-1080019-14" value="AZE">Azerbaijan</option>

                      <option id="q-s-o-1080019-15" value="BAH">Bahamas, The</option>

                      <option id="q-s-o-1080019-16" value="BHR">Bahrain</option>

                      <option id="q-s-o-1080019-17" value="BNG">Bangladesh</option>

                      <option id="q-s-o-1080019-18" value="BAR">Barbados</option>

                      <option id="q-s-o-1080019-19" value="BEL">Belarus</option>

                      <option id="q-s-o-1080019-20" value="BLG">Belgium</option>

                      <option id="q-s-o-1080019-21" value="BZE">Belize</option>

                      <option id="q-s-o-1080019-22" value="BEN">Benin</option>

                      <option id="q-s-o-1080019-23" value="BER">Bermuda</option>

                      <option id="q-s-o-1080019-24" value="BHU">Bhutan</option>

                      <option id="q-s-o-1080019-25" value="BOL">Bolivia</option>

                      <option id="q-s-o-1080019-26" value="BOS">Bosnia and Herzegovina</option>

                      <option id="q-s-o-1080019-27" value="BOT">Botswana</option>

                      <option id="q-s-o-1080019-28" value="BRA">Brazil</option>

                      <option id="q-s-o-1080019-29" value="BRU">Brunei</option>

                      <option id="q-s-o-1080019-30" value="BUL">Bulgaria</option>

                      <option id="q-s-o-1080019-31" value="BUR">Burkina Faso</option>

                      <option id="q-s-o-1080019-32" value="BDI">Burundi</option>

                      <option id="q-s-o-1080019-33" value="CAM">Cambodia</option>

                      <option id="q-s-o-1080019-34" value="COO">Cameroon</option>

                      <option id="q-s-o-1080019-35" value="CAN">Canada</option>

                      <option id="q-s-o-1080019-36" value="CVE">Cape Verde</option>

                      <option id="q-s-o-1080019-37" value="CAY">Cayman Islands</option>

                      <option id="q-s-o-1080019-38" value="CAR">Central African Republic</option>

                      <option id="q-s-o-1080019-39" value="CHA">Chad</option>

                      <option id="q-s-o-1080019-40" value="CHI">Chile</option>

                      <option id="q-s-o-1080019-41" value="CHN">China</option>

                      <option id="q-s-o-1080019-42" value="COL">Colombia</option>

                      <option id="q-s-o-1080019-43" value="COM">Comoros</option>

                      <option id="q-s-o-1080019-44" value="CON">Congo, Democratic Republic of the</option>

                      <option id="q-s-o-1080019-45" value="COG">Congo, Republic of the</option>

                      <option id="q-s-o-1080019-46" value="CSA">Costa Rica</option>

                      <option id="q-s-o-1080019-47" value="CTE">Cote D'Ivoire</option>

                      <option id="q-s-o-1080019-48" value="CRO">Croatia</option>

                      <option id="q-s-o-1080019-49" value="CUB">Cuba</option>

                      <option id="q-s-o-1080019-50" value="CUR">Curacao</option>

                      <option id="q-s-o-1080019-51" value="CYP">Cyprus</option>

                      <option id="q-s-o-1080019-52" value="CZE">Czech Republic</option>

                      <option id="q-s-o-1080019-53" value="DEN">Denmark</option>

                      <option id="q-s-o-1080019-54" value="DJI">Djibouti</option>

                      <option id="q-s-o-1080019-55" value="DOM">Dominica</option>

                      <option id="q-s-o-1080019-56" value="DNR">Dominican Republic</option>

                      <option id="q-s-o-1080019-57" value="ECU">Ecuador</option>

                      <option id="q-s-o-1080019-58" value="EGY">Egypt</option>

                      <option id="q-s-o-1080019-59" value="ELD">El Salvador</option>

                      <option id="q-s-o-1080019-60" value="EQU">Equatorial Guinea</option>

                      <option id="q-s-o-1080019-61" value="ERI">Eritrea</option>

                      <option id="q-s-o-1080019-62" value="EST">Estonia</option>

                      <option id="q-s-o-1080019-63" value="ETH">Ethiopia</option>

                      <option id="q-s-o-1080019-64" value="FIJ">Fiji</option>

                      <option id="q-s-o-1080019-65" value="FIN">Finland</option>

                      <option id="q-s-o-1080019-66" value="FRA">France</option>

                      <option id="q-s-o-1080019-67" value="FRG">French Guiana</option>

                      <option id="q-s-o-1080019-68" value="FRP">French Polynesia</option>

                      <option id="q-s-o-1080019-69" value="GAB">Gabon</option>

                      <option id="q-s-o-1080019-70" value="BAM">Gambia, The</option>

                      <option id="q-s-o-1080019-71" value="GEO">Georgia</option>

                      <option id="q-s-o-1080019-72" value="GER">Germany</option>

                      <option id="q-s-o-1080019-73" value="GHA">Ghana</option>

                      <option id="q-s-o-1080019-74" value="GIB">Gibraltar</option>

                      <option id="q-s-o-1080019-75" value="GRE">Greece</option>

                      <option id="q-s-o-1080019-76" value="GRL">Greenland</option>

                      <option id="q-s-o-1080019-77" value="GRD">Grenada</option>

                      <option id="q-s-o-1080019-78" value="GDL">Guadeloupe</option>

                      <option id="q-s-o-1080019-79" value="GUA">Guatemala</option>

                      <option id="q-s-o-1080019-80" value="GUI">Guinea</option>

                      <option id="q-s-o-1080019-81" value="GUB">Guinea-Bissau</option>

                      <option id="q-s-o-1080019-82" value="GUY">Guyana</option>

                      <option id="q-s-o-1080019-83" value="HAI">Haiti</option>

                      <option id="q-s-o-1080019-84" value="HON">Honduras</option>

                      <option id="q-s-o-1080019-85" value="HGK">Hong Kong</option>

                      <option id="q-s-o-1080019-86" value="HUN">Hungary</option>

                      <option id="q-s-o-1080019-87" value="ICE">Iceland</option>

                      <option id="q-s-o-1080019-88" value="IND">India</option>

                      <option id="q-s-o-1080019-89" value="INA">Indonesia</option>

                      <option id="q-s-o-1080019-90" value="IRA">Iran</option>

                      <option id="q-s-o-1080019-91" value="IRQ">Iraq</option>

                      <option id="q-s-o-1080019-92" value="IRL">Ireland</option>

                      <option id="q-s-o-1080019-93" value="ISR">Israel</option>

                      <option id="q-s-o-1080019-94" value="ITY">Italy</option>

                      <option id="q-s-o-1080019-95" value="JAM">Jamaica</option>

                      <option id="q-s-o-1080019-96" value="JAP">Japan</option>

                      <option id="q-s-o-1080019-97" value="JOR">Jordan</option>

                      <option id="q-s-o-1080019-98" value="KAZ">Kazakhstan</option>

                      <option id="q-s-o-1080019-99" value="KEN">Kenya</option>

                      <option id="q-s-o-1080019-100" value="KIR">Kiribati</option>

                      <option id="q-s-o-1080019-101" value="KOR">Korea, North</option>

                      <option id="q-s-o-1080019-102" value="KRR">Korea, South</option>

                      <option id="q-s-o-1080019-103" value="KOS">Kosovo</option>

                      <option id="q-s-o-1080019-104" value="KUW">Kuwait</option>

                      <option id="q-s-o-1080019-105" value="KYR">Kyrgyzstan</option>

                      <option id="q-s-o-1080019-106" value="LAO">Laos</option>

                      <option id="q-s-o-1080019-107" value="LAT">Latvia</option>

                      <option id="q-s-o-1080019-108" value="LEB">Lebanon</option>

                      <option id="q-s-o-1080019-109" value="LES">Lesotho</option>

                      <option id="q-s-o-1080019-110" value="LIB">Liberia</option>

                      <option id="q-s-o-1080019-111" value="LIY">Libya</option>

                      <option id="q-s-o-1080019-112" value="LIE">Liechtenstein</option>

                      <option id="q-s-o-1080019-113" value="LIT">Lithuania</option>

                      <option id="q-s-o-1080019-114" value="LUX">Luxembourg</option>

                      <option id="q-s-o-1080019-115" value="MAC">Macau</option>

                      <option id="q-s-o-1080019-116" value="MAD">Macedonia</option>

                      <option id="q-s-o-1080019-117" value="MDG">Madagascar</option>

                      <option id="q-s-o-1080019-118" value="MAL">Malawi</option>

                      <option id="q-s-o-1080019-119" value="MAY">Malaysia</option>

                      <option id="q-s-o-1080019-120" value="MLD">Maldives</option>

                      <option id="q-s-o-1080019-121" value="MLI">Mali</option>

                      <option id="q-s-o-1080019-122" value="MTA">Malta</option>

                      <option id="q-s-o-1080019-123" value="MAU">Mauritania</option>

                      <option id="q-s-o-1080019-124" value="MRI">Mauritius</option>

                      <option id="q-s-o-1080019-125" value="MEX">Mexico</option>

                      <option id="q-s-o-1080019-126" value="MIC">Micronesia, Federated States of</option>

                      <option id="q-s-o-1080019-127" value="MOL">Moldova</option>

                      <option id="q-s-o-1080019-128" value="MNA">Monaco</option>

                      <option id="q-s-o-1080019-129" value="MNG">Mongolia</option>

                      <option id="q-s-o-1080019-130" value="MON">Montenegro</option>

                      <option id="q-s-o-1080019-131" value="MOR">Morocco</option>

                      <option id="q-s-o-1080019-132" value="MOZ">Mozambique</option>

                      <option id="q-s-o-1080019-133" value="MYA">Myanmar</option>

                      <option id="q-s-o-1080019-134" value="NAM">Namibia</option>

                      <option id="q-s-o-1080019-135" value="NEP">Nepal</option>

                      <option id="q-s-o-1080019-136" value="NET">Netherlands</option>

                      <option id="q-s-o-1080019-137" value="NCL">New Caledonia</option>

                      <option id="q-s-o-1080019-138" value="NZE">New Zealand</option>

                      <option id="q-s-o-1080019-139" value="NIC">Nicaragua</option>

                      <option id="q-s-o-1080019-140" value="NIG">Niger</option>

                      <option id="q-s-o-1080019-141" value="NGA">Nigeria</option>

                      <option id="q-s-o-1080019-142" value="NOR">Norway</option>

                      <option id="q-s-o-1080019-143" value="OMA">Oman</option>

                      <option id="q-s-o-1080019-144" value="PAK">Pakistan</option>

                      <option id="q-s-o-1080019-145" value="PAN">Panama</option>

                      <option id="q-s-o-1080019-146" value="PAP">Papua New Guinea</option>

                      <option id="q-s-o-1080019-147" value="PAR">Paraguay</option>

                      <option id="q-s-o-1080019-148" value="PER">Peru</option>

                      <option id="q-s-o-1080019-149" value="PHI">Philippines</option>

                      <option id="q-s-o-1080019-150" value="POL">Poland</option>

                      <option id="q-s-o-1080019-151" value="POR">Portugal</option>

                      <option id="q-s-o-1080019-152" value="QAT">Qatar</option>

                      <option id="q-s-o-1080019-153" value="ROM">Romania</option>

                      <option id="q-s-o-1080019-154" value="RUS">Russia</option>

                      <option id="q-s-o-1080019-155" value="RWA">Rwanda</option>

                      <option id="q-s-o-1080019-156" value="SKN">Saint Kitts and Nevis</option>

                      <option id="q-s-o-1080019-157" value="SLU">Saint Lucia</option>

                      <option id="q-s-o-1080019-158" value="SVT">Saint Vincent and The Grenadines</option>

                      <option id="q-s-o-1080019-159" value="SAM">Samoa</option>

                      <option id="q-s-o-1080019-160" value="SNM">San Marino</option>

                      <option id="q-s-o-1080019-161" value="STP">Sao Tome and Principe</option>

                      <option id="q-s-o-1080019-162" value="SAA">Saudi Arabia</option>

                      <option id="q-s-o-1080019-163" value="SEN">Senegal</option>

                      <option id="q-s-o-1080019-164" value="SER">Serbia</option>

                      <option id="q-s-o-1080019-165" value="SIE">Sierra Leone</option>

                      <option id="q-s-o-1080019-166" value="SNG">Singapore</option>

                      <option id="q-s-o-1080019-167" value="SIN">Sint Maarten</option>

                      <option id="q-s-o-1080019-168" value="SLO">Slovakia</option>

                      <option id="q-s-o-1080019-169" value="SVE">Slovenia</option>

                      <option id="q-s-o-1080019-170" value="SOL">Solomon Islands</option>

                      <option id="q-s-o-1080019-171" value="SOM">Somalia</option>

                      <option id="q-s-o-1080019-172" value="SAF">South Africa</option>

                      <option id="q-s-o-1080019-173" value="SSD">South Sudan</option>

                      <option id="q-s-o-1080019-174" value="SPA">Spain</option>

                      <option id="q-s-o-1080019-175" value="SRI">Sri Lanka</option>

                      <option id="q-s-o-1080019-176" value="SUD">Sudan</option>

                      <option id="q-s-o-1080019-177" value="SUR">Suriname</option>

                      <option id="q-s-o-1080019-178" value="SWA">Swaziland</option>

                      <option id="q-s-o-1080019-179" value="SWE">Sweden</option>

                      <option id="q-s-o-1080019-180" value="SWI">Switzerland</option>

                      <option id="q-s-o-1080019-181" value="SYR">Syria</option>

                      <option id="q-s-o-1080019-182" value="TAI">Taiwan</option>

                      <option id="q-s-o-1080019-183" value="TAJ">Tajikistan</option>

                      <option id="q-s-o-1080019-184" value="TAN">Tanzania</option>

                      <option id="q-s-o-1080019-185" value="THA">Thailand</option>

                      <option id="q-s-o-1080019-186" value="TLS">Timor-Leste</option>

                      <option id="q-s-o-1080019-187" value="TOG">Togo</option>

                      <option id="q-s-o-1080019-188" value="TON">Tonga</option>

                      <option id="q-s-o-1080019-189" value="TRI">Trinidad and Tobago</option>

                      <option id="q-s-o-1080019-190" value="TUN">Tunisia</option>

                      <option id="q-s-o-1080019-191" value="TUR">Turkey</option>

                      <option id="q-s-o-1080019-192" value="TKM">Turkmenistan</option>

                      <option id="q-s-o-1080019-193" value="UGA">Uganda</option>

                      <option id="q-s-o-1080019-194" value="UKR">Ukraine</option>

                      <option id="q-s-o-1080019-195" value="UAE">United Arab Emirates</option>

                      <option id="q-s-o-1080019-196" value="UK">United Kingdom</option>

                      <option id="q-s-o-1080019-197" value="URU">Uruguay</option>

                      <option id="q-s-o-1080019-198" value="UZB">Uzbekistan</option>

                      <option id="q-s-o-1080019-199" value="VAN">Vanuatu</option>

                      <option id="q-s-o-1080019-200" value="VEN">Venezuela</option>

                      <option id="q-s-o-1080019-201" value="VIE">Vietnam</option>

                      <option id="q-s-o-1080019-202" value="VAI">Virgin Islands, British</option>

                      <option id="q-s-o-1080019-203" value="WSA">Western Sahara</option>

                      <option id="q-s-o-1080019-204" value="YEM">Yemen</option>

                      <option id="q-s-o-1080019-205" value="ZAM">Zambia</option>

                      <option id="q-s-o-1080019-206" value="ZIM">Zimbabwe</option>

                  </optgroup></select>
              </td>
          </tr>

          <tr>
              <td>
                  Are you a Mississippi resident?
              </td>
              <td>
                  Yes
                  <input id="element_21_1" name="Permanent" class="element radio" type="radio" value="Yes" />
              </td>
              <td>

                  No
                  <input id="element_21_2" name="Permanent" class="element radio" type="radio" value="No" />
              </td>
          </tr>
          <tr>
              <td>

                  <label>To whom should we send information? </label>
              </td>
              <td>
                  <input name="Family" type="radio" value="One Parent / Guardian" />
                  <label class="choice" >One Parent / Guardian</label>

              </td>
              <td>

                  <input  name="Family" type="radio" value="Two Parents / Guardians" />
                  <label >Two Parents / Guardians</label>

              </td>
          </tr>
          <tr>

              <td>


                  <label class="description" for="element_23">Are you a citizen or permanent resident of the United States?
                  </label>
              </td>
              <td>

                  <input id="element_23_1" name="Citizenship" class="element radio" type="radio" value="US" />
                  <label class="choice" for="element_23_1">US Citizen</label>
              </td>
              <td>

                  <input id="element_23_2" name="Citizenship" class="element radio" type="radio" value="Permanent Resident" />
                  <label class="choice" for="element_23_2">Permanent Resident</label>
              </td>
              <td>

                  <input id="element_23_3" name="Citizenship" class="element radio" type="radio" value="Not a U.S Citizen" />
                  <label class="choice" for="element_23_3">Not a U.S. Citizen or Permanent Resident</label>
              </td>
          </tr>


          <tr>

              <td>

                  <label class="description" for="element_24">Are you Hispanic or Latino? </label>
              </td>
              <td>

                  <input id="element_24_1" name="Hispanic" class="element radio" type="radio" value="Yes" />
                  <label class="choice" for="element_24_1">Yes</label>
              </td>

              <td>
                  <input id="element_24_2" name="Hispanic" class="element radio" type="radio" value="No" />
                  <label class="choice" for="element_24_2">No</label>

              </td>
          </tr>


          <tr>
              <td>

                  <label>Select one or more of the following races: </label>
              </td>
              <td>
              <td>

                  <input id="element_25_1" name="Ethnicity" class="element checkbox" type="checkbox"
                         value="American Indian or Alaskan Native American" />
                  <label class="choice" for="element_25_1">American Indian or Alaskan Native American</label>
              </td>
              <td>

                  <input id="element_25_2" name="Ethnicity" class="element checkbox" type="checkbox" value="Asian" />
                  <label class="choice" for="element_25_2">Asian</label>
              </td>
              <td>

                  <input id="element_25_3" name="Ethnicity" class="element checkbox" type="checkbox"
                         value="Black or African American" />
                  <label class="choice" for="element_25_3">Black or African American</label>
              </td>
              <td>

                  <input id="element_25_4" name="Ethnicity" class="element checkbox" type="checkbox"
                         value="Native Hawaiian or Other Pacific Islander" />
                  <label class="choice" for="element_25_4">Native Hawaiian or Other Pacific Islander</label>
              </td>
              <td>

                  <input id="element_25_5" name="Ethnicity" class="element checkbox" type="checkbox" value="White" />
                  <label class="choice" for="element_25_5">White</label>
              </td>
              </td>
          </tr>
          <tr>
              <td>
                  Your mailitary status
              </td>
              <td>
                  <input id="element_26_1" name="Military" class="element checkbox" type="checkbox" value="Veteran">
                  <label class="choice" for="element_26_1">Veteran</label>
              </td>

              <td>
                  <input id="element_26_2" name="Military" class="element checkbox" type="checkbox" value="Active-Duty">
                  <label class="choice" for="element_26_2">Active-Duty Military</label>
              </td>

              <td>
                  <input id="element_26_3" name="Military" class="element checkbox" type="checkbox" value="Spouse">
                  <label class="choice" for="element_26_3">Spouse of a veteran or active-duty member</label>
              </td>
              <td>

                  <input id="element_26_4" name="Military" class="element checkbox" type="checkbox" value="Dependent">
                  <label class="choice" for="element_26_4">Dependent of a veteran or active-duty member</label>
              </td>

              <td>
                  <input id="element_26_5" name="Military" class="element checkbox" type="checkbox" value="None of the Above">
                  <label class="choice" for="element_26_5">None of the above</label>
              </td>
          </tra>

          <tr>
              <td>
                  <label class="description" for="element_15">Counselor First Name </label>
              </td>
              <td>
                  <input id="element_15" name="CFirst" class="element text medium" type="text" maxlength="255">
              </td>
          </tr>

          <tr>
              <td>

                  <label class="description" for="element_17">Counselor Last Name </label>
              </td>
              <td>
                  <input id="element_17" name="CLast" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>

                  <label class="description" for="element_16">Counselor Email </label>
              </td>
              <td>

                  <input id="element_16" name="CEmail" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>

                  What is your GPA to the nearest decimal?
              </td>
              <td>

                  <input id="element_18" name="GPA" class="element text medium" type="text" maxlength="255"
                         value="">
              </td>
          </tr>
          <tr>
              <td>
                  What GPA scale is used?
              </td>
              <td>
                  <input id="element_27_1" name="GPAScale" class="element radio" type="radio" value="4 point scale">
                  <label class="choice" for="element_27_1">4-Point Scale</label>
              </td>
              <td>

                  <input id="element_27_2" name="GPAScale" class="element radio" type="radio" value="5 point scale">
                  <label class="choice" for="element_27_2">5-Point Scale</label>

              </td>
          </tr>

          <tr>
              <td>
                  Did you take the ACT?
              </td>
              <td>
                  <input id="element_27_1" name="ACT" class="element radio" type="radio" value="Yes">
                  <label >Yes</label>
              </td>
              <td>

                  <input id="element_27_2" name="ACT" class="element radio" type="radio" value="No">
                  <label class="choice" for="element_27_2">No</label>

              </td>
          </tr>
          <tr>
              <td>
                  <label class="description" for="element_29">Select a campus </label>
              </td>
              <td>
                  <select class="element select medium" id="element_29" name="Campus">
                      <option name="Campus" value="Gulf Park">Gulf Park</option>
                      <option name="Campus" value="Hattiesburg">Hattiesburg</option>
                  </select>
              </td>
          </tr>

          <tr>

              <td>
                  <label class="description" for="element_30">Have you been convicted of a felony, or do you currently
                      have felony charges pending? </label>
              </td>
              <td>

                  <input id="element_30_1" name="Felony" class="element radio" type="radio" value="No">
                  <label class="choice" for="element_30_1">No, I have never been convicted of a felony and do not have
                      any felony charges pending.</label>
              </td>
              <td>

                  <input id="element_30_2" name="Felony" class="element radio" type="radio" value="Yes">
                  <label class="choice" for="element_30_2">Yes, I have been convicted of a felony or have felony
                      charges pending.</label>
              </td>

          </tr>
          <tr>

              <td>
                  Have you ever been suspended or dismissed from a
                  college/university?
              </td>
              <td>
                  <input id="element_28_1" name="Suspension" class="element radio" type="radio" value="1">
                  <label class="choice" for="element_28_1">Yes</label>
              </td>

              <td>
                  <input id="element_28_2" name="Suspension" class="element radio" type="radio" value="2">
                  <label class="choice" for="element_28_2">No</label>
              </td>
          </tr>
          <tr>

              <td>

                  <label class="description" for="element_31">I waive my right to review or access letters and
                      statements
                      of recommendation written on my behalf. </label>
              </td>
              <span>
                    <td>

                        <input id="element_31_1" name="LORWaiver" type="radio" value="Yes">
                        <label class="choice" for="element_31_1">Yes</label>
                        <input id="element_31_2" name="LORWaiver" type="radio" value="No">
                        <label class="choice" for="element_31_2">No</label>
                    </td>
                </span>
          </tr>

          <tr>
              <td>

                  <label class="description" for="element_32">I certify that the information on this application is
                      complete and correct, and I understand that the submission of false information is grounds for
                      denial of my application, withdrawal of any offer of acceptance, cancellation of enrollment or
                      any
                      appropriate disciplinary action. I authorize the University to verify the information I have
                      provided with all the schools I have attended. I agree to notify the proper officials of the
                      institution of any changes in the information provided. I give my high school(s) permission to
                      send
                      my official transcript(s) directly to The University of Southern Mississippi. </label>
              </td>
              <td>
                  <input  type="checkbox" name="Agree" value="">
              </td>
          </tr>

      </table>
      <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit">
  </form>
  </body>
</html>
