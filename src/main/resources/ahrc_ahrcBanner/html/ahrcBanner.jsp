<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<c:set var="bannerMainImage" value="${currentNode.properties['bannerMainImage']}"/>
<c:set var="bannerLogo" value="${currentNode.properties['bannerLogo']}"/>

<c:url value="${bannerMainImage.node.url}" var="bannerMainImageURL"/>
<c:url value="${bannerLogo.node.url}" var="bannerLogoURL"/>

<div id="banner">
  <a href="<c:url value="${url.base}${renderContext.site.path}/ahrc-home/media-room/faqs-about-the-commission.html"/>">
    <img class="img-responsive" id="bannerLogo" alt="Alberta Human Rights and Citizenship Commission" src="${bannerLogoURL}">
  </a>
  <img class="img-responsive" id="bannerMessage" alt="Fostering Equality and Reducing Discrimination" src="${bannerMainImageURL}"> 
</div>

