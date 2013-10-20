/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.michaelin.learningjee.javabeanproperties;

import java.io.Serializable;

/**
 *
 * @author michael
 */
public class CustomerBean {

    public CustomerBean() {
    }
    
    String firstName;
    String lastName;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
