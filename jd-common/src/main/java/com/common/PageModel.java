package com.common;

import java.io.Serializable;
import java.util.List;

public class PageModel<T> implements Serializable {

    private static final long serialVersionUID = 4622997746493378218L;
    private Integer total;
    private List<T> rows;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public void setTotal(Long total) {
        this.total = total.intValue();
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
