<%@ page import="java.io.File" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.FileWriter" %><%--
  Created by IntelliJ IDEA.
  User: ham
  Date: 4/24/19
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String First = request.getParameter("First");
    String Middle = request.getParameter("Middle");
    String Last = request.getParameter("Last");
    String Former = request.getParameter("Former");
    String Preferred = request.getParameter("Preferred");
    String Suffix = request.getParameter("Suffix");
    String HomePhone = request.getParameter("HomePhone");
    String Cell = request.getParameter("Cell");
    String Email = request.getParameter("Email");
    String DOB = request.getParameter("MONTH") + request.getParameter("DAY") + request.getParameter("YEAR");
    String Gender = request.getParameter("Gender");
    String State = request.getParameter("State");
    String Zip = request.getParameter("Zip");
    String Permanent  = request.getParameter("Permanent");
    String Residency = request.getParameter("Residency");
    String Family = request.getParameter("Family");
    String Citizenship = request.getParameter("Citizenship");
    String Hispanic = request.getParameter("Hispanic");
    String Ethnicity = request.getParameter("Ethnicity");
    String Country = request.getParameter("Country");
    String Military = request.getParameter("Military");
    String CFirst = request.getParameter("CFirst");
    String CLast = request.getParameter("CLast");
    String CEmail = request.getParameter("CEmail");
    String GPA = request.getParameter("GPA");
    String GPAScale = request.getParameter("GPAScale");
    String ACT = request.getParameter("ACT");
    String Campus = request.getParameter("Campus");
    String Felony = request.getParameter("Felony");
    String Suspension = request.getParameter("Suspension");
    String LORWaiver = request.getParameter("LORWaiver");
    String Agree = request.getParameter("Agree");

    String strPath = "/home/ham/Documents/DataFile.txt";
    File strFile = new File(strPath);
    boolean fileCreated = strFile.createNewFile();
    Writer objectWriter = new BufferedWriter(new FileWriter(strFile));
    String newLine = System.getProperty("line.separator");

    objectWriter.write(First + newLine +
            Middle + newLine +
            Last + newLine +
            Former + newLine +
            Preferred + newLine +
            Suffix + newLine +
            HomePhone + newLine +
            Cell + newLine +
            Email + newLine +
            DOB + newLine +
            Gender + newLine +
            State + newLine +
            Zip + newLine +
            Country + newLine +
            Permanent + newLine +
            Residency + newLine +
            Family + newLine +
            Citizenship + newLine +
            Hispanic + newLine +
            Ethnicity + newLine +
            Military + newLine +
            CFirst + newLine +
            CLast + newLine +
            CEmail + newLine +
            GPA + newLine +
            GPAScale + newLine +
            ACT + newLine +
            Campus + newLine +
            Felony + newLine +
            Suspension + newLine +
            LORWaiver + newLine +
            Agree);
    objectWriter.flush();
    objectWriter.close();
%>



<body>

<form method="post" action="display.jsp">
    <table>

        <tr>
            <td>
                First Name
            </td>
            <td>
                <%= First %>
            </td>
        </tr>

        <tr>
            <td> Middle Name
            </td>
            <td>

                <%= Middle %>
                </td>
            </tr>

        <tr>
            <td>
                Last Name
            </td>
            <td>
                <%= Last%>
            </td>
        </tr>

        <tr>
            <td>
                Maiden / Former Name
            </td>
            <td>
                <%=Former%>
            </td>
        </tr>

        <tr>
            <td>

                Preferred First Name
            </td>
            <td>

                <%= Preferred%>
            </td>
        </tr>

        <tr>
            <td>
                Suffix
            </td>
            <td>

                <%= Suffix%>
            </td>
        </tr>
        <tr>
            <td>
                Home Phone

            </td>
            <td>
                <%= HomePhone%>
            </td>
        </tr>
        <tr>
            <td>
                Cell Phone
            </td>
            <td>
                <%= Cell %>
            </td>
        </tr>
        <tr>
            <td>
                Email Address
            </td>
            <td>
                <%= Email %>
            </td>
        </tr>
        <tr>
            <td>
                Date of Birth
            </td>
            <td>
                <%= DOB %>
            </td>
        </tr>

        <tr>

            <td>

                Gender
            </td>

            <td>
                <%= Gender %>

            </td>
            </span>
        </tr>
        <tr>
            <td>

                State/Province
            </td>
            <td>
                <%= State %>
            </td>
        </tr>
        <tr>
            <td>

                Zip / Postal Code
            </td>
            <td>
                <%= Zip%>
            </td>
        </tr>
        <tr>
            <td>

                Country
            </td>
            <td>
                <%= Country%>
            </td>
        </tr>

        <tr>
            <td>
                Are you a Mississippi resident?
            </td>
            <td>
                <%= Permanent%>
            </td>

        </tr>
        <tr>
            <td>

                <label>To whom should we send information? </label>
            </td>
            <td>
             <%= Family%>

            </td>

        </tr>
        <tr>

            <td>


                <label class="description" for="element_23">Are you a citizen or permanent resident of the United States?
                </label>
            </td>
            <td>
                <%= Citizenship %>
            </td>

        </tr>


        <tr>

            <td>

                <label class="description" for="element_24">Are you Hispanic or Latino? </label>
            </td>
            <td>
                <%= Hispanic %>
            </td>

        </tr>


        <tr>
            <td>

                <label>Select one or more of the following races: </label>
            </td>
            <td>
            <td>
            <%= Ethnicity%>
            </td>
        </tr>

        <tr>
            <td>
                Your mailitary status
            </td>

            <td>
                <%= Military %>
            </td>
        </tr>

        <tr>
            <td>
                <label class="description" for="element_15">Counselor First Name </label>
            </td>
            <td>
                <%= CFirst %>
            </td>
        </tr>

        <tr>
            <td>

                <label class="description" for="element_17">Counselor Last Name </label>
            </td>
            <td>
                <%= CLast %>
            </td>
        </tr>
        <tr>
            <td>

                <label class="description" for="element_16">Counselor Email </label>
            </td>
            <td>

                <%= CEmail %>
            </td>
        </tr>
        <tr>
            <td>

                What is your GPA to the nearest decimal?
            </td>
            <td>

                <%= GPA %>
            </td>
        </tr>
        <tr>
            <td>
                What GPA scale is used?
            </td>
            <td>

                <%= GPAScale %>
            </td>
        </tr>

        <tr>
            <td>
                Did you take the ACT?
            </td>
            <td>

                <%= ACT %>
            </td>
        </tr>
        <tr>
            <td>
                <label class="description" for="element_29">Select a campus </label>
            </td>
            <td>
                <%= Campus %>
            </td>
        </tr>

        <tr>

            <td>
                <label class="description" for="element_30">Have you been convicted of a felony, or do you currently
                    have felony charges pending? </label>
            </td>
            <td>

                <%= Felony %>
            </td>

        </tr>
        <tr>

            <td>
                Have you ever been suspended or dismissed from a
                college/university?
            </td>
            <td>
                <%= Suspension %>
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
                        <%= LORWaiver %>
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
                <%= Agree %>
            </td>
        </tr>


    </table>
    <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit">
</form>
</body>


</html>
