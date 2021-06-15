package com.wjm.softwareout.system.utils;

import java.io.File;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/22 9:21
 */
public class MyFileUtil {

    public static void deleteFile(File file) {

        if (file.exists()) {
            file.delete();
        }

    }
}
