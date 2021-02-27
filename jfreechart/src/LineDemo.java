
import java.awt.Font;
import java.awt.Rectangle;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.data.category.DefaultCategoryDataset;

public class LineDemo {

	public static void main(String[] args) {
		//构造数据集合
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		dataset.addValue(12, "所属单位", "北京");
		dataset.addValue(6, "所属单位", "上海");
		dataset.addValue(2, "所属单位", "深圳");
		
		//使用工厂创建所需要的图形
		JFreeChart chart = ChartFactory.createLineChart(
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
		CategoryAxis categoryAxis = (CategoryAxis) categoryPlot.getDomainAxis();
		//获取Y轴对象
		NumberAxis numberAxis = (NumberAxis) categoryPlot.getRangeAxis();
		//处理X轴外的乱码
		categoryAxis.setLabelFont(new Font("宋体",Font.BOLD,15));
		//处理X轴上的乱码
		categoryAxis.setTickLabelFont(new Font("宋体",Font.BOLD,15));
		//处理Y轴外的乱码
		numberAxis.setLabelFont(new Font("宋体",Font.BOLD,15));
		//处理Y轴上的乱码
		numberAxis.setTickLabelFont(new Font("宋体",Font.BOLD,15));
		
		//处理Y轴的单位刻度，不采用默认的形式，以1为单位
		numberAxis.setAutoTickUnitSelection(false);//不采用默认的方式，默认是true
		//设置刻度
		NumberTickUnit unit = new NumberTickUnit(1);
		numberAxis.setTickUnit(unit);//设置刻度
		
		//获取绘图区域对象
		LineAndShapeRenderer lineAndShapeRenderer = (LineAndShapeRenderer) categoryPlot.getRenderer();
		//让值显示到对应的图形上
		lineAndShapeRenderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());//在图形上生成对应的数字
		lineAndShapeRenderer.setBaseItemLabelFont(new Font("宋体",Font.BOLD,15));
		lineAndShapeRenderer.setBaseItemLabelsVisible(true);
		//在图形上显示转折点，以矩形作为转折点
		//矩形的对象
		Rectangle shape = new Rectangle(10,10);
		//在图形上设置转折点，参数一：表示操作的是第几条线，初始值是0，0表示第1条线
		lineAndShapeRenderer.setSeriesShape(0, shape);
		lineAndShapeRenderer.setSeriesShapesVisible(0, true);//0表示第1条线
		
		//显示图形
		ChartFrame frame = new ChartFrame("xyz",chart);
		frame.setVisible(true);
		frame.pack();//生成图形
	}
}
