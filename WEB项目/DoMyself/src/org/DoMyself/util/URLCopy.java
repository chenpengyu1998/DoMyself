package org.DoMyself.util;
import java.awt.Toolkit; 
import java.awt.datatransfer.Clipboard; 
import java.awt.datatransfer.StringSelection; 
import java.awt.datatransfer.Transferable;

//https://blog.csdn.net/yangymy/article/details/71172589
//java实现复制内容到剪贴板(share分享模块);
public class URLCopy {
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        setSysClipBoardText("要放入剪贴板的内容");
    }
    public static void setSysClipBoardText(String WriteMe) {
    	 Clipboard clip = Toolkit.getDefaultToolkit().getSystemClipboard(); 
    	 Transferable tText = new StringSelection(WriteMe);
    	 clip.setContents(tText, null);
    }

}
