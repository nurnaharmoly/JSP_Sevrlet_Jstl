
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <f:view>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Student Form IDB</h1>
            <h:form>

                <table>
                    <tr>
                        <td>ID:</td>
                        <td><h:inputText value="#{std.stdu.id}"/></td>
                    </tr>

                    <tr>
                        <td>Name:</td>
                        <td><h:inputText value="#{std.stdu.name}"/></td>
                    </tr>

                    <tr>
                        <td>Gender:</td>
                        <td><h:selectOneRadio layout="lineDirection" value="#{std.stdu.gender}"> 

                                <f:selectItem itemValue="Male" itemLabel="Male"/>
                                <f:selectItem itemValue="Female" itemLabel="Female"/>
                            </h:selectOneRadio></td>
                    </tr>

                    <tr>
                        <td>Education:</td>
                        <td>
                          
                            <h:selectManyCheckbox  value="#{std.stdu.education}">
                                
                                <f:selectItem itemValue="SSC" itemLabel="SSC"/>
                                <f:selectItem itemValue="HSC" itemLabel="HSC"/>
                                <f:selectItem itemValue="Honours" itemLabel="Honours"/>
                                <f:selectItem itemValue="Masters" itemLabel="Masters"/>

                            </h:selectManyCheckbox></td>
                    </tr>


                    <tr>
                        <td>Round:</td>
                        <td><h:selectOneMenu value="#{std.stdu.round}">
                                <f:selectItem itemValue="" itemLabel="Select The Round"/>
                                <f:selectItem itemValue="37" itemLabel="Round-37"/>
                                <f:selectItem itemValue="38" itemLabel="Round-38"/>
                                <f:selectItem itemValue="39" itemLabel="Round-39"/>
                                <f:selectItem itemValue="40" itemLabel="Round-40"/>

                            </h:selectOneMenu></td>
                    </tr>


                    <tr>
                        <td>Email: </td>
                        <td><h:inputText value="#{std.stdu.email}"/></td>
                    </tr>

                    <tr>
                        <td>Password:</td>
                        <td><h:inputSecret value="#{std.stdu.password}"/></td>
                    </tr>

                    
                     

                    <tr>
                        <td></td>
                        <td><h:commandButton value="Submit" action="submit"/>
                            <h:commandButton action="#{std.reset()}" value="Reset"/>
                        </td>

                    </tr>



                </table>


            </h:form>


        </body>
    </f:view>
</html>
