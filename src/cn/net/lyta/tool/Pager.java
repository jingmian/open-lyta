package cn.net.lyta.tool;

// 分页实体

import org.springframework.stereotype.Component;


public class Pager {
    // 1.当前页码
    private int pageIndex;
    // 2.一页需要展示多少条数据
    private int pageSize = 4 ;
    // 3.当前条件下总的数据量
    private int totalCount ;
    // 4.总共可以分多少页
    private int totalPages ;

    public int getPageIndex() {
        // 取页码的时候，做一些判断
        pageIndex = pageIndex <= 0 ? 1 : pageIndex ;
        // 判断页码是否越界 了
        pageIndex = pageIndex>= getTotalPages() ? getTotalPages(): pageIndex;
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPages() {
        /**
         *  总页数
         *          根据总数据量和每页最多展示多少来确定的
         *          10条数据 3 -> 4页
         *          9条数据  3  -> 3页
         * */
        return (this.getTotalCount() -1 )  / this.getPageSize() + 1;
    }

    // 分页的第一个参数
    public int getFirstParam(){
        return (this.getPageIndex()  -1)*this.getPageSize();
    }


}
