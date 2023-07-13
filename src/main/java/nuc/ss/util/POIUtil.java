package nuc.ss.util;

import nuc.ss.bean.Employee;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class POIUtil {
    /**
     * 导入表格的解析方法
     * @param file
     * @return
     * @throws Exception
     */
    public static List<Employee> importExcel(InputStream file) throws Exception{
        // 注意xssf只能解析xlsx为后缀的表格文件
        Workbook workbook = new XSSFWorkbook(file);
        Sheet sheet = null;
        // 总共有几个sheet表格
        for(int i = 0;i < workbook.getNumberOfSheets();i++){
            //获取每个sheet
            sheet = workbook.getSheetAt(i);
            List<Employee> list = new ArrayList<Employee>();
            //getPhysicalNumberOfRows获取有记录的行数
            for(int j = 1;j < sheet.getPhysicalNumberOfRows();j++){
                Row row = sheet.getRow(j);
                if(row!=null){
                    Employee user = new Employee();
                    //getLastCellNum获取最后一列
                    for(int k = 0 ;k < row.getLastCellNum();k++){
                        if(row.getCell(k)!=null && !row.getCell(k).equals("")){
                            // id
                            if(k==0){
                                /*
                                获取单元格XSSFCell cell = row.getCell(0);
                                设置单元格类型cell.setCellType(CellType.STRING);
                                获取单元格数据String cellValue = cell.getStringCellValue()
                                */
                                Cell cell = row.getCell(0);
                                cell.setCellType(CellType.STRING);
                                user.setId(Integer.valueOf(cell.getStringCellValue()));
                            }
                            // name
                            if(k==1){
                                Cell cell = row.getCell(1);
                                cell.setCellType(CellType.STRING);
                                user.setDeptId(Integer.valueOf(cell.getStringCellValue()));
                            }
                            // age
                            if(k==2){
                                Cell cell = row.getCell(2);
                                cell.setCellType(CellType.STRING);
                                user.setJobId(Integer.valueOf(cell.getStringCellValue()));
                            }
                            // sex
                            if(k==3){
                                Cell cell = row.getCell(3);
                                user.setName(cell.getStringCellValue());
                            }
                            if(k==4){
                                Cell cell = row.getCell(4);
                                user.setCardId(cell.getStringCellValue());

                            }
                            if(k==5){
                                Cell cell = row.getCell(5);
                                user.setAddress(cell.getStringCellValue());
                            }
                            if(k==6){
                                Cell cell = row.getCell(6);
                                user.setPhone(cell.getStringCellValue());
                            }
                            if(k==7){
                                Cell cell = row.getCell(7);
                                cell.setCellType(CellType.STRING);
                                user.setSexId(Integer.parseInt(cell.getStringCellValue()));
                            }
                            if(k==8){
                                Cell cell = row.getCell(8);
                                cell.setCellType(CellType.STRING);
                                user.setEducationId(Integer.valueOf(cell.getStringCellValue()));
                            }

                        }
                    }
                    list.add(user);
                }
            }
            System.out.println("读取sheet表："+ workbook.getSheetName(i) + "完成");
            return list;
        }
        return null;
    }
}
