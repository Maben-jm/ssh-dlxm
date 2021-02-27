
import java.awt.Font;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;

public class PieDemo {

	public static void main(String[] args) {
		//构造数据集合
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("北京", 12);
		dataset.setValue("上海", 6);
		dataset.setValue("深圳", 2);
		
		//使用工厂创建所需要的图形
		JFreeChart chart = ChartFactory.createPieChart3D(
							"用户统计报表(所属单位)", 		//图形的主标题 
							dataset,                	//图形的数据集
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
		PiePlot3D piePlot3D = (PiePlot3D) chart.getPlot();
		//处理图形上的乱码
		piePlot3D.setLabelFont(new Font("宋体",Font.BOLD,15));
		//在图形上生成数值，数值的格式：北京 12 (60%)
		String labelFormat = "{0} {1} ({2})";
		piePlot3D.setLabelGenerator(new StandardPieSectionLabelGenerator(labelFormat));
		
		
		//显示图形
		ChartFrame frame = new ChartFrame("xyz",chart);
		frame.setVisible(true);
		frame.pack();//生成图形
	}
}
