/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.michaelin.learningjee.customtags;

import java.io.IOException;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author michael
 */
public class LabeledTextField extends SimpleTagSupport {
    private String label;
    private String value = "";
    private String name;

    @Override
    public void doTag() throws JspException, IOException {
        JspContext jspContext = getJspContext();
        JspWriter jspWriter = jspContext.getOut();
        jspWriter.print("<tr><td>");
        jspWriter.print("<b>" + label + "</b>");
        jspWriter.print("</td><td>");
        jspWriter.print("<input type=\"text\" name=\"" + name + "\" value=\"" + value + "\" />");
        jspWriter.print("</td></tr>");
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
