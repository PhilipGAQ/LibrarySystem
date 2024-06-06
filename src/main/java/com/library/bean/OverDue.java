package com.library.bean;

import java.util.Date;
import java.io.Serializable;

public class OverDue implements Serializable {
    private int overdue_id;
    private int student_id;
    private int borrow_id;
    private Date due_date;
    private Date return_date;
    private int overdue_days;
    private int fine_amount;

    public int getOverdue_id() {return overdue_id;}

    public int getStudent_id() {return student_id;}

    public int getBorrow_id() {return borrow_id;}

    public Date getDue_date() {return due_date;}

    public Date getReturn_date() {return return_date;}

    public int getOverdue_days() {return overdue_days;}

    public int getFine_amount() {return fine_amount;}

    public void setOverdue_id(int overdue_id) {this.overdue_id = overdue_id;}
    public void setStudent_id(int student_id) {this.student_id = student_id;}
    public void setBorrow_id(int borrow_id) {this.borrow_id = borrow_id;}
    public void setDue_date(Date due_date) {this.due_date = due_date;}
    public void setReturn_date(Date return_date) {this.return_date = return_date;}
    public void setOverdue_days(int overdue_days) {this.overdue_days = overdue_days;}
    public void setFine_amount(int fine_amount) {this.fine_amount = fine_amount;}


}
