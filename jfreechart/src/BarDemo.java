
import java.awt.Font;
import java.io.File;
import java.io.IOException;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
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

public class BarDemo {

	public static void main(String[] args) {
		//构造数据集合
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		dataset.addValue(12, "所属单位", "北京");
		dataset.addValue(6, "所属单位", "上海");
		dataset.addValue(2, "所属单位", "深圳");
		
		//使用工厂创建所需要的图形
		JFreeChart chart = ChartFactory.createBarChart3D(
							"用户统计报表(所属单位)", 		//图形的主标题 
							"所属单位名称",      			//X轴外的标签值
							"数量",         				//Y轴外的标签值
							dataset,                	//图形的数据集
							PlotOrientation.VERTICAL, 	//图形的显示形式（水平和垂直）
							true,						//是否显示子标题 
							true,						//是否在图形上显示数据提示 
							true						//是否点击图形生成URL连接
							);	
		//处理乱码
		//处理主标题的乱码
		chart.getTitle().setFont(new Font("宋体",Font.BOLD,18));
		//处理子标题的乱码
		chart.getLegend().setItemFont(new Font("宋体",Font.BOLD,15));
		//获取图表区域对象
		CategoryPlot categoryPlot = (CategoryPlot) chart.getPlot();
		//获取X轴对象
		CategoryAxis3D categoryAxis3D = (CategoryAxis3D) categoryPlot.getDomainAxis();
		//获取Y轴对象
		NumberAxis3D numberAxis3D = (NumberAxis3D) categoryPlot.getRangeAxis();
		//处理X轴外的乱码
		categoryAxis3D.setLabelFont(new Font("宋体",Font.BOLD,15));
		//处理X轴上的乱码
		categoryAxis3D.setTickLabelFont(new Font("宋体",Font.BOLD,15));
		//处理Y轴外的乱码
		numberAxis3D.setLabelFont(new Font("宋体",Font.BOLD,15));
		//处理Y轴上的乱码
		numberAxis3D.setTickLabelFont(new Font("宋体",Font.BOLD,15));
		
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
		barRenderer3D.setBaseItemLabelFont(new Font("宋体",Font.BOLD,15));
		barRenderer3D.setBaseItemLabelsVisible(true);
		
		//将图形生成图片，放置到D盘目录下，命名为chart.png
//		File file = new File("d:/chart.png");
//		try {
//			ChartUtilities.saveChartAsPNG(file, chart, 800, 600);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
		//显示图形
		ChartFrame frame = new ChartFrame("xyz",chart);
		frame.setVisible(true);
		frame.pack();//生成图形
	}
}
