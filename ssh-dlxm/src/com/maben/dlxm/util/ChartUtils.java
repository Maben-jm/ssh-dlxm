package com.maben.dlxm.util;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.struts2.ServletActionContext;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis3D;
import org.jfree.chart.axis.NumberAxis3D;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.data.category.DefaultCategoryDataset;

import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class ChartUtils {

    /**使用Jfreechart生成柱状图，将图形生成图片保存在项目目录下chart文件夹中，同时返回文件的名称*/
    public static String chartUserWithBar(List<Object[]> list) {
        //构造数据集合
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        //遍历循环，构造结果集VO
        if (list != null && list.size() > 0) {
            for (Object[] objects : list) {
                //b.keyword,b.ddlName,COUNT(b.ddlCode)
                dataset.addValue(Integer.parseInt(objects[2].toString()), objects[0].toString(), objects[1].toString());
            }
        }

        //使用工厂创建所需要的图形
        JFreeChart chart = ChartFactory.createBarChart3D("用户统计报表(所属单位)",        //图形的主标题
                "所属单位名称",                //X轴外的标签值
                "数量",                        //Y轴外的标签值
                dataset,                    //图形的数据集
                PlotOrientation.VERTICAL,    //图形的显示形式（水平和垂直）
                true,                        //是否显示子标题
                true,                        //是否在图形上显示数据提示
                true                        //是否点击图形生成URL连接
        );
        //处理乱码
        //处理主标题的乱码
        chart.getTitle().setFont(new Font("宋体", Font.BOLD, 18));
        //处理子标题的乱码
        chart.getLegend().setItemFont(new Font("宋体", Font.BOLD, 15));
        //获取图表区域对象
        CategoryPlot categoryPlot = (CategoryPlot) chart.getPlot();
        //获取X轴对象
        CategoryAxis3D categoryAxis3D = (CategoryAxis3D) categoryPlot.getDomainAxis();
        //获取Y轴对象
        NumberAxis3D numberAxis3D = (NumberAxis3D) categoryPlot.getRangeAxis();
        //处理X轴外的乱码
        categoryAxis3D.setLabelFont(new Font("宋体", Font.BOLD, 15));
        //处理X轴上的乱码
        categoryAxis3D.setTickLabelFont(new Font("宋体", Font.BOLD, 15));
        //处理Y轴外的乱码
        numberAxis3D.setLabelFont(new Font("宋体", Font.BOLD, 15));
        //处理Y轴上的乱码
        numberAxis3D.setTickLabelFont(new Font("宋体", Font.BOLD, 15));

        //处理Y轴的单位刻度，不采用默认的形式，以1为单位
        numberAxis3D.setAutoTickUnitSelection(false);//不采用默认的方式，默认是true
        //设置刻度
        NumberTickUnit unit = new NumberTickUnit(1);
        numberAxis3D.setTickUnit(unit);//设置刻度

        //获取绘图区域对象
        BarRenderer3D barRenderer3D = (BarRenderer3D) categoryPlot.getRenderer();
        //让柱状图变的苗条点
        barRenderer3D.setMaximumBarWidth(0.08);
        //让值显示到对应的图形上
        barRenderer3D.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());//在图形上生成对应的数字
        barRenderer3D.setBaseItemLabelFont(new Font("宋体", Font.BOLD, 15));
        barRenderer3D.setBaseItemLabelsVisible(true);

        //将图形生成图片，放置到项目目录下的chart文件夹下
        //获取chart文件夹所在的目录
        String path = ServletActionContext.getServletContext().getRealPath("/chart");
        //文件名
        String filename = DateFormatUtils.format(new Date(), "yyyyMMddHHmmss") + ".png";
        File pathFile = new File(path);
        if (!pathFile.exists()) {
            pathFile.mkdirs();
        }
        File file = new File(path + "/" + filename);
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            ChartUtilities.saveChartAsPNG(file, chart, 800, 600);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return filename;
    }

}
