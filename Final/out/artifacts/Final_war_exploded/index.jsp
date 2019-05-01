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

                  <input name="Suffix" id="element_6"  type="text" maxlength="255"
                         value="">
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
                  <input name="DOB" id="element_10"  class="element text medium" type="text" maxlength="255"
                         value="">
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
                  <input  name="State" class="element text medium" type="text" maxlength="255"
                          value="">
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
                  <input id="element_13" name="Country" class="element text medium" type="text" maxlength="255"
                         value="">
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
          </tr>

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
                  <input id="element_27_1" name="GPAScale" class="element radio" type="radio" value="1">
                  <label class="choice" for="element_27_1">4-Point Scale</label>
              </td>
              <td>

                  <input id="element_27_2" name="GPAScale" class="element radio" type="radio" value="2">
                  <label class="choice" for="element_27_2">5-Point Scale</label>

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

                  <input id="element_30_1" name="Felony" class="element radio" type="radio" value="1">
                  <label class="choice" for="element_30_1">No, I have never been convicted of a felony and do not have
                      any felony charges pending.</label>
              </td>
              <td>

                  <input id="element_30_2" name="Felony" class="element radio" type="radio" value="2">
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
