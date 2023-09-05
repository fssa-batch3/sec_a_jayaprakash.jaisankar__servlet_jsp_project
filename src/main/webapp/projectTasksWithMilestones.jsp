<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fssa.projectprovision.model.Milestone" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Project Tasks with Milestones</title>
</head>
<body>
    <h1>List of Project Tasks with Milestones</h1>
    <table border="1">
        <tr> 
            <th>Task Text</th>
            <th>Task Date</th>
            <th>Task Time</th>
            <th>Is Reminder</th>
            <th>Task ID</th>
        </tr>
        <%
           List<Milestone> projectTasks = (List<Milestone>) request.getAttribute("projectTasks");
           if (projectTasks != null && !projectTasks.isEmpty()) {
               for (Milestone milestone : projectTasks) {
        %>
           <tr>
               <td><%= milestone.getTaskText() %></td>
               <td><%= milestone.getTaskDate() %></td>
               <td><%= milestone.getTaskTime() %></td>             
               <td><%= milestone.isRemainder() %></td>
               <td><%= milestone.gettasks_id1() %></td>
           </tr>
        <%
               }
           } else {
        %>
           <tr>
               <td colspan="4">No project tasks with milestones available.</td>
           </tr>
        <%
           }
        %>
    </table>
</body>
</html>
